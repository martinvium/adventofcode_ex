defmodule Aoc.Year2021.Day09.SmokeBasinTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day09.SmokeBasin, import: true

  alias Aoc.Year2021.Day09.SmokeBasin

  describe "part_1/1" do
    @tag day: 09, year: 2021
    test "input", %{input: input} do
      assert input |> SmokeBasin.part_1() == 465
    end
  end

  describe "part_2/1" do
    @tag day: 09, year: 2021
    test "input", %{input: input} do
      assert input |> SmokeBasin.part_2() == input
    end
  end
end
