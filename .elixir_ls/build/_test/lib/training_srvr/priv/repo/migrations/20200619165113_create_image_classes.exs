defmodule TrainingSrvr.Repo.Migrations.CreateImageClasses do
  use Ecto.Migration

  def change do
    create table(:image_classes) do
      add :name, :string

      timestamps()
    end

  end
end
