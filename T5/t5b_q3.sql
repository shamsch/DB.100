SELECT 
    br.breeder_id,
    COUNT(br.potato_id) AS number_of_varieties
FROM 
    breeds br
GROUP BY 
    br.breeder_id
ORDER BY 
    br.breeder_id ASC;