/* Write your PL/SQL query statement below */
SELECT name
FROM Employee E, (SELECT managerId
             FROM Employee
             GROUP BY managerId
             HAVING count(*) >= 5) M
WHERE E.id = M.managerId