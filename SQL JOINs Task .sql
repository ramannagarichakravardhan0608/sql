create database inno;
use  inno;

create table student
(student_id int,
full_name varchar(50),
course_id int);

create table course
(course_id int,
course_name varchar(50));

insert into student(student_id,full_name,course_id)
values(1,'Aditi',101),
(2,'Rahul',102),
(3,'sneha',Null);

insert into  course(course_id,course_name)
values(101,'Data Science'),
(102,'Data Analysis'),
(103,'sql basics');

-- Only show students who are actually enrolled in a course.

select * from student as s
join course as co
on s.course_id = co.course_id;

-- Output should contain: student_id, full_name, course_name.
select student_id,full_name,course_name from student as s
join course as co
on s.course_id = co.course_id;

-- Students without a course should still appear.

select * from student as s
left join course as co
on s.course_id = co.course_id;

-- Output should contain: student_id, full_name, course_name.

select student_id,full_name,course_name from student as s
left join course as co
on s.course_id = co.course_id;
-- Courses without any students should still appear.

select * from student as s
right join course as co
on s.course_id = co.course_id;

-- Output should contain: student_id, full_name, course_name.

select student_id,full_name,course_name from student as s
right join course as co
on s.course_id = co.course_id;



