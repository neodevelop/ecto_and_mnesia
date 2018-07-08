defmodule Todo.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get("/", do: send_resp(conn, 200, "Welcome"))
  forward("/users", to: Todo.UsersRouter)
  match(_, do: send_resp(conn, 404, "Oops!"))


end
