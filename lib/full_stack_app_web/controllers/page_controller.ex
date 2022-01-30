defmodule FullStackAppWeb.PageController do
  use FullStackAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
