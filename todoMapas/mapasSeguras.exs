defmodule MapasSeguras do
  def ejecutar do
    m = %{counter: 1}

    {old, m2} = Map.get_and_update(m, :counter, fn
      nil -> {:pop, 0}
      x -> {x, x + 1}
    end)

    {val, m3} = Map.pop(m2, :counter)
    m_lazy = %{a: 1}
    {v_lazy, m_after} = Map.pop_lazy(m_lazy, :b, fn -> :computado end)

    IO.puts("\\n== Operaciones seguras ==")
    IO.inspect({old, m2})
    IO.inspect({val, m3})
    IO.inspect({v_lazy, m_after})
  end
end
