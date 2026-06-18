
--CREATE TABLE1--
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

--INSERT DATA INTO TABLE1--
INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales');

-- CREATE TABLE2 QUERY--
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT,
    join_date DATE,
    city VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
   
-- INSERTION DATA INTO TABLE2--
INSERT INTO Employee VALUES
(101,'Rahul','Male',50000,2,NULL,'2022-01-10','Pune'),
(102,'Priya','Female',60000,2,101,'2021-05-12','Mumbai'),
(103,'Amit','Male',45000,1,101,'2023-02-15','Pune'),
(104,'Sneha','Female',70000,3,102,'2020-03-20','Delhi'),
(105,'Karan','Male',55000,4,101,'2022-07-25','Bangalore'),
(106,'Neha','Female',80000,2,102,'2019-08-18','Mumbai'),
(107,'Rohit','Male',50000,4,105,'2023-01-01','Pune'),
(108,'Anjali','Female',65000,3,104,'2021-09-10','Delhi'),
(109,'Vikas','Male',75000,2,106,'2020-11-11','Hyderabad'),
(110,'Pooja','Female',55000,1,103,'2022-04-14','Mumbai');


   
   