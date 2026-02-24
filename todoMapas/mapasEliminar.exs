defmodule MapasEliminar do
  def ejecutar do
    map = %{a: 1, b: 2, c: 3}
    map_del = Map.delete(map, :b)
    IO.puts("\\n== Eliminar ==")
    IO.inspect(map_del)
  end
end
