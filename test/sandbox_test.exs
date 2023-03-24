defmodule SandboxTest do
  use ExUnit.Case
  doctest Sandbox.HelloWorld
  doctest Sandbox.HelloRecursion
  doctest Sandbox.HelloSpec

  test "1 + 1 == 2" do
    assert 1 + 1 == 2
  end

  test "greets the world" do
    assert Sandbox.HelloWorld.hello() == :world
  end
end
