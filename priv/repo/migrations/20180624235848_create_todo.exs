defmodule Todo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table("tasks") do
      add :description, :string, size: 300
      add :status, :boolean
      timestamps()
    end
  end
end
