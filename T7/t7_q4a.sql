SELECT p.product_name,
    MIN(e.rating) AS min_rating,
    MAX(e.rating) AS max_rating,
    AVG(e.rating) AS avg_rating,
    COUNT(e.rating) AS no_ratings
FROM Product p
    LEFT JOIN Evaluation e ON p.product_id = e.product_id
GROUP BY p.product_id,
    p.product_name
ORDER BY p.product_name ASC;