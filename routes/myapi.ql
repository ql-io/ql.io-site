prodid = select ProductID[0].Value from ebay.FindProducts where
    QueryKeywords = 'macbook pro';
details = select * from ebay.ProductDetails where
    ProductID in ('{prodid}') and ProductType = 'Reference';
reviews = select * from ebay.ProductReviews where
    ProductID in ('{prodid}') and ProductType = 'Reference';

return select d.ProductID[0].Value as id, d.Title as title,
    d.ReviewCount as reviewCount, r.ReviewDetails.AverageRating as rating
    from details as d, reviews as r
    where d.ProductID[0].Value = r.ProductID.Value
    via route '/myapi' using method get;