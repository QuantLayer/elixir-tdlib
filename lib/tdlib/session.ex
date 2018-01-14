defmodule TDLib.Session do
  alias TDLib.Session
  alias TDLib.SessionRegistry, as: Registry
  use Supervisor

  @moduledoc false

  defstruct [:name, :supervisor_pid, :backend_pid, :handler_pid]

  def start_link(name) do
    Supervisor.start_link(__MODULE__, name, [])
  end

  def init(name) do
    Registry.set name, %Session{name: name, supervisor_pid: self()}

    children = [
      worker(TDLib.Backend, [name], restart: :permanent),
      worker(TDLib.Handler, [name], restart: :permanent)
    ]

    opts = [strategy: :one_for_one]
    Supervisor.init(children, opts)
  end

  def create(name) do
    start_link(name)
  end

  def destroy(name) do
    session = Registry.get name
    Supervisor.stop(session.supervisor_pid, :normal)
    Registry.drop(name)
  end
end
