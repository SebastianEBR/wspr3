defmodule MapasUtilidades do
  def ejecutar do
    map2 = %{a: 1, b: 2}

    has_a = Map.has_key?(map2, :a)
    size = map_size(map2)
    keys = Map.keys(map2)
    values = Map.values(map2)

    IO.puts("\\n== Utilidades ==")
    IO.inspect({has_a, size, keys, values})
  end
end
