defmodule PhoenixHerokuPipelineWeb.Router do
  use PhoenixHerokuPipelineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixHerokuPipelineWeb do
    pipe_through :api
  end
end
