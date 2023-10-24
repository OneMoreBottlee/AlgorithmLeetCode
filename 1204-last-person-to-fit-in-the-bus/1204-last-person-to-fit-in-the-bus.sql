/* Write your PL/SQL query statement below */
SELECT person_name
FROM Queue
WHERE turn = (SELECT MAX(turn)
              FROM (SELECT SUM(weight) OVER (ORDER BY turn) sum_com, turn, person_name
                    FROM Queue)
              WHERE sum_com <= 1000)

-- 1 turn 순서별로 무게 더하기
-- 2 목표 중량 1000 보다 커지는 turn 찾기
-- 3 해당 turn에 해당하는 person_name 찾기