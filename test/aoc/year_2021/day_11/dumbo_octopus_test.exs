defmodule Aoc.Year2021.Day11.DumboOctopusTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day11.DumboOctopus, import: true

  alias Aoc.Year2021.Day11.DumboOctopus

  describe "part_1/1" do
    @tag day: 11, year: 2021
    test "input", %{input: input} do
      assert input |> DumboOctopus.part_1() == input
    end
  end

  describe "part_2/1" do
    @tag day: 11, year: 2021
    test "input", %{input: input} do
      assert input |> DumboOctopus.part_2() == input
    end
  end
end
