/* Write your PL/SQL query statement below */
SELECT Product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'
ORDER BY Product_id;