defmodule Aoc.Year2021.Day05.HydrothermalVentureTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day05.HydrothermalVenture, import: true

  alias Aoc.Year2021.Day05.HydrothermalVenture

  describe "part_1/1" do
    @tag day: 05, year: 2021
    test "input", %{input: input} do
      assert input |> HydrothermalVenture.part_1() == 1
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 05, year: 2021
    test "input", %{input: input} do
      assert input |> HydrothermalVenture.part_2() == input
    end
  end
end
