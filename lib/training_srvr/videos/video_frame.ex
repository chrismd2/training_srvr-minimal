defmodule TrainingSrvr.Videos.VideoFrame do
  use Ecto.Schema
  import Ecto.Changeset

  schema "video_frames" do
    field :classes_changed, :boolean, default: false
    field :file_name, :string
    field :index_in_video, :integer
    many_to_many :image_classes, TrainingSrvr.Videos.ImageClass, join_through: "video_frames_image_classes"
    timestamps()
  end

  @doc false
  def changeset(video_frame, attrs) do
    video_frame
    |> cast(attrs, [:file_name, :index_in_video, :classes_changed])
    |> validate_required([:file_name, :index_in_video, :classes_changed])
  end
end
