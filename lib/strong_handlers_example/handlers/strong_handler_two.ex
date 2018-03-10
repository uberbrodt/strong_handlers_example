defmodule StrongHandlersExample.Handlers.StrongHandlerTwo do
  @moduledoc false

  use Commanded.Event.Handler, name: __MODULE__, consistency: :strong
  require Logger
  alias StrongHandlersExample.Events.SomethingDone

  def handle(%SomethingDone{} = event, _) do
    :timer.sleep(100)
    Logger.info("Handled event: #{inspect(event)}")
    :ok
  end
end
