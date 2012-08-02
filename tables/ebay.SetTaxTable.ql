create table SetTaxTable
    on update post to "https://api.ebay.com/ws/api.dll?"
    using headers 'X-EBAY-API-COMPATIBILITY-LEVEL' = '737',
                  'X-EBAY-API-SITEID' = '0',
                  'X-EBAY-API-CALL-NAME'= 'SetTaxTable'
    using defaults RequesterCredentials.eBayAuthToken = '{eBayAuthToken}'
    using bodyTemplate 'SetTaxTable.ejs' type 'application/xml'
    resultset 'SetTaxTableResponse'