defmodule Issue260showcase.Repo do
  use Ecto.Repo,
    otp_app: :issue260showcase,
    adapter: Ecto.Adapters.Postgres
end
