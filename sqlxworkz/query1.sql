CREATE DATABASE structure;
use structure;
CREATE TABLE movie(id int, m_name varchar(10),m_rating int,m_quality varchar(10),m_budget bigint);
ALTER TABLE movie ADD COLUMN movie_hero varchar(10);
ALTER TABLE movie ADD COLUMN movie_heroine varchar(10);
ALTER TABLE movie ADD COLUMN no_of_actors int;
ALTER TABLE movie ADD COLUMN no_of_song_inmovie int;
ALTER TABLE movie ADD COLUMN hero_salary bigint;
ALTER TABLE movie ADD COLUMN heroin_salary bigint;
ALTER TABLE movie ADD COLUMN isavailable boolean;
SELECT * FROM movie;
desc movie;
ALTER TABLE movie RENAME COLUMN m_name TO movie_name;
ALTER TABLE movie RENAME COLUMN m_rating TO movie_rating;
ALTER TABLE movie RENAME COLUMN m_quality TO movie_quality;
ALTER TABLE movie RENAME COLUMN m_budget TO movie_budget;
ALTER TABLE movie RENAME COLUMN hero_salary TO Hero_salary;
INSERT INTO movie VALUES(100,'MungaruMal',5,'Good',200000000000,'Pooja G',10,3,38000000,87800000,true,'Ganesh');
INSERT INTO movie VALUES(101,'Lucia',3,'medium',400000000000,'Sruthi',9,4,48000000,27800000,true,'Sathish ');
INSERT INTO movie VALUES(102,'KirikParty',4,'Good',500000000000,'Rashmika',7,5,88000000,89700000,true,'Rakshit');
INSERT INTO movie VALUES(103,'KGF',2,'medium',800000000000,'Srinidhi S',10,6,78000000,27600000,false,'yash');
INSERT INTO movie VALUES(104,'Dia',3,'Good',5600000000000,'Kushi',5,3,38000000,70000000,true,'Pruthvi');
INSERT INTO movie VALUES(105,'milana',5,'Good',680000000000,'priya',9,4,38000000,450000000,true,'puneeta');
INSERT INTO movie VALUES(106,'paramatma',2,'bad',6890000000000,'deepa',8,2,38000000,670000000,false,'punneta');
INSERT INTO movie VALUES(107,'ramachari',3,'medium',700000000000,'malashree',6,4,8976000000,20000000,true,'ravichandr');
INSERT INTO movie VALUES(108,'googly',5,'Good',556700000000,'kriti',9,5,38000000,265470000,true,'yasha');
INSERT INTO movie VALUES(109,'drama',4,'medium',467800000000,'radhika',10,2,38000000,200700000,true,'yasha');
select * from movie;

UPDATE  movie SET  movie_quality='medium' where id=100;
update movie set movie_budget=40000000000000 where movie_name='KGF'; 
update movie set no_of_song_inmovie=4 where movie_name='Lucia'; 
update movie set isavailable=false where movie_name='milana'; 
update movie set movie_rating=4 where movie_name='Dia'; 
update movie set movie_rating=3 where movie_name='googly'; 
update movie set movie_quality='bad' where movie_name='drama'; 
update movie set no_of_actors=7 where movie_name='parmatma'; 
update movie set no_of_actors=8 where movie_name='Dia'; 
update movie set no_of_song_inmovie=5 where id=109; 



DELETE FROM movie where movie_hero='ravichandr'; 
DELETE FROM movie where movie_name='Lucia'; 
DELETE FROM movie where movie_heroine='priya'; 
select * from movie;

select * from movie where movie_name='KGF' AND id=103;

select * from movie where movie_hero='yash' OR movie_heroine='radhika';
select * from movie where id in(100,102,103);
select * from movie where id not in(100,102,103);

CREATE TABLE bank(id int, b_name varchar(20),b_loc varchar(25),CustomerID int ,Customer_name varchar(25));
ALTER TABLE bank ADD COLUMN AccountNumber varchar(10);
ALTER TABLE bank ADD COLUMN Address varchar(10);
ALTER TABLE bank ADD COLUMN Balance bigint;
ALTER TABLE bank ADD COLUMN loan bigint;
ALTER TABLE bank ADD COLUMN BranchID int;
ALTER TABLE bank ADD COLUMN Branchcode int;
select * from bank;
desc bank;
ALTER TABLE bank RENAME COLUMN  b_name TO bank_name;
ALTER TABLE bank RENAME COLUMN b_loc TO bank_loc;
ALTER TABLE bank RENAME COLUMN id TO bank_id;
ALTER TABLE bank RENAME COLUMN CustomerID TO customer_Id;
ALTER TABLE bank RENAME COLUMN AccountNumber TO Account_number;

INSERT INTO bank VALUES(1000,'SBI','BENGULUR',2000,'PRERANA','AC3956777','Bidar',100000000000,3000000,401,2345);
INSERT INTO bank VALUES(1001,'SBI','HUBALI',2000,'SARIKA','AC3956757','Bidar',100000000000,3000000,402,2355);
INSERT INTO bank VALUES(1002,'SBI','BELAGUM',2000,'PRATEEKSHA','AC3956677','Bidar',100000000000,3000000,404,21345);
INSERT INTO bank VALUES(1003,'SBI','MYSURE',2000,'PREETI','AC3956767','Bidar',100000000000,3000000,404,2345);
INSERT INTO bank VALUES(1004,'SBI','BIDAR',2000,'PRIYA','AC3956776','Bidar',100000000000,3000000,405,2344);
INSERT INTO bank VALUES(1005,'SBI','GULBERGA',2000,'POOJA','AC3956787','Bidar',100000000000,3000000,406,2345);
INSERT INTO bank VALUES(1006,'SBI','BIJAPUR',2000,'RAKSHITA','AC3956797','Bidar',100000000000,3000000,407,2545);
INSERT INTO bank VALUES(1007,'SBI','BENGULUR',2000,'JYOTI','AC3956757','Bidar',100000000000,3000000,408,2345);
INSERT INTO bank VALUES(1008,'SBI','BENGULUR',2000,'MEGHA','AC3956477','Bidar',100000000000,3000000,409,2345);
INSERT INTO bank VALUES(1009,'SBI','BAGALAKOTA',2000,'PRIYANKA','AC395977','Bidar',100000000000,3000000,405,2365);
INSERT INTO bank VALUES(2000,'SBI','BENGULUR',2000,'PRERANAb','AC3956773','Bidar',100000000000,3000000,404,2345);
select * from bank;
UPDATE  bank SET  bank_name='state bank' where Bank_id=1000;
UPDATE  bank SET  Customer_name='pallavi' where Bank_id=1002;
UPDATE  bank SET  BranchID='4001' where Branchcode=2345;
UPDATE  bank SET  Address='Gulberga' where Customer_name='PREETI';
UPDATE  bank SET  bank_name='KGB' where Customer_name='RAKSHITA';
UPDATE  bank SET  bank_name='KGB' where Customer_name='PREETI';
UPDATE  bank SET  Address='gulberga' where Customer_name='PRERANA';
UPDATE  bank SET  bank_name='HDFC' where Address='Bidar';
UPDATE  bank SET  bank_loc='mysore' where AccountNumber='AC3956787';
UPDATE  bank SET  bank_name='kgb' where AccountNumber='AC3956787';


  
 DELETE FROM bank where bank_loc='HUBALI';
 DELETE FROM bank where BranchID=4001;
 DELETE FROM bank where AccountNumber='AC356767';
 rollback;
 select * from bank;
 
 select * from bank where CustomerID=2000 AND bank_id=1002;
 select * from bank where CustomerID=2000 OR bank_loc='HUBALI';
 select * from bank where bank_id in(1000,1001,1002);
 select * from bank where bank_id not in(1000,1001,1002);
 select * from bank;
 
 
