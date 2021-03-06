-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-10-12 19:04:43 EEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE client (
    client_id       INTEGER NOT NULL,
    client_name     VARCHAR2(100),
    client_address  VARCHAR2(100),
    client_phone    VARCHAR2(100)
);

ALTER TABLE client ADD CONSTRAINT person_pk PRIMARY KEY ( client_id );

CREATE TABLE company (
    company_id    INTEGER NOT NULL,
    company_name  VARCHAR2(100)
);

ALTER TABLE company ADD CONSTRAINT company_pk PRIMARY KEY ( company_id );

CREATE TABLE employee (
    employee_id      INTEGER NOT NULL,
    employee_name    VARCHAR2(100),
    employee_phone   VARCHAR2(100),
    employee_job_id  INTEGER NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( employee_id );

CREATE TABLE employee_job (
    employee_job_id     INTEGER NOT NULL,
    employee_job_title  VARCHAR2(100)
);

ALTER TABLE employee_job ADD CONSTRAINT employee_job_pk PRIMARY KEY ( employee_job_id );

CREATE TABLE genre (
    genre_id    INTEGER NOT NULL,
    genre_name  VARCHAR2(50)
);

ALTER TABLE genre ADD CONSTRAINT merch_genre_pk PRIMARY KEY ( genre_id );

CREATE TABLE merch (
    merch_id          INTEGER NOT NULL,
    merch_year        DATE,
    merch_title       VARCHAR2(100),
    merch_unit_price  NUMBER,
    merch_kind_id     INTEGER NOT NULL,
    company_id        INTEGER NOT NULL
);

ALTER TABLE merch ADD CONSTRAINT merch_pk PRIMARY KEY ( merch_id );

CREATE TABLE merch_genre (
    genre_id  INTEGER NOT NULL,
    merch_id  INTEGER NOT NULL
);

CREATE TABLE merch_kind (
    merch_kind_id  INTEGER NOT NULL,
    merch_kind     VARCHAR2(50)
);

ALTER TABLE merch_kind ADD CONSTRAINT merch_kind_pk PRIMARY KEY ( merch_kind_id );

CREATE TABLE merch_performer (
    performer_id  INTEGER NOT NULL,
    merch_id      INTEGER NOT NULL
);

CREATE TABLE performer (
    performer_id    INTEGER NOT NULL,
    performer_name  VARCHAR2(100)
);

ALTER TABLE performer ADD CONSTRAINT merch_1_pk PRIMARY KEY ( performer_id );

CREATE TABLE sale_quantity_merch (
    sales_id  INTEGER NOT NULL,
    quantity  INTEGER,
    merch_id  INTEGER NOT NULL
);

CREATE TABLE sales (
    sale_id      INTEGER NOT NULL,
    sale_date    DATE,
    client_id    INTEGER NOT NULL,
    employee_id  INTEGER NOT NULL
);

ALTER TABLE sales ADD CONSTRAINT sales_pk PRIMARY KEY ( sale_id );

ALTER TABLE employee
    ADD CONSTRAINT employee_employee_job_fk FOREIGN KEY ( employee_job_id )
        REFERENCES employee_job ( employee_job_id );

ALTER TABLE merch
    ADD CONSTRAINT merch_company_fk FOREIGN KEY ( company_id )
        REFERENCES company ( company_id );

ALTER TABLE merch_genre
    ADD CONSTRAINT merch_genre_genre_fk FOREIGN KEY ( genre_id )
        REFERENCES genre ( genre_id );

ALTER TABLE merch_genre
    ADD CONSTRAINT merch_genre_merch_fk FOREIGN KEY ( merch_id )
        REFERENCES merch ( merch_id );

ALTER TABLE merch
    ADD CONSTRAINT merch_merch_kind_fk FOREIGN KEY ( merch_kind_id )
        REFERENCES merch_kind ( merch_kind_id );

ALTER TABLE merch_performer
    ADD CONSTRAINT merch_performer_merch_fk FOREIGN KEY ( merch_id )
        REFERENCES merch ( merch_id );

ALTER TABLE merch_performer
    ADD CONSTRAINT merch_performer_performer_fk FOREIGN KEY ( performer_id )
        REFERENCES performer ( performer_id );

ALTER TABLE sale_quantity_merch
    ADD CONSTRAINT sale_quantity_erch_merch_fk FOREIGN KEY ( merch_id )
        REFERENCES merch ( merch_id );

ALTER TABLE sale_quantity_merch
    ADD CONSTRAINT sale_quantity_erch_sales_fk FOREIGN KEY ( sales_id )
        REFERENCES sales ( sale_id );

ALTER TABLE sales
    ADD CONSTRAINT sales_client_fk FOREIGN KEY ( client_id )
        REFERENCES client ( client_id );

ALTER TABLE sales
    ADD CONSTRAINT sales_employee_fk FOREIGN KEY ( employee_id )
        REFERENCES employee ( employee_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             0
-- ALTER TABLE                             20
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
