defmodule Todo do
  use Ecto.Schema

  import Ecto.Changeset
  import Ecto.Query

  schema "tasks" do
    field :description, :string
    field :status, :boolean
  end

  def changeset(task, params \\ %{}) do
    task
    |> cast(params, [:description, :status])
    |> validate_required([:description, :status])
  end

  def find_by_project_name(project_name) do
    from t in Todo,
      where: like(t.description, ^project_name),
      select: t
  end
end
