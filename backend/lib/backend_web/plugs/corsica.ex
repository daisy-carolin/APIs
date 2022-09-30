defmodule BackendWeb.CORS do
  use Corsica.Router,
    origins: ["http://localhost:8080", "http://localhost:3000", ~r{^https?://(.*\.)?foo\.com$}],
    allow_headers: ["accept", "content-type", "authorization", "sentry-trace"],
    allow_credentials: true,
    max_age: 600,
    log: [rejected: :error, invalid: :warn, accepted: :debug]

  resource("/public/*", origins: "*")
  resource("/*")
end
