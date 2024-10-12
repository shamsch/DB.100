SELECT breeder_name
FROM breeder br
JOIN breeds bs ON bs.breeder_id = br.breeder_id
GROUP BY breeder_name
HAVING AVG(bs.tonnes_per_year) > (
    SELECT AVG(bs2.tonnes_per_year)
    FROM breeds bs2
)
ORDER BY breeder_name ASC; 