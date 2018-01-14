defmodule TDLib do
  alias TDLib.Session
  alias TDLib.SessionRegistry, as: Registry

  @moduledoc """
  Documentation for TDLib.
  """

  @doc """
  """
  def open(session_name) do
    Session.create(session_name)
  end

  @doc """
  """
  def close(session_name) do
    Session.destroy(session_name)
  end

  @doc """
  """
  def transmit(session_name, struct) when is_map(struct) do
    json = Poison.encode!(struct)
    transmit(session_name, json)
  end

  @doc """
  """
  def transmit(session_name, json) when is_binary(json) do
    backend_pid = Registry.get(session_name, :backend_pid)
    GenServer.call backend_pid, {:transmit, json}
  end

  @doc """
  """
  def register_client(session_name, client_pid) do
    handler_pid = Registry.get(session_name, :handler_pid)
    GenServer.call handler_pid, {:set_client, client_pid}
  end
end
