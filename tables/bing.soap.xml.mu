<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
  <soapenv:Header/>
  <soapenv:Body>
    <SearchRequest xmlns="http://schemas.microsoft.com/LiveSearch/2008/03/Search">
      <parameters>
      {{#params}}
      <Query>{{q}}</Query>
      <AppId>{{appid}}</AppId>
      {{/params}}
      <Sources>
        <SourceType>Web</SourceType>
      </Sources>
      </parameters>
    </SearchRequest>
  </soapenv:Body>
</soapenv:Envelope>


