defmodule Scraper.Servers.UrlFinderServerTest do
  use ExUnit.Case
  alias Scraper.Servers.UrlFinderServer

  test "it can get the next url until it runs out" do
    nextUrl = UrlFinderServer.next_url()
    assert nextUrl == {:AED, "https://api.coindesk.com/v1/bpi/currentprice/aed"}

    nextUrl = UrlFinderServer.next_url()
    assert nextUrl == {:AFN, "https://api.coindesk.com/v1/bpi/currentprice/afn"}

    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()
    UrlFinderServer.next_url()

    # We've reached the end of the URLs so we just get back an empty list now.
    assert UrlFinderServer.next_url() == []
    assert UrlFinderServer.next_url() == []
  end

end
