defmodule TDLib.Handler do
  require Logger
  alias TDLib.{Object, Method}
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

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: :handler)
  end

  def init(:ok) do
    state = nil
    GenServer.call :backend, {:transmit, "verbose 2"}

    {:ok, state}
  end

  def handle_info({:tdlib, msg}, state) do
    json = Poison.decode!(msg)
    keys = Map.keys(json)

    Logger.debug "New input"

    cond do
      "@cli" in keys -> json |> handle_cli()
      "@type" in keys -> json |> handle_object()
      true -> IO.inspect json
    end

    {:noreply, state}
  end

  ###

  def handle_cli(json) do
    cli = Map.get(json, "@cli")
    event = Map.get(cli, "event")

    Logger.debug "CLI event received: #{event}"

    case event do
      "client_created" -> :ignore
      _ ->
        IO.puts "Unknown CLI event :"
        IO.inspect event
    end
  end

  def handle_object(json) do
    type = Map.get(json, "@type")

    Logger.debug "Object received: #{type}"

    case type do
      "updateAuthorizationState" -> json |> Map.get("authorization_state")
                                         |> handle_object()
      "authorizationStateWaitTdlibParameters" ->
        transmit %Method.SetTdlibParameters{
          :parameters  => @tdlib_config
        }
      "authorizationStateWaitEncryptionKey" ->
        transmit %Method.CheckDatabaseEncryptionKey{
          encryption_key: @database_encryption_key
        }
      _ ->
        Logger.warn "Unknown object type : #{type}"
        IO.inspect json
    end
  end

  ###

  def transmit(map) do
    Logger.debug "Sending #{Map.get(map, :"@type")}"
    msg = Poison.encode!(map)
    GenServer.call :backend, {:transmit, msg}
  end
end
