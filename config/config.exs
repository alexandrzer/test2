# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test2,
  ecto_repos: [Test2.Repo]

# Configures the endpoint
config :test2, Test2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8PpLASz3C1c0I+PhWuJmW4D4QLJLKioakwy44GIKB3kbe+ML08lFj+nz5BJD1ZDK",
  render_errors: [view: Test2Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Test2.PubSub,
  live_view: [signing_salt: "XPVwuQJ2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
