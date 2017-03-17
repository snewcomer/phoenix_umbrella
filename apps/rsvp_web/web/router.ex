defmodule RsvpWeb.Router do
  use RsvpWeb.Web, :router

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

  scope "/", RsvpWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/events", EventsController, :list
    get "/events/new", EventsController, :create
    post "/events/new", EventsController, :add
    post "/events/:id/reserve", EventsController, :reserve
    get "/events/:id", EventsController, :show
    get "/login", LoginController, :index
    post "/login", LoginController, :login
  end

  # Other scopes may use custom stacks.
  # scope "/api", RsvpWeb do
  #   pipe_through :api
  # end
end