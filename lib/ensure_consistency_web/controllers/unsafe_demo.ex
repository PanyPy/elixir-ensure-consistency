defmodule EnsureConsistencyWeb.UnsafeDemoController do
  use EnsureConsistencyWeb, :controller

  @moduledoc """
  Demo-only controller containing intentionally unsafe code for Sobelow demos.
  """

  # High-confidence RCE: executes user-supplied code -> Sobelow flags this.
  def demo_eval(conn, _params) do
    Code.eval_string(conn.params["code"] || "")
    json(conn, %{ok: true})
  end

  # Dynamic redirect from user input -> Sobelow will flag dynamic redirects.
  def demo_redirect(conn, _params) do
    redirect(conn, external: conn.params["url"] || "http://example.com")
  end
end
