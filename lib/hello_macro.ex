defmodule Sandbox.HelloMacro do
  defmacro __using__(_opts) do
    quote do
      def hello() do
        IO.puts("Hello!")
      end
    end
  end
end

defmodule Sandbox.Hello do
  use Sandbox.HelloMacro
end

defmodule Sandbox.Mixin do
  defmacro __using__(_) do
    quote do
      def mixin_func1(value), do: IO.inspect(value)
      def mixin_func2(value), do: IO.inspect(value * 2)
    end
  end
end

# add the "use" macro to inject functions into MyModule
defmodule Sandbox.MyModule do
  use Sandbox.Mixin
end
