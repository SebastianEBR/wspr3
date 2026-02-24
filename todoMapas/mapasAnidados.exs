defmodule MapasAnidados do
  def ejecutar do
    nested = %{user: %{profile: %{visits: 1}}}
    visits = get_in(nested, [:user, :profile, :visits])
    updated = update_in(nested, [:user, :profile, :visits], &(&1 + 1))
    putted = put_in(nested, [:user, :profile, :last_seen], "2026-02-24")

    IO.puts("\\n== Anidados ==")
    IO.inspect({visits, updated, putted})
  end
end
