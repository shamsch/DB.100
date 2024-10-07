SELECT 
    br.breeder_id,
    br.breeder_name,
    ag.agent_name
FROM 
    breeder br
JOIN 
    breeds b ON br.breeder_id = b.breeder_id
JOIN 
    agent ag ON br.agent_id = ag.agent_id
GROUP BY 
    br.breeder_id, br.breeder_name, ag.agent_name
HAVING 
    COUNT(b.potato_id) = 1
ORDER BY 
    br.breeder_id ASC;