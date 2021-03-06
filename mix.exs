defmodule Plugsnag.Mixfile do
  use Mix.Project

  def project do
    [app: :plugsnag,
     version: "1.3.0-beta1",
     elixir: "~> 1.0",
     package: package,
     description: """
       Bugsnag reporter for Elixir's Plug
     """,
     deps: deps,
     dialyzer: [plt_add_deps: :project]
   ]
  end

  def package do
    [contributors: ["Jared Norman"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/jarednorman/plugsnag"}]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:bugsnag, "~> 1.3"},
     {:plug, "~> 1.0"},
     {:dialyxir, "~> 0.3.5", only: [:dev]}
    ]
  end
end
