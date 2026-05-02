defmodule Solution do
  def response do
    calculate(100)
  end

  defp calculate(num) do
    if divisible?(num) do
      num
    else
      calculate(num + 1)
    end
  end

  defp divisible?(num) do
    Enum.all?(20..2//-1, fn divisor ->
      rem(num, divisor) == 0
    end)
  end
end

IO.puts(Solution.response)

