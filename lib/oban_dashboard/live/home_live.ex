defmodule ObanDashboard.HomeLive do
  use ObanDashboard.Web, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  # @impl true
  # def handle_params(params, _url, socket) do
  #   {:noreply, assign_params(socket, params)}
  # end

  @impl true
  def render(assigns) do
    ~L"""
    <div>Hello</div>
    """
  end
end
