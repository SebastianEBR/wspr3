defmodule MapasMerge do
  def ejecutar do
    m1 = %{a: 1, b: 2}
    m2 = %{b: 20, c: 3}
    merged = Map.merge(m1, m2)
    merged_custom = Map.merge(m1, m2, fn _k, v1, v2 -> v1 + v2 end)

    IO.puts("\\n== Merge ==")
    IO.inspect(merged)
    IO.inspect(merged_custom)
  end
end
