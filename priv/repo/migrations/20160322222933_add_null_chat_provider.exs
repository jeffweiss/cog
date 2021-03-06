defmodule Cog.Repo.Migrations.AddNullChatProvider do
  use Ecto.Migration
  use Cog.Queries
  alias Cog.Repo
  alias Cog.Models.ChatProvider

  def up do
    Repo.insert!(%ChatProvider{name: "null"})
  end

  def down do
    Repo.delete_all(from p in ChatProvider, where: p.name == "null")
  end

end
