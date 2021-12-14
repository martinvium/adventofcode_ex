defmodule Aoc.Year2021.Day14.ExtendedPolymerizationTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day14.ExtendedPolymerization, import: true

  alias Aoc.Year2021.Day14.ExtendedPolymerization

  describe "part_1/1" do
    @tag day: 14, year: 2021
    test "input", %{input: input} do
      assert input |> ExtendedPolymerization.part_1() == 3230
    end
  end

  describe "part_2/1" do
    @tag day: 14, year: 2021
    test "input", %{input: input} do
      assert input |> ExtendedPolymerization.part_2() == input
    end
  end
end
