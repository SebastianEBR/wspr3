defmodule MapasCreacion do
  def ejecutar do
    map1 = %{}
    map2 = %{a: 1, b: 2}
    map3 = %{"a" => 1, "b" => 2}
    map4 = %{a: 1, b: %{x: 10, y: 20}}

    IO.puts("\\n== Creación ==")
    IO.inspect(map1)
    IO.inspect(map2)
    IO.inspect(map3)
    IO.inspect(map4)
  end
end
