defmodule Solution do
  @ceiling 10_001

  def response do
    calculate(2, 0)
  end

  defp calculate(num, acc) do
    cond do
      prime?(num) and acc + 1 == @ceiling ->
        num
      prime?(num) ->
        calculate(num + 1, acc + 1)
      true ->
        calculate(num + 1, acc)
    end
  end

  defp prime?(num) when num < 2, do: false

  defp prime?(2), do: true

  defp prime?(num) when rem(num, 2) == 0, do: false

  defp prime?(num) do
    limit = :math.sqrt(num) |> trunc()

    not Enum.any?(3..limit//2, fn x -> rem(num, x) == 0 end)
  end
end

IO.puts Solution.response

