# Exercise: Functions-3

The operator rem(a, b) returns the remainder after dividing a by b.
Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n.
Call it seven times with the arguments 10, 11, 12, and so on.
You should get "Buzz, 11, Fizz, 13, 14, FizzBuzz, 16."

---

```elixir
fizzPartOne = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, trd) -> trd
end

fizzPartTwo = fn n -> fizzPartOne.(rem(n, 3), rem(n, 5), n) end

IO.puts(fizzPartTwo.(10))
IO.puts(fizzPartTwo.(11))
IO.puts(fizzPartTwo.(12))
IO.puts(fizzPartTwo.(13))
IO.puts(fizzPartTwo.(14))
IO.puts(fizzPartTwo.(15))
IO.puts(fizzPartTwo.(16))
```