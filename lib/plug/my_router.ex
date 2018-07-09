defmodule Todo.Router do
  use Plug.Router

  plug Todo.Plug
  plug Plug.Logger
  plug Plug.RequestId
  plug Plug.Session, store: :cookie, key: "_my_app_session", signing_salt: "makingdevs"
  plug Plug.Static, at: "/public", from: "static/"
  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Welcome"))
  forward("/users", to: Todo.UsersRouter)
  match(_, do: send_resp(conn, 404, "Oops!"))


end
