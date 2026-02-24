defmodule MapasMapSet do
  def ejecutar do
    set = MapSet.new([1, 2, 3, 1])
    IO.puts("\\n== MapSet vs Map ==")
    IO.inspect(set)
  end
end
