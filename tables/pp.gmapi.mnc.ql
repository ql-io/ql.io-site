-- GMMobileNotificationConfigure is related to push notifications for mobile devices
create table pp.gmapi.mnc
on select post to '{config.gmadapter.url}'
using bodyTemplate 'pp.gmapi.mnc.mu' type 'text/plain'
resultset 'SOAP-ENV:Envelope.SOAP-ENV:Body';