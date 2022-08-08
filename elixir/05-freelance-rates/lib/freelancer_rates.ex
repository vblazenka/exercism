defmodule FreelancerRates do
  @daily_rate 8.0
  @monthly_billable_days 22

  def daily_rate(hourly_rate), do:
    hourly_rate * @daily_rate

  def apply_discount(before_discount, discount), do:
    before_discount * (100 - discount) / 100

  def monthly_rate(hourly_rate, discount), do:
    daily_discounted_price(hourly_rate, discount)
      |> Kernel.*(@monthly_billable_days)
      |> ceil


  def days_in_budget(budget, hourly_rate, discount) do
    budget
      # just a bit of practice to use anonymouse functions and capture
      # operator in pipeing
      |> then((&(&1 / daily_discounted_price(hourly_rate, discount))))
      |> Float.floor(1)
  end


  defp daily_discounted_price(hourly_rate, discount) do
    hourly_rate
      |> daily_rate
      |> apply_discount(discount)
  end
end
