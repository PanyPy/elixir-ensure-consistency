defmodule CredoFails do
  # TODO: Trigger Credo issues.

  def hello() do
    "world"
  end

  def risky_operation do
    try do
      raise "oops"
    rescue
      _ -> :error
    end
  end
end
