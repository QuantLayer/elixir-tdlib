defmodule TDLib.SessionRegistry do
  alias TDLib.Session
  use GenServer

  @moduledoc false
  @name __MODULE__

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: @name)
  end

  def init(:ok) do
    table = :ets.new(@name, [:named_table, :set, :public, read_concurrency: true])
    {:ok, table}
  end

  ###

  def handle_call({:set, key, value}, _from, table) do
    reply = :ets.insert(table, {key, value})

    {:reply, reply, table}
  end

  def handle_call({:get, key}, _from, table) do
    lookup = :ets.lookup(table, key)

    reply = case lookup do
      [{_key, value}] -> value
      [] -> nil
    end

    {:reply, reply, table}
  end

  def handle_call({:drop, key}, _from, table) do
    reply = :ets.delete(table, key)

    {:reply, reply, table}
  end

  def handle_call(:dump, _from, table) do
    reply = :ets.match(table, :"$1")
    {:reply, reply, table}
  end

  ###

  def set(session_name, %Session{}=struct) do
    if get(session_name) == nil do
      GenServer.call @name, {:set, session_name, struct}
    else
      raise "key already registered"
    end
  end

  def get(session_name) do
    GenServer.call @name, {:get, session_name}
  end

  def get(session_name, field) do
    struct = get(session_name)
    Map.get(struct, field)
  end

  def update(session_name, change) do
    struct = GenServer.call @name, {:get, session_name}
    new_struct = struct(struct, change)
    GenServer.call @name, {:set, session_name, new_struct}
  end

  def drop(session_name) do
    GenServer.call @name, {:drop, session_name}
  end

  def dump() do
    GenServer.call @name, :dump
  end
end
