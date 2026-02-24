defmodule MapasAcceso do
  def ejecutar do
    map2 = %{a: 1, b: 2}
    map3 = %{"a" => 1, "b" => 2}

    val_a = map2.a
    val_b = map2[:b]
    val_str = Map.get(map3, "a")
    missing = Map.get(map2, :c, :default)

    IO.puts("\\n== Acceso ==")
    IO.inspect({val_a, val_b, val_str, missing})
  end
end
