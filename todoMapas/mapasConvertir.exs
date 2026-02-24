defmodule Persona do
  defstruct [:nombre, :edad]
end

defmodule MapasConvertir do
  def ejecutar do
    map2 = %{a: 1, b: 2}
    list = Map.to_list(map2)
    map_from_list = Map.new(list)
    p = %Persona{nombre: "Ana", edad: 30}
    map_from_struct = Map.from_struct(p)

    IO.puts("\\n== Convertir ==")
    IO.inspect(list)
    IO.inspect(map_from_list)
    IO.inspect(p)
    IO.inspect(map_from_struct)
  end
end
