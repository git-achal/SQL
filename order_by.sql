-- ==========================================================
-- File Name : 04_Order_By.sql
-- Topic     : ORDER BY, LIMIT, OFFSET
-- Database  : PostgreSQL
-- ==========================================================


-- ==========================================
-- 1. Display employees by salary (Ascending)
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary ASC;


-- ==========================================
-- 2. Display employees by salary (Descending)
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC;


-- ==========================================
-- 3. Display employees by name (Ascending)
-- ==========================================
SELECT *
FROM Employee
ORDER BY emp_name ASC;


-- ==========================================
-- 4. Display employees by name (Descending)
-- ==========================================
SELECT *
FROM Employee
ORDER BY emp_name DESC;


-- ==========================================
-- 5. Display employees by city
-- ==========================================
SELECT *
FROM Employee
ORDER BY city;


-- ==========================================
-- 6. Display employees by joining date
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date;


-- ==========================================
-- 7. Display latest joined employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date DESC;


-- ==========================================
-- 8. Display employees by department then salary
-- ==========================================
SELECT *
FROM Employee
ORDER BY dept_id, salary;


-- ==========================================
-- 9. Department ascending, salary descending
-- ==========================================
SELECT *
FROM Employee
ORDER BY dept_id ASC, salary DESC;


-- ==========================================
-- 10. Female employees ordered by salary
-- ==========================================
SELECT *
FROM Employee
WHERE gender='Female'
ORDER BY salary DESC;


-- ==========================================
-- 11. Male employees ordered by joining date
-- ==========================================
SELECT *
FROM Employee
WHERE gender='Male'
ORDER BY join_date;


-- ==========================================
-- 12. Top 5 highest paid employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 5;


-- ==========================================
-- 13. Top 3 lowest paid employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary
LIMIT 3;


-- ==========================================
-- 14. Skip first 3 employees
-- ==========================================
SELECT *
FROM Employee
OFFSET 3;


-- ==========================================
-- 15. Display 3 employees after skipping first 2
-- ==========================================
SELECT *
FROM Employee
LIMIT 3 OFFSET 2;


-- ==========================================
-- 16. Highest salary employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 1;


-- ==========================================
-- 17. Lowest salary employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary
LIMIT 1;


-- ==========================================
-- 18. Employees ordered by city then name
-- ==========================================
SELECT *
FROM Employee
ORDER BY city, emp_name;


-- ==========================================
-- 19. Employees ordered by salary then name
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC, emp_name;


-- ==========================================
-- 20. Display first 5 employees alphabetically
-- ==========================================
SELECT *
FROM Employee
ORDER BY emp_name
LIMIT 5;