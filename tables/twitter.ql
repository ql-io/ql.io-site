--
-- Twitter [search API](https://dev.twitter.com/docs/api/1/get/search)
--
create table twitter.search
  on select get from 'http://search.twitter.com/search.json?q={q}&rpp={rpp}&include_entities=true&result_type=mixed&page={page}'
  with aliases limit = 'rpp'
  using defaults format = 'json'
  using patch 'twitter.js'
  resultset 'results'