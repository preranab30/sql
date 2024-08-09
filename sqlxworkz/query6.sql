create database info1;
use info1;
create table movies(id int , m_name varchar(30),m_budget bigint,m_hero varchar(30),m_rating int);
alter table movies modify column  m_name varchar(30) not null;
alter table movies add constraint m_hero unique(m_hero);
alter table movies add constraint m_rating check(m_rating>1);
alter table movies add constraint  primary key (id);
alter table movies add column movie_no int;
desc movies;
select * from movies;
insert into movies values(1, 'Dilwale Dulhania Le Jayenge', 40000000, 'Raj', 9,10);
insert into movies values(2, '3 Idiots', 55000000, 'Rancho', 8,20);
insert into movies values(3, 'Bahubali: The Beginning', 180000000, 'Baahubali', 7,30);
insert into  movies values(4, 'Lagaan', 25000000, 'Bhuvan', 6,40);
insert into movies values(5, 'Zindagi Na Milegi Dobara', 65000000, 'Imraan', 5,50);
insert into movies values(6, 'Kabhi Khushi Kabhie Gham', 40000000, 'Rahul ', 8,70);
insert into movies values(7, 'PK', 85000000, 'PK', 9,80);
insert into movies values(8, 'Bajrangi Bhaijaan', 90000000, 'Pavan', 4,90);
insert into movies values(9, 'Chennai Express', 70000000, 'Rahul m', 7,100);
insert into movies values(10, 'Jab Tak Hai Jaan', 60000000, 'Sam', 9,101);

select * from movies where id between 5 and 10;
select * from movies where m_name like 'Z%';
select * from movies order by id desc;
select LoWER(m_name) as to_lower from movies;
select upper(m_name) as to_upper from movies;
select concat(m_name,m_hero) from movies;
select LENGTH(m_name)as length, m_name from movies;
create index index_name on movies(m_hero);
show indexes from movies;
select * from movies;
create table producer(id int, foreign key(id) references movies(id),producer_name varchar(30));
insert into producer values(1,'Aditya Chopra');
insert into producer values(2,'Vidhu Vinod Chopra');
insert into producer values(3,'Yarlagadda, Prasad Devineni');
insert into producer values(4,'Kiran Rao');
insert into producer values(5,'Yash Chopra');
insert into producer values(6,'Karan Johar');
insert into producer values(7,'Aditya Chopra');
insert into producer values(8,'vinoda Chopra');
insert into producer values(9,'Karan Johar');
insert into producer values(10,'Aditya Chopra');

select * from producer;

create table college(id int primary key,c_name varchar(40) unique,c_loc varchar(40),  no_of_student int,constraint student_no check(no_of_student>1000 ),c_fees bigint default 6000000);
select * from college;

insert into college values(1, 'Ravi College of Engineering', 'Bengaluru', 1500,600000);
insert into college values(2, 'Vijaya Institute of Technology', 'Mysuru', 2000,700000);
insert into college values(3, 'Narayana College of Science', 'Hubli', 1200,80000);
insert into college values(4, 'Srinivasa School of Business', 'Mangalore', 1800,120000);
insert into college values(5, 'Pavan Medical College', 'Belgaum', 2200,60000);
insert into college values(6, 'Siddhartha Arts College', 'Shimoga', 1600,400000);
insert into college values(7, 'Kaveri College of Design', 'Bengaluru', 2500,30000);
insert into college values(8, 'Manasa Polytechnic', 'Tumkur', 1300,450000);
insert into college values(9, 'Gokul Institute of Agriculture', 'Davangere', 1100,58888);
insert into college values(10, 'Madhavi Institute of Commerce', 'Raichur', 1400,4958);

select * from college where id between 3 and 10;
select * from college where c_name like 'K%';
select * from college order by id desc;
select LoWER(c_name) as to_lower from college;
select upper(c_name) as to_upper from college;
select concat(c_name,c_loc) from college;
select LENGTH(c_name)as length, c_name from college;
create index index_name on movies(c_name);
show indexes from college;

create table teacher(id int, foreign key(id) references college(id), T_name varchar(30));

insert into teacher values(1,'suvernalata');
insert into teacher values(2,'veersh');
insert into teacher values(3,'Gururaj');
insert into teacher values(4,'keerti');
insert into teacher values(5,'suverna');
insert into teacher values(6,'lata');
insert into teacher values(7,'varsh');
insert into teacher values(8,'vishwanth');
insert into teacher values(9,'radhika');
insert into teacher values(10,'siddu');
select * from teacher;




