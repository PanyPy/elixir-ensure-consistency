defmodule EnsureConsistency do
  @moduledoc """
  Documentation for `EnsureConsistency`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EnsureConsistency.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Hello name, lastname.

  ## Examples

      iex> EnsureConsistency.hello("John", "Doe")
      "Hello, John Doe!"

  """
  def hello( name , lastname ) do
    name =name<>" "<>lastname
    IO.puts("Hello, #{name}!")
  end

  @spec sum(number(), number()) :: number()
  def sum(a, b) do
    a + b
  end

  # This will cause a Dialyzer warning, as "1" is a string, not a number.
  def call_sum do
    sum("1", 2)
  end
end
