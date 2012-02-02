-- Show daily deals - use siteId=0 for US and siteId=3 for UK.
dailyDealsResponse = select * from dailydeals where siteId="{siteId}";
dailyDeals = "{dailyDealsResponse.$..Item}";
itemDetails = select ItemID as itemId, Title as title, GalleryURL as pic, Seller.UserID as sellerUserId, Seller.FeedbackScore
    as sellerFeedbackRating, Seller.PositiveFeedbackPercent as sellerFeedbackPercentfrom,
    HitCount as pageViews from details where itemId in (dailyDeals.ItemID);

return itemDetails via route '/deals/{siteId}' using method get;