defmodule PhoenixHerokuPipelineWeb.VarView do
  use PhoenixHerokuPipelineWeb, :view
  alias PhoenixHerokuPipelineWeb.VarView

  def render("index.json", _assigns) do
    %{
      from_config: Application.get_env(:phoenix_heroku_pipeline, :from_config),
      from_env: System.get_env("FROM_ENV"),
      from_module: PhoenixHerokuPipeline.from_module()
    }
  end
end
