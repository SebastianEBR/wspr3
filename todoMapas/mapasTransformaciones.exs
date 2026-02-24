defmodule MapasTransformaciones do
  def ejecutar do
    m1 = %{a: 1, b: 2}
    squared_values = m1 |> Enum.map(fn {k, v} -> {k, v * v} end) |> Map.new()
    m_from_list = Map.new([{:x, 10}, {:y, 20}])
    m_from_fn = Map.new(1..3, fn i -> {"k#{i}", i * 10} end)

    IO.puts("\n== Transformaciones ==")
    IO.inspect(squared_values)
    IO.inspect(m_from_list)
    IO.inspect(m_from_fn)
  end
end
