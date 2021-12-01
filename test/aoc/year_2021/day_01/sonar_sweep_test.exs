defmodule Aoc.Year2021.Day01.SonarSweepTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day01.SonarSweep, import: true

  alias Aoc.Year2021.Day01.SonarSweep

  describe "part_1/1" do
    test "examples" do

    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_1() == 1226
    end
  end

  describe "part_2/1" do
    test "examples" do

    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_2() == 1252
    end
  end
end
