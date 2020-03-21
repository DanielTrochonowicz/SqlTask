CREATE DATABASE IF NOT EXISTS Badania;
use Badania;
show databases;

-- usuwanie tabeli
-- TRUNCATE TABLE people; 
-- DROP TABLE people;

CREATE TABLE USERS(
  user_ID int NOT NULL AUTO_INCREMENT,
  user_FIRST_NAME VARCHAR(255) NULL,
  user_LAST_NAME VARCHAR(255) NULL,
  user_AGE INT,
  PRIMARY KEY (user_ID));
  
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('Steven', 'Urman', 35);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('Neena','Popp', 22);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('Lex', 'Chen',19);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('Alexander', 'Pataballa', 54);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('Bruce', 'Greenberg', 43);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('David', 'Lorentz', 36);
INSERT INTO USERS(user_FIRST_NAME, user_LAST_NAME, user_AGE) values ('John', 'Raphaely', 24);

select * from USERS;

select user_FIRST_NAME from users order by user_FIRST_NAME;
select user_FIRST_NAME from users  order by user_FIRST_NAME desc;
select user_FIRST_NAME as 'Imie' , user_LAST_NAME as 'Nazwisko' from users;

select user_FIRST_NAME, price from users, badania order by 2 desc;

select user_FIRST_NAME, user_LAST_NAME from users where user_LAST_NAME like '%I%' or user_LAST_NAME like '%A%' or  user_LAST_NAME like '%O%';

use Badania;

CREATE TABLE if not exists Badania(
id int NOT NULL AUTO_INCREMENT,
title VARCHAR(50),
price float,
quantity int,
PRIMARY KEY (id));

select * from Badania;

insert into Badania(id, title, price, quantity) values(1,'Lipaza', 23.00, 3);
insert into Badania(id, title, price, quantity) values(11,'Badanie krwi', 223.00, 1);
insert into Badania(id, title, price, quantity) values(12,'Lipaza 300+', 3.00, 0);
insert into Badania(id, title, price, quantity) values(2,'CRP', 39.00, 8);
insert into Badania(id, title, price, quantity) values(3,'Bilirubina bezpośrednia', 14.60, 5);
insert into Badania(id, title, price, quantity) values(4,'Badanie Hormonalne<', 64.00, 7);
insert into Badania(id, title, price, quantity) values(5, 'Badanie Genetyczne', 31.00, 4);
insert into Badania(id, title, price, quantity) values(6, 'Fosfataza alkaliczna', 58.00, 8);
insert into Badania(id, title, price, quantity) values(7, 'Badanie płynu z jamy ciała', 12.00, 2);
insert into Badania(id, title, price, quantity) values(8, 'Badanie w kierunku infekcji', 23.00, 6);
insert into Badania(id, title, price, quantity) values(9, 'Badanie krwi: Ogólne i biochemia', 30.00, 10);
insert into Badania(id, title, price, quantity) values(10, 'Badanie krwi', 90.00, 4);

Select * from Badania;
Select * from Badania where quantity > 2;
Select * from Badania where quantity > 3 and price < 40;
Select * from Badania where quantity > 2 and price < 30;
Select * from Badania where quantity > 2 and title < 'Badanie krwi';

-- aktualizacja Badania, ktorego pole id jest najmniejsze
select id from Badania order by id asc limit 1;
update Badania set title = 'nowa pozycja', price = 28.79, quantity = 1 order by id asc limit 1;
Select * from Badania;

-- Podnieść cenę wszystkich Badaniń o 20%
 update Badania set price = (price*0.20);
 
 update Badania set price = (price/0.20);
 
 -- Zwiększ ilośc Badaniań o 2, których cena jest > 50
 update Badania set quantity = quantity + 2 where price > 50;
 
 -- Usuń z bazy wszystkie Badania, których ilość wynosi 0
 delete from Badania where  quantity = 0;
 Select * from Badania;