defmodule TDLib.Session do
  alias TDLib.Session
  alias TDLib.SessionRegistry, as: Registry
  use Supervisor

  @moduledoc false

  defstruct [:name, :config, :supervisor_pid, :backend_pid, :handler_pid,
             :client_pid, :encryption_key]

  def start_link(name) do
    Supervisor.start_link(__MODULE__, name, [])
  end

  def init(name) do
    Registry.update(name, supervisor_pid: self())

    children = [
      worker(TDLib.Backend, [name], restart: :permanent),
      worker(TDLib.Handler, [name], restart: :permanent)
    ]

    opts = [strategy: :one_for_one]
    Supervisor.init(children, opts)
  end

  def create(name, client, config, encryption_key) do
    # Initialize the new session in the registry
    state = %Session{
      config: config,
      client_pid: client,
      encryption_key: encryption_key
    }
    Registry.set(name, state)

    # Try to start the session
    {status, output} = start_link(name)

    # Remove from registry if the creation failed
    unless status == :ok, do: Registry.drop(name)

    {status, output}
  end

  def destroy(name) do
    session = Registry.get name
    Supervisor.stop(session.supervisor_pid, :normal)
    Registry.drop(name)
  end
end
