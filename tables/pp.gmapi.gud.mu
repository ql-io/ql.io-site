xml=<?xml version="1.0" encoding="UTF-8" ?><SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:cc="urn:ebay:apis:CoreComponentTypes" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:ebl="urn:ebay:apis:eBLBaseComponents" xmlns:ns="urn:ebay:api:PayPalAPI" xmlns:saml="urn:oasis:names:tc:SAML:1.0:assertion" xmlns:wsse="http://schemas.xmlsoap.org/ws/2002/12/secext" xmlns:wsu="http://schemas.xmlsoap.org/ws/2002/07/utility" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pt="http://svcs.paypal.com/mobile/adapter/types/pt"><SOAP-ENV:Header><Security xmlns="http://schemas.xmlsoap.org/ws/2002/12/secext" xsi:type="wsse:SecurityType"></Security>
<RequesterCredentials xmlns="urn:ebay:api:PayPalAPI" xsi:type="ebl:CustomSecurityHeaderType">
 <Credentials xmlns="urn:ebay:apis:eBLBaseComponents" xsi:type="ebl:UserIdPasswordType">
  <Username xsi:type="xs:string">gmapi_client</Username>
  <Password xsi:type="xs:string">11111111</Password>
  <Signature xsi:type="xs:string"></Signature>
</Credentials>
</RequesterCredentials></SOAP-ENV:Header><SOAP-ENV:Body id="_0">
<GMGetUserDetailsReq xmlns="urn:ebay:api:PayPalAPI">
 <Request>
  <RequestorID xsi:type="ns:IVRRequestorID">yephick</RequestorID>
  <ns1:Version xmlns:ns1="urn:ebay:apis:eBLBaseComponents">3.0</ns1:Version>
  {{#params}}
  <SessionToken xsi:type="ns:IVRSessionToken">{{session_token}}</SessionToken>
  {{/params}}
 </Request>
</GMGetUserDetailsReq></SOAP-ENV:Body></SOAP-ENV:Envelope>