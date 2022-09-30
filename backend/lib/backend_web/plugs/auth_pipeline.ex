defmodule BackendWeb.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :backend,
    module: BackendWeb.Guardian,
    error_handler: BackendWeb.AuthErrorHandler

  plug(Guardian.Plug.VerifyHeader, scheme: "Bearer")
  plug(Guardian.Plug.EnsureAuthenticated)
end
