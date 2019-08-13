defmodule EmailAddressStrainTest do
  use ExUnit.Case
  doctest EmailAddressStrain

  test "greets the world" do
    assert EmailAddressStrain.hello() == :world
  end
end
