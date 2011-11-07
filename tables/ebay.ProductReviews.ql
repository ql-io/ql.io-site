create table ebay.ProductReviews
  on select get from "http://open.api.ebay.com/shopping?callname=FindReviewsAndGuides&ProductID.Value={#^ProductID}&ProductID.type={^ProductType}&appid={^apikey}&responseencoding=JSON&version=745&siteid={siteid}"
     using defaults apikey = "{config.ebay.apikey}", sideid = 0;
