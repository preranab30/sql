create database constarints;
use constarints;

create table library(id int not null unique,l_name varchar(30),l_location varchar(30),l_manager varchar(30),book_id int primary key);
alter table library modify column  l_location varchar(30) not null;
alter table library add constraint l_manager_uni unique(l_manager);
alter table library add constraint id_chk check(id>100);
alter table library drop primary key;
desc library;
insert into library values(101, 'Central Library', 'Downtown', 'prerana', 101);
insert into library values(102, 'North Branch', 'Northside', 'sarika', 102);
insert into library values(103, 'Westside Library', 'West End', 'pretti', 103);
insert into library values(104, 'Eastside Branch', 'East End', 'nikita', 104);
insert into library values(105, 'South Library', 'Southside', 'Eva Martinez', 105);

alter table library add constraint l_name_uni unique(l_name);
alter table library modify column id int  null;
select * from library;


create table sports(id int not null,sports_name varchar(30) unique,sports_loc varchar(30),sports_manger varchar(30),sports_palyer int);
alter table sports modify column sports_name varchar(30) not null;
alter table sports modify column id int null;
alter table sports add constraint sports_palyer_chk check(sports_palyer>1);

insert into sports values(100,'footaball','bengluru','ashwini',10);
insert into sports values(101,'throwball','belagum','raaya',11);
insert into sports values(102,'cricket','dehli','veersh sh',12);
insert into sports values(103,'hakey','hampi','shreya',2);
insert into sports values(104,'chess','dubai','riya',2);
select * from sports;

alter table sports add constraint primary key(sports_manger);
alter table sports drop index sports_name;


create table movies(id int not null,m_name varchar(30) not null unique,m_rating int,m_language varchar(30),m_hero varchar(30) unique);
alter table movies add constraint m_hero_pk primary key(m_hero);
alter table movies drop index m_name;
desc movies;

insert into movies values(1000,' K.G.F: Chapter 1',5,'kannada','yash');
insert into movies values(1001,'Dangal',4,'Hindi','Amira khan');
insert into movies values(1002,' Baahubali',5,'Telagu','prabhas');
insert into movies values(1003,' Drishyam',3,'maliyam','Mohanlal');
insert into movies values(1005,' Romieo julite',4,'english','alice');
select * from movies;

alter table movies add constraint m_rating_chk check(m_rating>1);
alter table movies modify column id int null;

create table Teacher(id int not null unique,t_name varchar(30),t_sal bigint,t_subject varchar(30),t_loc varchar(30) unique);
alter table Teacher add constraint t_name_pk primary key(t_name);
alter table Teacher modify column id int null;
desc Teacher;

insert into Teacher values(401,'suvernalata',40000,'datastructure','basavakalyan');
insert into Teacher values(402,'veeresh',30000,'os','gulberga');
insert into Teacher values(403,'gururaj',20000,'java','humnabad');
insert into Teacher values(404,'keertirani',10000,'oops','Bidar');
insert into Teacher values(405,'siddu',20000,'iot','rajeshwer');

alter table Teacher drop index t_loc;
alter table Teacher modify column t_subject varchar(30) null; 
select * from Teacher;