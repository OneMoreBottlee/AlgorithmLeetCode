/* Write your PL/SQL query statement below */
SELECT TO_CHAR(activity_date, 'YYYY-MM-DD') day, count(DISTINCT user_id) active_users
FROM Activity
GROUP BY TO_CHAR(activity_date, 'YYYY-MM-DD')
HAVING TO_CHAR(activity_date, 'YYYY-MM-DD') BETWEEN '2019-06-28' AND '2019-07-27'