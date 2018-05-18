defmodule Scraper.Clients.ResultsClientTest do
  use ExUnit.Case
  alias Scraper.Clients.ResultsClient

  test "it can get the initial state" do
    state = ResultsClient.init_state()
    assert state = %{}
  end

  test "it can add to the results" do
    result = ResultsClient.update(%{}, 'USD', 9.99)
    assert Enum.count(result) == 1
    assert result['USD'] == 9.99

    result = ResultsClient.update(result, 'CAD', 12.99)
    assert Enum.count(result) == 2
    assert result['USD'] == 9.99
    assert result['CAD'] == 12.99
  end

  test "it can replace values in the results" do
    result = ResultsClient.update(%{}, 'USD', 9.99)
    assert Enum.count(result) == 1
    assert result['USD'] == 9.99

    result = ResultsClient.update(result, 'USD', 12.99)
    assert Enum.count(result) == 1
    assert result['USD'] == 12.99
  end

end
