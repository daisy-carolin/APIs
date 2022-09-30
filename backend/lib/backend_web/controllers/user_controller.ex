defmodule BackendWeb.UserController do
  use BackendWeb, :controller

  alias Backend.Users
  alias Backend.Users.User
  alias BackendWeb.Guardian

  action_fallback(BackendWeb.FallbackController)

  def index(conn, _params) do
    users = Users.list_users()
    render(conn, "index.json", users: users)
  end

  def create(conn, %{"user" => user_params}) do
    with {:ok, %User{} = user} <- Users.create_user(user_params) do
      conn
      |> put_status(200)
      |> render("show.json", user: user)
    end
  end

  def api_login(conn, params) do
    with {:ok, user} <- User.login(params),
         {:ok, token, _} = Guardian.encode_and_sign(user, %{}, ttl: {60, :minute}) do
      conn
      |> put_status(200)
      |> Guardian.Plug.sign_in(user)
      |> render("auth.json", user: user, token: token)
    else
      {:error, errors} ->
        conn
        |> put_status(422)
        |> json(%{errors: errors})
    end
  end

  def show(conn, %{"id" => id}) do
    user = Users.get_user!(id)
    render(conn, "show.json", user: user)
  end

  def update(conn, %{"id" => id, "user" => user_params}) do
    user = Users.get_user!(id)

    with {:ok, %User{} = user} <- Users.update_user(user, user_params) do
      render(conn, "show.json", user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    user = Users.get_user!(id)

    with {:ok, %User{}} <- Users.delete_user(user) do
      send_resp(conn, :no_content, "")
    end
  end
end
