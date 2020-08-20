# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :training_srvr,
  ecto_repos: [TrainingSrvr.Repo]

# Configures the endpoint
config :training_srvr, TrainingSrvrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "D7hsOMKqjuQ/C2Smhizagm0GH3w2aP7aXhCbvyJ6PZhaVu3vHPMlsE/r+dKbF83N",
  render_errors: [view: TrainingSrvrWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TrainingSrvr.PubSub,
  live_view: [signing_salt: "qD4h0vAe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
