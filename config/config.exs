# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :graphql_server, GraphqlServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+M+PsgxP2eiIwnH+hLBl4PvBFsS6VnPodz4RAk/q602Q7xwxr0GCwQ3sB+V0b28M",
  render_errors: [view: GraphqlServerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: GraphqlServer.PubSub,
  live_view: [signing_salt: "CgHt8pic"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
