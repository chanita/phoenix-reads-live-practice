defmodule Readslive.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Readslive.Repo,
      # Start the Telemetry supervisor
      ReadsliveWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Readslive.PubSub},
      # Start the Endpoint (http/https)
      ReadsliveWeb.Endpoint
      # Start a worker by calling: Readslive.Worker.start_link(arg)
      # {Readslive.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Readslive.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ReadsliveWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
