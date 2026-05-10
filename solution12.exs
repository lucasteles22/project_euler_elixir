defmodule Solution do

  @ceiling 500

  def response do
    {result, _} = Stream.iterate(1, &(&1 + 1))
      |> Stream.scan(0, fn n, acc -> n + acc end)
      |> Stream.map(fn n ->{n, count_divisors(n)}  end)
      |> Enum.find(fn {_n, total} -> total > @ceiling  end)

    result
  end

  defp count_divisors(num) do
    limit = :math.sqrt(num) |> trunc()
    count = Enum.count(1..limit, &(rem(num, &1) == 0))

    if limit * limit == num do
      (count * 2) - 1
    else
      count * 2
    end
  end
end

IO.puts(Solution.response)

