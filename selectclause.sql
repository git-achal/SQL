-- ==========================================================
-- File Name : 02_Select_Queries.sql
-- Topic     : SELECT Statement
-- Database  : PostgreSQL
-- Description : This file covers basic SELECT queries.
-- ==========================================================


-- ==========================================
-- 1. Display all employee records
-- ==========================================
SELECT * FROM Employee;


-- ==========================================
-- 2. Display all department records
-- ==========================================
SELECT * FROM Department;


-- ==========================================
-- 3. Display only employee IDs
-- ==========================================
SELECT emp_id
FROM Employee;


-- ==========================================
-- 4. Display only employee names
-- ==========================================
SELECT emp_name
FROM Employee;


-- ==========================================
-- 5. Display employee names and salary
-- ==========================================
SELECT emp_name, salary
FROM Employee;


-- ==========================================
-- 6. Display employee names and cities
-- ==========================================
SELECT emp_name, city
FROM Employee;


-- ==========================================
-- 7. Display employee names and gender
-- ==========================================
SELECT emp_name, gender
FROM Employee;


-- ==========================================
-- 8. Display employee names and joining date
-- ==========================================
SELECT emp_name, join_date
FROM Employee;


-- ==========================================
-- 9. Display employee IDs and names
-- ==========================================
SELECT emp_id, emp_name
FROM Employee;


-- ==========================================
-- 10. Display employee IDs, names and salary
-- ==========================================
SELECT emp_id, emp_name, salary
FROM Employee;


-- ==========================================
-- 11. Display all salaries
-- ==========================================
SELECT salary
FROM Employee;


-- ==========================================
-- 12. Display all cities
-- ==========================================
SELECT city
FROM Employee;


-- ==========================================
-- 13. Display all genders
-- ==========================================
SELECT gender
FROM Employee;


-- ==========================================
-- 14. Display department IDs
-- ==========================================
SELECT dept_id
FROM Employee;


-- ==========================================
-- 15. Display manager IDs
-- ==========================================
SELECT manager_id
FROM Employee;


-- ==========================================
-- 16. Display unique cities
-- ==========================================
SELECT DISTINCT city
FROM Employee;


-- ==========================================
-- 17. Display unique salaries
-- ==========================================
SELECT DISTINCT salary
FROM Employee;


-- ==========================================
-- 18. Display unique department IDs
-- ==========================================
SELECT DISTINCT dept_id
FROM Employee;


-- ==========================================
-- 19. Display unique genders
-- ==========================================
SELECT DISTINCT gender
FROM Employee;


-- ==========================================
-- 20. Display unique manager IDs
-- ==========================================
SELECT DISTINCT manager_id
FROM Employee;


-- ==========================================
-- 21. Rename employee name column
-- ==========================================
SELECT emp_name AS employee_name
FROM Employee;


-- ==========================================
-- 22. Rename salary column
-- ==========================================
SELECT salary AS employee_salary
FROM Employee;


-- ==========================================
-- 23. Rename city column
-- ==========================================
SELECT city AS employee_city
FROM Employee;


-- ==========================================
-- 24. Rename department ID column
-- ==========================================
SELECT dept_id AS department_id
FROM Employee;


-- ==========================================
-- 25. Display employee name with company name
-- ==========================================
SELECT emp_name,
       'Tech Company' AS company_name
FROM Employee;


-- ==========================================
-- 26. Display employee name with country
-- ==========================================
SELECT emp_name,
       'India' AS country
FROM Employee;


-- ==========================================
-- 27. Display salary with bonus
-- ==========================================
SELECT emp_name,
       salary,
       salary + 5000 AS bonus_salary
FROM Employee;


-- ==========================================
-- 28. Display annual salary
-- ==========================================
SELECT emp_name,
       salary,
       salary * 12 AS annual_salary
FROM Employee;


-- ==========================================
-- 29. Display salary after 10% increment
-- ==========================================
SELECT emp_name,
       salary,
       salary * 1.10 AS increment_salary
FROM Employee;


-- ==========================================
-- 30. Display salary after deduction
-- ==========================================
SELECT emp_name,
       salary,
       salary - 2000 AS revised_salary
FROM Employee;


-- ==========================================
-- 31. Display double salary
-- ==========================================
SELECT emp_name,
       salary * 2 AS double_salary
FROM Employee;


-- ==========================================
-- 32. Display half salary
-- ==========================================
SELECT emp_name,
       salary / 2 AS half_salary
FROM Employee;


-- ==========================================
-- 33. Display employee details with current date
-- ==========================================
SELECT emp_name,
       CURRENT_DATE
FROM Employee;


-- ==========================================
-- 34. Display current date
-- ==========================================
SELECT CURRENT_DATE;


-- ==========================================
-- 35. Display current time
-- ==========================================
SELECT CURRENT_TIME;


-- ==========================================
-- 36. Display current timestamp
-- ==========================================
SELECT CURRENT_TIMESTAMP;


-- ==========================================
-- 37. Display all columns with aliases
-- ==========================================
SELECT
emp_id AS ID,
emp_name AS Name,
salary AS Salary,
city AS City
FROM Employee;


-- ==========================================
-- 38. Display employee names twice
-- ==========================================
SELECT
emp_name,
emp_name AS employee_duplicate
FROM Employee;


-- ==========================================
-- 39. Display total salary after adding allowance
-- ==========================================
SELECT
emp_name,
salary,
salary + 10000 AS total_salary
FROM Employee;


-- ==========================================
-- 40. Display all department names
-- ==========================================
SELECT dept_name
FROM Department;


-- ==========================================
-- 41. Display department IDs and names
-- ==========================================
SELECT dept_id,
       dept_name
FROM Department;


-- ==========================================
-- 42. Display all columns in Employee table
-- ==========================================
SELECT
emp_id,
emp_name,
gender,
salary,
dept_id,
manager_id,
join_date,
city
FROM Employee;