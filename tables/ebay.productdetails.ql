-- eBay [FindProducts](http://developer.ebay.com/devzone/shopping/docs/CallRef/FindProducts.html) to fetch product details given a product ID.

create table eBay.ProductDetails
  on select get from "http://open.api.ebay.com/shopping?callname=FindProducts&appid={^apikey}&responseencoding=JSON&version=725&siteid={siteid}&ProductID.type={^ProductType}&ProductID.Value={^ProductID}"
      using defaults apikey = "{config.eBay.apikey}", sideid = 0
resultset 'Product';
