
insert into passenger (first_name,last_name,age,gender,passenger_id,Email)
Values('Can','Kýlýç',30,'M',17,'kýlýccan@gmail.com');

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Cantuð','Kýlýçdaroðlu',32,'M',1);


insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Canberk','Davutoðlu',33,'M',2);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Devrimiye','Gül',34,'F',3);


insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Kerim','Erbakan',96,'M',4);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Aslý','Ýnönü',9,'F',5);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Sencer','Akbulut',13,'M',6);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Fadime','Özal',28,'F',7);


insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Berkay','Demirel',5,'M',8);


insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Kadir','Evren',46,'M',9);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Melike','Bayar',22,'F',10);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Þahan','Demir',35,'M',11);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Demir','Demirören',59,'M',12);

insert into passenger (first_name,last_name,age,gender,passenger_id)
Values('Hazal','Babalar',26,'F',13);



-- Admin Data


insert into railway_admin
Values(4,'123456','5078596569');

insert into railway_admin
Values(5,'sanane','5538586525');

insert into railway_admin
Values(6,'banane','5078512569');

insert into railway_admin
Values(1,'kimene','5078525986');

insert into railway_admin
Values(3,'hocam','5546598971');

insert into railway_admin
Values(9,'duygularýmýz','5336283162');

insert into railway_admin
Values(10,'darmadaðýn','5096285761');

insert into railway_admin
Values(2,'anlayamazsýnýz','5318231010');

insert into railway_admin
Values(12,'bizdeki','5078592626');

insert into railway_admin
Values(13,'yorgunluðu','5078592727');

-- Company Data

insert into company 
Values(720000,'MEVZU',2020,'6-A');

insert into company 
Values(535697,'MEVZU',2019,'6-B');

insert into company 
Values(220536,'MEVZU',2018,'6-C');

insert into company 
Values(1600000,'CNED',2019,'2-B');

insert into company 
Values(2100000,'CNED',2018,'2-C');

insert into company 
Values(565888,'ASLAN',2019,'1-B');

insert into company 
Values(987565,'ASLAN',2018,'1-C');

insert into company 
Values(640000,'LEGO',2019,'3-B');

insert into company 
Values(670000,'LEGO',2018,'3-C');

insert into company 
Values(330000,'RUSS',2019,'4-B');

insert into company 
Values(155000,'RUSS',2018,'4-C');

insert into company 
Values(875000,'SEA',2019,'5-B');

insert into company 
Values(336000,'SEA',2018,'5-C');

insert into company 
Values(150000,'DENÝZ',2019,'7-A', 'Ahmet Dursun');

insert into company 
Values(155000,'LEGO',2020,'3-A');

--- Train Station data

insert into train_station 
Values('Selanik',4);

insert into train_station 
Values('Prague',12);

insert into train_station 
Values('Reykjavik',6);

insert into train_station 
Values('Van',7);

insert into train_station 
Values('Ýzmir',8);

insert into train_station 
Values('Oslo',9);

insert into train_station 
Values('Helsinki',10);

insert into train_station 
Values('Amsterdam',11);

insert into train_station 
Values('Londra',17);

insert into train_station 
Values('Tokat',13);


-- Train Data


insert into train 
Values('A27',200,'3-A');


insert into train 
Values('B33',150,'7-A');


insert into train 
Values('B46',150,'5-B');


insert into train 
Values('C33',100,'5-C');


insert into train 
Values('C77',100,'6-A');


insert into train 
Values('C96',100,'4-B');


insert into train 
Values('D63',50,'4-C');


insert into train 
Values('D12',50,'3-C');


insert into train 
Values('E23',25,'6-B');


insert into train 
Values('E67',25,'1-C');

---Train Service Data

insert into train_service 
Values('Selanik','Tokat',3,'16:00:00','23:00:00','Empty','E67',4);

insert into train_service 
Values('Prague','Selanik',4,'12:10:00','02:00:00','Full','A27',12);

insert into train_service 
Values('Reykjavik','Ankara',5,'07:00:00','22:15:00','Empty','B46',6);

insert into train_service 
Values('Van','Sivas',6,'03:00:00','10:00:00','Empty','D63',7);

insert into train_service 
Values('Ýzmir','Çorum',7,'13:15:00','19:45:00','Empty','A27',8);

insert into train_service 
Values('Oslo','Ankara',8,'16:00:00','23:00:00','Empty','D12',9);

insert into train_service 
Values('Helsinki','Gebze',9,'17:00:00','22:00:00','Full','B33',10);

insert into train_service 
Values('Amsterdam','Diyarbakýr',10,'12:00:00','07:00:00','Full','E23',11);

insert into train_service 
Values('Londra','Ýstanbul',11,'12:00:00','23:00:00','Empty','C96',17);

insert into train_service 
Values('Tokat','Muðla',12,'14:00:00','18:38:00','Empty','C77',13);

insert into train_service 
Values('Ankara','Ýstanbul',2,'11:00:00','21:00:00','Empty','C77',3);

--Ticket Data----

insert into ticket 
Values('A-15','2019-03-12','3','Res',2,3,10,'Cash',75);

insert into ticket 
Values('B-21','2018-04-13','4','Canc',2,4,1,'Cash',75);

insert into ticket 
Values('C-17','2020-05-21','5','Res',6,7,2,'Online',75);

insert into ticket 
Values('A-1','2018-12-12','6','Canc',4,6,3,'Online',75);

insert into ticket 
Values('B-11','2020-07-07','7','Res',9,9,4,'Cash',75);

insert into ticket 
Values('A-16','2019-11-08','8','Canc',1,10,5,'Cash',75);

insert into ticket 
Values('A-7','2020-10-11','9','Canc',9,11,6,'Online',75);

insert into ticket 
Values('C-23','2019-01-01','10','Res',10,5,7,'Unk',75);

insert into ticket 
Values('C-37','2019-10-10','11','Canc',3,10,8,'Cash',75);

insert into ticket 
Values('C-26','2020-01-13','12','Res',5,6,9,'Online',75);

insert into ticket 
Values('A-16','2019-03-12','15','Unk',3,3,11,'Cash',75);


insert into StationAdder
values('Diyarbakýr',15);

--Alter table

alter table passenger add column Email varchar(50) null;

alter table company add column Ceo varchar(40) null;

----- Update Statements


--- Taxes
update company 
set total_income = total_income* 95/100
where total_income > 1000000;


---Routine Daily Maintenance

update train_service
set beginnig = '17:00:00' 
where beginnig = '16:00:00' 


----- Adding seats to the trains which are start with letter A.  
update public.train
set seats_count= 250
where train_name like 'A__';


-----Deletion of the records which  belong to 2017
delete 
from ticket 
where ticket_date between '2017-01-01' and '2018-01-01';

--- Cash method has sale %10;

update ticket 
set price = price*90/100
where payment_method ='Cash';


----Reset the password of the admin whose id is 5;

update railway_admin 
set "password" = '0000000'
where user_id = 5;

---- Firing the admin whose id is 11

delete 
from railway_admin 
where user_id = 11;


---- Deleting the ticket which has unknown status  
delete 
from ticket 
where status = 'Unk';

----Making a ticket's status opened and setting another date.
UPDATE public.ticket
SET ticket_date = '2020-06-12', price = price*110/100
WHERE ticket_id=5;

-


----Create view 
create view  StationAdder as
select ts.station_name, ts.registiration_number 
from train_station ts 


create view FullTrains as
select ts.beginnig ,ts.ending , ts.train_name 
from train_service ts 
where seat_check = 'Full';

create view passengerInfo as
select first_name,last_name,gender
from passenger p 



CREATE TABLE railway_Admin
(
  user_id INT NOT NULL,
  password varchar(15) NOT NULL,
  phone_number INT NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE passenger
(
  first_name varchar(15) NOT NULL,
  last_name varchar(15) NOT NULL,
  Age INT NOT NULL,
  Gender varchar(1) NOT NULL,
  passenger_id INT NOT NULL,
  PRIMARY KEY (passenger_id)
);

CREATE TABLE Company
(
  Total_Income INT NOT NULL,
  Company_Name varchar(15) NOT NULL,
  Year INT NOT NULL,
  Company_ID varchar(5) NOT NULL,
  PRIMARY KEY (Company_ID)
);

CREATE TABLE Train_Station
(
  Station_Name varchar(15) NOT NULL,
  registiration_number INT NOT NULL,
  PRIMARY KEY (registiration_number)
);

CREATE TABLE train
(
  train_name varchar(15) NOT NULL,
  seats_count INT NOT NULL,
  Company_ID varchar(5),
  PRIMARY KEY (train_name),
  FOREIGN KEY (Company_ID) REFERENCES Company(Company_ID)
);

CREATE TABLE Train_Service
(
  Beginnig varchar(15) NOT NULL,
  Ending varchar(15) NOT NULL,
  service_id INT NOT NULL,
  Arrival_Time time NOT NULL,
  Departure_Time time NOT NULL,
  seat_check varchar(6) NOT NULL,
  train_name varchar(15) NOT NULL,
  registiration_number INT,
  PRIMARY KEY (service_id),
  FOREIGN KEY (train_name) REFERENCES train(train_name),
  FOREIGN KEY (registiration_number) REFERENCES Train_Station(registiration_number)
 );

CREATE TABLE ticket
(
  seat_number varchar(5) NOT NULL,
  ticket_date date not null,
  ticket_id INT NOT NULL,
  Status varchar(6) NOT NULL,
  user_id INT,
  service_id INT NOT NULL,
  passenger_id INT NOT NULL,
  payment_method varchar(10),
  price INT,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (user_id) REFERENCES railway_Admin(user_id),
  FOREIGN KEY (service_id) REFERENCES Train_Service(service_id),
  FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id)
);
