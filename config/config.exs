# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :exsolr,
       hostname: "localhost",
       port: 8982,
       core: "default"
# General application configuration
config :solr_web,
  ecto_repos: [SolrWeb.Repo]

# Configures the endpoint
config :solr_web, SolrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Bqzm04ltK79m+OiF+8eu1topwRP+OhTZqcTF0bdJW7mr3etsnYJsRM4mea0ovGRN",
  render_errors: [view: SolrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SolrWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
