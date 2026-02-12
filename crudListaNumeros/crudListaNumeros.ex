defmodule NumberList do
  # Crear lista vacía
  def new(), do: []

  # C - Crear: agrega un número
  def create(list, number) when is_number(number) do
    list ++ [number]
  end

  # R - Leer: devuelve la lista completa
  def read(list), do: list

  # U - Actualizar: reemplaza un número en un índice
  def update(list, index, new_value) when is_integer(index) and is_number(new_value) do
    if index < length(list) and index >= 0 do
      List.replace_at(list, index, new_value)
    else
      {:error, "Índice fuera de rango"}
    end
  end

  # D - Eliminar: quita un número en un índice
  def delete(list, index) when is_integer(index) do
    if index < length(list) and index >= 0 do
      List.delete_at(list, index)
    else
      {:error, "Índice fuera de rango"}
    end
  end
end


#c("crudListaNumeros.ex")
#list = NumberList.new()
#list = NumberList.create(list, 10)
#list = NumberList.create(list, 25)
#list = NumberList.create(List, 55)
#NumberList.read(list)
