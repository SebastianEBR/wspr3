defmodule Academia do
  def main do
    nombreUsuario = "Ingrese el nombre"
    |> Util.ingresar(:texto)

    edadUsuario = "ingrese la edad"
    |> Util.ingresar(:entero)

    credenciales = "¿Tiene credenciales, (1=SI, 2=NO)?"
    |> Util.ingresar(:entero)

    intentos = "¿cuantos intentos fallidos llevas?"
    |> Util.ingresar(:entero)


    validar_ingreso(nombreUsuario, validarEdad(edadUsuario), validarcredenciales(credenciales), validarIntentos(intentos))
    |> Util.mostrar_mensaje()
    end

    defp validarcredenciales(credenciales) do
      validacion =
        cond do
          credenciales == 1 -> true

          true -> false
        end
        validacion
    end

    defp validarIntentos(intentos) do
      validacion =
        cond do
          intentos > 3 -> false
          true -> true
        end
        validacion
    end

    defp validarEdad(edadUsuario) do
      validacion =
        cond do
          edadUsuario >= 18 -> true

          true -> false
        end
        validacion

    end

    defp validar_ingreso(nombre, edad_valida, credenciales_validas, intentos_validos) do
    if edad_valida and credenciales_validas and intentos_validos do
      {:ok, "#{nombre} tiene Ingreso correcto"}
    else
      {:error, "#{nombre} tiene Ingreso denegado"}
    end
  end
end


Academia.main()
