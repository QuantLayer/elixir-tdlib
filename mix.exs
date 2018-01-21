defmodule TDLib.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tdlib,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      compilers: [:elixir_make] ++ Mix.compilers,
      deps: deps(),

      # Hex
      description: description(),
      package: package(),

      # Docs
      name: "TDLib",
      source_url: "https://gitlab.com/Fnux/elixir-tdlib",
      homepage_url: "https://gitlab.com/Fnux/elixir-tdlib",
      docs: [main: "readme", extras: ["README.md"]]
    ]
  end

  defp description() do
    "Bindings over Telegram's TDLib, allowing to act as a full-fledged Telegram client."
  end

  defp package() do
    [
      files: ["lib/tdlib*", "priv/*.tar.gz", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Timothée Floure"],
      licenses: ["AGPL-3.0", "BSL-1.0"],
      links: %{
        "Sources (gitlab.com)" => "https://gitlab.com/Fnux/elixir-tdlib",
        "Telegram TDLib" => "https://core.telegram.org/tdlib"
      }
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {TDLib.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:elixir_make, "~> 0.4", runtime: false},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false}
    ]
  end
end
