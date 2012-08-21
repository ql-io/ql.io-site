-- Authenticate the user and return back a session token based on email/password
create table pp.gmapi.gmauth
on select get from '{config.gmadapter.gmauth}?Email={Email}&Password={Password}'
using patch 'gmauth.js';