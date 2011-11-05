-- Get stats for a given product id
create table ebay.ProductStats
  on select get from "http://svcs.ebay.com/services/search/ProductStatisticsService/v1?X-EBAY-SOA-SECURITY-APPNAME={^apikey}&X-EBAY-SOA-SERVICE-NAME=ProductStatisticsService&X-EBAY-SOA-OPERATION-NAME=getProductStatistics&X-EBAY-SOA-RESPONSE-DATA-FORMAT=JSON&productId={^productID}&buyBoxPriceRequest.includeAllConditions=true&inventoryCountRequest.includeAllConditions=true"
      using defaults apikey = "{config.ebay.apikey}", sideid = 0
resultset 'getProductStatisticsResponse.productStatistics';
