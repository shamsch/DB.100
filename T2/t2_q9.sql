SELECT p.potato_id, p.potato_name
FROM potato p
INNER JOIN breeds bs ON p.potato_id = bs.potato_id
LEFT JOIN breeder b ON bs.breeder_id = b.breeder_id
GROUP BY p.potato_id, p.potato_name
ORDER BY p.potato_id ASC;