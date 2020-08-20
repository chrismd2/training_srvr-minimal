defmodule TrainingSrvr.Repo do
  use Ecto.Repo,
    otp_app: :training_srvr,
    adapter: Ecto.Adapters.Postgres
end
