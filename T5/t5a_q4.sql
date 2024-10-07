SELECT b.breeder_id, b.breeder_name
FROM breeder b
JOIN breeds br1 ON b.breeder_id = br1.breeder_id
JOIN potato p1 ON br1.potato_id = p1.potato_id
WHERE p1.potato_name = 'Dunbar Rover'
AND b.breeder_id NOT IN (
  SELECT b2.breeder_id
  FROM breeder b2
  JOIN breeds br2 ON b2.breeder_id = br2.breeder_id
  JOIN potato p2 ON br2.potato_id = p2.potato_id
  WHERE p2.potato_name = 'Duke of York'
)
ORDER BY b.breeder_id ASC;