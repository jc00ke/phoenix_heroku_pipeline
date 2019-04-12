defmodule PhoenixHerokuPipelineWeb.VarView do
  use PhoenixHerokuPipelineWeb, :view
  alias PhoenixHerokuPipelineWeb.VarView

  def render("index.json", _assigns) do
    %{foo: :bar}
  end
end
