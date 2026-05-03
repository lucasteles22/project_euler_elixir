defmodule Solution do
  @ceiling 2_000_000

  def response do
    calculate(2, 0)
  end

  defp calculate(num, acc) do
    cond do
      prime?(num) and num > @ceiling ->
        acc
      prime?(num) ->
        calculate(num + 1, acc + num)
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

IO.puts(Solution.response)

