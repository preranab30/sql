CREATE DATABASE Employee;
USE Employee;
CREATE TABLE employee(emp_id int, emp_name varchar(10),emp_salary bigint,emp_age int,emp_Team varchar(10));
INSERT INTO employee VALUES(1,'amita',35000,32,'Team A');
INSERT INTO employee VALUES(2,'Sachin',42000,28,'Team B');
INSERT INTO employee VALUES(3,'Mohita',24000,31,'Team A');
INSERT INTO employee VALUES(4,'Rakesh',47000,27,'Team C');

SELECT * FROM employee;
SELECT emp_name FROM employee;
SELECT emp_name,emp_salary,emp_Team From employee;
SELECT emp_id,emp_name,emp_Team From employee;
SELECT * From employee where emp_id=3;
SELECT emp_id From employee where emp_id=2;
SELECT emp_id,emp_salary,emp_Team From employee where emp_Team='Team A';
SELECT emp_salary from employee where emp_Team='Team C';
SELECT emp_age from employee;
