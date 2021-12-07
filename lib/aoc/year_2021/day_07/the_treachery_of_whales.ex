defmodule Aoc.Year2021.Day07.TheTreacheryofWhales do
  def part_1(input) do
    cost(input, fn p1, p2 -> abs(p1 - p2) end)
  end

  def part_2(input) do
    cost(input, fn p1, p2 -> abs(p1 - p2) * (abs(p1 - p2) + 1) / 2 end)
  end

  defp cost(input, fun) do
    positions = input |> String.split(",") |> Enum.map(&String.to_integer/1)

    positions
    |> Enum.reduce([], fn p1, acc ->
      fuel = Enum.reduce(positions, 0, fn p2, acc -> acc + fun.(p1, p2) end)
      [{p1, fuel} | acc]
    end)
    |> Enum.map(fn {key, value} -> value end)
    |> Enum.sort()
    |> hd()
  end
end
