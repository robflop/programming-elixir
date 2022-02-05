# ModulesAndFunctions-3

Add a quadruple function. (Maybe it could call the double function.…)

---

```elixir
defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end
```