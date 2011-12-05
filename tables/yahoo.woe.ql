create table yahoo.woe
  on select get from "http://where.yahooapis.com/v1/places.q({^loc})?appid={apikey}&format=json"
  using defaults apikey = "{config.yahoo.apikey}"
  resultset "places.place";