CREATE DATABASE companyDB;
USE companyDB;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'HR', 60000),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'IT', 65000),
(5, 'Eve', 'Finance', 75000),
(6, 'Frank', 'Finance', 72000),
(7, 'Grace', 'HR', 55000);



-- store producers
DELIMITER $$

CREATE PROCEDURE avg_salary()
BEGIN
    SELECT AVG(Salary) AS Average_Salary
    FROM Employees;
END $$

DELIMITER ;


call avg_salary();


DELIMITER $$

create procedure ag_salary()
begin 
	select emp_name,sum(salary)
    from employees
    group by emp_name;
end $$

call ag_salary();