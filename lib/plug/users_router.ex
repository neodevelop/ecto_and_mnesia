defmodule Todo.UsersRouter do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    conn = %{conn | secret_key_base: "wwaremakingdevsdevelopingsoftwareforfunandentertainmentworkingtogetherwemadebestsoftware"}
    conn = fetch_session(conn)
    conn = put_session(conn, :message, "new stuff we just set in the session")
    send_resp(conn, 200, "users in the world")
  end

end
