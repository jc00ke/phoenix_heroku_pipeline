defmodule PhoenixHerokuPipeline do
  @moduledoc """
  PhoenixHerokuPipeline keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def from_module(), do: System.get_env("FROM_MODULE")
end
