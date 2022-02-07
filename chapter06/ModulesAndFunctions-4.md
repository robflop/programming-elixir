# ModulesAndFunctions-4

Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n.
You’ll need to write this function inside a module in a separate file.
Then load up IEx, compile that file, and try your function.

---

```elixir
defmodule Chapter6 do
  def sum(0), do: 0
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)
end
```

```bash
$ iex "chapter06/Chapter6.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter6.sum(0)
0
iex(2)> Chapter6.sum(1)
1
iex(3)> Chapter6.sum(2)
3
iex(4)> Chapter6.sum(10)
55
iex(5)>
```