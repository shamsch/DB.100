SELECT a.agent_id, a.agent_name, COUNT(b.breeder_id) as number_of_breeders
FROM agent a
LEFT JOIN breeder b ON a.agent_id = b.agent_id
GROUP BY a.agent_id, a.agent_name
ORDER BY a.agent_id ASC;