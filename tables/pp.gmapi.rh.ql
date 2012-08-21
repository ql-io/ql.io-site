-- Recent History returns transactions for "that many" days back
create table pp.gmapi.rh
on select post to '{config.gmadapter.url}'
using defaults days = '120'
using bodyTemplate 'pp.gmapi.rh.mu' type 'text/plain'
resultset 'SOAP-ENV:Envelope.SOAP-ENV:Body';