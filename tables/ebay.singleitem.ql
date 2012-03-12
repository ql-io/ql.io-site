-- eBay [GetSingleItem](http://developer.ebay.com/devzone/shopping/docs/CallRef/GetSingleItem.html) API.

create table ebay.singleitem
  on select get from "http://open.api.ebay.com/shopping?callname=GetSingleItem&responseencoding={format}&appid={^apikey}&version=715&IncludeSelector={includeSelector}&ItemID={#itemId}"
  with aliases xml = 'XML', json = 'JSON'
  using defaults format = "JSON", apikey = "eBayinc2e-d3b4-4a21-a765-47cc6b01cf7", limit = 10
  resultset 'Item'

