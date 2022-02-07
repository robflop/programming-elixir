# ListsAndRecursion-4

Write a function MyList.span(from, to) that returns a list of the numbers from from up to to.

---

```elixir
defmodule Chapter7 do
  def span(from, to) when is_integer(from) and is_integer(to) and from > to, do: raise ArgumentError, message: "from may not be bigger than to"
  def span(from, to) when is_integer(from) and is_integer(to) and from == to, do: [from]
  def span(from, to) when is_integer(from) and is_integer(to), do: [ from | span(from + 1, to) ]
end
```

```bash
$ iex "chapter07/Chapter7.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter7.span(0, 0)
[0]
iex(2)> Chapter7.span(0, 1)
[0, 1]
iex(3)> Chapter7.span(0, 10)
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
iex(4)> Chapter7.span(-5, 10)
[-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
iex(5)> Chapter7.span(5, 3)
** (ArgumentError) from may not be bigger than to
    chapter07/Chapter7.ex:18: Chapter7.span/2
iex(5)>
```