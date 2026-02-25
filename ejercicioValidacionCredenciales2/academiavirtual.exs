defmodule Academia do
  def main do
    nombreUsuario = "Ingrese el nombre "
    |> Util.ingresar(:texto)

    edadUsuario = "ingrese la edad "
    |> Util.ingresar(:entero)

    credenciales = "¿Tiene credenciales, (1=SI, 2=NO)? "
    |> Util.ingresar(:entero)

    intentos = "¿cuantos intentos fallidos llevas? "
    |> Util.ingresar(:entero)


    validar_ingreso(nombreUsuario, edadUsuario, credenciales, intentos)
    |> mostrar_mensaje()
  end

  defp validar_ingreso(nombre, edad_valida, credenciales_validas, intentos_validos) do
    unless edad_valida >= 18 do
      {:denied, "#{nombre} de #{edad_valida} años, es menor de edad"}
    else

      if credenciales_validas != 1 do
        {:denied, "#{nombre} no tiene credenciales"}
      else
        if intentos_validos > 3 do
          {:denied, "#{nombre} ya ha intentado mas de 3 veces"}
        else
          {:ok, "#{nombre} tiene acceso correcto"}
        end
      end
    end
  end

  defp mostrar_mensaje({:ok, mensaje}) do
    mensaje
    |> IO.puts()
  end

  defp mostrar_mensaje({:denied, mensaje}) do
    mensaje
    |> IO.puts()
  end
end


Academia.main()
