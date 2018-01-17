defmodule TDLib.Backend do
  alias TDLib.Backend
  alias TDLib.SessionRegistry, as: Registry
  require Logger
  use GenServer

  @moduledoc false
  @binary TDLib.get_backend_binary()
  @port_opts [:binary, :line]

  # Internal state
  defstruct [:name, :port, :buffer]

  def start_link(name) do
    GenServer.start_link(__MODULE__, name, [])
  end

  def init(name) do
    # Register itself
    true = Registry.update(name, backend_pid: self())

    # Generate the process' internal state, open the port
    state = %Backend{
      name: name,
      buffer: "",
      port: Port.open({:spawn_executable, @binary}, @port_opts)
    }

    {:ok, state}
  end

  ###

  def handle_call({:transmit, msg}, _from, state) do
    data = msg <> "\n"
    result = Kernel.send state.port, {self(), {:command, data}}

    {:reply, result, state}
  end

  def handle_info({_from, {:data, data}}, state) do
    case data do
      {:eol, tail} ->
        # complete buffered line part if required
        {new_state, msg} = if (state.buffer != "") do
          {struct(state, buffer: ""), state.buffer <> tail}
        else
          {state, tail}
        end

        # resolve handler's pid
        handler_pid = Registry.get(state.name, :handler_pid)

        if (handler_pid != nil) do
          # Forward msg to the client
          Kernel.send handler_pid, {:tdlib, msg}
        else
          Logger.warn "#{state.name}: incoming message but no handler registered."
        end

        {:noreply, new_state}
      {:noeol, part} ->
        # incomplete line, fill the buffer
        new_state = struct(state, buffer: state.buffer <> part)
        {:noreply, new_state}
      _ ->
        raise "unknown input structure"
        {:noreply, state}
    end
  end

  def terminate(_reason, state) do
    Port.close(state.port)
  end
end
