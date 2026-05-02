defmodule Solution do
  def response do
    calculate(999, 999, []) |> Enum.max
  end

  defp calculate(first, second, acc) do
    num = first * second
    if palindromic?(num) do
      decrement(first, second, [num | acc])
    else
      decrement(first, second, acc)
    end
  end

  defp palindromic?(num) do
    str = num |> Integer.to_string

    str == (str |> String.reverse)
  end

  defp decrement(100, 100, acc), do: acc
  defp decrement(first, second, acc) when first > 100, do: calculate(first - 1, second, acc)
  defp decrement(100, second, acc) when second > 100, do: calculate(999, second - 1, acc)
end

IO.puts Solution.response

