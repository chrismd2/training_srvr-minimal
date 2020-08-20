defmodule TrainingSrvr.Videos.VideoFolder do
  use Ecto.Schema
  import Ecto.Changeset

  schema "video_folders" do
    field :initial_inference_run, :boolean, default: false
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(video_folder, attrs) do
    video_folder
    |> cast(attrs, [:name, :initial_inference_run])
    |> validate_required([:name, :initial_inference_run])
  end
  
end
