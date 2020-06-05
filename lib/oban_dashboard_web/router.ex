defmodule ObanDashboardWeb.Router do
  @moduledoc """
  Provides LiveView routing for ObanDashboard.
  """

  defmacro oban_dashboard(path, opts \\ []) do
    quote bind_quoted: binding() do
      scope path, alias: false, as: false do
        import Phoenix.LiveView.Router, only: [live: 4]

        opts = ObanDashboardWeb.Router.__options__(opts)
        live("/", ObanDashboardWeb.HomeLive, :home, opts)
      end
    end
  end

  @doc false
  def __options__(options) do
    live_socket_path = Keyword.get(options, :live_socket_path, "/live")

    [
      session: %{},
      private: %{live_socket_path: live_socket_path},
      layout: {ObanDashboardWeb.LayoutView, :dash},
      as: :oban_dashboard
    ]
  end
end
