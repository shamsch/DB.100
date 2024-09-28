
SELECT m1.name AS name, 
       m2.name AS successor_name
FROM monarch m1
LEFT JOIN monarch m2
ON m1.id = m2.predecessor_id
ORDER BY m1.id ASC;

