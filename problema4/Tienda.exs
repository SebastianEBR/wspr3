defmodule Tienda do
  def main do
    valor_producto = "ingrese el valor del producto: "
    |> Util.ingresar(:entero)

    valor_descuento = "ingrese el valor del descuento (entre 0.0 y 1.0): "
    |> Util.ingresar(:real)

    calcular_descuento(valor_producto, valor_descuento)
    |> calcular_valor_final(valor_producto)
    |> generar_mensaje(valor_descuento)
    |> Util.mostrar_mensaje()
  end

  defp calcular_descuento(valor_producto, valor_descuento) do
    valor_producto * valor_descuento
  end

  defp calcular_valor_final(descuento_base, valor_producto) do
    valor_producto - descuento_base
  end

  defp generar_mensaje(valor_final, valor_descuento) do

    #valor_descuento = valor_descuento |>
    "El precio del producto con descuento del #{valor_descuento}% es #{valor_final}"

  end
end

Tienda.main()
