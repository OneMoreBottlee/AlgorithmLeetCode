/* Write your PL/SQL query statement below */
SELECT P.product_name, SUM(O.unit) unit
FROM Products P, Orders O
WHERE P.product_id = O.product_id AND TO_CHAR(O.order_date, 'YYYY-MM') = '2020-02'
GROUP BY P.product_name
HAVING SUM(O.unit) >= 100