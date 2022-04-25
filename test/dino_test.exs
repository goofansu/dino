defmodule DinoTest do
  use ExUnit.Case
  doctest Dino

  test "greets the world" do
    assert Dino.hello() == :world
  end
end
