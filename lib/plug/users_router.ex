defmodule Todo.UsersRouter do
  use Plug.Router

  plug Plug.Logger
  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(conn, 200, "users in the world")
  end

end
