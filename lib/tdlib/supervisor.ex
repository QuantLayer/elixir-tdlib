defmodule TDLib.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(_) do

    children = [
      worker(TDLib.Backend, []),
      worker(TDLib.Handler, [])
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
