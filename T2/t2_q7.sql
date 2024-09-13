SELECT p.potato_name, b.breeder_name
FROM potato p
LEFT JOIN breeds bs ON p.potato_id = bs.potato_id
LEFT JOIN breeder b ON bs.breeder_id = b.breeder_id
ORDER BY potato_name, breeder_name ASC;