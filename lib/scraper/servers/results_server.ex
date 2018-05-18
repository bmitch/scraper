defmodule Scraper.Servers.ResultsServer do
  use GenServer
  alias Scraper.Clients.ResultsClient

  @me __MODULE__

  # API
  def start_link(_) do
    GenServer.start_link(__MODULE__, :no_args, name: @me)
  end

  def add_price_for(currency, price) do
    GenServer.cast(@me, {:add, currency, price})
  end

  def get_results do
    GenServer.call(@me, {:get_results})
  end

  # Server
  def init(:no_args) do
    {:ok, ResultsClient.init_state()}
  end

  def handle_cast({:add, currency, price}, results) do
    {:noreply, ResultsClient.update(results, currency, price)}
  end

  def handle_call({:get_results}, _from, results) do
    {:reply, results, results}
  end
end
