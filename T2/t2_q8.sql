SELECT b.breeder_name
FROM potato p
LEFT JOIN breeds bs ON p.potato_id = bs.potato_id
LEFT JOIN breeder b ON bs.breeder_id = b.breeder_id
WHERE potato_name = 'Dunbar Rover'
ORDER BY breeder_name ASC;