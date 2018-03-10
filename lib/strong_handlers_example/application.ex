defmodule StrongHandlersExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      Supervisor.child_spec(
        {StrongHandlersExample.Handlers.EventualHandlerOne, []},
        restart: :transient
      ),
      Supervisor.child_spec(
        {StrongHandlersExample.Handlers.EventualHandlerTwo, []},
        restart: :transient
      ),
      Supervisor.child_spec(
        {StrongHandlersExample.Handlers.StrongHandlerOne, []},
        restart: :transient
      ),
      Supervisor.child_spec(
        {StrongHandlersExample.Handlers.StrongHandlerTwo, []},
        restart: :transient
      ),
      Supervisor.child_spec(
        {StrongHandlersExample.Handlers.StrongHandlerThree, []},
        restart: :transient
      )
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StrongHandlersExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
