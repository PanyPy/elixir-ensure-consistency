# Example Router, this is not a Phoenix application.
defmodule EnsureConsistencyWeb.Router do
  use EnsureConsistencyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EnsureConsistencyWeb do
    pipe_through :api
    # your normal routes...
  end

  # ----- DEV-ONLY DEMO ROUTES -----
  if Mix.env() == :dev do
    scope "/dev", EnsureConsistencyWeb do
      pipe_through :api

      # routes purposely unsafe for Sobelow demo
      get "/unsafe_eval", UnsafeDemoController, :demo_eval
      get "/unsafe_redirect", UnsafeDemoController, :demo_redirect
    end
  end
end
