defmodule MapasActualizacion do
  def ejecutar do
    map2 = %{a: 1, b: 2}

    map2_updated = %{map2 | a: 10}
    map2_put = Map.put(map2, :c, 3)
    map2_put_new = Map.put_new(map2, :a, 99)
    map2_put_new2 = Map.put_new(map2, :d, 4)

    IO.puts("\\n== Actualización ==")
    IO.inspect(map2_updated)
    IO.inspect(map2_put)
    IO.inspect(map2_put_new)
    IO.inspect(map2_put_new2)
  end
end
