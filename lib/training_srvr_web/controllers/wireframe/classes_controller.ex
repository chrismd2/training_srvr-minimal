# @moduledoc """
#   The Wireframe classes controller is a module for containing
#   the wireframe pages for the annotation classes tool
  
#   The classes tool is a simple tool to identify the classes
#   contained in an image.
# """
# @moduledoc since: "1.0.0"
defmodule TrainingSrvrWeb.Wireframe.ClassesController do
  use TrainingSrvrWeb, :controller

  def blocks(conn, _params) do
    render(conn, "blocks.html")
  end

  def list_classes(conn, _params) do
    render(conn, "list_classes.html")
  end

end