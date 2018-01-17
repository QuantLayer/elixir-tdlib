defmodule TDLib.Backend do
  alias TDLib.Backend
  alias TDLib.SessionRegistry, as: Registry
  require Logger
  use GenServer

  @moduledoc false
  @binary TDLib.get_backend_binary()
  @max_line_length 10_000
  @port_opts [:binary, {:line, @max_line_length}]

  # Internal state
  defstruct [:name, :port]

  def start_link(name) do
    GenServer.start_link(__MODULE__, name, [])
  end

  def init(name) do
    # Register itself
    true = Registry.update(name, backend_pid: self())

    # Generate the process' internal state, open the port
    state = %Backend{
      name: name,
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
    {:eol, msg} = data
    handler_pid = Registry.get(state.name, :handler_pid)

    if (handler_pid != nil) do
      # Forward msg to the client
      Kernel.send handler_pid, {:tdlib, msg}
    else
      Logger.warn "#{state.name}: incoming message but no handler registered."
    end

    {:noreply, state}
  end

  def terminate(_reason, state) do
    Port.close(state.port)
  end
end
