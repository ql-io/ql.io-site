-- Given a `keyword` as a query param, finds products, and returns ID, title, review count, and average rating.

prodid = select ProductID[0].Value from eBay.FindProducts where
    QueryKeywords = '{keyword}';
details = select * from eBay.ProductDetails where
    ProductID in ('{prodid}') and ProductType = 'Reference';
reviews = select * from eBay.ProductReviews where
    ProductID in ('{prodid}') and ProductType = 'Reference';

return select d.ProductID[0].Value as id, d.Title as title,
    d.ReviewCount as reviewCount, r.ReviewDetails.AverageRating as rating
    from details as d, reviews as r
    where d.ProductID[0].Value = r.ProductID.Value
    via route '/myapi?keywords={keyword}' using method get;