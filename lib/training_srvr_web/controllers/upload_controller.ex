
defmodule TrainingSrvrWeb.UploadController do
  use TrainingSrvrWeb, :controller
  import Base
  require Logger
  
  def live(conn, %{"img_list" => img_list} ) do
    result = save_images("data/client/videos/live", img_list)
    IO.inspect(result, label: "^^^^^^^^^^^^^ Result in the controller")
    case result  do
      {:error, message} -> 
        IO.puts("-------------  Not quite")
        Logger.info("Problem saving the images #{message}")
        conn
        |> put_status(500)
        |> json(%{"status" => "Problem saving the image"})
      :ok -> 
        conn
        |> put_status(201)
        |> json(%{"status" => "saved_files"})
      end

  end

  @spec history(Plug.Conn.t(), any) :: Plug.Conn.t()
  def history(conn, %{"img_list" => img_list}) do
    save_images("data/client/videos", img_list)
    conn
    |> put_status(201)
    |> json(%{"status" => "saved_history_images"})
  end

  defp save_images(folder, img_list) do
    Enum.each(img_list, fn(img) -> save_image(folder, img) end)
  end

  defp save_image(folder, img ) do
    file_output_path = "#{File.cwd!()}/#{folder}/#{img["camera"]}/#{img["video_name"]}/"
    fileName = "#{img["img_name"]}"
    File.mkdir_p!(file_output_path)
    binary_file = decode64!(img["file"])
    {:ok, file} = File.open("#{file_output_path}#{fileName}", [:write])
    result = IO.binwrite(file, binary_file)        
  end
  
end