defmodule Chapter6 do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

  def sum(0), do: 0
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

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