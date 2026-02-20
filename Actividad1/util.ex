# para usarlo Code.require_file("../util.ex", __DIR__)


defmodule Util do
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def ingresar(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    try do
      mensaje
      |> ingresar(:texto)
      |> String.to_integer()
    rescue
      ArgumentError ->
        "Error, se espera que ingrese un número entero\n"
        |> mostrar_error()

        mensaje
        |> ingresar(:entero)
    end
  end

  def ingresar(mensaje, :real) do
    try do
      mensaje
      |> ingresar(:texto)
      |> String.to_float()
    rescue
      ArgumentError ->
        "Error, se espera que ingrese un número real\n"
        |> mostrar_error()

        mensaje
        |> ingresar(:real)
    end
  end

  def mostrar_error(mensaje) do
    IO.puts(:standard_error, mensaje)
  end

  def solo_hora do
    {{_anio, _mes, _dia}, {hora, _min, _seg}} = :calendar.local_time()
    hora
  end

  def calcular_descuento(valor_base, valor_descuento) do
    valor_base * valor_descuento
  end

  def calcular_valor_final(descuento_base, valor_base) do
    valor_base - descuento_base
  end


  def multiplicar_dos_valores(valor1, valor2, :entero) do
    valor1 * valor2
  end
end
