defmodule Namegen.Mixfile do
  use Mix.Project

  def project do
    [
      app: :namegen,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Generates a random first and last name output in JSON format."
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp package() do
  [
    maintainers: ["James Steinmetz"],
    licenses: ["Apache 2.0"],
    links: %{"GitHub" => "https://github.com/j-peso/Namegenx"}
  ]
  end
end
