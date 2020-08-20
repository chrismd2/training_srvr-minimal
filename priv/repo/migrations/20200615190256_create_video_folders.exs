defmodule TrainingSrvr.Repo.Migrations.CreateVideoFolders do
  use Ecto.Migration

  def change do
    create table(:video_folders) do
      add :name, :string
      add :initial_inference_run, :boolean, default: false, null: false

      timestamps()
    end

  end
end
