defmodule Academia do
  def main do
    nombreUsuario = "Ingrese el nombre"
    |> Util.ingresar(:texto)

    edadUsuario = "ingrese la edad"
    |> Util.ingresar(:entero)

    credenciales = "¿Tiene credenciales, (1=SI, 2=NO)?"
    |> Util.ingresar(:entero)



    validarIngreso(nombreUsuario, validarEdad(edadUsuario), validarcredenciales(credenciales))
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

    defp validarEdad(edadUsuario) do
      validacion =
        cond do
          edadUsuario >= 18 -> true

          true -> false
        end
        validacion

    end

    defp validarIngreso(nombreUsuario, edadUsuario, credenciales) do

      mensaje =
        cond do
          nombreUsuario == "Sebas" && validarEdad(edadUsuario) && validarcredenciales(credenciales)  -> {:ok, "ingreso correcto"}

          true -> {:error, "ingreso denegado"}

        end
        mensaje
    end
end


Academia.main()
