defmodule Repo.Todo.Migrations.TaskBelongsToUserStory do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :user_story_id, references(:user_stories)
    end
  end
end
