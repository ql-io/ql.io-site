prodid = select ProductID[0].Value from ebay.FindProducts where
    QueryKeywords = 'iphone';
details = select * from ebay.ProductDetails where
    ProductID in ('{prodid}') and ProductType = 'Reference';
    stats = select * from ebay.ProductStats where
    productID in ('{prodid}');
return select d.ProductID[0].Value as id, d.Title as title,
    d.ReviewCount as reviewCount, s.inventoryCountResponse as inventory
    from details as d, stats as s
    where d.ProductID[0].Value = s.productId via route '/intro' using method get;