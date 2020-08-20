defmodule TrainingSrvr.Repo.Migrations.CreateVideoFrames do
  use Ecto.Migration

  def change do
    create table(:video_frames) do
      add :file_name, :string
      add :index_in_video, :integer
      add :classes_changed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
