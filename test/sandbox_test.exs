defmodule SandboxTest do
  use ExUnit.Case
  doctest Sandbox.HelloWorld
  doctest Sandbox.HelloRecursion
  doctest Sandbox.HelloSpec

  test "greets the world" do
    assert Sandbox.hello() == :world
  end
end
