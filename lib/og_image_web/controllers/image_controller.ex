defmodule OgImageWeb.ImageController do
  use OgImageWeb, :controller

  import OgImageWeb.ImageHelpers
  import OgImageWeb.ImageRenderer

  def show(conn, %{"template" => "steplist", "title" => title, "author" => author, "emoji" => emoji, "description" => description}) do
    conn
    |> assign(:text, prepare_html(title))
    |> assign(:author, prepare_html(author))
    |> assign(:emoji, prepare_html(emoji))
    |> assign(:description, prepare_html(description))
    |> render_image(:steplist)
  end

  def show(conn, %{"template" => "dark", "text" => text}) do
    conn
    |> assign(:text, prepare_html(text))
    |> render_image(:dark)
  end

  # -- Add more templates here --

  def show(conn, _params) do
    render_image(conn, :fallback)
  end
end
