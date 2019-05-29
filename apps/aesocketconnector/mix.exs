defmodule AeSocketConnector.MixProject do
  use Mix.Project

  def project do
    [
      app: :aesocketconnector,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AeSocketConnector.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:websockex, "~> 0.4.0"},
      {:poison, "~> 3.1"},
      {:enacl, git: "https://github.com/aeternity/enacl.git", ref: "26180f4"},
      {:aeserialization, git: "https://github.com/aeternity/aeserialization.git"},
    ]
  end
end