defmodule ListaDemo do
  # Inicializar lista
  def lista_inicial do
    [5, 2, 9, 1, 7]
  end

  # Agregar elementos (al principio o al final)
  def agregar_elementos(lista) do
    lista = lista ++ [10]       # Agrega al final
    [15 | lista]                 # Agrega al principio
  end

  # Eliminar un elemento (el primero que coincida)
  def eliminar_elemento(lista, elem) do
    Enum.reject(lista, fn x -> x == elem end)
  end

  # Ordenar lista
  def ordenar_lista(lista) do
    Enum.sort(lista)            # Ascendente
  end

  def ordenar_descendente(lista) do
    Enum.sort(lista, &>=/2)    # Descendente
  end

  # Buscar elemento
  def buscar_elemento(lista, elem) do
    Enum.find_index(lista, fn x -> x == elem end)
  end
end

# Ejemplo de uso
lista = ListaDemo.lista_inicial()
lista = ListaDemo.agregar_elementos(lista)
IO.inspect(lista, label: "Lista con elementos agregados")

lista = ListaDemo.eliminar_elemento(lista, 2)
IO.inspect(lista, label: "Lista después de eliminar 2")

IO.inspect(ListaDemo.ordenar_lista(lista), label: "Lista orden ascendente")
IO.inspect(ListaDemo.ordenar_descendente(lista), label: "Lista orden descendente")

pos = ListaDemo.buscar_elemento(lista, 9)
IO.puts("Posición de 9: #{pos}")
