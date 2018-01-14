defmodule TDLib.Backend do
  require Logger
  use GenServer
  alias TDLib.Backend

  @binary :code.priv_dir(:telegram_tdlib) |> Path.join("tdlib-json-cli")
  @max_line_length 10_000
  @port_opts [:binary, {:line, @max_line_length}]

  defstruct [:client, :port]

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: :backend)
  end

  def init(:ok) do
    state = %Backend{
      port: Port.open({:spawn_executable, @binary}, @port_opts),
      client: :handler
    }

    {:ok, state}
  end

  def handle_call({:register, pid}, _from, state) when is_pid(pid) do
    new_state = struct state, client: pid

    {:reply, :ok, new_state}
  end

  def handle_call({:transmit, msg}, _from, state) do
    data = msg <> "\n"
    result = Kernel.send state.port, {self(), {:command, data}}

    {:reply, result, state}
  end

  def handle_info({_from, {:data, data}}, state) do
    {:eol, msg} = data

    if (state.client != nil) do
      # Forward msg to the client
      Kernel.send state.client, {:tdlib, msg}
    else
      IO.puts "Backend: no client registered !"
      IO.inspect msg
    end

    {:noreply, state}
  end
end
