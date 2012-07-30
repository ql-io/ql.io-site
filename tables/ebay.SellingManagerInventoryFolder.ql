create table ebay.SellingManagerInventoryFolder
    on insert post to "https://api.ebay.com/ws/api.dll?"
    using headers 'X-EBAY-API-COMPATIBILITY-LEVEL' = '737',
                  'X-EBAY-API-SITEID' = '0',
                  'X-EBAY-API-CALL-NAME'= 'AddSellingManagerInventoryFolder',
                  'X-EBAY-API-APP-NAME' = '{appname}',
                  'X-EBAY-API-DEV-NAME' = '{devname}',
                  'X-EBAY-API-CERT-NAME' = '{certname}'
    using defaults RequesterCredentials.eBayAuthToken = '{eBayAuthToken}'
    using bodyTemplate 'AddSellingManagerInventoryFolder.ejs' type 'application/xml'
    resultset 'AddSellingManagerInventoryFolderResponse'
    on delete post to "https://api.ebay.com/ws/api.dll?"
    using headers 'X-EBAY-API-COMPATIBILITY-LEVEL' = '737',
                  'X-EBAY-API-SITEID' = '0',
                  'X-EBAY-API-CALL-NAME'= 'DeleteSellingManagerInventoryFolder',
                  'X-EBAY-API-APP-NAME' = '{appname}',
                  'X-EBAY-API-DEV-NAME' = '{devname}',
                  'X-EBAY-API-CERT-NAME' = '{certname}'
    using defaults RequesterCredentials.eBayAuthToken = '{eBayAuthToken}'
    using bodyTemplate 'DeleteSellingManagerInventoryFolder.ejs' type 'application/xml'
    resultset 'DeleteSellingManagerInventoryFolderResponse'