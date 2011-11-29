-- See [Bing's API Basics](http://www.bing.com/developers/s/APIBasics.html) for more info.
create table bing.search
  on select get from 'http://api.bing.net/xml.aspx?Appid={appid}&query={q}&sources=web'
            using defaults appid = '{config.bing.appid}'
            using patch 'bing.js'
            resultset 'SearchResponse.web:Web.web:Results.web:WebResult';

create table bing.soap.search
  on select post to 'http://api.bing.net/soap.asmx'
            using defaults appid = '{config.bing.appid}'
            using patch 'bing.js'
            using bodyTemplate 'bing.soap.xml.mu' type 'application/xml'
            resultset 'soapenv:Envelope.soapenv:Body.SearchResponse.parameters.Web.Results.WebResult';