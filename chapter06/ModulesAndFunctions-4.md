# ModulesAndFunctions-4

Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n.
You’ll need to write this function inside a module in a separate file.
Then load up IEx, compile that file, and try your function.

---

```elixir
defmodule Sum do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: n + of(n-1)
end
```

```bash
$ iex "chapter06/Sum.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Sum.of(0)
0
iex(2)> Sum.of(1)
1
iex(3)> Sum.of(2)
3
iex(4)> Sum.of(10)
55
iex(5)>
```