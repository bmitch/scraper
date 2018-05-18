defmodule Scraper.Application do
  use Application

  def start(_type, _args) do
    children = [
      Scraper.Servers.ResultsServer
    ]

    opts = [strategy: :one_for_one, name: Scraper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
