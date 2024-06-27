defmodule OgImageWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available. The "root" layout is
  a skeleton rendered as part of the application router. The "app" layout is set
  as the default layout on both `use OgImageWeb, :controller` and `use
  OgImageWeb, :live_view`.
  """

  use OgImageWeb, :html

  embed_templates "layouts/*"

  @doc """
  Renders a <style> block containing all Tailwind utilities, fonts, and other
  styles that should be present on the page for image templates.
  """
  def image_template_styles(assigns) do
    ~H"""
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>

    <style>
      :root {
        font-family: 'IBM Plex Sans', sans-serif;
        font-feature-settings: 'liga' 1, 'calt' 1; /* fix for Chrome */
      }

      /* Include all styles from `app.css` */

      <%= raw(app_css()) %>
    </style>
    """
  end

  # Private helpers

  defp app_css do
    File.read!(Path.join([Application.app_dir(:og_image), "priv/static/assets/app.css"]))
  end
end
