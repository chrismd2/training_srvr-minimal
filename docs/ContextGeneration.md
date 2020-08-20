The following were the context generation commands run to generate base context code.

mix phx.gen.context Videos VideoFramesImageClasses video_frames_image_classes video_frame_id:integer image_classes_id:integer

mix phx.gen.context Videos VideoFolder video_folders name:string initial_inference_run:boolean

mix phx.gen.context Videos VideoFrame video_frames file_name:string index_in_video:integer classes_changed:boolean

mix phx.gen.context Videos ImageClass image_classes name:string

mix ecto.gen.migration add_video_frames_image_classes

