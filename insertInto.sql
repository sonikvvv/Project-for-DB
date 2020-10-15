alter session set nls_date_format = 'DY MON DD YYYY HH24:MI:SS';
commit;

--
insert all 
    into merch_kind (merch_kind_id, merch_kind) VALUEs(1, 'CD')
    into merch_kind (merch_kind_id, merch_kind) VALUEs(2, 'DVD') 
    into merch_kind (merch_kind_id, merch_kind) VALUEs(3, 'Blue-Ray') 
    into merch_kind (merch_kind_id, merch_kind) VALUEs(4, 'Plate')
select 1 from dual;

--
insert all
    into genre (genre_id, genre_name) values (1, 'Avant-garde')
    into genre (genre_id, genre_name) values (2, 'Blues')
    into genre (genre_id, genre_name) values (3, 'Caribbean')
    into genre (genre_id, genre_name) values (4, 'Country')
    into genre (genre_id, genre_name) values (5, 'Easy listening')
    into genre (genre_id, genre_name) values (6, 'Electronic music')
    into genre (genre_id, genre_name) values (7, 'Folk')
    into genre (genre_id, genre_name) values (8, 'Hip hop')
    into genre (genre_id, genre_name) values (9, 'Jazz')
    into genre (genre_id, genre_name) values (10, 'Latin')
    into genre (genre_id, genre_name) values (11, 'Pop')
    into genre (genre_id, genre_name) values (12, 'R and B and soul')
    into genre (genre_id, genre_name) values (13, 'Rock')
    into genre (genre_id, genre_name) values (14, 'Classical music')
select 1 from dual;

--
insert all
    into employee_job (employee_job_id, employee_job_title) values (1,'Representative')
    into employee_job (employee_job_id, employee_job_title) values (2,'Director')
    into employee_job (employee_job_id, employee_job_title) values (3,'Manager')
    into employee_job (employee_job_id, employee_job_title) values (4,'Coordinator')
    into employee_job (employee_job_id, employee_job_title) values (5,'Liaison')
    into employee_job (employee_job_id, employee_job_title) values (6,'Facilitator')
    into employee_job (employee_job_id, employee_job_title) values (7,'Strategist')
    into employee_job (employee_job_id, employee_job_title) values (8,'Strategist')
    into employee_job (employee_job_id, employee_job_title) values (9,'Engineer')
    into employee_job (employee_job_id, employee_job_title) values (10,'Administrator')
select 1 from dual;

--
insert all 
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (1,'Elmo Mosciski',6,'1-209-798-1424 x00533')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (2,'Tabitha Robel',5,'908.360.0942')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (3,'Anjali Rice',8,'373-548-7196 x19798')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (4,'Kellen Kerluke',10,'167.184.3890')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (5,'Joesph Collins PhD',1,'1-359-111-6127 x965')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (6,'Suzanne Lowe',1,'919-620-7738 x1367')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (7,'Nona Schoen',9,'1-980-141-0285')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (8,'Haylie Corkery',8,'826.746.7972')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (9,'Lincoln McGlynn',7,'055-653-8356 x261')
    into employee(employee_id, employee_name, employee_job_id, employee_phone) VALUES
    (10,'Annalise Wisozk',4,'904.774.9443 x7025')
select 1 from dual;

--
insert all
    into client (client_id, client_name, client_address, client_phone) values
    (1, 'Abby Ullrich', 'Lake Aminamouth, 86301 Jedidiah Unions', '297.073.9377 x251')
    into client (client_id, client_name, client_address, client_phone) values
    (2, 'Nicholas Hane', 'Jackland, 154 Nat Estate', '115.097.4841 x08641')
    into client (client_id, client_name, client_address, client_phone) values
    (3, 'Henriette Jacobs', 'Port Juanitatown, 46357 Josiane Ferry', '657.711.6243 x8909')
    into client (client_id, client_name, client_address, client_phone) values
    (4, 'Hershel Towne', 'Aliaton, 018 Wehner Ville', '280-298-6702')
    into client (client_id, client_name, client_address, client_phone) values
    (5, 'Frieda Parisian', 'Arichaven, 14920 Denesik Shoal', '735-884-6282 x9605')
    into client (client_id, client_name, client_address, client_phone) values
    (6, 'Ryann Gleichner', 'Lake Karleyberg, 45035 Gerlach Junctions', '1-722-898-7951 x963')
    into client (client_id, client_name, client_address, client_phone) values
    (7, 'Marley Goldner', 'Merlville, 3864 Lesch Pike', '879-347-0017 x8236')
    into client (client_id, client_name, client_address, client_phone) values
    (8, 'Kathleen Schumm', 'Brooksville, 920 McGlynn Trail', '726.164.3456')
    into client (client_id, client_name, client_address, client_phone) values
    (9, 'Bobby Murray', 'Rogerbury, 13877 Smitham Summit', '045.745.0239 x0111')
    into client (client_id, client_name, client_address, client_phone) values
    (10, 'Faustino Ullrich', 'East Lailatown, 9786 Davis Shoal', '952.814.9361')
    into client (client_id, client_name, client_address, client_phone) values
    (11, 'Susanna Hermann', 'Hintzshire, 18231 Brent Lake', '(085) 015-5861')
    into client (client_id, client_name, client_address, client_phone) values
    (12, 'Zena O'' Kon', 'Rathfort, 54375 Ernser Ramp','013.088.9230 x44620')
    into client (client_id, client_name, client_address, client_phone) values
    (13, 'Hailee Smitham', 'Cruickshankstad, 342 Earlene Passage', '221-161-2423')
    into client (client_id, client_name, client_address, client_phone) values
    (14, 'Malika Powlowski V ','Deckowhaven, 5570 Koss Terrace', '045-297-6691 x783')
    into client (client_id, client_name, client_address, client_phone) values
    (15, 'Ralph Ebert', 'Lake Lesleyview, 67009 Geo Keys', '1-849-232-1509 x561')
select 1 from dual;

--
insert all
  into sales (sale_id, client_id, employee_id, sale_date) values
  (1, 5, 7, to_date('Wed Jan 22 2020 09:53:58', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (2, 10, 7, to_date('Wed Jun 17 2020 18:22:26', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (3, 10, 9, to_date('Fri Jan 03 2020 23:39:50', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (4, 8, 3, to_date('Sat Feb 29 2020 03:42:58', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (5, 11, 5, to_date('Mon Jun 08 2020 10:32:36', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (6, 2, 4, to_date('Sat Jan 11 2020 03:24:26', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (7, 4, 5, to_date('Tue Feb 04 2020 06:46:14', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (8, 12, 8, to_date('Thu Sep 10 2020 08:50:39', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (9, 1, 7, to_date('Fri Aug 28 2020 13:45:31', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (10, 15, 6, to_date('Fri Oct 18 2019 01:01:48', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (11, 6, 1, to_date('Sun Oct 06 2019 07:39:04', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (12, 9, 2, to_date('Mon Aug 24 2020 06:45:19', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (13, 1, 1, to_date('Wed Sep 09 2020 02:43:51', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (14, 9, 2, to_date('Mon Dec 02 2019 05:43:48', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (15, 5, 1, to_date('Tue Mar 17 2020 20:37:30', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (16, 5, 9, to_date('Sun May 10 2020 08:46:33', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (17, 5, 10, to_date('Thu Sep 24 2020 12:56:22', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (18, 14, 7, to_date('Fri Dec 13 2019 04:12:25', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (19, 6, 2, to_date('Thu Aug 20 2020 11:49:19', 'DY MON DD YYYY HH24:MI:SS'))
  into sales (sale_id, client_id, employee_id, sale_date) values
  (20, 6, 5, to_date('Thu Apr 30 2020 16:54:00', 'DY MON DD YYYY HH24:MI:SS'))
select 1 from dual;


insert all 
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (3,13 ,4)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (18, 19,87)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (8, 14,62)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (2, 20,26)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (7, 18,93)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (3, 6,19)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (5, 20,25)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (18,15 ,4)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (20, 13,60)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (11, 10,30)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (12, 14,86)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (13, 8,76)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (8,11 ,1)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (3, 12,77)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (6, 14,65)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (20,2 ,6)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (7, 7,27)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (3, 5,45)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (16,18 ,2)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (2,2 ,7)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (1, 1,18)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (4, 4,31)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (17,5 ,6)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (9, 10,69)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (12, 13,71)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (3,4 ,5)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (7, 16,68)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (7, 17,83)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (7, 20,47)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (14, 17,21)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (18, 3,60)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (4, 15,58)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (18, 9,22)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (13, 18,71)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (19, 11,11)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (16, 6,63)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (10, 3,66)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (15, 2,83)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (9, 2,86)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (16, 16,92)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (11, 8,84)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (10, 9,19)
    into sale_quantity_merch(sales_id,merch_id,quantity) values
    (20,1 ,3)
select 1 from dual;

