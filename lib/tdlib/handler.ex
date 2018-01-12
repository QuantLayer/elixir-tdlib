defmodule TDLib.Handler do
  require Logger
  use GenServer

  @tdlib_config %{
    "@type" => "setTdlibParameters",
    "use_message_database" => true,
    "api_id"               => "123",
    "api_hash"             => "hashash",
    "system_language_code" => "en",
    "device_model"         => "Unknown",
    "system_version"       => "Unknown",
    "application_version"  => "Unknown",
    "enable_storage_optimizer" => true
  }

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: :handler)
  end

  def init(:ok) do
    state = nil

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
        msg = Poison.encode!(%{
          "@type" => "setTdlibParameters",
          "parameters" => @tdlib_config
        }) <> "\n"
        GenServer.call :backend, {:transmit, msg}
      _ ->
        IO.puts "Unknown object type :"
        IO.inspect json
    end
  end
end
