create database nani;
use nani;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50),
    age INT,
    department_id INT,
    percentage DECIMAL(5,2)
);

INSERT INTO students VALUES
(1, 'Ravi Kumar', 20, 101, 78.5),
(2, 'Priya Sharma', 21, 102, 85.3),
(3, 'Arjun Reddy', 22, 101, 92.0),
(4, 'Sneha Patil', 20, 103, 68.4),
(5, 'Rahul Verma', 23, 102, 74.2);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments VALUES
(101, 'Computer Science'),
(102, 'Electronics'),
(103, 'Mechanical');

-- select
select * from departments;

-- from
select full_name,age from students;
-- where
select * 
from students
where department_id > 101;
-- join
select * from students as s
left join departments as dp
on s.department_id = dp.department_id;
-- group by
select full_name,age,sum(percentage)
from students
group by full_name,age;

-- having
select full_name,age,sum(percentage)
from students
group by full_name,age
having sum(percentage) > 74;
-- order by
select full_name,age ,sum(percentage)from students
group by full_name,age
having sum(percentage) > 74
order by percentage;

SELECT full_name, age, percentage
FROM students
WHERE percentage > 74
ORDER BY percentage DESC;

-- limit
select age,percentage from students
limit  3

