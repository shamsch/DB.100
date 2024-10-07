SELECT 
    p.potato_id,
    p.potato_name,
    COUNT(br.breeder_id) AS number_of_breeders,
    MIN(br.tonnes_per_year) AS min_tonnes,
    MAX(br.tonnes_per_year) AS max_tonnes,
    SUM(br.tonnes_per_year) AS total_tonnes
FROM 
    potato p
LEFT JOIN 
    breeds br ON p.potato_id = br.potato_id
GROUP BY 
    p.potato_id, p.potato_name
ORDER BY 
    p.potato_id ASC;