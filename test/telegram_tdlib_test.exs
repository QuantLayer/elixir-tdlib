defmodule TDLibTest do
  use ExUnit.Case
  doctest TDLib

  test "greets the world" do
    assert TDLib.hello() == :world
  end
end
