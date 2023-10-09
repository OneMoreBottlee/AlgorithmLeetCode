/* Write your PL/SQL query statement below */
SELECT DISTINCT Author_id ID
FROM Views
WHERE AUTHOR_ID = VIEWER_ID
ORDER BY ID;