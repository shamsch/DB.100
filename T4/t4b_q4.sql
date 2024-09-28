SELECT potato_id, potato_name, potato_type, introduction_year
FROM potato
WHERE (potato_type = 'smooth' AND introduction_year > 1999) OR (introduction_year < 2000 AND potato_type <> 'smooth')
ORDER BY potato_id ASC;