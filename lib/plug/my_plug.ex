defmodule Todo.Plug do
  #import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn
  end
end
