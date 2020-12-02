CREATE OR REPLACE PROCEDURE insert_into_client
    (
        v_client_name client.client_name%TYPE,
        v_client_adress client.client_address%TYPE,
        v_client_phone client.client_phone%TYPE
    )
    AS
    BEGIN
        INSERT INTO client (client_name, client_address, client_phone)
        Values (v_client_name,v_client_adress, v_client_phone);
END;

CREATE OR REPLACE PROCEDURE insert_into_company
    (
        v_company_name company.company_name%TYPE
    )
    AS
    BEGIN
        INSERT INTO company(company_name)
        Values (v_company_name);
END;

CREATE OR REPLACE PROCEDURE insert_into_employee_job
    (
        v_employee_job_title employee_job.employee_job_title%TYPE
    )
    AS
    BEGIN
        INSERT INTO employee_job(employee_job_title)
        Values (v_employee_job_title);
END;

CREATE OR REPLACE PROCEDURE insert_into_employee
    (
        v_employee_name employee.employee_name%TYPE,
        v_employee_job_id employee.employee_job_id%TYPE,
        v_employee_phone employee.employee_phone%TYPE
    )
    AS
    BEGIN
        INSERT INTO employee (employee_name, employee_phone, employee_job_id)
        Values (v_employee_name, v_employee_job_id, v_employee_phone);
END;

CREATE OR REPLACE PROCEDURE insert_into_genre
    (
        v_genre_name genre.genre_name%TYPE
    )
    AS
    BEGIN
        INSERT INTO genre(genre_name)
        Values (v_genre_name);
END;

CREATE OR REPLACE PROCEDURE insert_into_merch_kind
    (
        v_merch_kind merch_kind.merch_kind%TYPE
    )
    AS
    BEGIN
        INSERT INTO merch_kind(merch_kind)
        Values (v_merch_kind);
END;

CREATE OR REPLACE PROCEDURE insert_into_performer
    (
        v_performer_name performer.performer_name%TYPE
    )
    AS
    BEGIN
        INSERT INTO performer(performer_name)
        Values (v_performer_name);
END;

CREATE OR REPLACE PROCEDURE insert_into_sales
    (
        v_sale_date sales.sale_date%TYPE,
        v_client_id sales.client_id%TYPE,
        v_employee_id sales.employee_id%TYPE
    )
    AS
    BEGIN
        INSERT INTO sales(sale_date, client_id, employee_id)
        Values (v_sale_date, v_client_id, v_employee_id);
END;

CREATE OR REPLACE PROCEDURE insert_into_sqm
    (
        v_sales_id sale_quantity_merch.sales_id%TYPE,
        v_quantity sale_quantity_merch.quantity%TYPE,
        v_merch_id sale_quantity_merch.merch_id%TYPE
    )
    AS
    BEGIN
        INSERT INTO sale_quantity_merch(sales_id, quantity, merch_id)
        Values (v_sales_id, v_quantity, v_merch_id);
END;

CREATE OR REPLACE PROCEDURE insert_into_merch_perf
    (
        v_performer_id merch_performer.performer_id%TYPE,
        v_merch_id merch_performer.merch_id%TYPE
    )
    AS
    BEGIN
        INSERT INTO merch_performer(performer_id, merch_id)
        Values (v_performer_id, v_merch_id);
END;

CREATE OR REPLACE PROCEDURE insert_into_merch_genre
    (
        v_genre_id merch_genre.genre_id%TYPE,
        v_merch_id merch_genre.merch_id%TYPE
    )
    AS
    BEGIN
        INSERT INTO merch_genre(genre_id, merch_id)
        Values (v_genre_id, v_merch_id);
END;

CREATE OR REPLACE PROCEDURE insert_into_merch
    (
        v_merch_year merch.merch_year%TYPE,
        v_merch_title merch.merch_title%TYPE,
        v_merch_unit_price merch.merch_unit_price%TYPE,
        v_merch_kind_id merch.merch_kind_id%TYPE,
        v_company_id merch.company_id%TYPE
    )
    AS
    BEGIN
        INSERT INTO merch(merch_year, merch_title, merch_unit_price, merch_kind_id, company_id)
        Values (v_merch_year, v_merch_title, v_merch_unit_price, v_merch_kind_id, v_company_id);
END;

CREATE OR REPLACE PROCEDURE update_in_search_by_id
    (
        v_search_id SEARCH_IN_MERCH.MERCH_ID%TYPE,
        v_merch_title SEARCH_IN_MERCH.MERCH_TITLE%TYPE
    )
    AS
    BEGIN
        update SEARCH_IN_MERCH set MERCH_TITLE = v_merch_title
            where MERCH_ID = v_search_id;
END;

CREATE OR REPLACE PROCEDURE delete_in_search_by_id
    (
        v_search_id SEARCH_IN_MERCH.MERCH_ID%TYPE
    )
    AS
    BEGIN
        DELETE FROM SEARCH_IN_MERCH
            where MERCH_ID = v_search_id;
END;
