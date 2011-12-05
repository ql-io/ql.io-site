--
-- This table maps to [FindReviewsAndGuides](http://developer.ebay.com/devzone/shopping/docs/callref/FindReviewsAndGuides.html) API.
-- See the documentation for more details.
--
create table eBay.ProductReviews
  on select get from "http://open.api.ebay.com/shopping?callname=FindReviewsAndGuides&ProductID.Value={#^ProductID}&ProductID.type={^ProductType}&appid={^apikey}&responseencoding=JSON&version=745&siteid={siteid}"
     using defaults apikey = "{config.eBay.apikey}", sideid = 0;
