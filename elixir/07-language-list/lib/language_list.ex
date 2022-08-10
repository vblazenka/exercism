defmodule LanguageList do
  @fp_lang "Elixir"

  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list) do
    [_ | rest] = list

    rest
  end

  def first(list), do: hd(list)

  def count(list), do: length(list)

  def functional_list?(list), do: @fp_lang in list
end
