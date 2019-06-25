defmodule Issue260showcaseWeb.PageController do
  use Issue260showcaseWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
