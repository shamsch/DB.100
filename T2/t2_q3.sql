SELECT b.breeder_id, b.breeder_name, a.agent_name
FROM breeder b
LEFT JOIN agent a WHERE b.agent_id = a.agent_id
ORDER BY breeder_id ASC;