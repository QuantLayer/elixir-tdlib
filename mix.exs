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

      # Docs
      name: "TDLib",
      source_url: "https://gitlab.com/Fnux/elixir-tdlib",
      homepage_url: "https://gitlab.com/Fnux/elixir-tdlib",
      docs: [main: "readme", extras: ["README.md"]]
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
