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
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false},
      {:excoveralls, "~> 0.18", only: [:dev, :test], runtime: false},
      {:bureaucrat, "~> 0.2.10", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.38", only: [:dev], runtime: false},
      {:inch_ex, "~> 2.0", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.14", only: :dev},
      {:phoenix, "~> 1.7.0"},
      {:plug, "~> 1.18.0"}
    ]
  end

  defp aliases do
    [
      ensure_consistency: [
        "format --check-formatted",    # ensures code is formatted
        "test",                        # runs all tests
        "dialyzer",                    # static type analysis
        "coveralls",                   # test coverage report
        "credo --strict",              # linting & code style
        "sobelow --exit",              # Phoenix security checks
        "hex.audit"                    # dependency audit
      ],

      # Quick formatting
      format_check: ["format --check-formatted"],
      lint: ["credo --strict"],
      coverage: ["coveralls.html"],
      docs: ["docs"]
    ]
  end
end
