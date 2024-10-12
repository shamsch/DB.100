SELECT b.breeder_id,
    b.breeder_name,
    a.agent_name AS "agent_name",
    (
        SELECT COUNT(*)
        FROM breeder sub
        WHERE sub.agent_id = b.agent_id
    ) AS "number_of_breeders"
FROM breeder b
    JOIN agent a ON b.agent_id = a.agent_id
ORDER BY b.breeder_id ASC;