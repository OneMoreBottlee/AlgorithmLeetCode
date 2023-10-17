-- customer_id별 최초 주문의 immediate 비율 구하기

-- 1. 최초 주문
-- SELECT customer_id, MIN(order_date)
-- FROM Delivery
-- GROUP BY customer_id

-- 2. immediate 비율 구하기
SELECT ROUND(AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100, 2) immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (SELECT customer_id, MIN(order_date)
                                    FROM Delivery
                                    GROUP BY customer_id);