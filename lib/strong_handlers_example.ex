defmodule StrongHandlersExample do
  @moduledoc """
  Documentation for StrongHandlersExample.
  """
  alias StrongHandlersExample.Router
  alias StrongHandlersExample.Commands.DoSomething

  def run_strong_cmd() do
    cmd = DoSomething.new()
    Router.dispatch(cmd, consistency: :strong)
  end

  def run_eventual_cmd() do
    cmd = DoSomething.new()
    Router.dispatch(cmd)
  end
end
