defmodule FullStackAppWeb.Router do
  use FullStackAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: FullStackAppWeb.Schema

    forward "/", Absinthe.Plug, schema: FullStackAppWeb.Schema
  end
end
