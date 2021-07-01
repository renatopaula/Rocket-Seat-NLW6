defmodule Wabanex.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :nome, :string
      add :password, :string

      timestamps()
    end

    create unique_index(:users, [:email])


  end
end
