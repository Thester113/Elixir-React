defmodule FullStackApp.Repo do
  use Ecto.Repo,
    otp_app: :full_stack_app,
    adapter: Ecto.Adapters.Postgres
end
