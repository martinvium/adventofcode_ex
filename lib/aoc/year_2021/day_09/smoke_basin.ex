defmodule Aoc.Year2021.Day09.SmokeBasin do
  @moduledoc """
  ## --- Day 9: Smoke Basin --- 

  These caves seem to be lava tubes. Parts are even still volcanically active;
  small hydrothermal vents release smoke into the caves that slowly settles like
  rain. 

  If you can model how the smoke flows through the caves, you might be able to
  avoid it and be that much safer. The submarine generates a heightmap of the
  floor of the nearby caves for you (your puzzle input). 

  Smoke flows to the lowest point of the area it's in. For example, consider the
  following heightmap: 

  `2*1*9994321*0*
  3987894921
  98*5*6789892
  8767896789
  989996*5*678
  `Each number corresponds to the height of a particular location, where `9` is the
  highest and `0` is the lowest a location can be. 

  Your first goal is to find the *low points* - the locations that are lower than
  any of its adjacent locations. Most locations have four adjacent locations (up,
  down, left, and right); locations on the edge or corner of the map have three or
  two adjacent locations, respectively. (Diagonal locations do not count as
  adjacent.) 

  In the above example, there are *four* low points, all highlighted: two are in
  the first row (a `1` and a `0`), one is in the third row (a `5`), and one is in
  the bottom row (also a `5`). All other locations on the heightmap have some
  lower adjacent location, and so are not low points. 

  The *risk level* of a low point is *1 plus its height*. In the above example,
  the risk levels of the low points are `2`, `1`, `6`, and `6`. The sum of the
  risk levels of all low points in the heightmap is therefore `*15*`. 

  Find all of the low points on your heightmap. *What is the sum of the risk
  levels of all low points on your heightmap?* 


  """

  def part_1(input) do
    map = input |> prepare_input()

    map
    |> Enum.with_index()
    |> Enum.reduce([], fn {row, y}, acc ->
      row
      |> Enum.with_index()
      |> Enum.reduce(acc, fn {height, x}, acc2 ->
        case map |> siblings(x, y) |> Enum.min() > height do
          true -> [height | acc2]
          false -> acc2
        end
      end)
    end)
    |> Enum.map(fn value -> value + 1 end)
    |> Enum.sum()
  end

  def part_2(input) do
    input
  end

  defp prepare_input(input) do
    input
    |> String.split("\n")
    |> Enum.map(fn row -> row |> String.graphemes() |> Enum.map(&String.to_integer/1) end)
  end

  defp siblings(map, x, y) do
    [
      map |> Enum.at(y - 1, []) |> Enum.at(x),
      map |> Enum.at(y + 1, []) |> Enum.at(x),
      map |> Enum.at(y) |> Enum.at(x - 1),
      map |> Enum.at(y) |> Enum.at(x + 1)
    ]
    |> Enum.reject(&is_nil/1)
  end
end
