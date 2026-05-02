defmodule Solution do
  @ceiling 4_000_000

  def sum do
    Stream.unfold({1, 2}, fn {a, b} ->
      {a, {b, a + b}}
    end)
    |> Stream.take_while(&(&1 <= @ceiling))
    |> Stream.filter(&(rem(&1, 2) == 0))
    |> Enum.sum()
  end
end

IO.puts Solution.sum

