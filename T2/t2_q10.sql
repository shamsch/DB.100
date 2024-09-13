SELECT p.potato_id, p.potato_name
FROM potato p
LEFT JOIN breeds bs ON p.potato_id = bs.potato_id
WHERE bs.breeder_id IS NULL
ORDER BY p.potato_id ASC;