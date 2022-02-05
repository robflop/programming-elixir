defmodule Guesser do
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