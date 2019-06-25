defmodule Issue260showcase.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Issue260showcase.Repo,
      # Start the endpoint when the application starts
      Issue260showcaseWeb.Endpoint
      # Starts a worker by calling: Issue260showcase.Worker.start_link(arg)
      # {Issue260showcase.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Issue260showcase.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Issue260showcaseWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
