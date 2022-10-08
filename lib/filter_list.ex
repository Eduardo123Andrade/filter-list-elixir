defmodule FilterList do
  defp fn_is_number(number), do: is_number(number)

  defp is_odd(number), do: rem(number, 2) != 0

  def filter(list) do
    filtred_list = list |> Enum.filter(&fn_is_number/1)
    odd_list = filtred_list |> Enum.filter(&is_odd/1)
    Enum.count(odd_list)
  end

  # def filter([]), do: 0
end
