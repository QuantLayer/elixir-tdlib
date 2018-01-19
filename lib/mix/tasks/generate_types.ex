defmodule Mix.Tasks.GenerateTypes do
  use Mix.Task

  @object_module "lib/tdlib/object.ex"
  @method_module "lib/tdlib/method.ex"
  @json_source "types.json"

  defp extract(text) do
    json = Poison.decode!(text)
    keys = Map.keys(json)
    type_filter = fn (k, t) -> (Map.get(json, k) |> Map.get("type")) == t end

    objects = keys |> Enum.filter(&type_filter.(&1, "object"))
    methods = keys |> Enum.filter(&type_filter.(&1, "function"))

    {json, objects, methods}
  end

  defp remove_old_modules() do
    IO.puts "Removing old modules..."
    File.rm(@object_module)
    File.rm(@method_module)
  end

  defp build_fields_string(list) do
    List.foldl(
      list, "", fn(field, acc) -> acc <> ", #{Map.get(field, "name")}: nil" end
    )
  end
  defp build_fields_doc(list) do
    table_header = """
    | Name | Type | Description |
    |------|------| ------------|
    """

    line_builder = fn (m) ->
      "| #{Map.get(m, "name")} | #{Map.get(m, "type")} | #{Map.get(m,"desc")} |\n"
    end
    table_lines = Enum.map(list, line_builder) |> List.to_string

    table_header <> table_lines
  end

  defp format_lines(text, padding) do
    unless text == nil do
      pad = fn (s) -> String.duplicate(" ", padding) <> s <> "\n" end
      lines = text
              |> String.trim("\n")
              |> String.split("\n")
              |> Enum.map(&pad.(&1))
              |> List.to_string

      lines
    else
      ""
    end
  end

  defp build_type(key, json_type) do
    module_name = build_module_name(key)

    %{"url" => url, "fields" => fields} = json_type
    desc = json_type |> Map.get("desc") # desc may not be present

    struct_fields = build_fields_string(fields)
    fields_doc = if Enum.count(fields) > 0 do
      build_fields_doc(fields)
    else
      nil
    end

    """
    defmodule #{module_name} do
      @moduledoc  \"""
    """
    <> format_lines(desc, 2)
    <> "\n"
    <> format_lines(fields_doc, 2)
    <> """

      More details on [telegram's documentation](#{url}).
      \"""

      defstruct "@type": "#{key}"#{struct_fields}
    end
    """
  end

  defp generate_object_module(json, objects) do
    IO.puts "Writing object module..."
    fd = File.open!(@object_module, [:write])

    # Write header
    IO.write fd, """
    defmodule TDLib.Object do
      @moduledoc \"""
      This module was generated using Telegram's TDLib documentation. It contains
      #{Enum.count(objects)} submodules (= structs).
      \"""
    """

    # Generate and write a new module for every object
    for key <- objects do
      json_object = Map.get(json, key)
      IO.write fd, build_type(key, json_object)
    end

    # Write footer
    IO.write fd, "end"
  end

  defp generate_method_module(json, methods) do
    IO.puts "Writing method module..."
    fd = File.open!(@method_module, [:write])

    # Write header
    IO.write fd, """
    defmodule TDLib.Method do
      @moduledoc \"""
      This module was generated using Telegram's TDLib documentation. It contains
      #{Enum.count(methods)} submodules (= structs).
      \"""
    """

    # Generate and write a new module for every object
    for key <- methods do
      json_method = Map.get(json, key)
      IO.write fd, build_type(key, json_method)
    end

    # Write footer
    IO.write fd, "end"
  end

  defp build_module_name(string) do
    {char, rest} = String.Casing.titlecase_once(string)
    char <> rest
  end

  def run(_) do
    json_path =  case :code.priv_dir(:telegram_tdlib) do
      {:error, _} -> @json_source
      path -> path |> Path.join(@json_source)
    end

    IO.puts "Importing #{json_path}..."
    text = File.read!(json_path)

    IO.puts "Parsing JSON..."
    {json, objects, methods} = extract(text)
    IO.puts "#{Enum.count(objects)} objects found."
    IO.puts "#{Enum.count(methods)} methods found."

    remove_old_modules()
    generate_object_module(json, objects)
    generate_method_module(json, methods)

    IO.puts "Everything looks fine. Bye!"
  end
end
