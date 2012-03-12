-- Use this resource to shorten a URI using bitly.

return insert into bitly.shorten (longUrl) values ('{uri}')
    via route '/bitly/shorten' using method post;