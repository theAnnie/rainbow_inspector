defmodule RainbowInspector.MixProject do
  use Mix.Project

  def project do
    [
      app: :rainbow_inspector,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
end
