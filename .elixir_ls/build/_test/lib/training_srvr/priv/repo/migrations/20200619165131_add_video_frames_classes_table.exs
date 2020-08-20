defmodule TrainingSrvr.Repo.Migrations.AddVideoFramesImageClasses do
  use Ecto.Migration

  def change do
    create table(:video_frames_image_classes) do
      add :video_frame_id, :integer
      add :image_classes_id, :integer

      timestamps()
    end
  end
end
