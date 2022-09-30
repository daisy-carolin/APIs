defmodule Backend.Users.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  require Logger

  alias Backend.Repo

  schema "users" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:msisdn, :string)
    field(:password, :string)
    field(:plain_password, :string, virtual: true)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :msisdn, :plain_password])
    |> validate_required([:first_name, :last_name, :msisdn, :plain_password])
    |> unique_constraint(:msisdn)
    |> prepare_changes(&hash_password/1)
  end

  defp hash_password(changeset) do
    password = get_change(changeset, :plain_password)

    changeset
    |> put_change(:password, Argon2.hash_pwd_salt(password))
  end

  def login(%{"msisdn" => msisdn, "password" => password}) do
    case get_by_msisdn(msisdn) do
      nil ->
        Argon2.no_user_verify()
        {:error, "invalid email or password"}

      user ->
        validate_credentials(user, password)
    end
  end

  defp validate_credentials(user, password) do
    case Argon2.verify_pass(password, user.password) do
      true ->
        Logger.info("valid password")
        {:ok, user}

      false ->
        Logger.warn("invalid password")
        {:error, "invalid email or password"}
    end
  end

  def get_by_msisdn(queryable \\ __MODULE__, msisdn) do
    from(u in queryable, where: u.msisdn == ^msisdn)
    |> Repo.one()
  end
end
