defmodule ObanDashboard.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_dashboard,
      version: "0.1.0",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "ObanDashboard",
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ObanDashboard.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.13.1"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:plug_cowboy, "~> 2.0", only: :dev},
      {:jason, "~> 1.0"},
      {:floki, "~> 0.24.0", only: :test},
      {:oban, "> 0.0.0"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "cmd npm install --prefix assets"],
      dev: "run --no-halt dev.exs"
    ]
  end

  defp elixirc_paths(env) when env in [:dev, :test] do
    ["lib", "test/support"]
  end

  defp elixirc_paths(_env), do: ["lib"]
end
