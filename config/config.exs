# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_heroku_pipeline, PhoenixHerokuPipelineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w3jlKT1Y0WAfkFfI2afE/r0mx9eguEwz3cEZuA4HzgA/QBLRZWrWGHUxYM8n9pe5",
  render_errors: [view: PhoenixHerokuPipelineWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixHerokuPipeline.PubSub, adapter: Phoenix.PubSub.PG2],
  from_config: System.get_env("FROM_CONFIG")

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
