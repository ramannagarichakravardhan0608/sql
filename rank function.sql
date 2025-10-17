create database naninani;
use naninani;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);


INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Riya', 'HR', 45000),
(3, 'Kiran', 'IT', 60000),
(4, 'John', 'IT', 75000),
(5, 'Sneha', 'IT', 65000),
(6, 'Vikas', 'Sales', 50000),
(7, 'Tina', 'Sales', 52000);
-- rank()
select emp_id,emp_name,
rank()over(order by salary desc)
from employees;

-- row_number()

select emp_id,emp_name,
row_number()over(order by salary desc)
from employees;

-- cume()dist

select emp_id,emp_name,
cume_dist()over(order by salary desc)

from employees;
-- percantaile rank()
select emp_id,emp_name,
percent_rank()over(order by salary desc)

from employees;
--  ntile

select *,
ntile(3)over(order by salary desc)
from employees;
-- dense
select emp_id,emp_name,
dense_rank()over(order by salary desc)
from employees;