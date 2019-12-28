defmodule RainbowInspector.MixProject do
  use Mix.Project

  def project do
    [
      app: :rainbow_inspector,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21.2"}
    ]
  end

  defp package do
    [
      name: "rainbow_inspector",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/theAnnie/rainbow_inspector"},
      description: description()
    ]
  end

  defp description do
    """
    Rainbow Inspector is a small library that allows you to specify a color of
    output given by inspect() function.
    """
  end
end
