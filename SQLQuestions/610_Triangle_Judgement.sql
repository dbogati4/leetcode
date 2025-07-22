SELECT *,
CASE
    WHEN x + y > z AND y + z > x AND z + x > Y THEN 'Yes'
    ELSE 'No'
END AS triangle
FROM Triangle