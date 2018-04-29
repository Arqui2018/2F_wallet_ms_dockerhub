defmodule WalletMsWeb.PageController do
  use WalletMsWeb, :controller

  def index(conn, _params) do
    # render conn, "index.html"
    render "hello world!!!"
  end
end
