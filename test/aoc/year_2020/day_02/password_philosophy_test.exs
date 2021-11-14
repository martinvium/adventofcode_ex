defmodule Aoc.Year2020.Day02.PasswordPhilosophyTest do
  use Aoc.DayCase
  doctest Aoc.Year2020.Day02.PasswordPhilosophy, import: true

  alias Aoc.Year2020.Day02.PasswordPhilosophy

  describe "part_1/1" do
    @tag day: 02, year: 2020
    test "input", %{input: input} do
      result = input |> PasswordPhilosophy.part_1() 
      IO.inspect result
    end
  end

  describe "part_2/1" do
    @tag day: 02, year: 2020
    test "input", %{input: input} do
      assert input |> PasswordPhilosophy.part_2() == input
    end
  end
end
