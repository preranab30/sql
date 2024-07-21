CREATE DATABASE student;
CREATE DATABASE STORE;
USE student;
CREATE TABLE stu(id int, stu_name varchar(20), Stu_marks int);
USE  STORE;
CREATE TABLE items(id int, itemname varchar(20), item_price  int);


CREATE DATABASE Flowers;
USE  Flowers;
CREATE TABLE flow( id int, flowers_name varchar(10), flower_color varchar(10),flower_smell varchar(10),flower_quality varchar(10), flower_weigth int, flower_price bigint,flower_treeHeight bigint);


CREATE DATABASE Bottels;
USE Bottels;
CREATE TABLE Bott(id int, bottel_brand varchar(10), bottel_name varchar(10), bottel_quality varchar(10), bottel_color varchar(10), bottel_hieght int, bottel_price bigint,bottel_number bigint);

CREATE DATABASE Watch;
USE Watch;
CREATE TABLE Wat( id int , watch_brand varchar(10), watch_name varchar(10), watch_quality varchar(10),watch_color varchar(10), watch_weigth int, watch_height bigint, watch_price bigint); 

CREATE DATABASE Bag;
USE Bag;
CREATE TABLE Bags(id int, bag_name varchar(10),bag_brand varchar(10),bag_quality varchar(10),bag_color varchar(10),bag_quantity bigint,bag_price bigint,bag_no int);

CREATE DATABASE Fridge;
USE Fridge;
CREATE TABLE Frid(id int, fridge_name varchar(10),fridge_brand varchar(10),fridge_quality varchar(10),fridge_color varchar(10),bag_height bigint,fridge_price bigint,fridge_no int);
