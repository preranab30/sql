create database laptop;
use laptop;

create table hospital(id int, h_name varchar(30),h_location varchar(30),h_fees bigint,h_number bigint);
insert into hospital values(1, 'ESI', 'bengulur',20000000,9008973173);
insert into hospital values(2, 'manipal', 'mysore',40000000,9008973113);
insert into hospital values(3, 'surya hospital', 'hampi',50000000,9008978135);
insert into hospital values(4, 'eshvant hospital', 'belagum',80000000,9000973113);
insert into hospital values(5, 'MGP hosptal', 'bijapura',90000000,90008973113);
insert into hospital values(6, 'kaveri hospital', 'bengulur',25000000,90008973113);
insert into hospital values(7, 'shobha hospital', 'bagalkota',28000000,9987973113);
insert into hospital values(8, 'merja hospital', 'beluru',24700000,954688973113);
insert into hospital values(9, 'E hospital', 'bangla',234000000,90008973113);
insert into hospital values(10, 'reeta hospital', 'hasas',28200000,93458973113);
insert into hospital values(11, 'reeta hospital', 'vijayanagar',12300000,90008963113);
insert into hospital values(12, 'sujatha', 'raichur',87000000,90008973333);
insert into hospital values(13, 'pallavi hospital', 'kanakpura',987000000,90004973113);
insert into hospital values(14, 'ganga hospital', 'melakote',87000000,90007973113);
insert into hospital values(15, 'tulasi hospital', 'bengulur',20000000,90008973113);
insert into hospital values(16, 'mg biradar hospital', 'gadag',20000000,90008973113);
insert into hospital values(17, 'kishor hospital', 'gulberga',20000000,90008973113);
insert into hospital values(18, 'raju hospital', 'kitur',20000000,90008973113);
insert into hospital values(19, 'coma hospital', 'bandipura',20000000,90008973113);
insert into hospital values(20, 'sushma hospital', 'mumbai',20000000,90008973113);
select * from hospital;
delete from hospital where id=10;
delete from hospital where id=11;