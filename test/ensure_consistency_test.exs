defmodule EnsureConsistencyTest do
  use ExUnit.Case
  doctest EnsureConsistency

  test "greets the world" do
    assert EnsureConsistency.hello() == :world
    assert EnsureConsistency.hello("John", "Doe") == "Hello, John Doe!"
  end

  # Make it fail to showcase test check.
  test "do NOT greets the world" do
    assert EnsureConsistency.hello("John", "Doe") == "John Doe"
  end
end
