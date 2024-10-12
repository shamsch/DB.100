SELECT p.potato_name, p.introduction_year, breeder_name
FROM potato p 
JOIN breeds bs ON bs.potato_id = p.potato_id
JOIN breeder br ON bs.breeder_id = br.breeder_id
ORDER BY p.introduction_year DESC
LIMIT 1;