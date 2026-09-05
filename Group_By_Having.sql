-- ==========================================================
-- File Name : 06_Group_By_Having.sql
-- Topic     : GROUP BY and HAVING
-- Database  : PostgreSQL
-- Tables    : Employee, Department
--
-- Topics Covered:
-- GROUP BY
-- HAVING
-- GROUP BY with COUNT()
-- GROUP BY with SUM()
-- GROUP BY with AVG()
-- GROUP BY with MIN()
-- GROUP BY with MAX()
-- Multiple-column GROUP BY
-- WHERE + GROUP BY
-- WHERE + GROUP BY + HAVING
-- ==========================================================


-- ==========================================
-- 1. Count employees in each department
-- ==========================================
SELECT dept_id,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 2. Find total salary of each department
-- ==========================================
SELECT dept_id,
       SUM(salary) AS total_salary
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 3. Find average salary of each department
-- ==========================================
SELECT dept_id,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 4. Find maximum salary in each department
-- ==========================================
SELECT dept_id,
       MAX(salary) AS maximum_salary
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 5. Find minimum salary in each department
-- ==========================================
SELECT dept_id,
       MIN(salary) AS minimum_salary
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 6. Use all aggregate functions with GROUP BY
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM Employee
GROUP BY dept_id;


-- ==========================================
-- 7. Count employees in each city
-- ==========================================
SELECT city,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY city;


-- ==========================================
-- 8. Find average salary in each city
-- ==========================================
SELECT city,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY city;


-- ==========================================
-- 9. Find total salary in each city
-- ==========================================
SELECT city,
       SUM(salary) AS total_salary
FROM Employee
GROUP BY city;


-- ==========================================
-- 10. Find maximum salary in each city
-- ==========================================
SELECT city,
       MAX(salary) AS maximum_salary
FROM Employee
GROUP BY city;


-- ==========================================
-- 11. Find minimum salary in each city
-- ==========================================
SELECT city,
       MIN(salary) AS minimum_salary
FROM Employee
GROUP BY city;


-- ==========================================
-- 12. Count male and female employees
-- ==========================================
SELECT gender,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY gender;


-- ==========================================
-- 13. Find average salary by gender
-- ==========================================
SELECT gender,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY gender;


-- ==========================================
-- 14. Find total salary by gender
-- ==========================================
SELECT gender,
       SUM(salary) AS total_salary
FROM Employee
GROUP BY gender;


-- ==========================================
-- 15. Group employees by joining date
-- ==========================================
SELECT join_date,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY join_date;


-- ==========================================
-- 16. Group by department and gender
-- ==========================================
SELECT
    dept_id,
    gender,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY dept_id, gender;


-- ==========================================
-- 17. Average salary by department and gender
-- ==========================================
SELECT
    dept_id,
    gender,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id, gender;


-- ==========================================
-- 18. Total salary by department and city
-- ==========================================
SELECT
    dept_id,
    city,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY dept_id, city;


-- ==========================================
-- 19. Count employees by department
-- Only departments having more than 2 employees
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) > 2;


-- ==========================================
-- 20. Departments having more than 1 employee
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) > 1;


-- ==========================================
-- 21. Departments having exactly 2 employees
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) = 2;


-- ==========================================
-- 22. Departments having total salary greater than 100000
-- ==========================================
SELECT
    dept_id,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY dept_id
HAVING SUM(salary) > 100000;


-- ==========================================
-- 23. Departments having average salary greater than 60000
-- ==========================================
SELECT
    dept_id,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id
HAVING AVG(salary) > 60000;


-- ==========================================
-- 24. Departments having maximum salary greater than 70000
-- ==========================================
SELECT
    dept_id,
    MAX(salary) AS maximum_salary
FROM Employee
GROUP BY dept_id
HAVING MAX(salary) > 70000;


-- ==========================================
-- 25. Departments having minimum salary greater than 50000
-- ==========================================
SELECT
    dept_id,
    MIN(salary) AS minimum_salary
FROM Employee
GROUP BY dept_id
HAVING MIN(salary) > 50000;


-- ==========================================
-- 26. Cities having more than 1 employee
-- ==========================================
SELECT
    city,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY city
HAVING COUNT(*) > 1;


-- ==========================================
-- 27. Cities having average salary greater than 60000
-- ==========================================
SELECT
    city,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY city
HAVING AVG(salary) > 60000;


-- ==========================================
-- 28. Departments with female employees
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS female_count
FROM Employee
WHERE gender = 'Female'
GROUP BY dept_id;


-- ==========================================
-- 29. Departments with male employees
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS male_count
FROM Employee
WHERE gender = 'Male'
GROUP BY dept_id;


-- ==========================================
-- 30. Average salary of female employees
-- by department
-- ==========================================
SELECT
    dept_id,
    AVG(salary) AS average_female_salary
FROM Employee
WHERE gender = 'Female'
GROUP BY dept_id;


-- ==========================================
-- 31. Average salary of male employees
-- by department
-- ==========================================
SELECT
    dept_id,
    AVG(salary) AS average_male_salary
FROM Employee
WHERE gender = 'Male'
GROUP BY dept_id;


-- ==========================================
-- 32. Departments having more than 1 female employee
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS female_count
FROM Employee
WHERE gender = 'Female'
GROUP BY dept_id
HAVING COUNT(*) > 1;


-- ==========================================
-- 33. Departments with total salary above 100000
-- and only female employees
-- ==========================================
SELECT
    dept_id,
    SUM(salary) AS total_salary
FROM Employee
WHERE gender = 'Female'
GROUP BY dept_id
HAVING SUM(salary) > 100000;


-- ==========================================
-- 34. Cities with total salary greater than 100000
-- ==========================================
SELECT
    city,
    SUM(salary) AS total_salary
FROM Employee
GROUP BY city
HAVING SUM(salary) > 100000;


-- ==========================================
-- 35. Department-wise salary statistics
-- sorted by average salary
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id
ORDER BY average_salary DESC;


-- ==========================================
-- 36. City-wise salary statistics
-- sorted by total salary
-- ==========================================
SELECT
    city,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY city
ORDER BY total_salary DESC;


-- ==========================================
-- 37. Department and gender statistics
-- ==========================================
SELECT
    dept_id,
    gender,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id, gender
ORDER BY dept_id;


-- ==========================================
-- 38. Departments having more than 2 employees
-- and average salary greater than 50000
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) > 2
AND AVG(salary) > 50000;


-- ==========================================
-- 39. Cities having more than 1 employee
-- and average salary greater than 50000
-- ==========================================
SELECT
    city,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM Employee
GROUP BY city
HAVING COUNT(*) > 1
AND AVG(salary) > 50000;


-- ==========================================
-- 40. Complete department salary report
-- ==========================================
SELECT
    dept_id,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    ROUND(AVG(salary), 2) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM Employee
GROUP BY dept_id
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;