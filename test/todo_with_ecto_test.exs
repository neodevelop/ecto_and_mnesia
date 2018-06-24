defmodule TodoWithEctoTest do
  use ExUnit.Case
  doctest TodoWithEcto

  test "greets the world" do
    assert TodoWithEcto.hello() == :world
  end
end
