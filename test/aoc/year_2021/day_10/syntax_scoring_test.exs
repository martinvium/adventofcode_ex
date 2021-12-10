defmodule Aoc.Year2021.Day10.SyntaxScoringTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day10.SyntaxScoring, import: true

  alias Aoc.Year2021.Day10.SyntaxScoring

  describe "part_1/1" do
    @tag day: 10, year: 2021
    test "input", %{input: input} do
      assert input |> SyntaxScoring.part_1() == 341_823
    end
  end

  describe "part_2/1" do
    @tag day: 10, year: 2021
    test "input", %{input: input} do
      assert input |> SyntaxScoring.part_2() == input
    end
  end
end
