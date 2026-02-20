Code.require_file("../util.ex", __DIR__)

defmodule Hora do
  def main do
    "Ingresa tu nombre: "
    |> Util.ingresar(:texto)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end


  defp generar_mensaje(nombre) do
    hora = Util.solo_hora()

    saludo =
      cond do
        hora >= 0 && hora < 12 -> "Buenos dias"
        hora < 17 -> "Buenas tardes"
        hora < 24 -> "Buenas noches"
        true -> "what??"
      end
    "#{saludo}, #{nombre}"
  end
end

Hora.main()
