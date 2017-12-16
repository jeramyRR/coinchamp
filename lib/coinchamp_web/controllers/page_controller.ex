defmodule CoinchampWeb.PageController do
  use CoinchampWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
