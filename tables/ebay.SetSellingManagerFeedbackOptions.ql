create table SetSellingManagerFeedbackOptions
    on insert post to "https://api.ebay.com/ws/api.dll?"
    using headers 'X-EBAY-API-COMPATIBILITY-LEVEL' = '737',
                  'X-EBAY-API-SITEID' = '0',
                  'X-EBAY-API-CALL-NAME'= 'SetSellingManagerFeedbackOptions'
    using defaults RequesterCredentials.eBayAuthToken = '{eBayAuthToken}'
    using bodyTemplate 'SetSellingManagerFeedbackOptions.ejs' type 'application/xml'
    resultset 'SetSellingManagerFeedbackOptionsResponse'