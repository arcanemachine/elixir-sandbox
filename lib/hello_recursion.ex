defmodule Sandbox.HelloRecursion do
  @moduledoc """
  A sandbox for playing with the concept of recursion.
  """

  @doc """
  Given a list of integers, return the sum of all the values in the list.

  ## Examples

      iex> Sandbox.HelloRecursion.sum_list([1, 2, 3])
      6

  """
  @spec sum_list(list(integer)) :: integer
  def sum_list(vals) do
    vals |> Enum.reduce(fn i, acc -> i + acc end)
  end
end
