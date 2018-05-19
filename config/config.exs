use Mix.Config

config :scraper,
  api_urls: [
    AED: "https://api.coindesk.com/v1/bpi/currentprice/aed",
    AFN: "https://api.coindesk.com/v1/bpi/currentprice/afn",
    ALL: "https://api.coindesk.com/v1/bpi/currentprice/all",
    AMD: "https://api.coindesk.com/v1/bpi/currentprice/amd",
    ANG: "https://api.coindesk.com/v1/bpi/currentprice/ang",
    AOA: "https://api.coindesk.com/v1/bpi/currentprice/aoa",
    USD: "https://api.coindesk.com/v1/bpi/currentprice/usd",
    CAD: "https://api.coindesk.com/v1/bpi/currentprice/cad",
    GBP: "https://api.coindesk.com/v1/bpi/currentprice/gbp",
    BRL: "https://api.coindesk.com/v1/bpi/currentprice/brl",
    BSD: "https://api.coindesk.com/v1/bpi/currentprice/bsd",
    BTC: "https://api.coindesk.com/v1/bpi/currentprice/btc"
  ]
