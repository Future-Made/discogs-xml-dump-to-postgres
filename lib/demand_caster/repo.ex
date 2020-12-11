defmodule DemandCaster.Repo do
  use Ecto.Repo,
    otp_app: :xml_mania,
    adapter: Ecto.Adapters.Postgres
end
