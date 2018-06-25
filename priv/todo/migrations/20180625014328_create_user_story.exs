defmodule Repo.Todo.Migrations.CreateUserStory do
  use Ecto.Migration

  def change do
    create table(:user_stories) do
      add :priority, :integer
      add :points, :integer
      add :title, :string
      timestamps()
    end
  end
end
