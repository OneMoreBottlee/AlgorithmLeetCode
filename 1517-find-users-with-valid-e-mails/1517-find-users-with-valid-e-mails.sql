-- 정규식 REGEXP_LIKE
-- 1. 첫글자는 문자 2. 영어 대소문자, 숫자, _, ., - 포함 가능 3. @leetcode.com 으로 끝남
SELECT *
FROM Users
where REGEXP_LIKE(mail,'^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$')