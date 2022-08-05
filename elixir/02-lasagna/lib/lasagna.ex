defmodule Lasagna do
  def expected_minutes_in_oven, do: 40
  def alarm(), do: "Ding!"

  def remaining_minutes_in_oven(elapsedBakingTime) do
    expected_minutes_in_oven() - elapsedBakingTime
  end

  def preparation_time_in_minutes(numOfLayers) do
    numOfLayers * 2
  end

  def total_time_in_minutes(numOfLayers, elapsedBakingTime) do
    preparation_time_in_minutes(numOfLayers) + elapsedBakingTime
  end
end
