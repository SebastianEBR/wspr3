
#defmodule Util do
#  def mostrar_mensaje(mensaje) do
#    System.cmd("cmd.exe",["/c", "python", "mostrar_dialogo.py", mensaje])
#  end
#end


defmodule Util do
  def mostrar_mensaje(mensaje) do
    System.cmd("java",["-cp", ".", "Mensaje", mensaje])
  end
end

#defmodule Util do
#  def mostrar_mensaje(mensaje) do
#    mensaje
#    |> IO.puts()
#  end
#end
