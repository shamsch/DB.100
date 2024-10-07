SELECT br.breeder_id,
    br.breeder_name
FROM breeder br
    JOIN breeds b ON br.breeder_id = b.breeder_id
GROUP BY br.breeder_id,
    br.breeder_name
HAVING COUNT(b.potato_id) = 1
ORDER BY br.breeder_id ASC;