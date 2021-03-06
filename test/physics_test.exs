defmodule PhysicsTest do
  use ExUnit.Case

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 11.2
  end

  test "escape velocity of mars is correct" do
    ev = Physics.Rocketry.escape_velocity(:mars)
    assert ev == 5.0
  end

  test "escape velocity of moon is correct" do
    ev = Physics.Rocketry.escape_velocity(:moon)
    assert ev == 2.4
  end

  test "escape velocity of planet X is correct" do
    ev =  %{mass: 4.0e22, radius: 6.21e6} |> Physics.Rocketry.escape_velocity
    assert ev == 0.9
  end

  test "Converting to to_light_seconds" do
    ls = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert ls == 0.00537
  end

  test "Converter one works" do
    ls = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert ls == 0.00537
  end

  test "Orbital speed for earth at 100km" do
    orbital_speed = Physics.Rocketry.orbital_speed(100)
    assert orbital_speed == 7845.797893364734
  end

  test "Orbital acceleration for earth at 100km" do
    orbital_acceleration = Physics.Rocketry.orbital_acceleration(100)
    assert orbital_acceleration == 9.512678810620692
  end
end
