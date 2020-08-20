defmodule TrainingSrvr.Videos do
  @moduledoc """
  The Videos context.
  """

  import Ecto.Query, warn: false
  alias TrainingSrvr.Repo

  alias TrainingSrvr.Videos.VideoFolder

  @current_folder "/6_F017"
  currentIndex = 0

  @ids [
    "6-F017_001.jpg",
    "6-F017_002.jpg",
    "6-F017_003.jpg",
    "6-F017_004.jpg",
    "6-F017_005.jpg",
    "6-F017_006.jpg",
    "6-F017_007.jpg",
    "6-F017_008.jpg",
    "6-F017_009.jpg",
    "6-F017_010.jpg",
    "6-F017_011.jpg",
    "6-F017_012.jpg",
    "6-F017_013.jpg",
    "6-F017_014.jpg",
    "6-F017_015.jpg",
    "6-F017_016.jpg",
    "6-F017_017.jpg",
    "6-F017_018.jpg",
    "6-F017_019.jpg",
    "6-F017_020.jpg",
    "6-F017_021.jpg",
    "6-F017_022.jpg",
    "6-F017_023.jpg",
    "6-F017_024.jpg",
    "6-F017_025.jpg",
    "6-F017_026.jpg",
    "6-F017_027.jpg",
    "6-F017_028.jpg",
    "6-F017_029.jpg",
    "6-F017_030.jpg",
    "6-F017_031.jpg",
    "6-F017_032.jpg",
    "6-F017_033.jpg",
    "6-F017_034.jpg",
    "6-F017_035.jpg",
    "6-F017_036.jpg",
    "6-F017_037.jpg",
    "6-F017_038.jpg",
    "6-F017_039.jpg",
    "6-F017_040.jpg",
    "6-F017_041.jpg",
    "6-F017_042.jpg",
    "6-F017_043.jpg",
    "6-F017_044.jpg",
    "6-F017_045.jpg",
    "6-F017_046.jpg",
    "6-F017_047.jpg",
    "6-F017_048.jpg",
    "6-F017_049.jpg",
    "6-F017_050.jpg",
    "6-F017_051.jpg",
    "6-F017_052.jpg",
    "6-F017_053.jpg",
    "6-F017_054.jpg",
    "6-F017_055.jpg",
    "6-F017_056.jpg",
    "6-F017_057.jpg",
    "6-F017_058.jpg",
    "6-F017_059.jpg",
    "6-F017_060.jpg",
    "6-F017_061.jpg",
    "6-F017_062.jpg",
    "6-F017_063.jpg",
    "6-F017_064.jpg",
    "6-F017_065.jpg",
    "6-F017_066.jpg",
    "6-F017_067.jpg",
    "6-F017_068.jpg",
    "6-F017_069.jpg",
    "6-F017_070.jpg",
    "6-F017_071.jpg",
    "6-F017_072.jpg",
    "6-F017_073.jpg",
    "6-F017_074.jpg",
    "6-F017_075.jpg",
    "6-F017_076.jpg",
    "6-F017_077.jpg",
    "6-F017_078.jpg",
    "6-F017_079.jpg",
    "6-F017_080.jpg",
    "6-F017_081.jpg",
    "6-F017_082.jpg",
    "6-F017_083.jpg",
    "6-F017_084.jpg",
    "6-F017_085.jpg",
    "6-F017_086.jpg",
    "6-F017_087.jpg",
    "6-F017_088.jpg",
    "6-F017_089.jpg",
    "6-F017_090.jpg",
    "6-F017_091.jpg",
    "6-F017_092.jpg",
    "6-F017_093.jpg",
    "6-F017_094.jpg",
    "6-F017_095.jpg",
    "6-F017_096.jpg",
    "6-F017_097.jpg",
    "6-F017_098.jpg",
    "6-F017_099.jpg",
  ]

  @list_size length(@ids)

  @no_anno_folder "no_anno/"

  @spec image_url(any, any) :: any
  @doc """
  Returns the next image in the current folder.

  ## Examples

      iex> image_url("6_F017")
      "/images/videos/6_F017/6-F017_001.jpg"

  """
  def image_url(current_folder, image_id) do
    "/images/videos/#{current_folder}/#{image_id}"
  end

  def getImageName(index) do
    Enum.at(@ids, rem(index, @list_size))
  end

  def get_image(current_folder, index) do
    real_index = getImageName(index)
    image_url(current_folder, real_index)
  end

  @doc """
  Returns the indices of active classes for the image at index location
  """
  def active_classes_for_image(_current_folder, _img_index) do
    %{
      changed_classes: false,
      ankle_off: true,
      bedrail_down: true,
      call_button: false,
      cover_up: false,
      falling: false,
      fall_recovery: false,
      feet_on_floor: false,
      fell_on_floor: false,
      foot_on_floor: false,
      no_one: false,
      prepare_exit: false,
      push_tray_away: false,
      resting: false,
      sitting_up: true,
      throw_cover_off: false,
      two_ankle_off: false,
      two_people: false
    }
  end

  def un_annotated_parent_folder() do
    @no_anno_folder
  end




  # @spec list_video_folders :: any
  # @doc """
  # Returns the list of video_folders.

  # ## Examples

  #     iex> list_video_folders()
  #     [%VideoFolder{}, ...]

  # """
  # def list_video_folders do
  #   Repo.all(VideoFolder)
  # end

  # @doc """
  # Gets a single video_folder.

  # Raises `Ecto.NoResultsError` if the Video folder does not exist.

  # ## Examples

  #     iex> get_video_folder!(123)
  #     %VideoFolder{}

  #     iex> get_video_folder!(456)
  #     ** (Ecto.NoResultsError)

  # """
  # def get_video_folder!(id), do: Repo.get!(VideoFolder, id)

  # @doc """
  # Creates a video_folder.

  # ## Examples

  #     iex> create_video_folder(%{field: value})
  #     {:ok, %VideoFolder{}}

  #     iex> create_video_folder(%{field: bad_value})
  #     {:error, %Ecto.Changeset{}}

  # """
  # def create_video_folder(attrs \\ %{}) do
  #   %VideoFolder{}
  #   |> VideoFolder.changeset(attrs)
  #   |> Repo.insert()
  # end

  # @doc """
  # Updates a video_folder.

  # ## Examples

  #     iex> update_video_folder(video_folder, %{field: new_value})
  #     {:ok, %VideoFolder{}}

  #     iex> update_video_folder(video_folder, %{field: bad_value})
  #     {:error, %Ecto.Changeset{}}

  # """
  # def update_video_folder(%VideoFolder{} = video_folder, attrs) do
  #   video_folder
  #   |> VideoFolder.changeset(attrs)
  #   |> Repo.update()
  # end

  # @doc """
  # Deletes a video_folder.

  # ## Examples

  #     iex> delete_video_folder(video_folder)
  #     {:ok, %VideoFolder{}}

  #     iex> delete_video_folder(video_folder)
  #     {:error, %Ecto.Changeset{}}

  # """
  # def delete_video_folder(%VideoFolder{} = video_folder) do
  #   Repo.delete(video_folder)
  # end

  # @doc """
  # Returns an `%Ecto.Changeset{}` for tracking video_folder changes.

  # ## Examples

  #     iex> change_video_folder(video_folder)
  #     %Ecto.Changeset{data: %VideoFolder{}}

  # """
  # def change_video_folder(%VideoFolder{} = video_folder, attrs \\ %{}) do
  #   VideoFolder.changeset(video_folder, attrs)
  # end

  # alias TrainingSrvr.Videos.VideoFrame

  # @doc """
  # Returns the list of video_frames.

  # ## Examples

  #     iex> list_video_frames()
  #     [%VideoFrame{}, ...]

  # """
  # def list_video_frames do
  #   Repo.all(VideoFrame)
  # end

  # @doc """
  # Gets a single video_frame.

  # Raises `Ecto.NoResultsError` if the Video frame does not exist.

  # ## Examples

  #     iex> get_video_frame!(123)
  #     %VideoFrame{}

  #     iex> get_video_frame!(456)
  #     ** (Ecto.NoResultsError)

  # """
  # def get_video_frame!(id), do: Repo.get!(VideoFrame, id)

  # @doc """
  # Creates a video_frame.

  # ## Examples

  #     iex> create_video_frame(%{field: value})
  #     {:ok, %VideoFrame{}}

  #     iex> create_video_frame(%{field: bad_value})
  #     {:error, %Ecto.Changeset{}}

  # """
  # def create_video_frame(attrs \\ %{}) do
  #   %VideoFrame{}
  #   |> VideoFrame.changeset(attrs)
  #   |> Repo.insert()
  # end

  # @doc """
  # Updates a video_frame.

  # ## Examples

  #     iex> update_video_frame(video_frame, %{field: new_value})
  #     {:ok, %VideoFrame{}}

  #     iex> update_video_frame(video_frame, %{field: bad_value})
  #     {:error, %Ecto.Changeset{}}

  # """
  # def update_video_frame(%VideoFrame{} = video_frame, attrs) do
  #   video_frame
  #   |> VideoFrame.changeset(attrs)
  #   |> Repo.update()
  # end

  # @doc """
  # Deletes a video_frame.

  # ## Examples

  #     iex> delete_video_frame(video_frame)
  #     {:ok, %VideoFrame{}}

  #     iex> delete_video_frame(video_frame)
  #     {:error, %Ecto.Changeset{}}

  # """
  # def delete_video_frame(%VideoFrame{} = video_frame) do
  #   Repo.delete(video_frame)
  # end

  # @doc """
  # Returns an `%Ecto.Changeset{}` for tracking video_frame changes.

  # ## Examples

  #     iex> change_video_frame(video_frame)
  #     %Ecto.Changeset{data: %VideoFrame{}}

  # """
  # def change_video_frame(%VideoFrame{} = video_frame, attrs \\ %{}) do
  #   VideoFrame.changeset(video_frame, attrs)
  # end

  alias TrainingSrvr.Videos.ImageClass

  @doc """
  Returns the list of image_classes.

  ## Examples

      iex> list_image_classes()
      [%ImageClass{}, ...]

  """
  def list_image_classes do
    Repo.all(ImageClass)
  end

  @doc """
  Gets a single image_class.

  Raises `Ecto.NoResultsError` if the Image class does not exist.

  ## Examples

      iex> get_image_class!(123)
      %ImageClass{}

      iex> get_image_class!(456)
      ** (Ecto.NoResultsError)

  """
  def get_image_class!(id), do: Repo.get!(ImageClass, id)

  @doc """
  Creates a image_class.

  ## Examples

      iex> create_image_class(%{field: value})
      {:ok, %ImageClass{}}

      iex> create_image_class(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_image_class(attrs \\ %{}) do
    %ImageClass{}
    |> ImageClass.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a image_class.

  ## Examples

      iex> update_image_class(image_class, %{field: new_value})
      {:ok, %ImageClass{}}

      iex> update_image_class(image_class, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_image_class(%ImageClass{} = image_class, attrs) do
    image_class
    |> ImageClass.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a image_class.

  ## Examples

      iex> delete_image_class(image_class)
      {:ok, %ImageClass{}}

      iex> delete_image_class(image_class)
      {:error, %Ecto.Changeset{}}

  """
  def delete_image_class(%ImageClass{} = image_class) do
    Repo.delete(image_class)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking image_class changes.

  ## Examples

      iex> change_image_class(image_class)
      %Ecto.Changeset{data: %ImageClass{}}

  """
  def change_image_class(%ImageClass{} = image_class, attrs \\ %{}) do
    ImageClass.changeset(image_class, attrs)
  end

  alias TrainingSrvr.Videos.VideoFramesImageClasses

  @doc """
  Returns the list of video_frames_image_classses.

  ## Examples

      iex> list_video_frames_image_classses()
      [%VideoFramesImageClasses{}, ...]

  """
  def list_video_frames_image_classses do
    Repo.all(VideoFramesImageClasses)
  end

  @doc """
  Gets a single video_frames_image_classes.

  Raises `Ecto.NoResultsError` if the Video frames classes table does not exist.

  ## Examples

      iex> get_video_frames_image_classes!(123)
      %VideoFramesImageClasses{}

      iex> get_video_frames_image_classes!(456)
      ** (Ecto.NoResultsError)

  """
  def get_video_frames_image_classes!(id), do: Repo.get!(VideoFramesImageClasses, id)

  @doc """
  Creates a video_frames_image_classes.

  ## Examples

      iex> create_video_frames_image_classes(%{field: value})
      {:ok, %VideoFramesImageClasses{}}

      iex> create_video_frames_image_classes(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_video_frames_image_classes(attrs \\ %{}) do
    %VideoFramesImageClasses{}
    |> VideoFramesImageClasses.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a video_frames_image_classes.

  ## Examples

      iex> update_video_frames_image_classes(video_frames_image_classes, %{field: new_value})
      {:ok, %VideoFramesImageClasses{}}

      iex> update_video_frames_image_classes(video_frames_image_classes, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_video_frames_image_classes(%VideoFramesImageClasses{} = video_frames_image_classes, attrs) do
    video_frames_image_classes
    |> VideoFramesImageClasses.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a video_frames_image_classes.

  ## Examples

      iex> delete_video_frames_image_classes(video_frames_image_classes)
      {:ok, %VideoFramesImageClasses{}}

      iex> delete_video_frames_image_classes(video_frames_image_classes)
      {:error, %Ecto.Changeset{}}

  """
  def delete_video_frames_image_classes(%VideoFramesImageClasses{} = video_frames_image_classes) do
    Repo.delete(video_frames_image_classes)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking video_frames_image_classes changes.

  ## Examples

      iex> change_video_frames_image_classes(video_frames_image_classes)
      %Ecto.Changeset{data: %VideoFramesImageClasses{}}

  """
  def change_video_frames_image_classes(%VideoFramesImageClasses{} = video_frames_image_classes, attrs \\ %{}) do
    VideoFramesImageClasses.changeset(video_frames_image_classes, attrs)
  end
end
