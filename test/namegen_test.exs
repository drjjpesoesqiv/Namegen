defmodule NamegenTest do
  use ExUnit.Case
  doctest Namegen

  test "greets the world" do
    assert Namegen.hello() == :world
  end
end
