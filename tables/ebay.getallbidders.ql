create table ebay.getallbidders
  on select post to "https://api.ebay.com/ws/api.dll?appid={^appid}&version=723"
     using headers 'Content-Type'= 'application/xml; charset=UTF-8',
                   'X-EBAY-API-SITEID'= '0',
                   'X-EBAY-API-COMPATIBILITY-LEVEL'= '723',
                  'X-EBAY-API-APP-NAME'= 'eBayinc2e-d3b4-4a21-a765-47cc6b01cf7',
                  'X-EBAY-API-DEV-NAME'= '101e429b-df77-47ee-80f5-349eabe13c42',
                  'X-EBAY-API-CERT-NAME'= '6c620af8-6fec-418c-bc40-35d7dd89fd8b',
                   'X-EBAY-API-CALL-NAME'= 'getAllBidders'
      using defaults format = "JSON", globalid = "EBAY-US", currency = "USD", itemSearchScope = "",
                     lang= "en_US", limit = 10, offset = 0, appid = "eBayinc2e-d3b4-4a21-a765-47cc6b01cf7"
      using bodyTemplate "ebay.getallbidders.xml.mu" type 'application/xml' foreach 'itemId'
