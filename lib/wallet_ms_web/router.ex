defmodule WalletMsWeb.Router do
  use WalletMsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WalletMsWeb do
    pipe_through :browser # Use the default browser stack

    get "/master", PageController, :index
    # do actions
  end

  # Other scopes may use custom stacks.
  # scope "/api", WalletMsWeb do
  #   pipe_through :api
  # end
end
