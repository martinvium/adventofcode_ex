defmodule Aoc.Year2020.Day03.TobogganTrajectoryTest do
  use Aoc.DayCase
  doctest Aoc.Year2020.Day03.TobogganTrajectory, import: true

  alias Aoc.Year2020.Day03.TobogganTrajectory

  describe "part_1/1" do
    @tag day: 03, year: 2020
    test "input", %{input: input} do
      input |> TobogganTrajectory.part_1()
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 03, year: 2020
    test "input", %{input: input} do
      assert input |> TobogganTrajectory.part_2() == input
    end
  end
end
