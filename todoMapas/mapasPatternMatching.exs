defmodule MapasPatternMatching do
  def ejecutar do
    %{a: va, b: vb} = %{a: 1, b: 2, c: 3}
    x = 100
    %{a: ^x} = %{a: 100}
    IO.puts("\\n== Pattern matching ==")
    IO.inspect({va, vb})
  end
end
