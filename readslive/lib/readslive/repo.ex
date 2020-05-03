defmodule Readslive.Repo do
  use Ecto.Repo,
    otp_app: :readslive,
    adapter: Ecto.Adapters.Postgres
end
