defmodule TrainingSrvr.VideosTest do
  use TrainingSrvr.DataCase

  alias TrainingSrvr.Videos

  describe "image_classes" do
    alias TrainingSrvr.Videos.ImageClass

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def image_class_fixture(attrs \\ %{}) do
      {:ok, image_class} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Videos.create_image_class()

      image_class
    end

    test "list_image_classes/0 returns all image_classes" do
      image_class = image_class_fixture()
      assert Videos.list_image_classes() == [image_class]
    end

    test "get_image_class!/1 returns the image_class with given id" do
      image_class = image_class_fixture()
      assert Videos.get_image_class!(image_class.id) == image_class
    end

    test "create_image_class/1 with valid data creates a image_class" do
      assert {:ok, %ImageClass{} = image_class} = Videos.create_image_class(@valid_attrs)
      assert image_class.name == "some name"
    end

    test "create_image_class/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Videos.create_image_class(@invalid_attrs)
    end

    test "update_image_class/2 with valid data updates the image_class" do
      image_class = image_class_fixture()
      assert {:ok, %ImageClass{} = image_class} = Videos.update_image_class(image_class, @update_attrs)
      assert image_class.name == "some updated name"
    end

    test "update_image_class/2 with invalid data returns error changeset" do
      image_class = image_class_fixture()
      assert {:error, %Ecto.Changeset{}} = Videos.update_image_class(image_class, @invalid_attrs)
      assert image_class == Videos.get_image_class!(image_class.id)
    end

    test "delete_image_class/1 deletes the image_class" do
      image_class = image_class_fixture()
      assert {:ok, %ImageClass{}} = Videos.delete_image_class(image_class)
      assert_raise Ecto.NoResultsError, fn -> Videos.get_image_class!(image_class.id) end
    end

    test "change_image_class/1 returns a image_class changeset" do
      image_class = image_class_fixture()
      assert %Ecto.Changeset{} = Videos.change_image_class(image_class)
    end
  end

  describe "video_frames_image_classses" do
    alias TrainingSrvr.Videos.VideoFramesImageClasses

    @valid_attrs %{image_classes_id: 42, video_frame_id: 42}
    @update_attrs %{image_classes_id: 43, video_frame_id: 43}
    @invalid_attrs %{image_classes_id: nil, video_frame_id: nil}

    def video_frames_image_classes_fixture(attrs \\ %{}) do
      {:ok, video_frames_image_classes} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Videos.create_video_frames_image_classes()

      video_frames_image_classes
    end

    test "list_video_frames_image_classses/0 returns all video_frames_image_classses" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert Videos.list_video_frames_image_classses() == [video_frames_image_classes]
    end

    test "get_video_frames_image_classes!/1 returns the video_frames_image_classes with given id" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert Videos.get_video_frames_image_classes!(video_frames_image_classes.id) == video_frames_image_classes
    end

    test "create_video_frames_image_classes/1 with valid data creates a video_frames_image_classes" do
      assert {:ok, %VideoFramesImageClasses{} = video_frames_image_classes} = Videos.create_video_frames_image_classes(@valid_attrs)
      assert video_frames_image_classes.image_classes_id == 42
      assert video_frames_image_classes.video_frame_id == 42
    end

    test "create_video_frames_image_classes/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Videos.create_video_frames_image_classes(@invalid_attrs)
    end

    test "update_video_frames_image_classes/2 with valid data updates the video_frames_image_classes" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:ok, %VideoFramesImageClasses{} = video_frames_image_classes} = Videos.update_video_frames_image_classes(video_frames_image_classes, @update_attrs)
      assert video_frames_image_classes.image_classes_id == 43
      assert video_frames_image_classes.video_frame_id == 43
    end

    test "update_video_frames_image_classes/2 with invalid data returns error changeset" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:error, %Ecto.Changeset{}} = Videos.update_video_frames_image_classes(video_frames_image_classes, @invalid_attrs)
      assert video_frames_image_classes == Videos.get_video_frames_image_classes!(video_frames_image_classes.id)
    end

    test "delete_video_frames_image_classes/1 deletes the video_frames_image_classes" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:ok, %VideoFramesImageClasses{}} = Videos.delete_video_frames_image_classes(video_frames_image_classes)
      assert_raise Ecto.NoResultsError, fn -> Videos.get_video_frames_image_classes!(video_frames_image_classes.id) end
    end

    test "change_video_frames_image_classes/1 returns a video_frames_image_classes changeset" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert %Ecto.Changeset{} = Videos.change_video_frames_image_classes(video_frames_image_classes)
    end
  end

  describe "video_frames_image_classes" do
    alias TrainingSrvr.Videos.VideoFramesImageClasses

    @valid_attrs %{image_classes_id: 42, video_frame_id: 42}
    @update_attrs %{image_classes_id: 43, video_frame_id: 43}
    @invalid_attrs %{image_classes_id: nil, video_frame_id: nil}

    def video_frames_image_classes_fixture(attrs \\ %{}) do
      {:ok, video_frames_image_classes} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Videos.create_video_frames_image_classes()

      video_frames_image_classes
    end

    test "list_video_frames_image_classes/0 returns all video_frames_image_classes" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert Videos.list_video_frames_image_classes() == [video_frames_image_classes]
    end

    test "get_video_frames_image_classes!/1 returns the video_frames_image_classes with given id" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert Videos.get_video_frames_image_classes!(video_frames_image_classes.id) == video_frames_image_classes
    end

    test "create_video_frames_image_classes/1 with valid data creates a video_frames_image_classes" do
      assert {:ok, %VideoFramesImageClasses{} = video_frames_image_classes} = Videos.create_video_frames_image_classes(@valid_attrs)
      assert video_frames_image_classes.image_classes_id == 42
      assert video_frames_image_classes.video_frame_id == 42
    end

    test "create_video_frames_image_classes/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Videos.create_video_frames_image_classes(@invalid_attrs)
    end

    test "update_video_frames_image_classes/2 with valid data updates the video_frames_image_classes" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:ok, %VideoFramesImageClasses{} = video_frames_image_classes} = Videos.update_video_frames_image_classes(video_frames_image_classes, @update_attrs)
      assert video_frames_image_classes.image_classes_id == 43
      assert video_frames_image_classes.video_frame_id == 43
    end

    test "update_video_frames_image_classes/2 with invalid data returns error changeset" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:error, %Ecto.Changeset{}} = Videos.update_video_frames_image_classes(video_frames_image_classes, @invalid_attrs)
      assert video_frames_image_classes == Videos.get_video_frames_image_classes!(video_frames_image_classes.id)
    end

    test "delete_video_frames_image_classes/1 deletes the video_frames_image_classes" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert {:ok, %VideoFramesImageClasses{}} = Videos.delete_video_frames_image_classes(video_frames_image_classes)
      assert_raise Ecto.NoResultsError, fn -> Videos.get_video_frames_image_classes!(video_frames_image_classes.id) end
    end

    test "change_video_frames_image_classes/1 returns a video_frames_image_classes changeset" do
      video_frames_image_classes = video_frames_image_classes_fixture()
      assert %Ecto.Changeset{} = Videos.change_video_frames_image_classes(video_frames_image_classes)
    end
  end
end
