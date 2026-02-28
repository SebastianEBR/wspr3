Code.require_file("../util.ex", __DIR__)

defmodule Hotel do
  def main do
    noches =
      "Ingrese el número de noches que se va a quedar: "
      |> Util.ingresar(:entero)

    tipo_cliente =
      "Usted es 1: frecuente, 2: corporativo o 3: ocasional? "
      |> Util.ingresar(:entero)
      |> convertir_tipo()

    temporada =
      "Es temporada 1 = alta o 2 = baja?: "
      |> Util.ingresar(:entero)

    subtotal = calcular_subtotal(noches)
    descuento = descuento_segun_tipo(tipo_cliente)
    recargo = recargo_temporada(temporada)

    generar_mensaje(calcular_total_final(subtotal, descuento, recargo))
    |> Util.mostrar_mensaje()
  end


  defp convertir_tipo(1), do: :frecuente
  defp convertir_tipo(2), do: :corporativo
  defp convertir_tipo(_), do: :ocasional


  defp calcular_subtotal(noches) when noches <= 2,
    do: Util.multiplicar_dos_valores(noches, 120_000, :entero)

  defp calcular_subtotal(noches) when noches <= 5,
    do: Util.multiplicar_dos_valores(noches, 100_000, :entero)

  defp calcular_subtotal(noches),
    do: Util.multiplicar_dos_valores(noches, 85_000, :entero)


  defp descuento_segun_tipo(:frecuente), do: 0.20
  defp descuento_segun_tipo(:corporativo), do: 0.15
  defp descuento_segun_tipo(:ocasional), do: 0.0
  defp descuento_segun_tipo(_), do: 0.0


  defp recargo_temporada(1), do: 0.25
  defp recargo_temporada(_), do: 0.0


  defp calcular_total_final(subtotal, descuento, recargo) do
    precio_descuento = Util.calcular_descuento(subtotal, descuento)
    total = Util.calcular_recargo(precio_descuento, recargo)

    {subtotal, descuento, recargo, precio_descuento, total}
  end


  defp generar_mensaje({subtotal, descuento, recargo, precio_descuento, total}) do
    """
    --- RESUMEN DE RESERVA ---
    Subtotal (sin descuentos):      $#{format_numero(subtotal)}
    Descuento aplicado:             #{descuento * 100}%
    Subtotal:                       $#{format_numero(precio_descuento)}
    Recargo de temporada:           #{recargo * 100}%
    TOTAL A PAGAR:                  $#{format_numero(total)}
    -----------------------------
    """
  end

  defp format_numero(valor) do
    :erlang.float_to_binary(valor * 1.0, decimals: 2)
  end
end

Hotel.main()
