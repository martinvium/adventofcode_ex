defmodule Aoc.Year2021.Day02.DiveTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day02.Dive, import: true

  alias Aoc.Year2021.Day02.Dive

  describe "part_1/1" do
    test "examples" do
    end

    @tag day: 02, year: 2021
    test "input", %{input: input} do
      assert input |> Dive.part_1() == input
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 02, year: 2021
    test "input", %{input: input} do
      assert input |> Dive.part_2() == input
    end
  end
end
