defmodule WalletMsWeb.PageController do
  use WalletMsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
