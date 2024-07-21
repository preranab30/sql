CREATE DATABASE places;
USE places;
CREATE TABLE hospital_info(personId int,hospital_name varchar(50),hospital_loc varchar(60),patientId int,patient_name varchar(60),patient_mobileNumber bigint,disease_name varchar(45));
DESC hospital_info;
ALTER TABLE hospital_info DROP COLUMN patientId;
INSERT INTO hospital_info values(1,'Mayo Clinic','Bangalore','Sudha',8618640680,'Fever');
INSERT INTO hospital_info values(2,'Manipal Hospitals','Bangalore','Prajakta',9663709145,'cold and cough');
INSERT INTO hospital_info values(3,'JSS Hospital','Mysore','Sahana',8618654680,'Body Pain');
INSERT INTO hospital_info values(4,'KMC Hospital','Mangalore','Rekha',9428640680,'Typoid');
INSERT INTO hospital_info values(5,'Apollo BGS Hospital','Mysore','Prachi',8618649452,'Dengue');
INSERT INTO hospital_info values(6,'KIMS Hospital','Hubli','Priyanka',8619257680,'Leg Pain');
INSERT INTO hospital_info values(7,'Lakeview Hospital','Belagavi','Priya',9449306474,'Malaria');
INSERT INTO hospital_info values(8,'Spandana Hospital','Hubli','Sushmita',9448618405,'Fever');
INSERT INTO hospital_info values(9,'Swayam Hospital','Belagavi','Surekha',9494640680,'Cold');
INSERT INTO hospital_info values(10,'Fortis Hospital','Bangalore','Varsha',869264680,'Body Pain');
SELECT * FROM hospital_info;
ALTER TABLE hospital_info ADD COLUMN patient_lastName varchar(45),ADD COLUMN doctor_name varchar(50),ADD COLUMN patient_email varchar(60),ADD COLUMN patient_addr varchar(50);
DESC hospital_info;
INSERT INTO hospital_info values(1,'Mayo Clinic','Bangalore','Sudha',8618640680,'Fever','Fadi','Dr.Basavaraj','sudhafadi5@gmail.com','Katkol');
INSERT INTO hospital_info values(2,'Manipal Hospitals','Bangalore','Prajakta',9663709145,'cold and cough','Pawar','Dr.S V Patil','prajipawar2@gmail.com','Athani');
INSERT INTO hospital_info values(3,'JSS Hospital','Mysore','Sahana',8618654680,'Body Pain','khemannava','Dr.Patil','sahanak@gmail.com','Belagavi');
INSERT INTO hospital_info values(4,'KMC Hospital','Mangalore','Rekha',9428640680,'Typoid','Garadimani','Dr.B S Gaddigoudra','rekha123@gmail.com','Ramadurg');
INSERT INTO hospital_info values(5,'Apollo BGS Hospital','Mysore','Prachi',8618649452,'Dengue','Babannavar','Dr.Swapna Patil','prachi1008@gmail.com','Kusanal');
INSERT INTO hospital_info values(6,'KIMS Hospital','Hubli','Priyanka',8619257680,'Leg Pain','Kore','Dr.S Agarawal','priyankakore@gmail.com','Kadapur');
INSERT INTO hospital_info values(7,'Lakeview Hospital','Belagavi','Priya',9449306474,'Malaria','Karambale','Dr.Prabhu','priya68@gmail.com','Akkol');
INSERT INTO hospital_info values(8,'Spandana Hospital','Hubli','Sushmita',9448618405,'Fever','patil','Dr.B Magadum','sushmita23@gmail.com','Belagavi');
INSERT INTO hospital_info values(9,'Swayam Hospital','Belagavi','Surekha',9494640680,'Cold','Mulimani','Dr.V R Patil','surekha235@gmail.com','Yaragatti');
INSERT INTO hospital_info values(10,'Fortis Hospital','Bangalore','Varsha',869264680,'Body Pain','Huchchannavar','Dr.S B Mulimani','varsha123@gmail.com','Gadag');
SELECT * FROM hospital_info;
INSERT INTO hospital_info values(11,'Sakra World Hospital','Bangalore','Madhu',8618640662,'Fever','Inchal','Dr.Basavaraj','madhu2785@gmail.com','Belagavi');
INSERT INTO hospital_info values(12,'KR Hospital','Mysore','Prajakta',9663709145,'cold and cough','Pawar','Dr.S V Patil','prajipawar2@gmail.com','Athani');
INSERT INTO hospital_info values(13,'JSS Hospital','Mysore','Sahana',8618654680,'Body Pain','khemannava','Dr.Patil','sahanak@gmail.com','Belagavi');
INSERT INTO hospital_info values(14,'Yenepoya Specialty Hospital','Mangalore','Rashmi',9428640680,'Typoid','patil','Dr.B S Gaddigoudra','rashmi123@gmail.com','Raibhag');
INSERT INTO hospital_info values(15,'Adarsha Hospital','Hubli','Akhila',8618649145,'Dengue','Rendale','Dr.Swapna Patil','akhilar@gmail.com','Kerur');
INSERT INTO hospital_info values(16,'Aadhaar Hospital','Belagavi','Priyanka',8619257680,'Leg Pain','Jain','Dr.S Agarawal','priyanka1008@gmail.com','chikkodi');
INSERT INTO hospital_info values(17,'KLE Hospital','Belagavi','Kavya',9449306474,'Malaria','Patil','Dr.Prabhu','kavyap68@gmail.com','kamatenattii');
INSERT INTO hospital_info values(18,'JSS Hospital','Mysore','Aishwarya',9448618068,'Fever','bannuri','Dr.B Magadum','aishwaryab23@gmail.com','sankeshwar');
INSERT INTO hospital_info values(19,'Swayam Hospital','Belagavi','Surekha',9494640680,'Cold','Mulimani','Dr.V R Patil','surekha235@gmail.com','Yaragatti');
INSERT INTO hospital_info values(20,'Agharwal Hospital','Bangalore','Anushka',869264680,'Body Pain','Gebise','Dr.S B Mulimani','anu123@gmail.com','Nippani');
SELECT * FROM hospital_info;


USE places;
CREATE TABLE tourist_places(palceId int,place_name varchar(50),place_loc varchar(50),Entry_fees int,Guide_name varchar(50), OpeningHours varchar(50),Rating int,User_name varchar(50),User_loc varchar(50),UserId int);
DESC tourist_places;
INSERT INTO tourist_places values(1,'Mysore Palace','Mysore',150,'Prajakta','12hr',5,'Sudha','Katkol',101);
INSERT INTO tourist_places values(2,'lalbhag','Bangalore',100,'Prajwal P','12hr',5,'Prajakta','Madabhavi',112);
INSERT INTO tourist_places values(3,'kabban Park','Bangalore',50,'Shankar F','12hr',4.5,'Sunanda','Guledagudda',105);
INSERT INTO tourist_places values(4,'Zoo','Mysore',100,'Om','10hr',5,'Prerana','Bidar',120);
INSERT INTO tourist_places values(5,'Kamal Basti','Belagavi',100,'Shivanand','12hr',4.5,'Sahana','Belagavi',150);
INSERT INTO tourist_places values(6,'Yallur Port','Belagavi',50,'Prajakta M','24hr',5,'Sandhya','Ramadurg',106);
INSERT INTO tourist_places values(7,'Chennakesava Temple','Belur',0,'Vijay','12hr',5,'Shankar','Belagavi',115);
INSERT INTO tourist_places values(8,'Jog Falls','Shivamogga',100,'Sudha F','12hr',5,'prajwal','Athani',125);
INSERT INTO tourist_places values(9,'Devbagh Beach','Karwar',50,'Prerana','24hr',5,'Arun','Chikkodi',126);
SELECT * FROM tourist_places;
INSERT INTO tourist_places values(10,'Chamundi Hills','Mysore',0,'Arun','12hr',5,'Prateek','Gokak',160);
INSERT INTO tourist_places values(11,'Kittur Port','Belagavi',100,'Raju','12hr',5,'Omkar','Pune',152);
INSERT INTO tourist_places values(12,'Gokak falls','Belagavi',200,'Preetam','12hr',4.5,'Hima','Ingali',130);
INSERT INTO tourist_places values(13,'Om Beach','Gokarna',100,'Raju','12hr',4.5,'Karuna','Ingali',135);
INSERT INTO tourist_places values(14,'Murudeshwar Temple','Karawar',100,'Shankar','12hr',4.5,'Vaishnavi','Ugar',138);
INSERT INTO tourist_places values(15,'Gol Gumbaj','Vijapur',100,'Gajanan','12hr',5,'Preeti','Vijapur',127);
INSERT INTO tourist_places values(16,'Annapurneshwari Temple','Horanadu',50,'Raju','12hr',4.5,'Rutuja','Hubli',124);
INSERT INTO tourist_places values(17,'Marikamba Temple','Sirasi',0,'Omkar','12hr',4.5,'Atharva','Bhagalkot',151);
INSERT INTO tourist_places values(18,'Veerbhadreshwar Temple','Yadur',0,'Preeti','12hr',5,'Arav','Jamakhandi',180);
INSERT INTO tourist_places values(19,'VidanSouda','Bangalore',100,'Vivek','12hr',5,'Vikas','Harugeri',156);
INSERT INTO tourist_places values(20,'Chandanvana','Hukkeri',100,'Veda','12hr',4.5,'Veera','Inchalkaranji',191);
DESC tourist_places;
SELECT * FROM tourist_places;






