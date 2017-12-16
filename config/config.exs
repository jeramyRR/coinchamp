# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coinchamp,
  ecto_repos: [Coinchamp.Repo]

# Configures the endpoint
config :coinchamp, CoinchampWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "45e8bMJiLjnqW+mo341LXUFe6nT/Hq7XUiZ7sBkp/F6fQvkSKP20veTh/RS77FBU",
  render_errors: [view: CoinchampWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Coinchamp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
