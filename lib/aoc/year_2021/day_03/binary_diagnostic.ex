defmodule Aoc.Year2021.Day03.BinaryDiagnostic do
  @moduledoc """
  ## --- Day 3: Binary Diagnostic --- 

  The submarine has been making some odd creaking noises, so you ask it to produce
  a diagnostic report just in case. 

  The diagnostic report (your puzzle input) consists of a list of binary numbers
  which, when decoded properly, can tell you many useful things about the
  conditions of the submarine. The first parameter to check is the *power
  consumption*. 

  You need to use the binary numbers in the diagnostic report to generate two new
  binary numbers (called the *gamma rate* and the *epsilon rate*). The power
  consumption can then be found by multiplying the gamma rate by the epsilon rate. 

  Each bit in the gamma rate can be determined by finding the *most common bit in
  the corresponding position* of all numbers in the diagnostic report. For
  example, given the following diagnostic report: 

  `00100
  11110
  10110
  10111
  10101
  01111
  00111
  11100
  10000
  11001
  00010
  01010
  `Considering only the first bit of each number, there are five `0` bits and seven
  `1` bits. Since the most common bit is `1`, the first bit of the gamma rate is
  `1`. 

  The most common second bit of the numbers in the diagnostic report is `0`, so
  the second bit of the gamma rate is `0`. 

  The most common value of the third, fourth, and fifth bits are `1`, `1`, and
  `0`, respectively, and so the final three bits of the gamma rate are `110`. 

  So, the gamma rate is the binary number `10110`, or `*22*` in decimal. 

  The epsilon rate is calculated in a similar way; rather than use the most common
  bit, the least common bit from each position is used. So, the epsilon rate is
  `01001`, or `*9*` in decimal. Multiplying the gamma rate (`22`) by the epsilon
  rate (`9`) produces the power consumption, `*198*`. 

  Use the binary numbers in your diagnostic report to calculate the gamma rate and
  epsilon rate, then multiply them together. *What is the power consumption of the
  submarine?* (Be sure to represent your answer in decimal, not binary.) 


  """

  @doc """

  """
  def part_1(input) do
    input
    |> String.split("\n")
    |> Enum.map(&String.graphemes/1)
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.map(&Enum.frequencies/1)
    |> Enum.reduce(["", ""], fn %{"0" => zero, "1" => one}, [most, least] ->
      case zero > one do
        true -> [most <> "0", least <> "1"]
        false -> [most <> "1", least <> "0"]
      end
    end)
    |> Enum.map(fn value -> value |> String.to_integer(2) end)
    |> Enum.reduce(1, fn value, acc -> acc * value end)
  end

  @doc """

  """
  def part_2(input) do
    rows = input
           |> String.split("\n")
           |> Enum.map(&String.graphemes/1)

    0..length(hd(rows))
    |> Enum.reduce([], fn i, acc ->

    end)
  end
end
