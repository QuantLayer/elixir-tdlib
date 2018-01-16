defmodule TDLib.Handler do
  alias TDLib.{Object, Method}
  alias TDLib.SessionRegistry, as: Registry
  require Logger
  use GenServer

  @tdlib_config %Object.TdlibParameters{
    :use_test_dc           => false,
    :use_message_database  => true,
    :api_id                => "123",
    :api_hash              => "hashash",
    :system_language_code  => "en",
    :device_model          => "Unknown",
    :system_version        => "Unknown",
    :application_version   => "Unknown",
    :enable_storage_optimizer  => true
  }

  # Must be a multiple of 4
  @database_encryption_key "1234"
  @backend_verbosity_level 2

  def start_link(session_name) do
    GenServer.start_link(__MODULE__, session_name, [])
  end

  def init(session) do
    # Register itself
    true = Registry.update(session, handler_pid: self())

    {:ok, session}
  end

  def handle_info({:tdlib, msg}, session) do
    json = Poison.decode!(msg)
    keys = Map.keys(json)

    cond do
      "@cli" in keys -> json |> handle_cli(session)
      "@type" in keys -> json |> handle_object(session)
      true -> Logger.warn "#{session}: unknown structure received."
    end

    {:noreply, session}
  end

  ###

  def handle_cli(json, session) do
    cli = Map.get(json, "@cli")
    event = Map.get(cli, "event")

    Logger.debug "CLI event received: #{event}"

    case event do
      "client_created" -> set_backend_verbosity(@backend_verbosity_level, session)
      _ ->
        IO.puts "Unknown CLI event :"
        IO.inspect event
    end
  end

  def handle_object(json, session) do
    type = Map.get(json, "@type")
    struct = match(:object, json, "Elixir.TDLib.Object.")

    Logger.debug "Object received: #{type}"

    case struct do
      %Object.UpdateAuthorizationState{} ->
        struct.authorization_state |> handle_object(session)
      %Object.AuthorizationStateWaitTdlibParameters{} ->
        transmit session, %Method.SetTdlibParameters{
          :parameters  => @tdlib_config
        }
      %Object.AuthorizationStateWaitEncryptionKey{} ->
        transmit session, %Method.CheckDatabaseEncryptionKey{
          encryption_key: @database_encryption_key
        }
      _ ->
        Logger.warn "Unknown object type : #{type}"
        IO.inspect struct
    end
  end

  ###

  defp transmit(session, map) do
    msg = Poison.encode!(map)
    backend_pid = Registry.get(session, :backend_pid)

    Logger.debug "#{session}: sending #{Map.get(map, :"@type")}"
    GenServer.call backend_pid, {:transmit, msg}
  end

  defp set_backend_verbosity(level, session) do
    # Set tdlib's verbosity level
    backend_pid = Registry.get(session, :backend_pid)
    command = "verbose #{level}"
    GenServer.call backend_pid, {:transmit, command}

    Logger.debug "#{session}: backend verbosity set to #{level}."
  end

  defp match(:object, json, prefix) do
    {char, rest} = json |> Map.get("@type")
                        |> String.Casing.titlecase_once()
    string = prefix <> char <> rest
    module = String.to_existing_atom(string)

    struct = struct(module)
    Enum.reduce Map.to_list(struct), struct, fn {k, _}, acc ->
      case Map.fetch(json, Atom.to_string(k)) do
        {:ok, v} -> %{acc | k => v}
        :error -> acc
      end
    end
  end
end
