-- 2019-08-16 이전 기록이 없는 경우, price 10으로 가정
SELECT product_id, 10 price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16'
UNION
SELECT product_id, new_price price
FROM Products
WHERE (product_id, change_date) IN (SELECT product_id, MAX(change_date)
                                  FROM Products
                                  WHERE change_date <= '2019-08-16'
                                  GROUP BY product_id)