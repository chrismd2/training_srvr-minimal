defmodule TrainingSrvrWeb.Wireframe.ButtonLive do
  use TrainingSrvrWeb, :live_view


  def mount(params, _session, socket) do
    IO.inspect(params)
    socket = assign(socket, on: false, btn_style: "off-button")
    {:ok, socket}
  end

  def handle_event("button_switch", params, socket) do
    IO.inspect(params)
    IO.inspect(socket)
    socket = assign(socket, on: !socket.assigns.on, btn_style: style(!socket.assigns.on))
    {:noreply, socket}
  end

  def handle_event("class_button_switch", params, socket) do
    IO.inspect(params)
    IO.inspect(socket)
    socket = assign(socket, on: !socket.assigns.on, btn_style: style(!socket.assigns.on))
      |> put_flash(:info, "class_button_switch called")
    {:noreply, socket}
  end

  defp style(on) do
    case on do
      true ->
        "on-button"
      _ ->
        "off-button"
    end
  end

end
