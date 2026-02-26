Code.require_file("../util.ex", __DIR__)

defmodule Validador do
  def main do
    username = "Ingrese su nombre de usuario: "
    |> Util.ingresar(:texto)

    validar_usarname(username)
    |> mostrar_mensaje()

  end

  defp validar_usarname(username) do
    mensaje =
      cond do
        validar_cantidad?(username) ->
          {:error, "tu nombre de usuario no esta entre 5 y 12 caracteres"}
        validar_minusculas?(username) ->
          {:error, "tu nombre de usuario tiene letras mayusculas"}
        validar_espacios?(username) ->
          {:error, "tu nombre de usuario tiene espacios"}
        validar_caracteres_especiales(username) ->
          {:error, "tu nombre de usuario tiene caracteres especiales como @, #, $, %"}

        true ->
          {:ok, "Usuario válido"}
      end
      mensaje

  end

  defp validar_cantidad?(username) do
    letras = String.graphemes(username)
    cantidad = length(letras)

    cond do
      cantidad < 5 || cantidad > 12 ->
        true
      true ->
        false
    end
  end

  defp validar_minusculas?(username) do
    String.graphemes(username)
    |> Enum.any?(fn c ->
      # =~ se usa para ver si un string coincide con un patron
      # ~r/.../ busca coincidencia con la expresión regular.

      c =~ ~r/^[A-Za-z]$/ and c == String.upcase(c)
    end)
  end

  defp validar_espacios?(username) do
    username_trim = String.trim(username)
    if String.contains?(username_trim, " ") do
      true
    else
      false
    end
  end

  defp validar_caracteres_especiales(username) do
    String.contains?(username, ["@", "#", "$", "%"])
  end

  defp mostrar_mensaje({:ok, mensaje}) do
    mensaje
    |> IO.puts()
  end
  defp mostrar_mensaje({:error, mensaje}) do
    mensaje
    |> IO.puts()
  end
end


Validador.main()
