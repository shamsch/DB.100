SELECT p.product_name,
    p.price
FROM Product p
    JOIN Brand b ON p.brand_id = b.brand_id
WHERE b.brand_name = 'McCee'
ORDER BY p.price ASC
LIMIT 1;