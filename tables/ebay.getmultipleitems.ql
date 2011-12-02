create table details
  on select get from "http://open.api.ebay.com/shopping?callname=GetMultipleItems&ItemID={20|itemId}&responseencoding={format}&appid={^apikey}&version=713&IncludeSelector=ShippingCosts"
     using defaults format = "JSON", apikey = "{config.eBay.apikey}"
     resultset 'Item';