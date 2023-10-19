/* Write your PL/SQL query statement below */
SELECT class
FROM (SELECT class, COUNT(student) cnt
      FROM Courses
      GROUP BY class
      HAVING COUNT(student) >= 5
      ORDER BY cnt)
