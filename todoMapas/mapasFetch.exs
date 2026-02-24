defmodule MapasFetch do
  def ejecutar do
    map2 = %{a: 1, b: 2}
    {:ok, va} = Map.fetch(map2, :a)
    IO.puts("\\n== Fetch vs Get ==")
    IO.inspect(va)
    IO.inspect(Map.get(map2, :z))
    IO.inspect(Map.get(map2, :z, :nohay))
  end
end
