defmodule ObanDashboard.Application do
  @moduledoc false
  use Application

  def start(_, _) do
    # Logger.add_backend(ObanDashboard.LoggerPubSubBackend)

    children = [
      {DynamicSupervisor, name: ObanDashboard.DynamicSupervisor, strategy: :one_for_one}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
