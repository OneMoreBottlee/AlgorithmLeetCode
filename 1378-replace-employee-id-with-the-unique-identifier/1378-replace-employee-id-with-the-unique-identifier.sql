/* Write your PL/SQL query statement below */
SELECT UNIQUE_ID, NAME
FROM Employees E LEFT JOIN EmployeeUNI EU
ON E.id = EU.id