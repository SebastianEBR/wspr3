defmodule MapasMain do
  def ejecutar_todo do
    Mapas.Creacion.ejecutar()
    Mapas.Acceso.ejecutar()
    Mapas.Actualizacion.ejecutar()
    Mapas.Eliminar.ejecutar()
    Mapas.Utilidades.ejecutar()
    Mapas.Fetch.ejecutar()
    Mapas.Merge.ejecutar()
    Mapas.Transformaciones.ejecutar()
    Mapas.Convertir.ejecutar()
    Mapas.Seguras.ejecutar()
    Mapas.Anidados.ejecutar()
    Mapas.PatternMatching.ejecutar()
    Mapas.MapSet.ejecutar()
    Mapas.UsosReales.ejecutar()
  end
end

# Llamada para ejecutar todo automáticamente al correr el archivo:
MapasMain.ejecutar_todo()
