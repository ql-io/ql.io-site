-- GetUserDetails returns basic info about user. Currently this API is a kitchen sink :(
create table pp.gmapi.gud
on select post to '{config.gmadapter.url}'
using bodyTemplate 'pp.gmapi.gud.mu' type 'text/plain'
resultset 'SOAP-ENV:Envelope.SOAP-ENV:Body';