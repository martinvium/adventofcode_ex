defmodule Aoc.Year2021.Day08.SevenSegmentSearchTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day08.SevenSegmentSearch, import: true

  alias Aoc.Year2021.Day08.SevenSegmentSearch

  describe "part_1/1" do
    @tag day: 08, year: 2021
    test "input", %{input: input} do
      assert input |> SevenSegmentSearch.part_1() == 1
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 08, year: 2021
    test "input", %{input: input} do
      assert input |> SevenSegmentSearch.part_2() == input
    end
  end
end
