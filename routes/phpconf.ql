-- A demo for the PHP Conf 2012.

ids = select itemId from finditems where keywords = '{q}' limit 5;
items = select * from ebay.singleitem where itemId = '{ids}';
bestOffers = select * from ebay.bestoffers where itemId = '{ids}';
bidders = select * from ebay.getallbidders where itemId = '{ids}';
return {
  "item" : "{items}",
  "bidders" : "{bidders}",
  "bestOffers" : "{bestOffers}"
} via route '/itemDetails/{q}' using method get;