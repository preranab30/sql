UPDATE 
CREATE database Phone;
use Phone;
create table phone_detail(id int, P_name varchar(20),p_storage varchar(20), p_price bigint);
INSERT INTO phone_detail VALUES(1,'HONOR',	'32GB',320000);
INSERT INTO phone_detail VALUES(2,'REALME',	'64GB',340000);
INSERT INTO phone_detail VALUES(3,'VIVO',	'32GB',320000);
INSERT INTO phone_detail VALUES(4,'OPPO',	'64GB',520000);

UPDATE phone_detail SET P_name='ONEPLUSE' WHERE id=1;