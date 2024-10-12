SELECT a.agent_id, a.agent_name
FROM agent a
WHERE NOT EXISTS (
    SELECT 1
    FROM breeder br
    WHERE br.agent_id = a.agent_id
)
ORDER BY a.agent_id ASC;