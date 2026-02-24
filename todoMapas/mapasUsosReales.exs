defmodule MapasUsosReales do
  def ejecutar do
    visitas = %{"/" => 10}
    ruta = "/"
    visitas = Map.update(visitas, ruta, 1, &(&1 + 1))
    default_conf = %{host: "localhost", port: 4000, debug: false}
    user_conf = %{port: 8080, debug: true}
    conf = Map.merge(default_conf, user_conf)

    IO.puts("\\n== Ejemplos reales ==")
    IO.inspect(visitas)
    IO.inspect(conf)
  end
end
