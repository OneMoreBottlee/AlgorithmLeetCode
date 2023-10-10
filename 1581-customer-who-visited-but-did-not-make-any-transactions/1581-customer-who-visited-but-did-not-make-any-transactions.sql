/* Write your PL/SQL query statement below */
SELECT CUSTOMER_ID, COUNT(*) COUNT_NO_TRANS
FROM Visits
WHERE VISIT_ID NOT IN (SELECT DISTINCT v.visit_id
    FROM Visits V RIGHT JOIN Transactions T
    ON V.visit_id = T.visit_id)
GROUP BY CUSTOMER_ID