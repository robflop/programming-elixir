# Exercise: Functions-2

Write a function that takes three arguments.
If the first two are zero, return "FizzBuzz."
If the first is zero, return "Fizz."
If the second is zero, return "Buzz."
Otherwise return the third argument.

Do not use any language features that we haven’t yet covered in this book.

```elixir
fizzPartOne = fn
  (0, 0, _) -> "FizzBuzz"
	(0, _, _) -> "Fizz"
	(_, 0, _) -> "Buzz"
	(_, _, trd) -> trd
end
```