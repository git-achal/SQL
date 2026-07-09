-- ==========================================================
-- File Name : 03_Where_Clause.sql
-- Topic     : WHERE Clause
-- Database  : PostgreSQL
-- Description : Examples of WHERE clause with different operators
-- ==========================================================


-- ==========================================
-- 1. Employees whose salary is 50000
-- ==========================================
SELECT *
FROM Employee
WHERE salary = 50000;


-- ==========================================
-- 2. Employees whose city is Pune
-- ==========================================
SELECT *
FROM Employee
WHERE city = 'Pune';


-- ==========================================
-- 3. Employees working in department 2
-- ==========================================
SELECT *
FROM Employee
WHERE dept_id = 2;


-- ==========================================
-- 4. Female employees
-- ==========================================
SELECT *
FROM Employee
WHERE gender = 'Female';


-- ==========================================
-- 5. Male employees
-- ==========================================
SELECT *
FROM Employee
WHERE gender = 'Male';


-- ==========================================
-- 6. Salary greater than 60000
-- ==========================================
SELECT *
FROM Employee
WHERE salary > 60000;


-- ==========================================
-- 7. Salary less than 60000
-- ==========================================
SELECT *
FROM Employee
WHERE salary < 60000;


-- ==========================================
-- 8. Salary greater than or equal to 60000
-- ==========================================
SELECT *
FROM Employee
WHERE salary >= 60000;


-- ==========================================
-- 9. Salary less than or equal to 55000
-- ==========================================
SELECT *
FROM Employee
WHERE salary <= 55000;


-- ==========================================
-- 10. Salary not equal to 50000
-- ==========================================
SELECT *
FROM Employee
WHERE salary <> 50000;


-- ==========================================
-- 11. Salary not equal using !=
-- ==========================================
SELECT *
FROM Employee
WHERE salary != 50000;


-- ==========================================
-- 12. Employees from Pune AND salary greater than 45000
-- ==========================================
SELECT *
FROM Employee
WHERE city = 'Pune'
AND salary > 45000;


-- ==========================================
-- 13. Employees from Mumbai OR Delhi
-- ==========================================
SELECT *
FROM Employee
WHERE city = 'Mumbai'
OR city = 'Delhi';


-- ==========================================
-- 14. Employees NOT from Pune
-- ==========================================
SELECT *
FROM Employee
WHERE NOT city = 'Pune';


-- ==========================================
-- 15. Salary between 50000 and 70000
-- ==========================================
SELECT *
FROM Employee
WHERE salary BETWEEN 50000 AND 70000;


-- ==========================================
-- 16. Salary NOT between 50000 and 70000
-- ==========================================
SELECT *
FROM Employee
WHERE salary NOT BETWEEN 50000 AND 70000;


-- ==========================================
-- 17. Department IN (1,2)
-- ==========================================
SELECT *
FROM Employee
WHERE dept_id IN (1,2);


-- ==========================================
-- 18. Department NOT IN (1,2)
-- ==========================================
SELECT *
FROM Employee
WHERE dept_id NOT IN (1,2);


-- ==========================================
-- 19. City IN ('Pune','Mumbai')
-- ==========================================
SELECT *
FROM Employee
WHERE city IN ('Pune','Mumbai');


-- ==========================================
-- 20. City NOT IN ('Delhi','Hyderabad')
-- ==========================================
SELECT *
FROM Employee
WHERE city NOT IN ('Delhi','Hyderabad');


-- ==========================================
-- 21. Employee name starts with A
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE 'A%';


-- ==========================================
-- 22. Employee name ends with a
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '%a';


-- ==========================================
-- 23. Employee name contains h
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '%h%';


-- ==========================================
-- 24. Employee name second letter is a
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '_a%';


-- ==========================================
-- 25. Employee name has exactly five characters
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '_____';


-- ==========================================
-- 26. Employees having manager
-- ==========================================
SELECT *
FROM Employee
WHERE manager_id IS NOT NULL;


-- ==========================================
-- 27. Employees without manager
-- ==========================================
SELECT *
FROM Employee
WHERE manager_id IS NULL;


-- ==========================================
-- 28. Joined after 2022-01-01
-- ==========================================
SELECT *
FROM Employee
WHERE join_date > '2022-01-01';


-- ==========================================
-- 29. Joined before 2022-01-01
-- ==========================================
SELECT *
FROM Employee
WHERE join_date < '2022-01-01';


-- ==========================================
-- 30. Joined between two dates
-- ==========================================
SELECT *
FROM Employee
WHERE join_date BETWEEN '2021-01-01' AND '2022-12-31';


-- ==========================================
-- 31. Female employees from Mumbai
-- ==========================================
SELECT *
FROM Employee
WHERE gender='Female'
AND city='Mumbai';


-- ==========================================
-- 32. Male employees from Pune with salary above 45000
-- ==========================================
SELECT *
FROM Employee
WHERE gender='Male'
AND city='Pune'
AND salary>45000;


-- ==========================================
-- 33. Employees in IT department with salary above 60000
-- ==========================================
SELECT *
FROM Employee
WHERE dept_id=2
AND salary>60000;


-- ==========================================
-- 34. Employees from Delhi or Bangalore
-- ==========================================
SELECT *
FROM Employee
WHERE city='Delhi'
OR city='Bangalore';


-- ==========================================
-- 35. Employees from Pune or Mumbai with salary above 50000
-- ==========================================
SELECT *
FROM Employee
WHERE city IN ('Pune','Mumbai')
AND salary>50000;


-- ==========================================
-- 36. Employees not from Mumbai
-- ==========================================
SELECT *
FROM Employee
WHERE city <> 'Mumbai';


-- ==========================================
-- 37. Employees whose name starts with P
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE 'P%';


-- ==========================================
-- 38. Employees whose name ends with t
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '%t';


-- ==========================================
-- 39. Employees whose name contains 'ra'
-- ==========================================
SELECT *
FROM Employee
WHERE emp_name LIKE '%ra%';


-- ==========================================
-- 40. Employees with salary 50000, 60000 or 70000
-- ==========================================
SELECT *
FROM Employee
WHERE salary IN (50000,60000,70000);