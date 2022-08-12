defmodule KitchenCalculator do
  def get_volume({_, volume}), do: volume

  def to_milliliter({unit, volume}), do: {:milliliter, volume * amount(unit)}

  def from_milliliter({_, volume}, target), do: {target, volume / amount(target)}

  def convert(volume_pair, target) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(target)
  end

  defp amount(unit) do
    case unit do
      :cup -> 240
      :fluid_ounce -> 30
      :teaspoon -> 5
      :tablespoon -> 15
      :milliliter -> 1
    end
  end
end
