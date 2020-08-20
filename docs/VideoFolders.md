## Data folder
/data will contain the image data

/data/client/videos will be folder of client video folders as
described below.  The videos folder will be available to the 
browser client.  The Plug.Static entry in the endpoint.ex file allows browser client access.

/data/knowfalls/videos is the folder of knowfalls videos.
This videos folder will not be available to the browser client

## UI to Video folder group
View is always available for any folder in the list of available folders

Live never appears in the list of available folders

Clicking prepare calculates the image_classes for each image in the video.  Copies the 
inference csv and images into the review folder.  Changes button to review

Review - Launch Video Annotation - Add to Training or Mark as reviewed or Delete.  All 
three  buttons are available in when Review button is there.  Add to training moves to the training. 

Added to Training  - Can't do anything.  Can only remove from training to New and the 
view button

Deleted may undelete.  Moves to new

## Video folder group

The videos will be organized into "groups".  In each group will be a folder for the camera name and subfolders for each video.

The video groups will be:

- live
- new
- review
- reviewed
- training
- deleted


Core is where Knowfalls images will be delivered to the site

live is where real-time image uploads will go when someone could be watching them live

new is where real-time uploads will go.  live images are moved to the corresponding new folder when a new image is available.

review are when the images have been prepared, i.e. initial image classes assigned

reviewed are when the video has been marked as reviewed.

training is the folder of training videos.  This is the next step after reviewed

deleted is the folder of videos that are marked for deleted but are recoverable.

Until we get the upload function working, the folder structure looks like

/priv/static/images/videos/new/camera_id/timestamp_or_guid_or_other_name

The timestamp or guid is the realtime identifier of one video vs another.

