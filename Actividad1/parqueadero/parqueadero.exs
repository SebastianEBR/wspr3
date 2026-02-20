Code.require_file("../util.ex", __DIR__)

defmodule Parqueadero do
  def main do
    hora_ingreso = Util.solo_hora()

    hora_salida = "a que hora sale? (minimo 2 horas): "
    |> Util.ingresar(:entero)

    tipo_cliente = "es un cliente 1=frecuente o 2=regular: "
    |> Util.ingresar(:entero)

    tipo_vehiculo = "el vehiculo es 1=electrico o 2=convencional: "
    |> Util.ingresar(:entero)

    dia = "hoy es 1=fin de semana o 2=entre semana?: "
    |> Util.ingresar(:entero)


    descuento = evaluar_tarifa_descuento(tipo_cliente, tipo_vehiculo, dia)


    valor_base = calcular_precio_por_horas(hora_ingreso, hora_salida)


    valor_descuento = Util.calcular_descuento(valor_base, descuento)


    valor_final = Util.calcular_valor_final(valor_descuento, valor_base)


    mensaje = generar_mensaje(valor_base, valor_final, descuento)
    Util.mostrar_mensaje(mensaje)
  end

  defp evaluar_tarifa_descuento(tipo_cliente, tipo_vehiculo, dia) do
    base = 0

    base
    |> aplicar_descuento_cliente(tipo_cliente)
    |> aplicar_descuento_vehiculo(tipo_vehiculo)
    |> aplicar_descuento_dia(dia)
  end


  defp aplicar_descuento_cliente(descuento, 1), do: descuento + 0.15
  defp aplicar_descuento_cliente(descuento, _), do: descuento

  defp aplicar_descuento_vehiculo(descuento, 1), do: descuento + 0.2
  defp aplicar_descuento_vehiculo(descuento, _), do: descuento

  defp aplicar_descuento_dia(descuento, 1), do: descuento + 0.1
  defp aplicar_descuento_dia(descuento, _), do: descuento


  defp calcular_precio_por_horas(hora_ingreso, hora_salida) do
    hora_resta = hora_salida - hora_ingreso

    precio =
      cond do
        hora_resta <= 2 -> 3000

        hora_resta >= 3 && hora_resta <= 5 ->
          Util.multiplicar_dos_valores(2500, hora_resta, :entero)

        hora_resta >= 6 && hora_resta <= 8 ->
          Util.multiplicar_dos_valores(2000, hora_resta, :entero)

        true ->
          Util.multiplicar_dos_valores(18000, hora_resta, :entero)
      end

      precio
  end

  defp generar_mensaje(valor_base, valor_final, descuento) do
    "el valor base es #{valor_base}, con descuento de #{descuento} es #{valor_final}"
  end
end


Parqueadero.main()
