defmodule UserStory do
  use Ecto.Schema

  import Ecto.Changeset
  import Ecto.Query

  schema "user_stories" do
    field :points, :integer
    field :priority, :integer
    field :title, :string
    has_many :tasks, Todo
  end

end
