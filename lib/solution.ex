defmodule Solution do
  @moduledoc """
  The container module for leetcode exercises.
  """

  @doc """
  Given an array of integers `nums`, and an integer `target`, return indices of the two numbers
  such that they add up to `target`.

  ## Examples

      iex> Sandbox.two_sum([1, 2, 3], 4)
      [0, 2]

  """
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    try do
      for i <- 0..(length(nums) - 1) do
        for j <- (i + 1)..(length(nums) - 1) do
          first_number = Enum.at(nums, i)
          second_number = Enum.at(nums, j)

          if first_number + second_number === target do
            throw([i, j])
          end
        end
      end
    catch
      res -> res
    end
  end
end
