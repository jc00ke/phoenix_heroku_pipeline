defmodule PhoenixHerokuPipelineWeb.VarController do
  use PhoenixHerokuPipelineWeb, :controller

  action_fallback PhoenixHerokuPipelineWeb.FallbackController

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
