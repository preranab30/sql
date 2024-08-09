create database Reserach;
use Reserach;
create table employee(id int,e_name varchar(30),age int,e_salary bigint);
alter table  employee add constraint id_pk primary key(id);
create table company(id int,company_name varchar(30), company_loction varchar(30), foreign key(id) references employee(id));
create table customer(id int primary key ,c_name varchar(30),c_age int);
create table product(id int, p_name varchar(30),p_brand varchar(30),foreign key(id) references customer(id));
select * from employee;
insert into employee values(1,'prerana',21,5000000);
insert into employee values(2,'sarika',22,2000000);
insert into employee values(3,'pratikha',28,3000000);
insert into employee values(4,'rakshita',25,4000000);
insert into employee values(5,'jyoti',26,5000000);
insert into employee values(6,'vaishnavi',21,6000000);
insert into employee values(7,'sangeeta',22,7000000);
insert into employee values(8,'kasturi',23,8000000);
insert into employee values(9,'shewta',29,9000000);
insert into employee values(10,'sahana',27,9000000);
insert into employee values(11,'sudha',25,4000000);
insert into employee values(12,'suhasa',29,2600000);
insert into employee values(13,'shankar',28,2500000);
insert into employee values(14,'saraswati',23,2700000);
insert into employee values(15,'kaveri',24,2800000);

select * from company;
insert into company values(1,'tcs','bengluru');
insert into company values(1,'wipro','bengluru');
insert into company values(2,'infosis','bengluru');
insert into company values(3,'accenture','bengluru');
insert into company values(3,'tech mehindra','bengluru');
insert into company values(5,'cc tech','bengluru');
insert into company values(11,'google','bengluru');
insert into company values(12,'Amazone','bengluru');
insert into company values(12,'revature','bengluru');
insert into company values(12,'all state','bengluru');
insert into company values(13,'ATS','bengluru');
insert into company values(14,'ss tech','bengluru');
insert into company values(14,'mehidra','bengluru');
insert into company values(15,'expert','bengluru');

select * from customer;
insert into customer values(1,'priya',21);
insert into customer values(2,'harshita',22);
insert into customer values(3,'priyanka',23);
insert into customer values(4,'pooja',24);
insert into customer values(5,'pallavi',25);
insert into customer values(6,'payala',26);
insert into customer values(7,'prem',27);
insert into customer values(8,'prashanth',28);
insert into customer values(9,'gunashree',29);
insert into customer values(10,'chetana',30);
insert into customer values(11,'prerana',31);
insert into customer values(12,'pavitra',22);
insert into customer values(13,'anbika',31);
insert into customer values(14,'aishu',34);
insert into customer values(15,'pillu',35);

select * from product;
insert into product values(1,'phone','iphone');
insert into product values(1,'phone','iphone');
insert into product values(2,'phone','iphone');
insert into product values(2,'phone','iphone');
insert into product values(3,'phone','iphone');
insert into product values(4,'phone','iphone');
insert into product values(4,'phone','iphone');
insert into product values(5,'phone','iphone');
insert into product values(5,'phone','iphone');
insert into product values(5,'phone','iphone');
insert into product values(6,'phone','iphone');
insert into product values(7,'phone','iphone');
insert into product values(7,'phone','iphone');
insert into product values(6,'phone','iphone');

select * from employee as E inner join company as C on E.id=C.id;
select * from customer as cs inner join product as P on cs.id=P.id;
select * from employee as E inner join company as C on E.id=C.id inner join  customer cs on cs.id=E.id inner join product as P
on P.id=C.id;

select * from employee E left join company C on E.id=C.id left join customer cs on cs.id=E.id left join product P
on P.id=C.id;

select * from employee E right join company C on E.id=C.id right join customer cs on cs.id=E.id right join product P
on P.id=C.id;

select * from employee E right join company C on E.id=C.id right join customer cs on cs.id=E.id inner join product P
on P.id=C.id;

select * from employee E inner join company C on E.id=C.id left join customer cs on cs.id=E.id inner join product P
on P.id=C.id;

select * from employee E right join company C on E.id=C.id left join customer cs on cs.id=E.id right join product P
on P.id=C.id;

select * from employee E left join company C on E.id=C.id right join customer cs on cs.id=E.id left join product P
on P.id=C.id;






