defmodule StrongHandlersExample.SomeAggregate do
  @moduledoc false
  alias StrongHandlersExample.Commands.DoSomething
  alias StrongHandlersExample.Events.SomethingDone

  defstruct [:id, :value]

  def execute(%__MODULE__{}, %DoSomething{id: id, value: value}) do
    %SomethingDone{id: id, value: value}
  end

  def apply(%__MODULE__{} = agg, %SomethingDone{id: id, value: value}) do
    %{agg | id: id, value: value}
  end
end
