defmodule Secrets do
  def secret_add(secret), do: &(&1 + secret)

  def secret_subtract(secret), do: &(&1 - secret)

  def secret_multiply(secret), do: &(&1 * secret)

  def secret_divide(secret), do: &Kernel.div(&1, secret)

  def secret_and(secret), do: &Bitwise.band(&1, secret)

  def secret_xor(secret), do: &Bitwise.bxor(&1, secret)

  # secret_function2.(secret_function1.(param))
  # param |> secret_function1.() |> secret_function2.()
  def secret_combine(secret_function1, secret_function2), do:
    &(&1 |> then(secret_function1) |> then(secret_function2))
end
