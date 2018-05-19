defmodule Scraper.Clients.UrlFinderClientTest do
  use ExUnit.Case
  alias Scraper.Clients.UrlFinderClient

  test "it can return the initial state list of urls" do
    urls = UrlFinderClient.init_state()
    assert Enum.count(urls) == 12
  end
end
