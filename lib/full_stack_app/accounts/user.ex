defmodule FullStackApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :name, :string, null: false

    timestamps()
  end

  @required_fields ~w(name)a
  @optional_fields ~w(email)a
  def changeset(user, attrs) do
    user
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
  end
end
