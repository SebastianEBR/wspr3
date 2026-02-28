Code.require_file("../util.ex", __DIR__)

defmodule Aereolinea do
  def main do
    destino =
      """
      Los destinos disponibles son:
      1: bogota
      2: medellin
      3: cartagena
      4: san_andres

      """
    |> Util.ingresar(:entero)
    |> convertir_tipo()

    servicio =
      """
      Desea incluir algun servicio?
      Los servicios disponibles son:
      1: selección de silla ($15.000)
      2: maleta de bodega ($45.000)
      3: seguro de viaje ($12.000)
      4: NO

      """
    |> Util.ingresar(:entero)
    |> convertir_tipo_servcio()

    precio_con_cargo = calcular_precio_con_servicio(servicio, destino)
    generar_mensaje(destino, servicio, precio_con_cargo)
    |> Util.mostrar_mensaje()
  end

  defp convertir_tipo(1), do: {:bogota, 100000}
  defp convertir_tipo(2), do: {:medellin, 200000}
  defp convertir_tipo(3), do: {:cartagena, 300000}
  defp convertir_tipo(_), do: {:san_andreas, 400000}

  defp convertir_tipo_servcio(1), do: {:seleccion_de_silla, 15000}
  defp convertir_tipo_servcio(2), do: {:maleta_de_bodega, 45000}
  defp convertir_tipo_servcio(3), do: {:seguro_de_viaje, 12000}
  defp convertir_tipo_servcio(_), do: {:nada, 0}


  defp calcular_precio_con_servicio({_, _}, {:san_andreas, precio}), do: precio + 45000
  defp calcular_precio_con_servicio({:seleccion_de_silla, precio_servicio}, {_, precio}), do: precio + precio_servicio
  defp calcular_precio_con_servicio({:maleta_de_bodega, precio_servicio}, {_, precio}), do: precio + precio_servicio
  defp calcular_precio_con_servicio({:seguro_de_viaje, precio_servicio}, {_, precio}), do: precio + precio_servicio
  defp calcular_precio_con_servicio(_, {_, precio}), do: precio




  defp generar_mensaje({destino, precio}, {servicio, precio_servicio}, precio_con_cargo) do
    """
    --- RESUMEN DE VUELO ---
    Destino                         #{destino}
    Subtotal (sin descuentos):      $#{precio}
    Servicio                        #{servicio}
    Precio servicio:                $#{precio_servicio}
    TOTAL A PAGAR:                  $#{precio_con_cargo}
    -----------------------------
    """
  end
end

Aereolinea.main()
