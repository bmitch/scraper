defmodule Scraper.Servers.ResultsServerTest do
  use ExUnit.Case
  alias Scraper.Servers.ResultsServer

  test "it can add entries to the results" do
    ResultsServer.add_price_for(:usd, 5.00)
    ResultsServer.add_price_for(:cad, 6.00)
    ResultsServer.add_price_for(:gbp, 7.00)

    results = ResultsServer.get_results()
    assert Enum.count(results) == 3
    assert results[:usd] == 5.00
    assert results[:cad] == 6.00
    assert results[:gbp] == 7.00
  end
end
