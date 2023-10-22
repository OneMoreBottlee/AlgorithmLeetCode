/* Write your PL/SQL query statement below */
SELECT E.employee_id, E.name, A.reto reports_count, A.average_age
FROM Employees E, (SELECT reports_to, COUNT(*) reto, ROUND(AVG(age), 0) average_age
                 FROM Employees
                 GROUP BY reports_to
                 HAVING reports_to IS NOT NULL) A
WHERE E.employee_id = A. reports_to
ORDER BY employee_id;