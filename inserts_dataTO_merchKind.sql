alter session set nls_date_format = 'DY MON DD YYYY HH24:MI:SS';
-- alter session set nls_date_format = 'DD.MM.YYYY';

-- select to_date('Wed Jan 22 2020 09:53:58', 'DY MON DD YYYY HH24:MI:SS') 'Date' from dual;
-- select to_char(sysdate) as dates from dual;

create table merch_kind (
  merch_kind_id number(3) not null,
  merch_kind_name varchar(15)
);

insert all 
    into merch_kind (merch_kind_id, merch_kind_name) VALUEs(1, 'CD')
    into merch_kind (merch_kind_id, merch_kind_name) VALUEs(2, 'DVD') 
    into merch_kind (merch_kind_id, merch_kind_name) VALUEs(3, 'Blue-Ray') 
    into merch_kind (merch_kind_id, merch_kind_name) VALUEs(4, 'Plate')
select 1 from dual;


create table music_genres (
  music_genre_id number(3) not null,
  music_genre_name varchar(25)
);

insert all
    into music_genres (music_genre_id, music_genre_name) values (1, 'Avant-garde')
    into music_genres (music_genre_id, music_genre_name) values (2, 'Blues')
    into music_genres (music_genre_id, music_genre_name) values (3, 'Caribbean')
    into music_genres (music_genre_id, music_genre_name) values (4, 'Country')
    into music_genres (music_genre_id, music_genre_name) values (5, 'Easy listening')
    into music_genres (music_genre_id, music_genre_name) values (6, 'Electronic music')
    into music_genres (music_genre_id, music_genre_name) values (7, 'Folk')
    into music_genres (music_genre_id, music_genre_name) values (8, 'Hip hop')
    into music_genres (music_genre_id, music_genre_name) values (9, 'Jazz')
    into music_genres (music_genre_id, music_genre_name) values (10, 'Latin')
    into music_genres (music_genre_id, music_genre_name) values (11, 'Pop')
    into music_genres (music_genre_id, music_genre_name) values (12, 'R and B and soul')
    into music_genres (music_genre_id, music_genre_name) values (13, 'Rock')
    into music_genres (music_genre_id, music_genre_name) values (14, 'Classical music')
select 1 from dual;


CREATE TABLE clients (
  client_id number(3) not null,
  client_name VARCHAR(20),
  client_phone VARCHAR(10)
);

insert all
    into clients (client_id, client_name, client_phone) values
    (1, 'Abby Ullrich', '297.073.9377 x251')
    into clients (client_id, client_name, client_phone) values
    (2, 'Nicholas Hane', '115.097.4841 x08641')
    into clients (client_id, client_name, client_phone) values
    (3, 'Henriette Jacobs', '657.711.6243 x8909')
    into clients (client_id, client_name, client_phone) values
    (4, 'Hershel Towne', '280-298-6702')
    into clients (client_id, client_name, client_phone) values
    (5, 'Frieda Parisian', '735-884-6282 x9605')
    into clients (client_id, client_name, client_phone) values
    (6, 'Ryann Gleichner', '1-722-898-7951 x963')
    into clients (client_id, client_name, client_phone) values
    (7, 'Marley Goldner', '879-347-0017 x8236')
    into clients (client_id, client_name, client_phone) values
    (8, 'Kathleen Schumm', '726.164.3456')
    into clients (client_id, client_name, client_phone) values
    (9, 'Bobby Murray', '045.745.0239 x0111')
    into clients (client_id, client_name, client_phone) values
    (10, 'Faustino Ullrich', '952.814.9361')
    into clients (client_id, client_name, client_phone) values
    (11, 'Susanna Hermann', '(085) 015-5861')
    into clients (client_id, client_name, client_phone) values
    (12, 'Zena O''Kon', '013.088.9230 x44620')
    into clients (client_id, client_name, client_phone) values
    (13, 'Hailee Smitham', '221-161-2423')
    into clients (client_id, client_name, client_phone) values
    (14, 'Malika Powlowski V', '045-297-6691 x783')
    into clients (client_id, client_name, client_phone) values
    (15, 'Ralph Ebert', '1-849-232-1509 x561')
select 1 from dual;


CREATE table jobs (
  job_id number(3) not null,
  job_title VARCHAR(20)
);

insert all
    into jobs (job_id, job_title) values 
    (1,'Representative')
    into jobs (job_id, job_title) values
    (2,'Director')
    into jobs (job_id, job_title) values
    (3,'Manager')
    into jobs (job_id, job_title) values
    (4,'Coordinator')
    into jobs (job_id, job_title) values
    (5,'Liaison')
    into jobs (job_id, job_title) values
    (6,'Facilitator')
    into jobs (job_id, job_title) values
    (7,'Strategist')
    into jobs (job_id, job_title) values
    (8,'Strategist')
    into jobs (job_id, job_title) values
    (9,'Engineer')
    into jobs (job_id, job_title) values
    (10,'Administrator')
select 1 from dual;


CREATE TABLE employees (
  employee_id  NUMBER(3) not null,
  employee_name VARCHAR(20),
  job_id number(3) not null,
  employee_phone_number VARCHAR(10)
);

insert all 
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (1,'Elmo Mosciski',6,'1-209-798-1424 x00533')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (2,'Tabitha Robel',5,'908.360.0942')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (3,'Anjali Rice',8,'373-548-7196 x19798')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (4,'Kellen Kerluke',10,'167.184.3890')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (5,'Joesph Collins PhD',1,'1-359-111-6127 x965')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (6,'Suzanne Lowe',1,'919-620-7738 x1367')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (7,'Nona Schoen',9,'1-980-141-0285')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (8,'Haylie Corkery',8,'826.746.7972')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (9,'Lincoln McGlynn',7,'055-653-8356 x261')
  into employees(employee_id, employee_name, job_id, employee_phone_number) VALUES
  (10,'Annalise Wisozk',4,'904.774.9443 x7025')
select 1 from dual;


CREATE TABLE sales (
  sales_id number(3)not null,
  client_id number(3)not null ,
  employee_id  NUMBER(3) not null,
  sale_date date
);

insert all
  into sales (sales_id, client_id, employee_id, sale_date) values
  (1, 5, 7, to_date('Wed Jan 22 2020 09:53:58', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (2, 10, 7, to_date('Wed Jun 17 2020 18:22:26', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (3, 10, 9, to_date('Fri Jan 03 2020 23:39:50', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (4, 8, 3, to_date('Sat Feb 29 2020 03:42:58', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (5, 11, 5, to_date('Mon Jun 08 2020 10:32:36', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (6, 2, 4, to_date('Sat Jan 11 2020 03:24:26', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (7, 4, 5, to_date('Tue Feb 04 2020 06:46:14', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (8, 12, 8, to_date('Thu Sep 10 2020 08:50:39', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (9, 1, 7, to_date('Fri Aug 28 2020 13:45:31', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (10, 15, 6, to_date('Fri Oct 18 2019 01:01:48', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (11, 6, 1, to_date('Sun Oct 06 2019 07:39:04', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (12, 9, 2, to_date('Mon Aug 24 2020 06:45:19', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (13, 1, 1, to_date('Wed Sep 09 2020 02:43:51', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (14, 9, 2, to_date('Mon Dec 02 2019 05:43:48', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (15, 5, 1, to_date('Tue Mar 17 2020 20:37:30', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (16, 5, 9, to_date('Sun May 10 2020 08:46:33', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (17, 5, 10, to_date('Thu Sep 24 2020 12:56:22', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (18, 14, 7, to_date('Fri Dec 13 2019 04:12:25', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (19, 6, 2, to_date('Thu Aug 20 2020 11:49:19', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sales_id, client_id, employee_id, sale_date) values
  (20, 6, 5, to_date('Thu Apr 30 2020 16:54:00', 'DY MON DD YYYY HH24:MI:SS'))
select 1 from dual;


create table sales_merch_quantity (
  sales_id NUMBER(3) not null,
  merch_id number(3) not null,
  quantity number(4) not null
);

insert all 
into sales_merch_quantity(sales_id,merch_id,quantity) values
(3,13 ,4)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(18, 19,87)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(8, 14,62)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(2, 20,26)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(7, 18,93)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(3, 6,19)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(5, 20,25)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(18,15 ,4)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(20, 13,60)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(11, 10,30)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(12, 14,86)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(13, 8,76)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(8,11 ,1)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(3, 12,77)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(6, 14,65)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(20,2 ,6)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(7, 7,27)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(3, 5,45)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(16,18 ,2)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(2,2 ,7)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(1, 1,18)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(4, 4,31)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(17,5 ,6)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(9, 10,69)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(12, 13,71)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(3,4 ,5)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(7, 16,68)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(7, 17,83)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(7, 20,47)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(14, 17,21)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(18, 3,60)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(4, 15,58)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(18, 9,22)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(13, 18,71)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(19, 11,11)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(16, 6,63)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(10, 3,66)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(15, 2,83)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(9, 2,86)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(16, 16,92)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(11, 8,84)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(10, 9,19)
into sales_merch_quantity(sales_id,merch_id,quantity) values
(20,1 ,3)
select 1 from dual;


create TABLE merchandise (
  merch_id number(3) not null,
  merch_kind_id number(3)not null,
  year_made date,
  merch_name VARCHAR(40),
  performer VARCHAR(30),
  music_genre_id number(3) not null,
  company VARCHAR(40),
  unit_price number(8,2)
);

insert all 
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values 
(1,1,TO_DATE('2009', 'YYYY'),'Tasty Metal Bike','Abelardo Davis',10,'Kulas LLC',58.24)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(2,1,TO_DATE('2019', 'YYYY'),'Ergonomic Concrete Computer','Crystal Bergnaum PhD',12,'Metz LLC',90.04)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(3,4,TO_DATE('1988', 'YYYY'),'Handcrafted Steel Pants','Alanna DuBuque',13,'Cartwright - Emard',79.09)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(4,3,TO_DATE('2010', 'YYYY'),'Ergonomic Plastic Chair','Mireya Boyle V',13,'Schimmel - Medhurst',56.31)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(5,3,TO_DATE('2007', 'YYYY'),'Intelligent Concrete Hat','Hilbert Ritchie',1,'Larkin, Kassulke and Ward',3.54)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(6,1,TO_DATE('1995', 'YYYY'),'Practical Wooden Tuna','Brenda Murray',9,'Hessel - Frami',28.34)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(7,1,TO_DATE('2000', 'YYYY'),'Small Steel Car','Skye Terry',8,'Stehr, Stark and Mayert',77.34)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(8,4,TO_DATE('2013', 'YYYY'),'Gorgeous Wooden Table','Gregory Auer',3,'Pfannerstill - Lind',43.11)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(9,2,TO_DATE('1998', 'YYYY'),'Handcrafted Granite Cheese','Lou Schiller',4,'Bashirian, Jaskolski and Dare',9.48)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(10,4,TO_DATE('2006', 'YYYY'),'Sleek Soft Cheese','Tyshawn Hagenes MD',5,'Glover, Ziemann and Ward',90.34)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(11,4,TO_DATE('2000', 'YYYY'),'Rustic Granite Shoes','Ivy Stoltenberg',4,'Lubowitz, Donnelly and Dare',90.78)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(12,2,TO_DATE('1996', 'YYYY'),'Refined Rubber Table','Armand Hickle III',5,'Emmerich and Sons',6.40)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(13,3,TO_DATE('1994', 'YYYY'),'Generic Rubber Shirt','Kurt Stokes',4,'Will - Hagenes',19.13)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(14,2,TO_DATE('2001', 'YYYY'),'Practical Concrete Ball','Euna Parker',2,'Ziemann and Sons',17.98)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(15,1,TO_DATE('1985', 'YYYY'),'Fantastic Metal Shirt','Sabina Glover MD',7,'Bashirian - Walker',85.77)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(16,3,TO_DATE('1987', 'YYYY'),'Unbranded Wooden Chicken','Hope Boyle',3,'Kassulke - Beer',50.9)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(17,4,TO_DATE('2003', 'YYYY'),'Sleek Plastic Salad','Ms. Karlie Friesen',6,'Considine - Cremin',79.7)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(18,1,TO_DATE('1985', 'YYYY'),'Gorgeous Metal Car','Ursula Renner',13,'Armstrong - Watsica',49.17)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(19,3,TO_DATE('1989', 'YYYY'),'Incredible Granite Chips','Enrique Cartwright',2,'Wunsch - Cronin',42.9)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(20,1,TO_DATE('1998', 'YYYY'),'Ergonomic Plastic Cheese','Pink Smith',14,'Kris - Kuhic',93.15)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(21,2,TO_DATE('2004', 'YYYY'),'Licensed Plastic Car','Easter Goyette',5,'Lindgren LLC',77.10)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(22,3,TO_DATE('2004', 'YYYY'),'Intelligent Cotton Ball','Mrs. Travis Douglas',8,'Lakin - Brekke',66.11)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(23,1,TO_DATE('2010', 'YYYY'),'Ergonomic Soft Hat','Filomena Bailey',14,'Wiegand Inc',40.67)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(24,4,TO_DATE('2019', 'YYYY'),'Rustic Rubber Fish','Gudrun Wyman',7,'Huel - Murazik',57.27)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(25,1,TO_DATE('2020', 'YYYY'),'Incredible Concrete Gloves','Gwendolyn Cremin',14,'Nienow - Homenick',84.58)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(26,4,TO_DATE('2001', 'YYYY'),'Rustic Concrete Bacon','Letitia Lowe',1,'Koepp, Balistreri and Brakus',59.12)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(27,4,TO_DATE('1982', 'YYYY'),'Licensed Cotton Shirt','Antone Rowe',3,'Reynolds Group',43.70)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(28,1,TO_DATE('1989', 'YYYY'),'Incredible Plastic Shoes','Adeline Kessler',7,'Koelpin Group',14.71)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(29,3,TO_DATE('1992', 'YYYY'),'Practical Wooden Soap','Ellis Dickens',5,'Monahan, Walker and Lehner',12.44)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(30,1,TO_DATE('1989', 'YYYY'),'Refined Steel Chicken','Ms. Eva Gulgowski',5,'Hoppe - Quigley',85.95)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(31,3,TO_DATE('2014', 'YYYY'),'Small Steel Chicken','Ricky Oberbrunner',12,'Christiansen, Heathcote and Hane',8.31)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(32,4,TO_DATE('2015', 'YYYY'),'Incredible Steel Sausages','Miss Chris Leannon',9,'Dibbert - Langworth',78.35)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(33,3,TO_DATE('1989', 'YYYY'),'Incredible Soft Car','Fredy Green Jr.',4,'Ratke Inc',97.59)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(34,4,TO_DATE('1980', 'YYYY'),'Awesome Steel Bike','Miss Priscilla Raynor',11,'Feest and Sons',69.89)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(35,1,TO_DATE('2009', 'YYYY'),'Tasty Fresh Chair','Elmore Schaefer I',13,'Rogahn, Lesch and Mitchell',48.19)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(36,3,TO_DATE('2000', 'YYYY'),'Handmade Fresh Shoes','Ms. Ettie Spencer',10,'Thompson LLC',67.72)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(37,3,TO_DATE('2016', 'YYYY'),'Handcrafted Frozen Keyboard','Emelie Kirlin',1,'Cassin - Doyle',76.82)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(38,3,TO_DATE('2005', 'YYYY'),'Small Rubber Chair','Viva Lesch',2,'Lockman - Kub',8.73)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(39,3,TO_DATE('2010', 'YYYY'),'Rustic Concrete Pants','Lysanne Donnelly',3,'Murphy, Ebert and Maggio',73.63)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(40,4,TO_DATE('1994', 'YYYY'),'Incredible Concrete Soap','Jayson Spencer DDS',12,'Nader, Lockman and Rutherford',74.98)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(41,2,TO_DATE('1994', 'YYYY'),'Gorgeous Frozen Table','Clara Russel',14,'Wilderman - Collins',6.17)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(42,3,TO_DATE('1994', 'YYYY'),'Gorgeous Metal Sausages','Mekhi Corkery',2,'Tremblay Inc',39.11)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(43,2,TO_DATE('2018', 'YYYY'),'Rustic Steel Shirt','Vallie Kozey',4,'Hauck, D''Amore and Goldner',59.71)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(44,4,TO_DATE('2008', 'YYYY'),'Intelligent Cotton Shoes','Orie Abbott',13,'Medhurst, Ondricka and Lueilwitz',53.61)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(45,4,TO_DATE('1984', 'YYYY'),'Unbranded Steel Salad','Elroy Ondricka',8,'Hayes - Volkman',58.92)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(46,1,TO_DATE('1982', 'YYYY'),'Generic Granite Keyboard','Stacey Russel',9,'Moore, Dach and Upton',13.80)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(47,1,TO_DATE('2016', 'YYYY'),'Small Frozen Salad','Holden Emard',9,'Balistreri - Tromp',65.86)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(48,1,TO_DATE('2017', 'YYYY'),'Practical Granite Table','Jaden Koelpin PhD',6,'Huel - Schneider',25.44)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(49,3,TO_DATE('2011', 'YYYY'),'Generic Fresh Fish','Lilliana Rath',4,'Romaguera, Senger and Robel',12.36)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(50,1,TO_DATE('2007', 'YYYY'),'Fantastic Steel Gloves','Nayeli Rempel III',13,'O''Conner, Gislason and Marvin',46.18)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(51,4,TO_DATE('2016', 'YYYY'),'Incredible Cotton Pizza','Alanna Cruickshank',12,'Fritsch - McDermott',97.80)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(52,2,TO_DATE('2005', 'YYYY'),'Intelligent Fresh Shoes','Mr. Elwyn Gulgowski',4,'Hegmann Group',94.9)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(53,1,TO_DATE('1980', 'YYYY'),'Generic Frozen Table','Mathilde Moore',11,'Gaylord LLC',52.51)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(54,4,TO_DATE('2006', 'YYYY'),'Refined Fresh Hat','Tyrese Powlowski PhD',9,'Fay Inc',98.36)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(55,3,TO_DATE('2009', 'YYYY'),'Handmade Wooden Computer','Davonte Welch',12,'Powlowski - Kuhic',88.71)
into merchandise ( merch_id, merch_kind_id, year_made, merch_name, performer, music_genre_id, company, unit_price) values
(56,3,TO_DATE('2012', 'YYYY'),'Rustic Granite Ball','Lucy Zulauf',4,'Swaniawski - Volkman',37.18)
select 1 from dual;