defmodule Aoc.Year2021.Day13.TransparentOrigamiTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day13.TransparentOrigami, import: true

  alias Aoc.Year2021.Day13.TransparentOrigami

  describe "part_1/1" do
    @tag day: 13, year: 2021
    test "input", %{input: input} do
      assert input |> TransparentOrigami.part_1() == 1
    end
  end

  describe "part_2/1" do
    @tag day: 13, year: 2021
    test "input", %{input: input} do
      assert input |> TransparentOrigami.part_2() == input
    end
  end
end
