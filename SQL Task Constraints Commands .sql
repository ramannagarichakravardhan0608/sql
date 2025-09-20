Create database  College;
use college;

CREATE TABLE departments (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),
  dob DATE NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone_number VARCHAR(15) NOT NULL UNIQUE,
  percentage DECIMAL(5,2) NOT NULL CHECK (percentage >= 0 AND percentage <= 100),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(dept_id)
);

---  Alter the students table to add a new column address (VARCHAR(200)).
alter table students add address varchar(200);


--- Q6. Alter the students table to add a new column admission_year (YEAR).

alter table students add admission_year year;

--- Q7. Modify the column phone_number to store 20 characters.

alter table students modify phone_number varchar(20);

--- Q8. Modify the column full_name to increase its size to 150 characters.

alter table students modify full_name   varchar(150);

--- Q10. Rename the column email to student_email.
alter table students rename column email to student_email;

-- Q11. Drop the column dob from students table.
alter table students drop dob;
--- Q12. Drop the column address from students table.
alter table students drop address;
-- Q13. Add a new column scholarship_amount (DECIMAL(10,2)).
alter table students add scholarship_amount DECIMAL(10,2);
--- Q16. Insert data into departments table (Explicit).
select * from students;

insert into departments(dept_id,department_name)
values(1,'data science'),
(2,'meachine learning'),
(3,'data analysis');

INSERT INTO students
(id, full_name, gender, student_email, phone_number, percentage, department_id, admission_year, scholarship_amount)
VALUES
(1,'chakravardhan','Male','abc@123',9383982,90.0,1,2025,45000),
(2,'swathi','Female','ac@123',93882,93.0,2,2025,450000),
(3,'nani','Male','abc@89',9726782,30.0,3,2025,90000);
select * from students;
--- Q19. Update the email of a student named "Amit Kumar".
update students
set full_name = 'swathi'
where id = 1;

--- Update the scholarship amount of all students to 5000.

update students
set scholarship_amount = 5000
where id = 3;

--- Q21. Delete a student whose id = 2.

delete from students
where id = 2;

-- Display all students.

select * from students;


--- Q25. Display only full_name and student_email of students.

select full_name,student_email from students;

--- Show students where gender = 'Female'.


SELECT *
FROM students
WHERE gender = 'Female';


---  Q30. Display distinct genders available in the students table.

select distinct gender from students;




