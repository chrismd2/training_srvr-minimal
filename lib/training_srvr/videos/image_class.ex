defmodule TrainingSrvr.Videos.ImageClass do
  use Ecto.Schema
  import Ecto.Changeset

  schema "image_classes" do
    field :name, :string
    many_to_many :video_frames, TrainingSrvr.Videos.VideoFrame, join_through: "video_frames_image_classes"
    timestamps()
  end

  @doc false
  def changeset(image_class, attrs) do
    image_class
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
