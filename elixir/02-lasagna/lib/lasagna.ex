defmodule Lasagna do
  @expected_minutes_in_oven 40

  def expected_minutes_in_oven(), do: @expected_minutes_in_oven

  def alarm(), do: "Ding!"

  def remaining_minutes_in_oven(elapsed_baking_time) do
    @expected_minutes_in_oven - elapsed_baking_time
  end

  def preparation_time_in_minutes(num_of_layers) do
    num_of_layers * 2
  end

  def total_time_in_minutes(num_of_layers, elapsed_baking_time) do
    preparation_time_in_minutes(num_of_layers) + elapsed_baking_time
  end
end
