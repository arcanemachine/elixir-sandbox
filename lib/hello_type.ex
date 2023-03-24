defmodule Sandbox.HelloType do
  defmodule TypeExample do
    defstruct first: nil, last: nil

    @typedoc """
    Type that represents TypeExample struct with any type of value for :first and :last.
    """
    @type t(first, last) :: %TypeExample{first: first, last: last}

    @typedoc """
    Type that represents TypeExample struct with integer type for :first and :last.
    """
    @type t :: %TypeExample{first: integer, last: integer}
  end

  @spec sum(TypeExample) :: integer
  def sum(values) do
    values |> Enum.sum()
  end
end
