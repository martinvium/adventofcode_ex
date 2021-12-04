defmodule Aoc.Year2021.Day03.BinaryDiagnosticTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day03.BinaryDiagnostic, import: true

  alias Aoc.Year2021.Day03.BinaryDiagnostic

  describe "part_1/1" do
    @tag day: 03, year: 2021
    test "input", %{input: input} do
      assert input |> BinaryDiagnostic.part_1() == 1_458_194
    end
  end

  describe "part_2/1" do
    @tag day: 03, year: 2021
    test "input", %{input: input} do
      assert input |> BinaryDiagnostic.part_2() == 1
    end
  end
end
