defmodule StrongHandlersExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :strong_handlers_example,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded, github: "commanded/commanded", override: true},
      {:commanded_eventstore_adapter,
       github: "commanded/commanded-eventstore-adapter", override: true},
      {:commanded_swarm_registry, git: "https://github.com/commanded/commanded-swarm-registry.git"},
      {:eventstore, github: "commanded/eventstore", override: true},
      {:phoenix_pubsub, "~> 1.0"}
    ]
  end
end
