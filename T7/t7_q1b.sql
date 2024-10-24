SELECT 
    b.brand_name,
    p.product_name,
    e.evaluation_date,
    e.rating
FROM 
    Evaluation e
JOIN 
    User u ON e.user_id = u.user_id
JOIN 
    Product p ON e.product_id = p.product_id
JOIN 
    Brand b ON p.brand_id = b.brand_id
WHERE 
    u.user_name = 'Anni N'
ORDER BY 
    b.brand_name ASC,
    p.product_name ASC,
    e.evaluation_date DESC;