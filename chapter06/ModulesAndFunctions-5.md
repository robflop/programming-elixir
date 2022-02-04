# ModulesAndFunctions-5

Write a function gcd(x,y) that finds the greatest common divisor between two nonnegative integers.
Algebraically, gcd(x,y) is x if y is zero; it’s gcd(y,rem(x,y)) otherwise.

```elixir
defmodule Division do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
```

```bash
$ iex "chapter06/Division.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Division.gcd(24, 0)
24
iex(2)> Division.gcd(24, 12)
12
iex(3)> Division.gcd(24, 4)
4
iex(4)> Division.gcd(24, 3)
3
iex(5)> Division.gcd(24, 36)
12
```