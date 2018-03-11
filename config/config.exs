# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :commanded,
  registry: Commanded.Registration.SwarmRegistry,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "cbrodt",
  database: "example_commanded_dev",
  pool_size: 10

config :commanded,
  pubsub: [
    phoenix_pubsub: [
      adapter: Phoenix.PubSub.PG2,
      pool_size: 1
    ]
  ]

config :libcluster,
  topologies: [
    testing: [
      strategy: Cluster.Strategy.Epmd,
      config: [
        hosts: [:"node1@127.0.0.1", :"node2@127.0.0.1"]
      ]
    ]
  ]

#     import_config "#{Mix.env}.exs"
