SELECT m1.name, m2.name as predecessor_name
FROM monarch m1
LEFT JOIN monarch m2 ON m1.predecessor_id = m2.id
WHERE m1.predecessor_id IS NOT NULL;