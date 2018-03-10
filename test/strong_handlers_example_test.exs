defmodule StrongHandlersExampleTest do
  use ExUnit.Case
  doctest StrongHandlersExample

  test "greets the world" do
    assert StrongHandlersExample.hello() == :world
  end
end
