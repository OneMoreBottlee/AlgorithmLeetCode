/* Write your PL/SQL query statement below */
SELECT PRODUCT_NAME, YEAR, PRICE
FROM SALES S, PRODUCT P
WHERE S.PRODUCT_ID = P.PRODUCT_ID