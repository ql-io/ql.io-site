--
--  Bitly APIs to shorten and expand a URI.
--
-- Example to shorten a URI: insert into bitly.shorten (longUrl) values ('http://ql.io/docs')
--
-- Examples to expand a URI: select long_url from bitly.shorten where shortUrl = 'http://bit.ly/uZIvmY'
--
create table bitly.shorten
  on insert get from "http://api.bitly.com/v3/shorten?login={^login}&apiKey={^apikey}&longUrl={^longUrl}&format={format}"
            using defaults apikey = "{config.bitly.apikey}", login = "{config.bitly.login}", format = "json"
            using patch 'bitly.js'
            resultset 'data.url'
  on select get from "http://api.bitly.com/v3/expand?login={^login}&apiKey={^apikey}&shortUrl={^shortUrl}&format={format}"
            using defaults apikey = "{config.bitly.apikey}", login = "{config.bitly.login}", format = "json"
            using patch 'bitly.js'
            resultset 'data.expand'
