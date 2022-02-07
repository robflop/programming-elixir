# ModulesAndFunctions-5

Write a function gcd(x,y) that finds the greatest common divisor between two nonnegative integers.
Algebraically, gcd(x,y) is x if y is zero; it’s gcd(y,rem(x,y)) otherwise.

---

```elixir
defmodule Chapter6 do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
```

```bash
$ iex "chapter06/Chapter6.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter6.gcd(24, 0)
24
iex(2)> Chapter6.gcd(24, 12)
12
iex(3)> Chapter6.gcd(24, 4)
4
iex(4)> Chapter6.gcd(24, 3)
3
iex(5)> Chapter6.gcd(24, 36)
12
```