defmodule SandboxTest do
  use ExUnit.Case
  doctest Sandbox

  # hello
  test "greets the world" do
    assert Sandbox.hello() == :world
  end
end
