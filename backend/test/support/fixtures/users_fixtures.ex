defmodule Backend.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Backend.Users` context.
  """

  @doc """
  Generate a unique user msisdn.
  """
  def unique_user_msisdn, do: "some msisdn#{System.unique_integer([:positive])}"

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        last_name: "some last_name",
        msisdn: unique_user_msisdn(),
        password: "some password"
      })
      |> Backend.Users.create_user()

    user
  end
end
