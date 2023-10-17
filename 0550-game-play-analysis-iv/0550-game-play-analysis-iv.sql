-- 첫 로그인 후 연속 로그인한 플레이어 비율 찾기
SELECT ROUND(COUNT(A2.player_id) / COUNT(A1.player_id), 2) fraction
FROM Activity A1 LEFT OUTER JOIN Activity A2
ON A1.player_id = A2.player_id AND A1.event_date + 1 = A2.event_date -- 연속 로그인
WHERE (A1.player_id, A1.event_date) IN (SELECT player_id, MIN(event_date) -- 최초 로그인
                                        FROM Activity
                                        GROUP BY player_id)