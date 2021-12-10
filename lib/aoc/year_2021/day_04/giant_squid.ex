defmodule Aoc.Year2021.Day04.GiantSquid do
  @moduledoc """
  ## --- Day 4: Giant Squid --- 

  You're already almost 1.5km (almost a mile) below the surface of the ocean,
  already so deep that you can't see any sunlight. What you *can* see, however, is
  a giant squid that has attached itself to the outside of your submarine. 

  Maybe it wants to play bingo? 

  Bingo is played on a set of boards each consisting of a 5x5 grid of numbers.
  Numbers are chosen at random, and the chosen number is *marked* on all boards on
  which it appears. (Numbers may not appear on all boards.) If all numbers in any
  row or any column of a board are marked, that board *wins*. (Diagonals don't
  count.) 

  The submarine has a *bingo subsystem* to help passengers (currently, you and the
  giant squid) pass the time. It automatically generates a random order in which
  to draw numbers and a random set of boards (your puzzle input). For example: 

  `7,4,9,5,11,17,23,2,0,14,21,24,10,16,13,6,15,25,12,22,18,20,8,19,3,26,1

  22 13 17 11  0
   8  2 23  4 24
  21  9 14 16  7
   6 10  3 18  5
   1 12 20 15 19

   3 15  0  2 22
   9 18 13 17  5
  19  8  7 25 23
  20 11 10 24  4
  14 21 16 12  6

  14 21 17 24  4
  10 16 15  9 19
  18  8 23 26 20
  22 11 13  6  5
   2  0 12  3  7
  `After the first five numbers are drawn (`7`, `4`, `9`, `5`, and `11`), there are
  no winners, but the boards are marked as follows (shown here adjacent to each
  other to save space): 

  `22 13 17 *11*  0         3 15  0  2 22        14 21 17 24  *4*
   8  2 23  *4* 24         *9* 18 13 17  *5*        10 16 15  *9* 19
  21  *9* 14 16  *7*        19  8  *7* 25 23        18  8 23 26 20
   6 10  3 18  *5*        20 *11* 10 24  *4*        22 *11* 13  6  *5*
   1 12 20 15 19        14 21 16 12  6         2  0 12  3  *7*`After the next six numbers are drawn (`17`, `23`, `2`, `0`, `14`, and `21`),
  there are still no winners: 

  `22 13 *17**11**0*         3 15  *0**2* 22        *14**21**17* 24  *4*
   8  *2**23**4* 24         *9* 18 13 *17**5*        10 16 15  *9* 19
  *21**9**14* 16  *7*        19  8  *7* 25 *23*        18  8 *23* 26 20
   6 10  3 18  *5*        20 *11* 10 24  *4*        22 *11* 13  6  *5*
   1 12 20 15 19        *14**21* 16 12  6         *2**0* 12  3  *7*`Finally, `24` is drawn: 

  `22 13 *17**11**0*         3 15  *0**2* 22        *14**21**17**24**4*
   8  *2**23**4**24**9* 18 13 *17**5*        10 16 15  *9* 19
  *21**9**14* 16  *7*        19  8  *7* 25 *23*        18  8 *23* 26 20
   6 10  3 18  *5*        20 *11* 10 *24**4*        22 *11* 13  6  *5*
   1 12 20 15 19        *14**21* 16 12  6         *2**0* 12  3  *7*`At this point, the third board *wins* because it has at least one complete row
  or column of marked numbers (in this case, the entire top row is marked: `*14 21
  17 24 4*`). 

  The *score* of the winning board can now be calculated. Start by finding the
  *sum of all unmarked numbers* on that board; in this case, the sum is `188`.
  Then, multiply that sum by *the number that was just called* when the board won,
  `24`, to get the final score, `188 * 24 = *4512*`. 

  To guarantee victory against the giant squid, figure out which board will win
  first. *What will your final score be if you choose that board?* 


  """

  @doc """

  """
  def part_1(input) do
    {boards, numbers} = input |> prepare_input()

    {winner_board, winner_call} =
      next_number(boards, numbers, [])
      |> Enum.reverse()
      |> hd()

    winner_sum(winner_board) * winner_call
  end

  def part_2(input) do
    {boards, numbers} = input |> prepare_input()

    {winner_board, winner_call} =
      next_number(boards, numbers, [])
      |> hd()

    winner_sum(winner_board) * winner_call
  end

  defp winner_sum(board) do
    board
    |> List.flatten()
    |> Enum.reject(&is_nil/1)
    |> Enum.sum()
  end

  defp next_number(_, [], _), do: raise("no more numbers")

  defp next_number([], _, winners), do: winners

  defp next_number(boards, numbers, winners) do
    called = hd(numbers)

    {new_boards, winners} =
      boards
      |> Enum.reduce({[], winners}, fn board, {acc_boards, acc_winners} ->
        new_board = board |> mark_called_numbers(called)

        case max_count(new_board) == 5 do
          true -> {acc_boards, [{new_board, called} | acc_winners]}
          false -> {[new_board | acc_boards], acc_winners}
        end
      end)

    next_number(new_boards |> Enum.reverse(), tl(numbers), winners)
  end

  defp max_count(board) do
    (horizontal_counts(board) ++ vertical_counts(board)) |> Enum.max()
  end

  defp horizontal_counts(board) do
    board |> Enum.map(fn row -> row |> Enum.count(&is_nil/1) end)
  end

  defp vertical_counts(board) do
    board
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
    |> Enum.map(fn row -> row |> Enum.count(&is_nil/1) end)
  end

  defp mark_called_numbers(board, called) do
    Enum.map(board, fn row ->
      Enum.map(row, fn num ->
        case num == called do
          true -> nil
          false -> num
        end
      end)
    end)
  end

  defp prepare_input(input) do
    [a | b] = input |> String.split("\n\n")
    numbers = a |> String.split(",") |> Enum.map(&String.to_integer/1)
    boards = prepare_boards(b)
    {boards, numbers}
  end

  defp prepare_boards(b) do
    b
    |> Enum.map(fn board ->
      board
      |> String.split("\n")
      |> Enum.map(fn row ->
        row
        |> String.split(" ")
        |> Enum.reject(fn value -> value == "" end)
        |> Enum.map(&String.to_integer/1)
      end)
    end)
  end
end
