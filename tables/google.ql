-- Google geocoding API.

create table google.geocode
  on select get from "http://maps.googleapis.com/maps/api/geocode/{format}?sensor=true&address={^address}"
  using defaults format = 'json'
  resultset 'results'

-- Example: select * from google.shopping where barcode = '09780802453792'
create table google.shopping
  on select get from 'https://www.googleapis.com/shopping/search/v1/public/products?key={^key}&country={country}&alt={format}&maxResults={maxResults}&restrictBy=gtin:{barcode}'
     using defaults  format= 'json', country= 'US', key= '{config.google.apikey}', maxResults= '10'
     resultset 'items'


