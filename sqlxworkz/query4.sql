create database paper;
use paper;
create table show_room(ItemID INT,Item_Name VARCHAR(30) NOT NULL,Category VARCHAR(30),Brand VARCHAR(30),Model VARCHAR(30),Description TEXT,Price bigint,QuantityInStock INT,DisplayLocation VARCHAR(30),DateAdded DATE);        
desc show_room;
alter table show_room modify column ItemID int not null;
alter table show_room modify column Item_Name int not null;
alter table show_room modify column Item_Name varchar(30);
alter table show_room add constraint Model_uni unique(model);
alter table show_room add constraint Category_uni unique(category);
alter table show_room drop  constraint Category_uni;
alter table show_room add constraint Brand_uni unique(Brand);
alter table show_room add constraint price_chk check(price>100);
alter table show_room add constraint QuantityInStock_chk check(QuantityInStock>10);
select * from show_room;

insert into show_room values(1,'UltraSmart TV', 'Electronics', 'TechView', 'US1234', '55-inch 4K Ultra HD Smart TV', 599.99, 20, 'Section A', '2024-01-15');
insert into show_room values(2,'SoundPro Speaker', 'Electronics', 'AudioMax', 'SP5678', 'Portable Bluetooth Speaker', 149.99, 15, 'Section B', '2024-02-10');
insert into show_room values(3,'ErgoChair X', 'Furniture', 'ComfortCo', 'EC9101', 'Ergonomic Office Chair with Lumbar Support', 229.99, 25, 'Section C', '2024-03-05');
insert into show_room values(4,'Oakwood Desk', 'Furniture', 'WoodCraft', 'Oo2345', 'Solid Oak Wood Desk', 349.99, 12, 'Section D', '2024-04-22');
insert into show_room values(5,'ProCamera Z', 'Electronics', 'SnapPro', 'PC6789', 'Digital Camera with 24MP Sensor', 899.99, 18, 'Section E', '2024-05-30');
insert into show_room values(6,'MaxiFridge', 'Appliances', 'CoolBreeze', 'MF1234', 'French Door Refrigerator with Ice Maker', 1199.99, 14, 'Section F', '2024-06-15');
insert into show_room values(7,'SmartWristwatch', 'Electronics', 'TimeTech', 'SW4567', 'Wearable Smartwatch with Health Monitoring', 299.99, 22, 'Section G', '2024-07-20');
insert into show_room values(8,'ClassicSofa', 'Furniture', 'LuxeLiving', 'CS8901', 'Three-Seater Leather Sofa', 499.99, 16, 'Section H', '2024-08-12');
insert into show_room values(9,'GourmetBlender', 'Appliances', 'BlendMaster', 'GB3456', 'High-Power Blender with Multiple Settings', 179.99, 30, 'Section I', '2024-09-25');
insert into show_room values(10,'HomeTheater System', 'Electronics', 'SoundWave', 'HT7890', '5.1 Channel Home Theater System', 799.99, 11, 'Section J', '2024-10-15');
insert into show_room values(11,'GraniteCountertop', 'Furniture', 'StoneWorks', 'GC5678', 'Custom Granite Kitchen Countertop', 899.99, 13, 'Section K', '2024-11-05');
insert into show_room values(12,'ElectricCooktop', 'Appliances', 'CookEase', 'EC2346', '4-Burner Electric Cooktop', 299.99, 17, 'Section L', '2024-12-18');
insert into show_room values(13,'ConvertibleSofaBed', 'Furniture', 'RestWell', 'CS5679', 'Sofa Bed with Convertible Feature', 349.99, 21, 'Section M', '2024-01-25');
insert into show_room values(14,'ProfessionalBlender', 'Appliances', 'Blend', 'PB6789', 'Heavy-Duty Blender with Advanced Features', 219.99, 19, 'Section N', '2024-02-20');
insert into show_room values(15,'HighDefProjector', 'Electronics', 'ClearView', 'HD3456', 'Full HD Home Theater Projector', 699.99, 14, 'Section O', '2024-03-15');
insert into show_room values(16,'DesignerLamp', 'Furniture', 'IllumiDesign', 'DL2345', 'Elegant Desk Lamp with Adjustable Arm', 129.99, 27, 'Section P', '2024-04-10');
insert into show_room values(17,'LuxuryMattress', 'Furniture', 'SleepWell', 'LM6789', 'Memory Foam Mattress with Cooling Gel', 749.99, 15, 'Section Q', '2024-05-05');
insert into show_room values(18,'DeluxeToaster', 'Appliances', 'ToastMaster', 'DT5678', '4-Slice Deluxe Toaster with Bagel Function', 119.99, 23, 'Section R', '2024-06-25');
insert into show_room values(19,'FitnessTracker Pro', 'Electronics', 'FitTrack', 'FT7890', 'Advanced Fitness Tracker with GPS', 179.99, 20, 'Section S', '2024-07-30');
insert into show_room values(20,'StylishWardrobe', 'Furniture', 'ClosetMax', 'SW4568', 'Modern Wardrobe with Sliding Doors', 399.99, 18, 'Section T', '2024-08-20');


create  table chat_center1(id int not null,c_name varchar(30) unique,c_loc varchar(30) not null,popular_chat varchar(30) unique,no_of_chat int ,
min_price bigint,max_price bigint,no_of_emp int constraint no_of_emp_chk check (no_of_emp>6),light_bill int,
per_day_income bigint constraint income_chk check(per_day_income>500));

desc chat_center1;
select*from chat_center1;
insert into chat_center1 values(1,'divyachats','rajajinagar','pizza',50,100,300,7,300,5000);
insert into chat_center1 values(2,'laxmichats','rrnagr','burger',40,70,300,8,150,6000);
insert into chat_center1 values(3,'darshanachats','gkk','dosa',30,60,350,7,300,7000);
insert into chat_center1 values(4,'kalpanachats','bgm','juices',60,100,350,7,300,5000);
insert into chat_center1 values(5,'deepakchats','btm','samosa',30,150,500,8,125,4000);
insert into chat_center1 values(6,'shrikantchats','gokak','bajji',20,100,500,7,320,3000);
insert into chat_center1 values(7,'kushichats','naragunda','gobi',20,30,500,7,195,6520);
insert into chat_center1 values(8,'arunchats','gkkfalls','cha',10,30,60,7,0,2150);
insert into chat_center1 values(9,'kiranchats','konnur','panipure',30,200,800,7,30,3500);
insert into chat_center1 values(10,'irannachats','hydrbad','eggrol',20,130,500,7,600,3500);
insert into chat_center1 values(11,'anuchats','mysore','icecream',40,100,300,8,220,5000);
insert into chat_center1 values(12,'vikaschats','vijaynagar','friedrice',40,70,650,7,150,3000);
insert into chat_center1 values(13,'poojachats','chk','eggrice',30,60,700,7,320,3560);
insert into chat_center1 values(14,'akashchats','athani','aluotikki',20,100,550,7,196,5060);
insert into chat_center1 values(15,'tappuchats','shivajinagar','paddu',30,150,650,8,245,1200);
insert into chat_center1 values(16,'sanjuchats','basvangudi','fries',20,100,350,7,260,1800);
insert into chat_center1 values(17,'rishichats','jayanagar','sandwitch',20,30,650,8,321,2200);
insert into chat_center1 values(18,'bhavyachats','malleswarm','maggie',10,30,200,7,60,3500);
insert into chat_center1 values(19,'priyachats','koramangal','masalpuri',30,200,850,8,105,4500);
insert into chat_center1 values(20,'madhuchats','mahalaxmilayout','noodles',20,130,450,8,1,9500);



alter table chat_center1 modify column c_name varchar(30) not null;


alter table chat_center1 add constraint id_uni unique (id);

alter table chat_center1 add constraint no_of_chat_chk check(no_of_chat<100);
alter table chat_center1 add constraint  light_bill_chk check(light_bill<=700);

create table temple(TempleID INT null unique,TempleName VARCHAR(30) NOT NULL unique,Location VARCHAR(30),City VARCHAR(30) ,State VARCHAR(30),ZipCode VARCHAR(10),                  
Country VARCHAR(30),EstablishedYear INT,Description TEXT,ContactNumber bigint);      
alter table temple modify column Location varchar(30) not null;
alter table temple add  constraint Zipcode_uni unique(Zipcode);
alter table temple add constraint TempleID_chk check(TempleID>=1);

insert into Temple values(1, 'Sri Venkateswara Temple', '123 Temple St', 'Hyderabad', 'Telangana', '500001', 'India', 1985, 'architectural beauty', 9123456789);
insert into Temple values(2, 'Kashi Vishwanath Temple', 'Kashi', 'Varanasi', 'Uttar Pradesh', '221001', 'India', 1780, ' dedicated to Lord Shiva', 9876543210);
insert into Temple values(3, 'Jagannath Temple', 'Niladri Hill', 'Puri', 'Odisha', '752001', 'India', 1150, 'dedicated to LordJagannath', 9198765432);
insert into Temple values(4, 'Brihadeeswarar Temple', 'Big Temple Road', 'Thanjavur', 'Tamil Nadu', '613009', 'India', 1010, 'dedicated to Lord Shiva.', 9176543210);
insert into Temple values(5, 'Golden Temple', 'Harmandir Sahib', 'Amritsar', 'Punjab', '143001', 'India', 1577, 'its golden architecture.', 9182736450);
insert into Temple values(6, 'Meenakshi Temple', 'South Chitrai St', 'Madurai', 'Tamil Nadu', '625001', 'India', 1623, 'Dedicated to Goddess Meenakshi ', 9167894560);
insert into Temple values(7, 'Mahabodhi Temple', 'Bodh Gaya', 'Bodh Gaya', 'Bihar', '824231', 'India', 250, 'Buddha attained enlightenment', 9191827364);
insert into Temple values(8, 'Ramanathaswamy Temple', 'Ramanathapuram', 'Ramanathapuram', 'Tamil Nadu', '623526', 'India', 1174, 'dedicated to Lord Shiva.', 9156789234);
insert into Temple values(9, 'Somnath Temple', 'Prabhas Patan', 'Veraval', 'Gujarat', '362268', 'India', 1950, 'twelve Jyotirlingas', 9172645809);
insert into Temple values(10, 'Sri Lakshmi Narayan Temple', 'Narayanpur', 'Delhi', 'Delhi', '110001', 'India', 1990, 'Dedicated to Lakshmi Narayan', 9198564732);
insert into Temple values(11, 'Shirdi Sai Baba Temple', 'Shirdi', 'Shirdi', 'Maharashtra', '423109', 'India', 1922, ' Sai Baba of Shirdi', 9123456781);
insert into Temple values(12, 'Swaminarayan Akshardham Temple', 'New Delhi', 'Delhi', 'Delhi', '110092', 'India', 2005, 'spiritual ambiance.', 9198765433);
insert into Temple values(13, 'Kedarnath Temple', 'Kedarnath', 'Kedarnath', 'Uttarakhand', '246445', 'India', 800, 'situated in the Himalayas.', 9192837465);
insert into Temple values(14, 'Vaishno Devi Temple', 'Katra', 'Katra', 'Jammu & Kashmir', '182301', 'India', 1986, 'Goddess Vaishno Devi', 9193827465);
insert into Temple values(15, 'Hampi Temple', 'Hampi', 'Hampi', 'Karnataka', '583239', 'India', 1500, 'Famous for its ruins ', 9172635478);
insert into Temple values(16, 'Chidambaram Temple', 'Chidambaram', 'Chidambaram', 'Tamil Nadu', '608001', 'India', 1053, 'Dedicated to Lord Nataraja', 9193746582);
insert into Temple values(17, 'Siddhivinayak Temple', 'Prabhadevi', 'Mumbai', 'Maharashtra', '400028', 'India', 1801, 'Lord Ganesha', 9198745632);
insert into Temple values(18, 'Chennai Kapaleeswarar Temple', 'Mylapore', 'Chennai', 'Tamil Nadu', '600004', 'India', 1250, 'Dravidian architecture.', 9193654782);
insert into Temple values(19, 'Birla Mandir', 'Kalkaji', 'Delhi', 'Delhi', '110019', 'India', 1939, 'Goddess Lakshmi', 9192837468);
insert into Temple values(20, 'Guruvayur Temple', 'Guruvayur', 'Guruvayur', 'Kerala', '680104', 'India', 1500, 'dedicated to Lord Krishna', 9192938475);
 select * from temple;

create table market( MarketID INT not null unique,MarketName VARCHAR(255) NOT NULL UNIQUE, Location VARCHAR(255),City VARCHAR(100),              
    State VARCHAR(100) not null ,ZipCode VARCHAR(10),Country VARCHAR(100),OpeningHours VARCHAR(50),ContactNumber VARCHAR(15),market_code int);   
alter table market modify column Country varchar(100) not null;
alter table market add  constraint Zipcode_uni unique(Zipcode);
alter table market add constraint market_code_chk check(market_code>=100); 
desc market; 
select * from market;

insert into market values(1,'Central Market', '123 Main St', 'Springfield', 'Illinois', '62701', 'USA', '8 AM - 5 PM', '555-1234',200 );
insert into market values(2,'Downtown Farmers Market', '456 Elm St', 'San Francisco', 'California', '94102', 'USA', '7 AM - 2 PM', '555-5678',300 );
insert into market values(3,'Old Town Market', '789 Maple Ave', 'Chicago', 'Illinois', '60614', 'USA', '9 AM - 6 PM', '555-8765',400 );
insert into market values(4,'Greenwood Market', '321 Oak St', 'Austin', 'Texas', '73301', 'USA', '10 AM - 7 PM', '555-4321',500 );
insert into market values(5,'Riverside Market', '654 Pine St', 'Seattle', 'Washington', '98101', 'USA', '8 AM - 4 PM', '555-3456',600);
insert into market values(10,'Sunset Market', '987 Birch Rd', 'Los Angeles', 'California', '90001', 'USA', '11 AM - 9 PM', '555-6789',700 );
insert into market values(11,'Historic Market', '135 Cedar St', 'Philadelphia', 'Pennsylvania', '19103', 'USA', '9 AM - 5 PM', '555-7890',800);
insert into market values(12,'West End Market', '246 Birch St', 'Boston', 'Massachusetts', '02108', 'USA', '10 AM - 6 PM', '555-8901',900);
insert into market values(13,'City Center Market', '357 Willow St', 'New York', 'New York', '10001', 'USA', '8 AM - 8 PM', '555-9012',2000);
insert into market values(14,'Northside Market', '468 Elm St', 'Denver', 'Colorado', '80202', 'USA', '9 AM - 5 PM', '555-0123',3000);
insert into market values(15,'Eastside Market', '789 Oak St', 'Atlanta', 'Georgia', '30303', 'USA', '9 AM - 6 PM', '555-1235',4000);
insert into market values(16,'Market Square', '123 Park Ave', 'Cleveland', 'Ohio', '44114', 'USA', '10 AM - 7 PM', '555-2345',5000);
insert into market values(17,'South End Market', '456 River Rd', 'Miami', 'Florida', '33101', 'USA', '8 AM - 4 PM', '555-3457',6000);
insert into market values(18,'North Gate Market', '789 High St', 'Dallas', 'Texas', '75201', 'USA', '11 AM - 8 PM', '555-4568',7000);
insert into market values(19,'Greenfield Market', '321 Maple Ave', 'Minneapolis', 'Minnesota', '55401', 'USA', '9 AM - 5 PM', '555-5679',8000);
insert into market values(20,'Southside Market', '654 Sunset Blvd', 'San Diego', 'California', '92101', 'USA', '10 AM - 6 PM', '555-6780',9000);
insert into market values(21,'Oakwood Market', '987 First St', 'Seattle', 'Washington', '98102', 'USA', '8 AM - 5 PM', '555-7891',4000);
insert into market values(22,'Central Plaza Market', '135 Main St', 'San Jose', 'California', '95101', 'USA', '9 AM - 6 PM', '555-8902',50000);
insert into market values(23,'Westside Market', '246 Elm St', 'Portland', 'Oregon', '97201', 'USA', '10 AM - 5 PM', '555-9013',567);
insert into market values(24,'Downtown Market', '357 Market St', 'Las Vegas', 'Nevada', '89101', 'USA', '11 AM - 7 PM', '555-0124',789);

create table  metro_info(MetroID INT not null,StationName VARCHAR(255) NOT NULL unique,LineName VARCHAR(100),Location VARCHAR(255),               
    City VARCHAR(100),State VARCHAR(100) NOT NULL,ZipCode VARCHAR(10),Country VARCHAR(100) NOT NULL,         
    OpeningHours VARCHAR(50),Facilities TEXT); 
    
alter table metro_info add column ZipCode varchar(225) not null;
alter table metro_info add constraint State_uni unique(State);
alter table metro_info add constraint MetroID_chk check(MetroID>100);
desc metro_info;
select * from metro_info;
delete from metro_info where metroID=1000;
delete from metro_info where metroID=2000;
delete from metro_info where metroID=3000;

insert  into metro_info values(3000, 'Kolkata Maidan', 'North-South Line', 'Maidan', 'Kolkata', 'West Bengal', '700021', 'India', '05:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3001, 'Delhi Rajiv Chowk', 'Blue Line', 'Connaught Place', 'Delhi', 'Delhi', '110001', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Food Court');
insert  into metro_info values(3002, 'Mumbai Andheri', 'Western Line', 'Andheri West', 'Mumbai', 'Maharashtra', '400058', 'India', '05:00 AM - 11:00 PM', 'WiFi, Parking, Shops');
insert  into metro_info values(3003, 'Bangalore MG Road', 'Green Line', 'Mahatma Gandhi Road', 'Bangalore', 'Karnataka', '560001', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Food Court');
insert  into metro_info values(3004, 'Chennai Egmore', 'Red Line', 'Egmore', 'Chennai', 'Tamil Nadu', '600008', 'India', '05:30 AM - 11:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3005, 'Hyderabad MG Bus Station', 'Blue Line', 'MG Bus Station', 'Hyderabad', 'Telangana', '500001', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Parking');
insert  into metro_info values(3006, 'Delhi HUDA City Centre', 'Yellow Line', 'Sector 29', 'Gurgaon', 'Haryana', '122018', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3007, 'Mumbai Churchgate', 'Western Line', 'Churchgate', 'Mumbai', 'Ms', '400020', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3008, 'Kolkata Howrah', 'North-South Line', 'Howrah', 'Kolkata', 'WB', '711101', 'India', '05:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3009, 'Bangalore Whitefield', 'Purple Line', 'Whitefield', 'Bangalore', 'Karunadu', '560066', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3010, 'Chennai Koyambedu', 'Red Line', 'Koyambedu', 'Chennai', 'TN', '600107', 'India', '05:30 AM - 11:00 PM', 'WiFi, Restrooms, Food Court');
insert  into metro_info values(3011, 'Hyderabad Parade Ground', 'Blue Line', 'Parade Ground', 'Hyderabad', 'mysore', '500001', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Parking');
insert  into metro_info values(3012, 'Delhi Dwarka Sector 21', 'Blue Line', 'Dwarka Sector 21', 'Delhi', 'bidar', '110075', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3013, 'Mumbai Borivali', 'Western Line', 'Borivali West', 'Mumbai', 'rajur', '400066', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3014, 'Kolkata Jatin Das Park', 'North-South Line', 'Jatin Das Park', 'Kolkata', 'Bengal', '700029', 'India', '05:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3015, 'Bangalore Majestic', 'Green Line', 'Majestic', 'Bangalore', 'Kollar', '560002', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3016, 'Chennai Alandur', 'Red Line', 'Alandur', 'Chennai', 'T Nadu', '600016', 'India', '05:30 AM - 11:00 PM', 'WiFi, Restrooms, Food Court');
insert  into metro_info values(3017, 'Hyderabad Begumpet', 'Blue Line', 'Begumpet', 'Hyderabad', 'hampi', '500016', 'India', '06:00 AM - 10:00 PM', 'WiFi, Restrooms, Shops');
insert  into metro_info values(3018, 'Delhi Kashmere Gate', 'Red Line', 'Kashmere Gate', 'Delhi', 'bagalkot', '110006', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Food Court');
insert  into metro_info values(3019, 'Mumbai Dadar', 'Western Line', 'Dadar West', 'Mumbai', 'raichur', '400014', 'India', '05:00 AM - 11:00 PM', 'WiFi, Restrooms, Shops');