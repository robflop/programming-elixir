# ListsAndRecursion-2

Write a max(list) that returns the element with the maximum value in the list.
(This is slightly trickier than it sounds.)

---

```elixir
defmodule Chapter7 do
  def max_list([]), do: nil
  def max_list([head | tail]), do: max_list(tail, head)
  def max_list([], currentMax), do: currentMax
  def max_list([head | tail], currentMax) when head > currentMax, do: max_list(tail, head)
  def max_list([_head | tail], currentMax), do: max_list(tail, currentMax)
end
```

```bash
$ iex "chapter07/Chapter7.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter7.maxlist([])
nil
iex(2)> Chapter7.maxlist([1])
1
iex(3)> Chapter7.max_list([1, 1])
1
iex(4)> Chapter7.max_list([1, 2])
2
iex(5)> Chapter7.max_list([1, -1])
1
iex(6)> Chapter7.max_list([-1, -2])
-1
iex(7)> Chapter7.max_list([1, 2, 3, 4, 5])
5
iex(8)> Chapter7.max_list([1, 3, 5, 2, 3])
5
```