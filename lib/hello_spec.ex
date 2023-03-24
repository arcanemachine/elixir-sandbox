defmodule Sandbox.HelloSpec do
  @moduledoc """
  A sandbox for playing with the concept of specs.
  """

  @doc """
  A basic sum function that uses `@spec` to define its inputs and outputs.

  ## Examples

      iex> Sandbox.HelloSpec.say_hello()
      "Hello world!"

      iex> Sandbox.HelloSpec.say_hello("Bob")
      "Hello Bob!"

  """
  @spec say_hello(String.t()) :: String.t()
  def say_hello(name \\ "world") do
    "Hello #{name}!"
  end
end
