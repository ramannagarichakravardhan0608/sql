create database persons;
use persons;


/*
DDL stands for Data Definition Language. 
It is used to define and manage the structure 
of database objects such as tables, schemas, indexes, and views. Common DDL commands are CREATE, ALTER, DROP, and TRUNCATE.*/

-- create a table name
create table person
(id int not null,
person_name varchar(50) not null,
birth_date Date,
phone varchar(15),
constraint pk_persons primary key(id));

select * from person;
-- alter table 
alter table person add email varchar(50);

alter table person drop phone ;
-- drop the table 
drop table person;


