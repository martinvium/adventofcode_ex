defmodule Aoc.Year2021.Day06.LanternfishTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day06.Lanternfish, import: true

  alias Aoc.Year2021.Day06.Lanternfish

  describe "part_1/1" do
    @tag day: 06, year: 2021
    test "input", %{input: input} do
      assert input |> Lanternfish.part_1() == 389_726
    end
  end

  describe "part_2/1" do
    @tag day: 06, year: 2021, timeout: :infinity
    test "input", %{input: input} do
      assert input |> Lanternfish.part_2() == 1_743_335_992_042
    end
  end
end
