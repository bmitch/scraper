defmodule Scraper.Servers.UrlFinderServer do
  use GenServer
  alias Scraper.Clients.UrlFinderClient

  @me __MODULE__

  # API
  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: @me)
  end

  def next_url() do
    GenServer.call(@me, :next_url)
  end

  # Server
  def init(_opts) do
    {:ok, UrlFinderClient.init_state()}
  end

  def handle_call(:next_url, _from, [head | tail]) do
    {:reply, head, tail}
  end

  def handle_call(:next_url, _from, []) do
    {:reply, [], []}
  end
end
