-- Given a keyword, search bing and twitter.

web = select web:Title, web:Url, web:Description from bing.search where q = "{keyword}";
tweets = select id as id, from_user_name as user_name, text as text
    from twitter.search where q = "{keyword}";

return {
  "keyword": "{keyword}",
  "web": "{web}",
  "tweets": "{tweets}"
} via route '/search?q={keyword}' using method get;
