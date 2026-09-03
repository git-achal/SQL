-- ==========================================================
-- File Name : 04_Order_By.sql
-- Topic     : ORDER BY, LIMIT, OFFSET
-- Database  : PostgreSQL
-- ==========================================================


-- ==========================================
-- 1. Sort employees by salary ASCENDING
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary ASC;


-- ==========================================
-- 2. Sort employees by salary DESCENDING
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC;


-- ==========================================
-- 3. Sort employees by employee name
-- ==========================================
SELECT *
FROM Employee
ORDER BY emp_name ASC;


-- ==========================================
-- 4. Sort employee names in descending order
-- ==========================================
SELECT *
FROM Employee
ORDER BY emp_name DESC;


-- ==========================================
-- 5. Sort employees by city
-- ==========================================
SELECT *
FROM Employee
ORDER BY city ASC;


-- ==========================================
-- 6. Sort employees by joining date
-- Oldest joining date first
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date ASC;


-- ==========================================
-- 7. Sort employees by joining date
-- Latest joining date first
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date DESC;


-- ==========================================
-- 8. Sort by department and salary
-- ==========================================
SELECT *
FROM Employee
ORDER BY dept_id ASC, salary ASC;


-- ==========================================
-- 9. Sort by department ASC and salary DESC
-- ==========================================
SELECT *
FROM Employee
ORDER BY dept_id ASC, salary DESC;


-- ==========================================
-- 10. Sort by salary DESC and employee name ASC
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC, emp_name ASC;


-- ==========================================
-- 11. Female employees sorted by salary
-- ==========================================
SELECT *
FROM Employee
WHERE gender = 'Female'
ORDER BY salary DESC;


-- ==========================================
-- 12. Male employees sorted by salary
-- ==========================================
SELECT *
FROM Employee
WHERE gender = 'Male'
ORDER BY salary DESC;


-- ==========================================
-- 13. Employees from Pune sorted by salary
-- ==========================================
SELECT *
FROM Employee
WHERE city = 'Pune'
ORDER BY salary DESC;


-- ==========================================
-- 14. Top 5 highest-paid employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 5;


-- ==========================================
-- 15. Top 3 highest-paid employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 3;


-- ==========================================
-- 16. Top 3 lowest-paid employees
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary ASC
LIMIT 3;


-- ==========================================
-- 17. Highest-paid employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 1;


-- ==========================================
-- 18. Lowest-paid employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY salary ASC
LIMIT 1;


-- ==========================================
-- 19. Latest joined employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date DESC
LIMIT 1;


-- ==========================================
-- 20. Earliest joined employee
-- ==========================================
SELECT *
FROM Employee
ORDER BY join_date ASC
LIMIT 1;


-- ==========================================
-- 21. Display first 5 employees
-- ==========================================
SELECT *
FROM Employee
LIMIT 5;


-- ==========================================
-- 22. Skip first 5 employees
-- ==========================================
SELECT *
FROM Employee
OFFSET 5;


-- ==========================================
-- 23. Display 5 employees after skipping first 2
-- ==========================================
SELECT *
FROM Employee
LIMIT 5 OFFSET 2;


-- ==========================================
-- 24. Display employees 6 to 10
-- ==========================================
SELECT *
FROM Employee
LIMIT 5 OFFSET 5;


-- ==========================================
-- 25. Display employee names and salaries
-- sorted by highest salary
-- ==========================================
SELECT emp_name, salary
FROM Employee
ORDER BY salary DESC;


-- ==========================================
-- 26. Display employee names and salaries
-- sorted by lowest salary
-- ==========================================
SELECT emp_name, salary
FROM Employee
ORDER BY salary ASC;


-- ==========================================
-- 27. Sort using column position
-- salary is the 2nd selected column
-- ==========================================
SELECT emp_name, salary
FROM Employee
ORDER BY 2 DESC;


-- ==========================================
-- 28. Sort using alias
-- ==========================================
SELECT emp_name,
       salary AS employee_salary
FROM Employee
ORDER BY employee_salary DESC;


-- ==========================================
-- 29. Top 5 employees from IT department
-- ==========================================
SELECT *
FROM Employee
WHERE dept_id = 2
ORDER BY salary DESC
LIMIT 5;


-- ==========================================
-- 30. Top 3 female employees by salary
-- ==========================================
SELECT *
FROM Employee
WHERE gender = 'Female'
ORDER BY salary DESC
LIMIT 3;