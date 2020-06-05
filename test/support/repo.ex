defmodule ObanDashboard.Test.Repo do
  @moduledoc false

  use Ecto.Repo,
    otp_app: :oban_dashboard,
    adapter: Ecto.Adapters.Postgres
end
