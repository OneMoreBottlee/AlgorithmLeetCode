/* Write your PL/SQL query statement below */
SELECT name
FROM Employee
WHERE id in (SELECT managerId
             FROM Employee
             GROUP BY managerId
             HAVING count(*) >= 5)