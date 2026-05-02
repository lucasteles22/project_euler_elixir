defmodule Solution do
  @ceiling 1000

  def response do
    1..div(@ceiling, 3)
    |> Enum.find_value(fn a ->
      (a + 1)..div(@ceiling, 2)
      |> Enum.find_value(fn b ->
        c = @ceiling - a - b
        if a*a + b*b == c*c do
          a*b*c
        end
      end)
    end)
  end
end

IO.puts(Solution.response)

