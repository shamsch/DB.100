SELECT p.potato_name, (bs.tonnes_per_year*1.10) AS increased_tonnes
FROM potato p
JOIN breeds bs ON p.potato_id = bs.potato_id
JOIN breeder br ON br.breeder_id = bs.breeder_id
WHERE br.breeder_name = 'Chips'
ORDER BY p.potato_name ASC; 