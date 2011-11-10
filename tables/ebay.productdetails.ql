-- Fetch product details given a product id
create table eBay.ProductDetails
  on select get from "http://open.api.ebay.com/shopping?callname=FindProducts&appid={^apikey}&responseencoding=JSON&version=725&siteid={siteid}&ProductID.type={^ProductType}&ProductID.Value={^ProductID}"
      using defaults apikey = "{config.eBay.apikey}", sideid = 0
resultset 'Product';
