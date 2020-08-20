# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TrainingSrvr.Repo.insert!(%TrainingSrvr.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias TrainingSrvr.Repo
alias TrainingSrvr.Videos

defmodule TrainingSrvr.DatabaseSeeder do
  @imageClasses [
    "ankle_off",
    "changed_classes",
    "bedrail_down",
    "call_button",
    "cover_up",
    "falling",
    "fall_recovery",
    "feet_on_floor",
    "fell_on_floor",
    "no_one",
    "foot_on_floor",
    "prepare_exit",
    "push_tray_away",
    "resting",
    "sitting_up",
    "throw_cover_off",
    "two_ankle_off",
    "two_people"
  ]

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

  def insertAllImageClass(index) do
    nextName = (Enum.at(@imageClasses, index, 0))
    if (nextName != 0) do
      nameExists = Repo.get_by(Videos.ImageClass, name: nextName)
      if (nameExists == nil) do
        Repo.insert!(%Videos.ImageClass{name: nextName})
      end
      if(nextName <> (Enum.at(@imageClasses, 0, 0)) )do
        insertAllImageClass(index + 1)
      end
    end
  end
  def insertAllFrameIDs(index, indInVid, changed) do
    nextName = (Enum.at(@ids, index, 0))
    if (nextName != 0) do
      nameExists = Repo.get_by(Videos.VideoFrame, file_name: nextName)
      if((index > 0 || changed == true) && nameExists == nil) do
        Repo.insert!(%Videos.VideoFrame{
          file_name: nextName,
          index_in_video: indInVid,
          classes_changed: changed
          })
        insertAllFrameIDs((index + 1), indInVid, false)
      end
    end
  end
end

# This adds image classes to the database but inserts duplicates since dates/times
# are different in the tuples.  Should modify to query the name first.
TrainingSrvr.DatabaseSeeder.insertAllImageClass(1)

# Ideally this would add frames to the database with @ids in videos.ex
# Should modify to query the name first.
TrainingSrvr.DatabaseSeeder.insertAllFrameIDs(0, 0, true)
