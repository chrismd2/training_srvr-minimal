defmodule TrainingSrvr.Videos.VideoFramesImageClasses do
  use Ecto.Schema
  import Ecto.Changeset

  schema "video_frames_image_classes" do
    field :video_frame_id, :integer
    field :image_classes_id, :integer
    timestamps()
  end

  @doc false
  def changeset(video_frames_image_classes, attrs) do
    video_frames_image_classes
    |> cast(attrs, [:video_frame_id, :image_classes_id])
    |> validate_required([:video_frame_id, :image_classes_id])
  end
end
