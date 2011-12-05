-- Usage: select * from twitter.home 

--- Comments: For testing you can pass consumerkey, consumersecret, accesstoken and accesstokensecret
--- In real usage you would end up passing these parameters in header
--- example: curl --header "consumerkey: <consumerkey>" --header "consumersecret: <consumerkey>" --header "accesstoken: <accesstoken>" --header "accesstokensecret: <accesstokensecret>" "http://localhost:3000/q?s=--%20Type%20ql%20script%20here%20-%20all%20keywords%20must%20be%20in%20lower%20case%0Aselect%20*%20from%20twitter.home"
--- Note: User will need get consumerkey, consumersecret, accesstoken and accesstokensecret by registering an app through https://dev.twitter.com/apps

create table twitter.home
 on select get from 'https://api.twitter.com/1/statuses/home_timeline.{format}'
 using defaults format = 'json'
 using patch 'twitter.signin.js'
