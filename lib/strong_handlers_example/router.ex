defmodule StrongHandlersExample.Router do
  @moduledoc false

  use Commanded.Commands.Router

  alias StrongHandlersExample.SomeAggregate
  alias StrongHandlersExample.Commands.DoSomething

  identify(SomeAggregate, by: :id)
  dispatch(DoSomething, to: SomeAggregate)
end
