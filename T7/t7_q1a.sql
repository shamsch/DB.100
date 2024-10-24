SELECT b.brand_name, p.product_name, e.evaluation_date, e.rating
FROM Evaluation e
JOIN Product p ON e.product_id = p.product_id
JOIN Brand b ON p.brand_id = b.brand_id
ORDER BY b.brand_name, p.product_name ASC, evaluation_date DESC;