SELECT p.product_name,
    p.price,
    b.brand_name
FROM Product p
    JOIN Brand b ON p.brand_id = b.brand_id
WHERE p.price = (
        SELECT MIN(price)
        FROM Product
    );