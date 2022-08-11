defmodule GuessingGame do
  @correct "Correct"
  @close "So close"
  @high "Too high"
  @low "Too low"
  @guess "Make a guess"

  defguard is_no_guess(guess) when guess == :no_guess

  def compare(secret_number, guess) when secret_number == guess, do: @correct
  def compare(_, guess \\ :no_guess)
  def compare(_, guess) when is_no_guess(guess), do: @guess
  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: @close
  def compare(secret_number, guess) when secret_number > guess, do: @low
  def compare(secret_number, guess) when secret_number < guess, do: @high
end
