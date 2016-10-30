use Mix.Config

config :notes,
  ecto_repos: [Notes.Repo]

config :notes, Notes.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n/q5UggzjPM/EPyE/FsnTxj4C+/VAJo322mqOYiQwAHytmVzRh+D/ITHvAW9CdpU",
  render_errors: [view: Notes.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Notes.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
