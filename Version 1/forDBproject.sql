savepoint before_create_stmt;

create TABLE merchandise (
    merch_id number(3) not null,
    merch_kind_id number(3)not null,
    year_made date,
    merch_name VARCHAR(20),
    performer VARCHAR(20),
    music_genre_id number(3) not null,
    company VARCHAR(20),
    unit_price number(8,2)
);

--
create table merch_kind (
    merch_kind_id number(3)not null,
    merch_kind_name varchar(15)
);

--
create table music_genres (
    music_genre_id number(3) not null,
    music_genre_name varchar(25)
);

--
CREATE TABLE clients (
    client_id number(3)not null,
    client_name VARCHAR(20),
    client_phone VARCHAR(10)
);

--
CREATE TABLE employees (
    employee_id  NUMBER(3) not null,
    job_id number(3) not null,
    employee_phone_number VARCHAR(10)
);

--
CREATE table jobs (
    job_id number(3) not null,
    job_title VARCHAR(20)
);

--
CREATE TABLE sales (
    sales_id number(3)not null,
    client_id number(3)not null ,
    employee_id  NUMBER(3) not null,
    sale_date date
);

--
create table sales_merch_quantity (
    sales_id NUMBER(3) not null,
    merch_id number(3) not null,
    quantity number(4) not null
);

savepoint after_create_stmt;

--table alters adding pks and fks

alter table merch_kind add constraint merch_kind_pk primary key(merch_kind_id);
alter table music_genres add constraint music_genres_pk primary key(music_genre_id);
alter table merchandise add constraint merch_pk primary key(merch_id);

alter table merchandise add constraint merch_genre_fk foreign key(music_genre_id) references music_genres(music_genre_id);
alter table merchandise add constraint merch_fk foreign key(merch_kind_id) references merch_kind(merch_kind_id);


alter table clients add constraint clients_pk primary key(client_id);


alter table jobs add constraint job_pk primary key(job_id);
alter table employees add constraint employee_pk primary key(employee_id);

alter table employees add constraint employee_fk foreign key(job_id) references jobs(job_id);


alter table sales add constraint sales_pk primary key(sales_id);
alter table sales add constraint sales_client_fk foreign key(client_id) references clients(client_id);
alter table sales add constraint sales_employee_fk foreign key(employee_id) references employees(employee_id);


alter table sales_merch_quantity add constraint sales_merch_quantity_sales_fk
                                     foreign key(sales_id) references sales(sales_id);
alter table sales_merch_quantity add constraint sales_merch_quantity_merch_fk
                                     foreign key(merch_id) references merchandise(merch_id);


commit;

select TO_CHAR('A''b') FROM DUAL;
select TO_DATE('2009', 'YYYY')
  FROM DUAL;







