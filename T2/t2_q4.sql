SELECT b.breeder_id, b.breeder_name, a.agent_name
FROM breeder b
LEFT JOIN agent a ON b.agent_id = a.agent_id
WHERE b.country = 'Finland'
ORDER BY breeder_id ASC;