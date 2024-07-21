CREATE DATABASE Details;
USE Details;
CREATE TABLE employee_details(id int, employee_name varchar(10));
ALTER TABLE employee_details ADD COLUMN employee_salary int;
ALTER TABLE employee_details ADD COLUMN employee_seat_name varchar(10);
ALTER TABLE employee_details ADD COLUMN employee_adress varchar(10);
ALTER TABLE employee_details ADD COLUMN employee_phoneNo varchar(10);
ALTER TABLE employee_details ADD COLUMN employee_laptopNo varchar(10);
ALTER TABLE employee_details ADD COLUMN employee_shift varchar(10);

ALTER TABLE employee_details DROP  COLUMN employee_laptopNo;
ALTER TABLE employee_details DROP COLUMN employee_seat_name;

ALTER TABLE employee_details RENAME COLUMN employee_name TO employee_fullName;
ALTER TABLE employee_details RENAME COLUMN employee_salary TO employee_Salary;
ALTER TABLE employee_details RENAME COLUMN employee_adress TO employee_Adress;
ALTER TABLE employee_details RENAME COLUMN employee_phoneNo TO employee_Phone_no;
ALTER TABLE employee_details RENAME COLUMN employee_shift TO employee_Shift;

ALTER TABLE employee_details MODIFY COLUMN id bigint;
ALTER TABLE employee_details MODIFY COLUMN employee_Salary bigint;
ALTER TABLE employee_details MODIFY COLUMN employee_Phone_no bigint;
ALTER TABLE employee_details MODIFY COLUMN employee_Phone_no bigint;
ALTER TABLE employee_details MODIFY COLUMN employee_Shift bigint;

USE details;
SELECT * FROM employee_details;

CREATE TABLE air_port_details(id int,airport_namr varchar(10)); 
ALTER TABLE air_port_details ADD COLUMN airport_location varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_adress varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_number int;
ALTER TABLE air_port_details ADD COLUMN airport_timing varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_logo varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_owner varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_place varchar(10);
ALTER TABLE air_port_details ADD COLUMN airport_managerNmae int;
ALTER TABLE air_port_details ADD COLUMN airport_ticket varchar(10);

ALTER TABLE air_port_details DROP COLUMN airport_owner;
ALTER TABLE air_port_details DROP COLUMN airport_place;

ALTER TABLE air_port_details RENAME COLUMN id To ID;
ALTER TABLE air_port_details RENAME COLUMN airport_namr To airport_name;
ALTER TABLE air_port_details RENAME COLUMN airport_location  To airport_Location;
ALTER TABLE air_port_details RENAME COLUMN airport_number  To airport_No;
ALTER TABLE air_port_details RENAME COLUMN airport_timing  To airport_Timing;

ALTER TABLE air_port_details MODIFY COLUMN ID bigint;
ALTER TABLE air_port_details MODIFY COLUMN airport_No bigint;
ALTER TABLE air_port_details MODIFY COLUMN airport_Timing bigint;
ALTER TABLE air_port_details MODIFY COLUMN airport_managerNmae varchar(10);
ALTER TABLE air_port_details MODIFY COLUMN airport_ticket int;

USE Details;
SELECT * FROM employee_details;
DESC employee_details;

INSERT INTO employee_details VALUES(2345567,'prerana',30000,9353555400,'bidar',2);
INSERT INTO employee_details VALUES(2345568,'santosh',50000,9353555401,'bidar',1);
INSERT INTO employee_details VALUES(2345569,'jyoti',40000,9353555402,'bengluru',3);
INSERT INTO employee_details VALUES(2345570,'Raksita',60000,9353555405,'hubali',2);
INSERT INTO employee_details VALUES(2345571,'sarika',20000,9353555408,'bidar',4);
INSERT INTO employee_details VALUES(2345572,'prateeksh',80000,9353555500,'belagava',3);
INSERT INTO employee_details VALUES(2345573,'amula',80000,9353559400,'gulberga',4);
INSERT INTO employee_details VALUES(2345574,'priya',30000,9353555409,'bidar',3);
INSERT INTO employee_details VALUES(2345575,'unnati',40000,9353955400,'puna',5);
INSERT INTO employee_details VALUES(2345576,'preeti',30000,9353585400,'bidar',2);

SELECT * FROM employee_details;
SELECT employee_fullname FROM employee_details;

SELECT * FROM employee_details WHERE employee_Adress='bidar';
SELECT * FROM employee_details WHERE employee_Shift=2;
SELECT * FROM employee_details WHERE employee_Salary=30000;
SELECT * FROM employee_details WHERE employee_Phone=9353555400;
SELECT employee_Adress, employee_Shift FROM employee_details WHERE employee_fullName='prerana';
