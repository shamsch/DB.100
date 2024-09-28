SELECT a.agent_name, b.breeder_name, b.country
FROM breeder b
INNER JOIN agent a ON b.agent_id = a.agent_id
WHERE b.country = 'Finland' OR b.country = 'Germany'
ORDER BY agent_name, breeder_name ASC; 