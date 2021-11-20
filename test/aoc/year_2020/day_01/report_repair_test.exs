defmodule Aoc.Year2020.Day01.ReportRepairTest do
  use Aoc.DayCase
  doctest Aoc.Year2020.Day01.ReportRepair, import: true

  alias Aoc.Year2020.Day01.ReportRepair

  describe "part_1/1" do
    @tag day: 01, year: 2020
    test "input", %{input: input} do
      result = input |> ReportRepair.part_1()
      assert result |> Enum.sum() == 2020
      IO.inspect(result)
      IO.puts("=> #{Enum.reduce(result, fn val, sum -> sum * val end)}")
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 01, year: 2020
    test "input", %{input: input} do
      result = input |> ReportRepair.part_2()
      assert result |> Enum.sum() == 2020
      IO.inspect(result)
      IO.puts("=> #{Enum.reduce(result, fn val, sum -> sum * val end)}")
    end
  end
end
