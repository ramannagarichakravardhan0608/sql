create database nanei;
use nanei;


-- Create the table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary INT,
    department VARCHAR(50)
);

-- Insert sample data
INSERT INTO Employees (emp_id, emp_name, emp_salary, department) VALUES
(1, 'Ram', 15000, 'HR'),
(2, 'Sita', 25000, 'Finance'),
(3, 'Ravi', 55000, 'IT'),
(4, 'Anita', 45000, 'Marketing'),
(5, 'Kiran', 70000, 'Finance');

-- Query with CASE function
SELECT 
    emp_name,
    emp_salary,
    department,
    CASE
        WHEN emp_salary < 20000 THEN 'Low'
        WHEN emp_salary BETWEEN 20000 AND 50000 THEN 'Medium'
        ELSE 'High'
    END AS salary_grade
FROM Employees;


select 
emp_name,
emp_salary,
department,
case
	when 'Low' then 'L'
    when 'Medium' then 'M'
    else 'H'
end as gender_text
from Employees;


select 
emp_name,
department