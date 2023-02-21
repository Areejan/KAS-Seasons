CREATE database KSA_Season;
use KSA_Season;

 
create table Location_Table(
code_location int not null primary key, 
city varchar(100) not null 
);

create table Event_Table(
code_event integer primary key not null,
code_location_fk int not null, 
event_name varchar (100) not null,
Age int CHECK (Age>6),
event_date date,
event_time varchar (30),
event_price int,
foreign key (code_location_fk) references Location_Table(code_location)
);

create table Tickets_Table(
Ticket_id int primary key not null auto_increment,
username varchar(100)
);

create table Item_Table(
id int primary key not null auto_increment,
item_type varchar(50),
item_details varchar(50),
price double not null,
Ticket_id_fk int,
foreign key (Ticket_id_fk) references Tickets_Table(Ticket_id)
);

create table Package_Table(
pack_id int primary key not null,
location int,
pack_name varchar(10),
details varchar(100) null,
hotel varchar(100),
price int,
foreign key (location) references Location_table(code_location)
);

create table User_Table(
code_user int primary key not null, 
username varchar(10) not null,
email varchar(30) null,
FName varchar(15) not null,
LName varchar(15) not null,
password_user int not null 
);

create table Booking_table(
code_User_fk int ,
pack_id_fk int,
foreign key (code_User_fk) references User_Table(code_user),
foreign key (pack_id_fk) references Package_Table(pack_id)
);

create table Phone_num_user (
CODE_USER int not null, 
FirstPhone int(10) primary key  not null,
SecondPhone int(10) null,
foreign key (CODE_USER) references User_Table(code_user)
);


insert into Location_Table values(01,'OLA');
insert into Location_Table values(02,'Riyadh');
insert into Location_table values(03,'Khobar');
insert into Location_table values(04,'Dammam');
insert into Location_table values(05,'Dhahran');
insert into Location_table values(06,'Jeddah');

-- فعاليات العلا
insert into Event_Table values(201,01, "Music in Ancient",10, '2022-11-24',"08:30 PM",198);
insert into Event_Table values(202,01, "Maraya", 10,  '2022-10-15',"TUESDAY 06:00 PM to 12:00 AM", 200);
insert into Event_Table values(203,01, "Hegra After Dark", 10, '2022-7-11', "06:30 PM to 07:50 PM", 150);
insert into Event_Table values(204,01, "Faia Yonan", 18, '2022-11-13', " 08:30 PM", 300);
-- فعاليات الرياض 
insert into Event_Table values(205, 02, "Riyadh Front", 18, '2022-01-10',"Daily 08:00 AM to 01:00 AM", 0 );
insert into Event_Table values(206, 02, "Winter WinderLand", 10, '2022-11-07',"Daily 04:00 PM to 02:00 AM", 200 );
insert into Event_Table values(207, 02, "Wall Clombing", 15,'2022-02-18', "10:00 AM to 5:00 PM", 198 );
insert into Event_Table values(208, 02, "The Music Mansion", 18,'2022-02-09', "11:00 PM to 01:00 AM", 60 );
-- فعاليات خبر
insert into Event_Table values(209, 03, "LOOPAGOON Water Park", 8, '2022-11-10'," 2PM to 9PM", 240);
insert into Event_Table values(210, 03, "Escape the Room", 15, '2022-10-02'," 2PM to 12AM", 180);
insert into Event_Table values(211, 03, "Scitech", 8, '2022-04-02'," 10PM to 11PM", 70);
insert into Event_Table values(212, 03, "UnknownRoom‬", 8, '2022-07-05'," 12PM to 12AM", 180);
-- فعاليات دمام
insert into Event_Table values(213, 04, "takiat bahr",10, '2022-04-10'," 4:00PM to 7:00PM",15);
insert into Event_Table values(214, 04, "GAMMA",15, '2022-04-12'," 8:00 PM", 10 );
insert into Event_Table values(215, 04, "Saudi Coffee Festival",10, '2022-04-20'," 4:00PM to 10:00PM",0);
insert into Event_Table values(216, 04, "Elite Art Gallery",7, '2022-02-10'," 2:00 PM",10);
-- فعليات الظهران
insert into Event_Table values(217, 05, "Hijrah Exhibit ",7, '2022-11-09'," 8:00 PM", 30);
insert into Event_Table values(218, 05, "CAMP wakufa ",10, '2022-12-10'," 2:00 PM", 150);
insert into Event_Table values(219, 05, "Arabic Calligraphy and Typographic in Art and Design",15, '2022-10-02'," 2:00 PM", 1800);
insert into Event_Table values(220, 05, "Maze Challenge",10, '2022-12-10'," 3:00 PM", 190);
-- فعاليات جدة 
insert into Event_Table values(221, 06,"Crises ",10, '2022-01-19'," 08:00 PM", 350);
insert into Event_Table values(222, 06,"Safari Trip", 10, '2022-02-03'," 08:00 PM", 265);
insert into Event_Table values(223, 06,"Jengal Land",10, '2022-03-09'," 08:00 PM", 198);
insert into Event_Table values(224, 06,"Sali Island Park", 10, '2022-02-14'," 08:00 PM", 198);

-- بكجات العلا 
insert into Package_Table values(1001,01, 'Singles','for singles only','Habitas Alula',6899);
insert into Package_Table values(1002,01, 'Family','for family only','Habitas Alula',3000);
insert into Package_Table values(1003,01, 'Twins', 'for only','Ashar Tentted Resort', 4255 );
-- بكجات الرياض 
insert into Package_Table values(1004,02, 'Singles','for singles only','Lacasa Villa',1700);
insert into Package_Table values(1005,02, 'Family','for family only','Mansard Hotel',1500);
insert into Package_Table values(1006,02, 'Twins','for singles only','Valley Resort',4430);
-- بكجات الخبر 
insert into Package_Table values(1007,03, 'Singles','for family only','Signature Hotel',5900);
insert into Package_Table values(1008,03, 'Family', 'for only','Kempinski Alothman Hotel', 3600 );
insert into Package_Table values(1009,03, 'Twins','for singles only','Voco Hotel',4800);
-- بكجات الدمام 
insert into Package_Table values(1010,04, 'Singles','for singles only','Naviti Warwick',2800);
insert into Package_Table values(1011,04, 'Family','for family only','Sheraton',3300);
insert into Package_Table values(1012,04, 'Twins','for singles only','Braira',4100);
-- بكجات الظهران 
insert into Package_Table values(1013,05, 'Singles','for family only','Holiday Inn & Suites',4200);
insert into Package_Table values(1014,05, 'Family', 'for only','Radisson Blu', 5500 );
insert into Package_Table values(1015,05, 'Twins','for singles only','BEATA GARDEN',4800);
-- بكجات جدة 
insert into Package_Table values(1016,06, 'Singles','for family only','Movenpick Hotel',3000);
insert into Package_Table values(1017,06, 'Family', 'for only','Rits Carlton Hotel', 7500 );
insert into Package_Table values(1018,06, 'Twins','for singles only','Narcissus Alhamra Hotel',3700);

-- بيانات المستخدمين 
insert into User_Table values(001,'JOK1234','areej.hejji@gmail.com','Areej','Hejji',5637);
insert into User_Table values(002,'Ala959',' lama.sami@gmail.com','Lama','Sami',5748);
insert into User_Table values(003,'Mar58','Maria2@gmail.com','Maria','Mohammed',6758);
insert into User_Table values(004,'Al44','Alia88@gmail.com','Alia','Mohammed',0770);
insert into User_Table values(005,'Sh88','Shatha8@gmail.com','Shatha','Ibrahim',5467);
insert into User_Table values(006,'Dl65','Dalia3@gmail.com','Dalia','Maher',9873);
insert into User_Table values(007,'LM22','Lamia66@gmail.com','Lamia','Ahmed',8834);
insert into User_Table values(008,'Ar24','Aram2@gmail.com','Aram','Saud',1189);
insert into User_Table values(009,'Sh50','shahad12@gmail.com','Shahad','Fahad',4472);
insert into User_Table values(010,'OPL23','olla33@gmail.com','Olla','Ahmed',1992);
insert into User_Table values(011,'DOW43','Diamah22@gmail.com','Diamah','Mazen',2233);
insert into User_Table values(012,'KR34','Khaled8@gmail.com','Khaled','Majed',4453);
insert into User_Table values(013,'NSO3','Nasser4@gmail.com','Nasser','Sultan',2099);
insert into User_Table values(014,'S38','Sara54@gmail.com','Sara','Fahad',3778);
insert into User_Table values(015,'WKP2','Waad11@gmail.com','Waad','Majed',3342);
insert into User_Table values(016,'WK33','Wassan90@gmail.com','Wassan','Sultan',2234);
insert into User_Table values(017,'FM33','Ftoon56@gmail.com','Ftoon','Mohammed',2215);
insert into User_Table values(018,'KK32','Kamal45@gmail.com','Kamal','Ibrahim',2009);
insert into User_Table values(019,'BQ24','Badriah7@gmail.com','Badriah','Sami',3004);
insert into User_Table values(020,'NSA98','Nermeen2@gmail.com','Nermeen','Nasser',1998);
insert into User_Table values(021,'lama','Lma@gmail.com','Lama','Sami',1234);


-- ارقام هواتف المستخدمين 
insert into Phone_num_user values(001,0550097122,0539820730);
insert into Phone_num_user values(002,0533267453,0555784326);
insert into Phone_num_user values(003,0555431325,0539992002);
insert into Phone_num_user values(004,0589669666,NULL);
insert into Phone_num_user values(005,0530922441,0537093325);
insert into Phone_num_user values(006,0533882999,NULL);
insert into Phone_num_user values(007,0557532224,NULL);
insert into Phone_num_user values(008,0505988233,0554322789);
insert into Phone_num_user values(009,0555889902,0566664267);
insert into Phone_num_user values(010,0505800233,NULL);
insert into Phone_num_user values(011,0533920033,NULL);
insert into Phone_num_user values(012,0551889200,0553326009);
insert into Phone_num_user values(013,0553427777,0555678000);
insert into Phone_num_user values(014,0559283333,NULL);
insert into Phone_num_user values(015,0500223921,0553789900);
insert into Phone_num_user values(016,0505003002,0503990100);
insert into Phone_num_user values(017,0500378882,NULL);
insert into Phone_num_user values(018,0508830003,0522000300);
insert into Phone_num_user values(019,0505567776,0559003302);
insert into Phone_num_user values(020,0505788942,NULL);

SELECT * FROM ksa_season.package_table;
select * from package_table where location= 1;
select p.pack_name, p.hotel from package_table as p  join Location_Table as l on l.code_location=p.location;

SELECT * FROM ksa_season.event_table;
SELECT t1.event_name, t2.city from event_table as t1 join location_table as t2 on t1.code_location_fk = t2.code_location;


alter table User_Table ADD unique (username);

alter table Package_Table
add constraint price CHECK (price>1000);


UPDATE User_Table
SET username = 'Vc22'
WHERE code_user=008;

SELECT *
FROM Package_Table
WHERE price > 5000;

SELECT *
FROM User_Table
WHERE FName like 'N%';

select * from package_table where location= 1;
select p.pack_name, p.hotel, l.city from package_table as p join location_table as l on l.code_location=p.location;
SELECT t1.event_name,t2.city from event_table as t1 join location_table as t2 on t1.code_location_fk = t2.code_location;
select * from package_table p inner join event_table e;

select max(price) from package_table;
select min(price) from package_table;

create view dammam_event
as select event_name, event_price
from event_table
where code_location_fk=04;

select Fname, Lname 
from user_table
where code_user = 001 AND code_user = 077;

select * 
from user_table 
order by Fname;

select * ,
(price+price *0.15) as new_price
from package_table;

select * 
from package_table 
order by price;

select * 
from event_table
where (event_date between '2022-07-11' AND '2022-11-24');

select city 
from location_table
where exists (select * from event_table where code_location_fk=02);

select Fname, Lname 
from user_table
where exists (select * from event_table where event_price>0);

select *
from event_table event_name inner join package_table pack_name on event_name= pack_name;

select sum(price) as total_price,
 max(price) as heghest_price, 
 min(price) as lowest_price,
 avg(price) as agreage_price
 from package_table;
 
alter table Location_Table
drop column city;

drop table City_Table;

delete from package_table
where price<2000;