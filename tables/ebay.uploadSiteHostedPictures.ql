-- Example: insert into ebay.trading.UploadSiteHostedPictures (ExternalPictureURL) values("http://developer.ebay.com/DevZone/XML/docs/images/hp_book_image.jpg")
--
create table ebay.trading.UploadSiteHostedPictures
  on insert post to "https://api.sandbox.ebay.com/ws/api.dll"
     using headers 'X-EBAY-API-COMPATIBILITY-LEVEL' = '737',
                   'X-EBAY-API-SITEID' = '0',
                   'X-EBAY-API-CALL-NAME'= 'UploadSiteHostedPictures'
      using bodyTemplate 'ebay.uploadSiteHostedPictures.ejs' type 'application/xml'
      resultset 'UploadSiteHostedPicturesResponse'