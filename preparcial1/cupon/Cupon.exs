Code.require_file("../util.ex", __DIR__)

defmodule Cupon do
  alias Util

  def main do
    "Ingrese el cupón: "
    |> Util.ingresar(:texto)
    |> validar_cupon()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp validar_cupon(cupon) do
    errores = []

    errores =
      errores
      |> agregar_error(not validar_cantidad?(cupon), "El cupón debe tener al menos 10 caracteres ")
      |> agregar_error(not validar_mayuscula?(cupon), "Debe tener al menos una letra mayúscula ")
      |> agregar_error(not validar_numero?(cupon), "Debe tener al menos un número ")
      |> agregar_error(validar_espacios?(cupon), "No puede tener espacios ")

    if errores == [] do
      {:ok, "Cupón válido"}

    else
      {:error, errores}
    end
  end

  defp agregar_error(lista, condicion, mensaje) do
     if condicion, do: lista ++ [mensaje], else: lista
  end

  defp validar_cantidad?(cupon) do
    String.length(cupon) >= 10
  end

  defp validar_mayuscula?(cupon) do
    String.downcase(cupon) != cupon
  end

  defp validar_numero?(cupon) do
    String.contains?(cupon, ["0","1","2","3","4","5","6","7","8","9"])
  end

  defp validar_espacios?(cupon) do
    String.replace(cupon, " ", "") != cupon
  end


  defp generar_mensaje({:ok, mensaje}), do: mensaje
  defp generar_mensaje({:error, errores}), do: "Error: #{errores}"
end

Cupon.main()
