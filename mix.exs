defmodule TodoWithEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :todo_with_ecto,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug],
      mod: {TodoWithEcto.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_mnesia, "0.9.1"},
      {:ecto, "2.1.6"},
      {:cowboy, "~> 2.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
