# ModulesAndFunctions-6

I’m thinking of a number between 1 and 1000.…

The most efficient way to find the number is to guess halfway between the low and high numbers of the range.
If our guess is too big, then the answer lies between the bottom of the range and one less than our guess.
If our guess is too small, then the answer lies between one more than our guess and the end of the range.
Your API will be guess(actual, range), where range is an Elixir range.
Your output should look similar to this:

```bash
iex> Chop.guess(273, 1..1000)
Is it 500
Is it 250
Is it 375
Is it 312
Is it 281
Is it 265
Is it 273
273
```

---

```elixir
defmodule Chapter6 do
  def guess(actual, range) when is_integer(actual) and is_map(range) do
    low..high = range
    rangeMiddle = div((low + high), 2);
    IO.puts("Is the number #{rangeMiddle}?")
    checkGuess(actual, range, rangeMiddle)
  end

  def checkGuess(actual, range, guess) when actual < guess do
    IO.puts("Guessed too high.")
    low.._ = range
    guess(actual, low..guess)
  end

  def checkGuess(actual, range, guess) when actual > guess do
    IO.puts("Guessed too low.")
    _..high = range
    guess(actual, guess..high)
  end

  def checkGuess(actual, _, guess) when actual == guess do
    IO.puts("Guessed just right!")
  end
end
```

```bash
$ iex "chapter06/Chapter6.ex"
Interactive Elixir (1.13.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Chapter6.guess(273, 1..1000)
Is the number 500?
Guessed too high.
Is the number 250?
Guessed too low.
Is the number 375?
Guessed too high.
Is the number 312?
Guessed too high.
Is the number 281?
Guessed too high.
Is the number 265?
Guessed too low.
Is the number 273?
Guessed just right!
:ok
```