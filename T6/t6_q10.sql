SELECT a.agent_id, a.agent_name, COUNT(DISTINCT(br.breeder_id)) as breeders, COUNT(DISTINCT(bs.potato_id)) as potatoes
FROM agent a 
LEFT JOIN breeder br ON br.agent_id = a.agent_id
LEFT JOIN breeds bs ON bs.breeder_id = br.breeder_id
GROUP BY a.agent_id, a.agent_name
ORDER BY a.agent_id ASC; 