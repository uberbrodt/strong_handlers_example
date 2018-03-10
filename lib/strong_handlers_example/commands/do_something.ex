defmodule StrongHandlersExample.Commands.DoSomething do
  @moduledoc false

  defstruct [:id, :value]

  def new do
    %__MODULE__{id: UUID.uuid4(), value: :rand.uniform()}
  end
end
