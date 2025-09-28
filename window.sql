-- window functions
create database team;
use team;
drop database team;
CREATE TABLE sts (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO sts VALUES
(1, 'Alice',   10, 60000, '2020-01-15'),
(2, 'Bob',     10, 75000, '2019-03-10'),
(3, 'Charlie', 20, 55000, '2021-07-01'),
(4, 'David',   10, 80000, '2018-11-23'),
(5, 'Emma',    20, 58000, '2022-05-17'),
(6, 'Frank',   20, 72000, '2020-09-12'),
(7, 'Grace',   10, 60000, '2021-04-30'),
(8, 'Gracy',   10, 60000, '2023-04-30'),
(9, 'Grac',   10, 59000, '2021-04-30');

select *from sts;

select distinct dept_id from sts;
-- row number
SELECT name, dept_id, salary,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS row_num
FROM sts;


-- rank
SELECT name, dept_id, salary,
       RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank_num
FROM sts;

-- dense rank
SELECT name, dept_id, salary,
       DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS denser_rank
FROM sts;
SET SQL_SAFE_Updates = 0 ;
-- lag
SELECT name, salary,hire_date,
       LAG(salary) OVER (ORDER BY hire_date) AS prev_salary
FROM sts;

-- lead
SELECT name, salary,hire_date,
       LEAD(salary) OVER (ORDER BY hire_date) AS next_salary
FROM sts;
-- first value
SELECT name, dept_id, salary,
       FIRST_VALUE(salary) OVER (PARTITION BY dept_id ORDER BY hire_date) AS first_hired_salary
FROM sts;

-- sum
SELECT name, dept_id, salary,
       SUM(salary) OVER (PARTITION BY dept_id ORDER BY hire_date) AS running_total
FROM sts;
-- min and max
SELECT name, dept_id, salary,
       MIN(salary) OVER (PARTITION BY dept_id) AS dept_min,
       MAX(salary) OVER (PARTITION BY dept_id) AS dept_max
FROM sts;

-- count
SELECT name, dept_id,
       COUNT(*) OVER (PARTITION BY dept_id) AS dept_count
FROM sts;