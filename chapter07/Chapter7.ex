defmodule Chapter7 do
  def mapsum([], _fun), do: 0
  def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun)

  def max_list([]), do: nil
  def max_list([head | tail]), do: max_list(tail, head)
  def max_list([], currentMax), do: currentMax
  def max_list([head | tail], currentMax) when head > currentMax, do: max_list(tail, head)
  def max_list([_head | tail], currentMax), do: max_list(tail, currentMax)

  def caesar([], _n), do: ''
  def caesar([head | tail], n) when head + n > 122 do
    overflow = (head + n) - 123 # Calculate overflow for wrapback
    [97 + overflow | caesar(tail, n)]
  end
  def caesar([head | tail], n), do: [head + n | caesar(tail, n)]
end