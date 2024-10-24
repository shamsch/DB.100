SELECT DISTINCT u.birth_year,
    u.user_name
FROM User u
    JOIN Evaluation e ON u.user_id = e.user_id
    JOIN Product p ON e.product_id = p.product_id
    JOIN Brand b ON p.brand_id = b.brand_id
WHERE u.user_id IN (
        SELECT e1.user_id
        FROM Evaluation e1
            JOIN Product p1 ON e1.product_id = p1.product_id
            JOIN Brand b1 ON p1.brand_id = b1.brand_id
        WHERE b1.brand_name = 'KooTek'
    )
    AND u.user_id IN (
        SELECT e2.user_id
        FROM Evaluation e2
            JOIN Product p2 ON e2.product_id = p2.product_id
            JOIN Brand b2 ON p2.brand_id = b2.brand_id
        WHERE b2.brand_name = 'McCee'
    )
ORDER BY u.birth_year ASC,
    u.user_name ASC;