defmodule Aoc.Year2021.Day07.TheTreacheryofWhalesTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day07.TheTreacheryofWhales, import: true

  alias Aoc.Year2021.Day07.TheTreacheryofWhales

  describe "part_1/1" do
    @tag day: 07, year: 2021
    test "input", %{input: input} do
      assert input |> TheTreacheryofWhales.part_1() == 331_067
    end
  end

  describe "part_2/1" do
    @tag day: 07, year: 2021
    test "input", %{input: input} do
      assert input |> TheTreacheryofWhales.part_2() == 1
    end
  end
end
