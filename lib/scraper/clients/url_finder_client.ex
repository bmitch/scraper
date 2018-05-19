defmodule Scraper.Clients.UrlFinderClient do
  @urls Application.get_env(:scraper, :api_urls)

  def init_state() do
    @urls
  end
end
