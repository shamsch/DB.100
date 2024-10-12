SELECT br.breeder_id,
    br.breeder_name
FROM breeder br
WHERE EXISTS (
        SELECT 1
        FROM breeder br2
            JOIN breeds bs ON bs.breeder_id = br2.breeder_id
            JOIN potato p ON bs.potato_id = p.potato_id
        WHERE br.breeder_id = br2.breeder_id
            AND p.potato_name = 'Dunbar Rover'
    )
    AND NOT EXISTS (
        SELECT 1
        FROM breeder br2
            JOIN breeds bs ON bs.breeder_id = br2.breeder_id
            JOIN potato p ON bs.potato_id = p.potato_id
        WHERE br.breeder_id = br2.breeder_id
            AND p.potato_name = 'Cara'
    )
ORDER BY breeder_id ASC;