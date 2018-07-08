defmodule Todo.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch
  plug Plug.RequestId
  # plug Plug.Session

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  # forward "/users", to: UsersRouter

  match _ do
    send_resp(conn, 404, "oops")
  end

end
