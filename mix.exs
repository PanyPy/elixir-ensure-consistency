defmodule EnsureConsistency.MixProject do
  use Mix.Project

  def project do
    [
      app: :ensure_consistency,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      # <-- add this line
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EnsureConsistency.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev], runtime: false},
      {:excoveralls, "~> 0.15", only: :test},
      {:ex_doc, "~> 0.30", only: [:dev], runtime: false},
      {:inch_ex, "~> 2.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      ensure_consistency: [
        "format --check-formatted",
        "test",
        "dialyzer",
        "coveralls",
        "credo --strict",
        "inch",
        "hex.audit"
      ]
    ]
  end
end
