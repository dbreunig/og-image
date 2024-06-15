defmodule OgImageWeb.ImageHTML do
  use OgImageWeb, :html

  @doc """
  A logo and text on a light background.
  """
  def steplist(assigns) do
    ~H"""
    <body class=" h-screen">
      <div id="blue-bar" class="bg-blue-400 h-4 w-full"></div>
      <div id="headline-container" class="p-16">
        <div id="logo-container" class="flex justify-end p-2">
          <div id="logo" class="bg-blue-400 rounded-full px-10 py-12 h-52 w-52">
            <.steplist_logo />
          </div>
        </div>
        <div id="author" class="text-4xl mb-4 italic">
          By <%= @author %>
        </div>
        <div id="title" class="w-full font-bold text-6xl my-8", style="-webkit-box;-webkit-line-clamp: 2; -webkit-box-orient: vertical;text-overflow: ellipsis;">
          <%= @text %>
        </div>
        <div id="description" class="w-full text-4xl prose" style="-webkit-box;-webkit-line-clamp: 2; -webkit-box-orient: vertical;text-overflow: ellipsis;">
          <%= @description %>
        </div>
      </div>
    </body>
    """
  end

  @doc """
  A logo and text on a dark background.
  """
  def dark(assigns) do
    ~H"""
    <body class="bg-green-texture flex flex-col h-screen">
      <div class="shrink-0 pt-24 px-20 text-white">
        <.steplist_logo />
      </div>
      <div class="grow flex items-center px-20">
        <h1 class="font-extrabold text-[#D2FD88] text-[7rem] leading-[1.2] ibm-plex-sans-regular">
          <%= @text %>
        </h1>
      </div>
    </body>
    """
  end

  @doc """
  A fallback image.
  """
  def fallback(assigns) do
    ~H"""
    <body class="bg-[#F8F2E6] flex items-center justify-center h-screen">
      <div>
        <.steplist_logo height="148" />
      </div>
    </body>
    """
  end
end

# <body class="bg-[#F8F2E6] flex flex-col h-screen">
# <div class="shrink-0 pt-24 px-20 text-gray-900">
#   <.steplist_logo />
# </div>
# <div class="grow flex items-center px-20">
#   <h1 class="font-extrabold text-gray-900 text-[7rem] leading-[1.2]">
#     <%= @text %>
#   </h1>
#   <p class="text-gray-700 text-[2rem] leading-[1.4] ml-10">
#     <%= @author %>
#     <%= @emoji %>
#   </p>
# </div>
# </body>
