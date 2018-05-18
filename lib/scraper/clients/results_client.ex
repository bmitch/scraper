defmodule Scraper.Clients.ResultsClient do
  def init_state() do
    %{}
  end

  def update(results, currency, price) do
    Map.update(results, currency, price, fn _existing ->
      price
    end)
  end
end
