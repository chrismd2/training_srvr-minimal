## [0.0.30]
### Fix
- moveFolder checks the folder to be moved exists before trying to operate on it to prevent program from crashing

## [0.0.29]
### Bug
- moveFolder needs to check that the folder is in the source before starting, not just that it isn't in the destination 
### Added
- updateProcessedFolder and updateUnprocessedFoldeder to manage the values to return through the socket to the live view page
- 6_F017 row to video_folders
- @folderOperations list in folder_live.ex
- doBtnAction(folder) takes a folder object and is intended to execute the action the button is used for
- New function callAI to act as placeholder for ai interaction.  Note: this is a good opportunity to use pattern matching
### Modified
- doBtnAction now has a message send_after to demonstrate loading.  Original is commented out for now(bug?).
- The updateUnprocessedFolder function now has a case statement to update the processed folder and only returns the provided original map, which would contain nextStep, if no case match is found.
  Note: this depends on the nextStep value to find the folder being processed.  Also, function should be renamed (bad smell)
- The folderManagement\3 to have a prepare case which moves folder from new to review after calling callAI function
- Folder live html page view button routes to viewer instead of annotation
- Folder live html page now has a review button for each folder, which routes to annotation.  Bug: when the video folder is in review mode, that is to say the second button is ready for review, it won't route to annotation.

## [0.0.28]
### Added
- Completed button which moves the current @video_folder from review to reviewed
### Modified
- video_live.html.leex now finds video pictures in the @video_folder defined earlier instead of a string literal

## [0.0.27]
### Modified
- Function moveFolder\3 now safety checks to ensure the folder to be moved doesn't currently exsist in the destination folder
### Fixed
- Missing images in video folder returned

## [0.0.26]
### Modified
- Extended folderManagement\2 to support additional operations
  + root->live->new->review->reviewed->training->deleted->root
  + example of usage in mount for folder_live.ex
- Enabled folderManagement\2 to delete previous folder's location

## [0.0.25]
### Fix
- CSV no longer deletes tuples.
- If the relationship contained a tuple with the values, ie with a second
csv run, insertIntoVFIC\2 would delete it. This function was extended
to have a third parameter, a bool, true if deletion is ok.
### Fix
- CSV function insertData\1 now checks if query is empty before assigning values

## [0.0.24]
### Added
- Directory operations to folder_live.ex
- folderManagement(folderName, operation) takes two strings as input
- if folderName is a folder in the defined location, it will be copied into the appropriate location as determined by the operation
- if the operation is undefined, a message is sent to the console to notify the user

## [0.0.23]
### Added
- RFC 4180 compliant csv processing tool
- CSV processing in capture_video_live.ex
### Modified
- video_live.ex now has the section of code that inserts a relationship set apart as a public function so it may be called else where
- insertIntoVFIC(vid, iid) inserts into the relationship where vid is video id and iid is image class id


## [0.0.22]
### Added
- Call to modify classes changed in video frame database during the manageClassesChanged function in video_live.ex.
### Modified
- Clicked image class handle event to ignore classes changed
  Note: classes changed is an attribute of frame and should only be changed when classes are changed

## [0.0.21]
### Fixed
- Image class buttons now act as an interface with the database
  + Selecting an image class that does not have a relationship with the current frame will have its relationship added
  + If a relationship already exists for the image class and current frame then it will be deleted
- Logic error in IO.write statements addressing the classes changed value
- Insert statement for image class buttons by adding timestamps to the migration
### Modified
- Used order_by in currentImageQuery and previousImageQuery so the comparison would evaluate to true in the manage classes changed function
- Function calls in seeds are no longer an enumeration

## [0.0.20]
### Fixed
- Modified insertAll functions in seeds.exs to check if the next name is valid before proceeding

## [0.0.19]
### Added
- Added video_folders for list of videos that need to be processed
- Example of how to view a video, but it points to the video annotation
url.  Needs to point to the new viewer
- Added snippets from PragStudio in case they are useful.  I haven't investigated 
enough, but they should be
- Documentation on the video upload/processing directory structure.

## [0.0.18]
### Added
- Added a video viewer with out the image classs buttons
- New path in router to access video viewer /video_viewer
- New folder video_viewer which contains video_viewer.html.leex and video_viewer.ex

## [0.0.17]
### Fixed
- Fixed cyclic module reference
- Added video_frames_image_classes schema definition
- Replaced all instances of video_frames_classes_table/VideoFramesClassesTable with video_frames_image_classes/VideoFramesImageClasses
- Bug: clicking image server buttons crash server

## [0.0.16]
### Added
- manageClassesChanged(string) function to set the classes_changed bool in the video_frames table to the appropriate value
### Modified
- Modified insert step to query the current and previous frames's image classes
- These two queries will/are compared to determine whether the classes_changed should be true or false
- Bug: different orders of the same image classes in the queries shouldn't set the classes_changed to true

## [0.0.15]
### Added
- Added context statement in ContextGeneration.md for video_frames_image_classes
- Added functionality for image class buttons to insert a relationship between the current frame and the clicked button
- Added functionality for image class button to delete an existing relationship between the current frame and the clicked button

## [0.0.14]
### Added
- Relationships between image classes and video frmes
- Modified @imageClasses in seeds to have '_' for space.  This allows the query to use the name from video_live.ex button clicks
- Added getImageName(integer) to videos.ex to allow video_live.ex to fetch the current image's name since it is also the file_name in the database table video_frames.  This will be used to insert to the relationships current image and the clicked image class

## [0.0.13]
### Added
- insertAll statements for two database tables: image classes and video frames.  
- insertAll statements querying the name first to prevent this.

## [0.0.12]
### Added
- captured_videos tool that shows newly capture videos that haven't been
annotated.  Allows annotating a folder at a time.  Limitation: Does not 
calculate the best guess model just yet

## [0.0.11]
### Added
- functioning play/stop button
### Fixed
- Selecting a video speed does not start the playing of videos.

## [0.0.10]
### Added
- momentary button styling
- Video control buttons below the image
- Forward and backward control of video images
### Fixed
- Renamed button to action_button for classes
- action_button name and order
- image index became img_index

## [0.0.9]
### Added
- ImageClass schema for Video context
- Many to Many for VideoFrame to ImageClass
- Created a couple tables for the video context
### Fixed
- Issue where DB Repo was in dev.exs and dev.secret.exs.  Only in dev.secret.exs now.
  Copy the dev.secret.exs.example to dev.secret.exs and set your own connection information.

## [0.0.8]
### Added
- Foundation of Video annotation.
- Pulled button definitions from a mocked video context module.
- Created a couple tables for the video context

## [0.0.7]
- Functioning TailwindCSS styling.  Mimic'd the code from 
https://dev.to/oliverandrich/learn-elixir-and-phoenix-add-tailwind-css-to-the-project-4fkf

- The wireframe/button styling now matches on and off

## [0.0.6]
### Added
- Ecto postgres configuration for dev
- Added High Level UI design docs


## [0.0.5]
### Added
- Functioning button liveview in wireframe.  However, the TailwindCSS is not "apply"ing correctly.

## [0.0.4]
### Added
- Created a wireframe functional liveview switch button.  This is prototype for class selections for an image

## [0.0.3]
### Added
- Added very preliminary wireframes 

## [0.0.2]
### Added
- Added Tailwind and removed most of phoenix styling

## [0.0.1]
### Added
- Initial checkin 
