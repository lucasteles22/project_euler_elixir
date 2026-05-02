defmodule Solution do
  def response do
    square_of_the_sum(100) - sum_of_the_squares(100)
  end

  # optimized version

  # Sum of the First n Squares
  defp sum_of_the_squares(ceiling) do
    div(ceiling * (ceiling + 1) * (2 * ceiling + 1), 6)
  end

  # Gauss sum
  defp square_of_the_sum(ceiling) do
    div(ceiling * (ceiling + 1), 2) |> Integer.pow(2)
  end

  # --------------

  # first version

  # defp sum_of_the_squares(ceiling) do
  #   1..ceiling
  #   |> Enum.map(&(&1 * &1))
  #   |> Enum.sum
  # end
  #
  # defp square_of_the_sum(ceiling) do
  #   1..ceiling
  #   |> Enum.sum
  #   |> Integer.pow(2)
  # end
end

IO.puts Solution.response

