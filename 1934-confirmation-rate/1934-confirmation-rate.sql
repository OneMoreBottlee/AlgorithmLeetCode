/* Write your PL/SQL query statement below */
SELECT S.USER_ID, ROUND(AVG(CASE WHEN C.ACTION = 'confirmed' THEN 1 ELSE 0 END), 2) confirmation_rate
FROM Signups S LEFT OUTER JOIN Confirmations C
ON S.USER_ID = C.USER_ID
GROUP BY S.USER_ID