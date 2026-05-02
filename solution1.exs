defmodule Solution do
  @ceiling 1000

  def sum do
    Stream.unfold({1}, fn {a} ->
      {a, {a + 1}}
    end)
    |> Stream.take_while(&(&1 <= @ceiling))
    |> Stream.filter(&(rem(&1, 3) == 0 || rem(&1, 5) == 0))
    |> Enum.sum()
  end
end

IO.puts Solution.sum

