use Mix.Config

config :phoenix, :json_library, Jason

config :logger, level: :warn
config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

# temporary
config :oban_dashboard, ecto_repos: [ObanDashboard.Test.Repo]

config :oban_dashboard, ObanDashboard.Test.Repo,
  priv: "test/support/",
  database: "oban_dashboard",
  username: "postgres",
  password: "",
  hostname: "localhost",
  port: "5432"

#
