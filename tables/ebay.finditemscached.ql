-- eBay's [findItemsByKeywords](http://developer.ebay.com/devzone/finding/CallRef/findItemsByKeywords.html) API.

create table finditemscached
 on select get from 'http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords&SERVICE-VERSION=1.8.0&GLOBAL-ID={globalid}&SECURITY-APPNAME={apikey}&RESPONSE-DATA-FORMAT={format}&REST-PAYLOAD&keywords={^keywords}&paginationInput.entriesPerPage={limit}&paginationInput.pageNumber={pageNumber}&outputSelector%280%29=SellerInfo&sortOrder={sortOrder}'
   with aliases format = 'RESPONSE-DATA-FORMAT', json = 'JSON', xml = 'XML'
   using defaults format = 'XML', globalid = 'EBAY-US', sortorder ='BestMatch',
   apikey =  "{config.eBay.apikey}", limit = 1, pageNumber = 1
   using patch 'findingcache.js'
   resultset 'findItemsByKeywordsResponse.searchResult.item'
   expires 600