# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :readslive,
  ecto_repos: [Readslive.Repo]

# Configures the endpoint
config :readslive, ReadsliveWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EUz0WborMgs8WtpHUmeVdnPxksS8U2zCwXZQKeq+gggtflLgZkFwcr9zO4YYzu+M",
  render_errors: [view: ReadsliveWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Readslive.PubSub,
  live_view: [signing_salt: "x0PLuS4H"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
