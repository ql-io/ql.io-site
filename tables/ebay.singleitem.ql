-- Example: select ShippingCostSummary from ebay.shopping.singleitem where includeSelector = 'Details,ShippingCosts,ItemSpecifics,Variations,Description' and itemId in (select itemId from ebay.finding.items where keywords='ipad 2' limit 1);

-- Uses shopping api and fetches shipping cost summary for a given valid itemid

create table ebay.singleitem
  on select get from "http://open.api.ebay.com/shopping?callname=GetSingleItem&responseencoding={format}&appid={^apikey}&version=715&IncludeSelector={includeSelector}&ItemID={#itemId}"
  with aliases xml = 'XML', json = 'JSON'
  using defaults format = "JSON", apikey = "eBayinc2e-d3b4-4a21-a765-47cc6b01cf7", limit = 10
  resultset 'Item'

