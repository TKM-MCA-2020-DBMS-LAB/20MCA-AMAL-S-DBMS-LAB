CREATE DATABASE employee;
SHOW databases;
use employee;
CREATE table employee(emp_no INT NOT NULL,
emp_name VARCHAR(20) NOT NULL,
DOB date NOT NULL, 
address varchar(50) NOT NULL,
doj date NOT NULL,
mobile_no varchar(100),
dept_no varchar(20),
salary INT NOT NULL,
PRIMARY KEY(emp_no),FOREIGN KEY (dept_no) REFERENCES department(dept_no)
 );

CREATE table department(dept_no VARCHAR(20),
dept_name VARCHAR(50),
location VARCHAR(100),
PRIMARY KEY(dept_no)
 );

SHOW tables;
describe employee;
describe department;
insert into employee(emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary) values (1,'Amal','1995-8-08','kollam','2020-08-01',9876565444,12,95000);
insert into employee(emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary) values (2,'akhil','2000-4-02','Kollam','2020-04-02',896554382,13,88000);
insert into employee(emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary) values (3,'krish','1999-4-18','elampalloor','2020-01-02',98765454,11,62000);
insert into employee(emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary) values (4,'Devu','1999-9-10','karunagapally','2021-03-10',92345667,21,75000);
insert into employee(emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary) values (5,'Avani','2001-09-14','kundara','2021-05-02',6547382954,10,49000);

select * from employee;
insert into department(dept_no, dept_name, location) values (12,'cs','3-floor');
insert into department(dept_no, dept_name, location) values (13,'BBA','2-floor');
insert into department(dept_no, dept_name, location) values (11,'Mec','1-floor');
insert into department(dept_no, dept_name, location) values (21,'mca','4-floor');
insert into department(dept_no, dept_name, location) values (10,'chem','3-floor');

ALTER TABLE employee  ADD Designation VARCHAR(100);
ALTER TABLE department  DROP COLUMN location;

DROP TABLE employee;
DROP TABLE department;
DROP DATABASE employee;

