defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.0.1",
      name: "Issues",
      source_url: "https://github.com/frozen599/issue_fetcher",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:httpoison, "~> 1.8.0"},
      {:poison,    "~> 5.0"},
      {:ex_doc, "~> 0.28.0"},
      {:earmark, "~> 1.4"}

    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
