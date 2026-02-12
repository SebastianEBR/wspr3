defmodule NumberList do
  def new(), do: []

  def create(list, number) when is_number(number),
    do: list ++ [number]

  def read(list), do: list

  def update(list, index, new_value)
      when is_integer(index) and is_number(new_value) do
    if index >= 0 and index < length(list) do
      List.replace_at(list, index, new_value)
    else
      {:error, "Índice fuera de rango"}
    end
  end

  def delete(list, index) when is_integer(index) do
    if index >= 0 and index < length(list) do
      List.delete_at(list, index)
    else
      {:error, "Índice fuera de rango"}
    end
  end
end
