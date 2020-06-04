defmodule ObanDashboard.Router do
  @moduledoc """
  Provides LiveView routing for ObanDashboard.
  """

  defmacro oban_dashboard(path, opts \\ []) do
    quote bind_quoted: binding() do
      scope path, alias: false, as: false do
        import Phoenix.LiveView.Router, only: [live: 4]

        opts = ObanDashboard.Router.__options__(opts)
        live "/", ObanDashboard.HomeLive, :home, opts
      end
    end
  end

  @doc false
  def __options__(options) do
    live_socket_path = Keyword.get(options, :live_socket_path, "/live")

    [
      session: %{},
      private: %{live_socket_path: live_socket_path},
      layout: {ObanDashboard.LayoutView, :dash},
      as: :oban_dashboard
    ]
  end
end
