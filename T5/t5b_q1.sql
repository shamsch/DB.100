SELECT 
    COUNT(*) AS number_of_varieties,
    MIN(introduction_year) AS earliest_year,
    MAX(introduction_year) AS latest_year
FROM 
    potato;