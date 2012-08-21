-- GetSupportedFeatures returns the list of functionalities available to the account to be run on a mobile device
create table pp.gmapi.gsf
on select post to '{config.gmadapter.url}'
using bodyTemplate 'pp.gmapi.gsf.mu' type 'text/plain'
resultset 'SOAP-ENV:Envelope.SOAP-ENV:Body';