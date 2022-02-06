# ListsAndRecursion-1

Write a mapsum function that takes a list and a function.
It applies the function to each element of the list and then sums the result, so:

```bash
iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
14
```

---

```elixir
defmodule Chapter7 do
  def mapsum([], _fun), do: 0
  def mapsum([head | tail], fun), do: fun.(head) + mapsum(tail, fun)
end
```

```bash
iex(2)> Chapter7.mapsum([], &(&1 * 2))
0
iex(3)> Chapter7.mapsum([1], &(&1 * 2))
2
iex(4)> Chapter7.mapsum([1, 2], &(&1 * 2))
6
```