defmodule EnsureConsistencyTest do
  use ExUnit.Case
  doctest EnsureConsistency

  test "greets the world" do
    assert EnsureConsistency.hello() == :world
    assert EnsureConsistency.hello("John", "Doe") == "Hello, John Doe!"
  end
end
