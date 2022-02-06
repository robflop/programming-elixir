# ListsAndRecursion-3

An Elixir single-quoted string is actually a list of individual character codes.
Write a caesar(list, n) function that adds n to each list element, wrapping if the addition results in a character greater than z.

```bash
iex> MyList.caesar('ryvkve', 13)
?????? :)
```

---

```elixir
defmodule Chapter 7 do
  def caesar([], _n), do: ''
  def caesar([head | tail], n) when head + n > 122 do
    overflow = (head + n) - 123 # Calculate overflow for wrapback
    [97 + overflow | caesar(tail, n)]
  end
  def caesar([head | tail], n), do: [head + n | caesar(tail, n)]
end
```

```bash
$ iex "chapter07/Chapter7.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter7.caesar('abc', 0)
'abc'
iex(2)> Chapter7.caesar('abc', 1)
'bcd'
iex(3)> Chapter7.caesar('abc', 25)
'zab'
iex(4)> Chapter7.caesar('abc', 26)
'abc'
iex(5)> Chapter7.caesar('', 1)
''
iex(5)> Chapter7.caesar('ryvkve', 13)
'elixir'
```