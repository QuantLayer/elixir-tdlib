defmodule TDLib do
  alias TDLib.Backend

  @moduledoc """
  Documentation for TDLib.
  """

  @doc """
  """
  def start do
    TDLib.Supervisor.start_link()
  end

  def register(pid, client \\ self()) do
    GenServer.call pid, {:register, client}
  end

  @doc """
  """
  def transmit(pid, json) do
    GenServer.call pid, {:transmit, json}
  end
end
