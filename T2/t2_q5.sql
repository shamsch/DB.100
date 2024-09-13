SELECT a.agent_id, a.agent_name, b.breeder_id, b.breeder_name
FROM agent a
LEFT JOIN breeder b ON a.agent_id = b.agent_id
ORDER BY a.agent_id ASC, b.breeder_id ASC;