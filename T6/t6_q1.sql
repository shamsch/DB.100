SELECT a.agent_id, a.agent_name
FROM agent a
WHERE agent_id IN (
    SELECT agent_id
    FROM breeder
)
ORDER BY a.agent_id ASC;