-- eBay [FindProducts](http://developer.ebay.com/devzone/shopping/docs/CallRef/FindProducts.html) API to search for upto a given number of products given a query keyword.

create table eBay.FindProducts
  on select get from "http://open.api.ebay.com/shopping?callname=FindProducts&appid={^apikey}&responseencoding=JSON&version=725&QueryKeywords={^QueryKeywords}&MaxEntries={max}&ProductSort=Popularity&AvailableItemsOnly=true&siteid={#siteid}"
     using defaults max = "5", apikey = "{config.eBay.apikey}", sideid = 0
  resultset 'Product';