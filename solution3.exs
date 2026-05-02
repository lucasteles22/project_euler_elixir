defmodule Solution do
  @number 600851475143

  def response do
    sqrt = :math.sqrt(@number) |> trunc()

    1..sqrt
    |> Enum.filter(&(rem(@number, &1) == 0))
    |> Enum.flat_map(fn x ->
      pair = div(@number, x)
      if x == pair, do: [x], else: [x, pair]
    end)
    |> Enum.filter(&(&1 > 1))
    |> Enum.sort(:desc)
    |> Enum.find(&check/1)
  end

  defp check(num) when num < 2, do: false

  defp check(2), do: true

  defp check(num) when rem(num, 2) == 0, do: false

  defp check(num) do
    limit = :math.sqrt(num) |> trunc()

    not Enum.any?(3..limit//2, fn x -> rem(num, x) == 0 end)
  end
end

IO.puts Solution.response

