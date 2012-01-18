minis = select * from finditems where keywords = '{query}' limit 10;
return select PictureURL from details where itemId = "{minis.itemId}"
       via route '/items/pictures?query={query}' using method get;