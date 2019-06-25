use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :issue260showcase, Issue260showcaseWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :issue260showcase, Issue260showcase.Repo,
  username: "postgres",
  password: "postgres",
  database: "issue260showcase_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
