create or replace PROCEDURE SalesByEmpDate(v_empl_id Number)
is 
    cursor cursor_select is
    select
        s.sale_id,
        s.sale_date, 
        s.client_id,
        e.employee_name,
        e.employee_id
    from sales s
    join EMPLOYEE e on e.employee_id = s.employee_id
    where e.employee_id = v_empl_id
    group by e.employee_name, s.sale_id, s.sale_date, s.client_id, e.employee_id
    order by e.employee_name DESC, s.sale_date DESC;
    
    v_sale_id       sales.SALE_ID%type;
    v_sale_date     sales.SALE_DATE%type;
    v_client_id     CLIENT.CLIENT_ID%TYPE;
    v_employee_name EMPLOYEE.EMPLOYEE_NAME%TYPE;
    v_employee_id   EMPLOYEE.EMPLOYEE_ID%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into 
            v_sale_id,
            v_sale_date,
            v_client_id,
            v_employee_name,
            v_employee_id;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Sale ID => ' || v_sale_id || ' sale date => ' || v_sale_date ||
                    ' client id => ' || v_client_id || ' employee name => ' || v_employee_name ||
                    ' employee id => ' || v_employee_id
                );
        end loop;
        close cursor_select;
    end SalesByEmpDate
;

--exec SalesByEmpDate(3);


create or replace PROCEDURE last5sales(v_empl_id Number)
is 
    cursor cursor_select is
    select * 
    from
    (
        select s.sale_id, s.sale_date, s.client_id, e.employee_name
        from sales s
        join employee e on s.employee_id = e.employee_id
        order by sale_date DESC
    )
    where ROWNUM <= 5
    order by 4 ASC;
    
    v_sale_id       sales.SALE_ID%type;
    v_sale_date     sales.SALE_DATE%type;
    v_client_id     CLIENT.CLIENT_ID%TYPE;
    v_employee_name EMPLOYEE.EMPLOYEE_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into 
            v_sale_id,
            v_sale_date,
            v_client_id,
            v_employee_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Sale ID => ' || v_sale_id || ' sale date => ' || v_sale_date ||
                    ' client id => ' || v_client_id || ' employee name => ' || v_employee_name
                );
        end loop;
        close cursor_select;
    end last5sales
;

--exec last5sales(1);

create or replace PROCEDURE SalesByClientID(v_cl_id Number)
is 
    cursor cursor_select is
    select
        s.sale_id,
        s.sale_date,
        c.client_id,
        c.client_name,
        c.client_phone,
        m.merch_id,
        m.merch_title,
        mk.merch_kind,
        m.merch_unit_price
    from sales s
    join sale_quantity_merch sqm on s.sale_id = sqm.sales_id
    join client c on c.client_id = s.client_id
    join merch m on m.merch_id = sqm.merch_id
    join merch_kind mk on mk.merch_kind_id = m.merch_kind_id
    where c.client_id = v_cl_id
    order by mk.merch_kind ASC, s.sale_date DESC;
    
    v_sale_id SALES.SALE_ID%TYPE;
    v_sale_date  SALES.SALE_DATE%TYPE;
    v_client_id CLIENT.CLIENT_ID%TYPE;
    v_client_name CLIENT.CLIENT_NAME%TYPE;
    v_client_phone CLIENT.CLIENT_PHONE%TYPE;
    v_merch_id MERCH.MERCH_ID%TYPE;
    v_merch_title MERCH.MERCH_TITLE %TYPE;
    v_merch_kind MERCH_KIND.MERCH_KIND%TYPE;
    v_merch_unit_price MERCH.MERCH_UNIT_PRICE%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_sale_id,
            v_sale_date,
            v_client_id,
            v_client_name,
            v_client_phone,
            v_merch_id,
            v_merch_title,
            v_merch_kind,
            v_merch_unit_price;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Sale ID => ' || v_sale_id || ' sale date => ' || v_sale_date ||
                    ' client id => ' || v_client_id || ' client name => ' || v_client_name ||
                    ' client phone N => ' || v_client_phone || ' merch id => ' || v_merch_id ||
                    ' merch title => ' || v_merch_title || ' merch kind => ' || v_merch_kind ||
                    ' merch unit price => ' || v_merch_unit_price
                );
        end loop;
        close cursor_select;
end SalesByClientID;


--exec SalesByClientID(2);

create or replace PROCEDURE SalesByDate(v_from_date varchar2, v_to_date varchar2)
is 
    cursor cursor_select is
    select
        s.sale_id,
        s.sale_date,
        c.client_name,
        c.client_phone,
        m.merch_id,
        m.merch_title,
        mk.merch_kind,
        m.merch_unit_price
    from sales s
    join sale_quantity_merch sqm on s.sale_id = sqm.sales_id
    join client c on c.client_id = s.client_id
    join merch m on m.merch_id = sqm.merch_id
    join merch_kind mk on mk.merch_kind_id = m.merch_kind_id
    where 
        (s.sale_date >= to_date(v_from_date, 'DD.MM.YYYY')) and
        (s.sale_date <= to_date(v_to_date, 'DD.MM.YYYY'))
    order by s.sale_date DESC, c.client_name;
    
    v_sale_id SALES.SALE_ID%TYPE;
    v_sale_date  SALES.SALE_DATE%TYPE;
    v_client_name CLIENT.CLIENT_NAME%TYPE;
    v_client_phone CLIENT.CLIENT_PHONE%TYPE;
    v_merch_id MERCH.MERCH_ID%TYPE;
    v_merch_title MERCH.MERCH_TITLE %TYPE;
    v_merch_kind MERCH_KIND.MERCH_KIND%TYPE;
    v_merch_unit_price MERCH.MERCH_UNIT_PRICE%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_sale_id,
            v_sale_date,
            v_client_name,
            v_client_phone,
            v_merch_id,
            v_merch_title,
            v_merch_kind,
            v_merch_unit_price;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Sale ID => ' || v_sale_id || ' sale date => ' || v_sale_date ||
                    ' client name => ' || v_client_name ||
                    ' client phone N => ' || v_client_phone || ' merch id => ' || v_merch_id ||
                    ' merch title => ' || v_merch_title || ' merch kind => ' || v_merch_kind ||
                    ' merch unit price => ' || v_merch_unit_price
                );
        end loop;
        close cursor_select;
end SalesByDate;

--exec SalesByDate('1.1.2020', '20.4.2020');

create or replace PROCEDURE search_by_company(valuess varchar2)
is 
    cursor cursor_select is
    select
        merch_id,
        merch_title,
        merch_year,
        merch_unit_price,
        merch_kind,
        genres,
        performers,
        company_name
    from search_in_merch
    where (merch_kind = 'CD' or merch_kind = 'DVD')
        and lower(company_name) like lower('%'||valuess||'%');
    
    v_merch_id          search_in_merch.MERCH_ID%TYPE;
    v_merch_title       search_in_merch.MERCH_TITLE%TYPE;
    v_merch_year        search_in_merch.MERCH_YEAR%TYPE;
    v_merch_unit_price  search_in_merch.MERCH_UNIT_PRICE%TYPE;
    v_merch_kind        search_in_merch.MERCH_KIND%TYPE;
    v_genres            search_in_merch.GENRES%TYPE;
    v_performers        search_in_merch.PERFORMERS%TYPE;
    v_company_name      search_in_merch.COMPANY_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_merch_id,
            v_merch_title,
            v_merch_year,
            v_merch_unit_price,
            v_merch_kind,
            v_genres,
            v_performers,
            v_company_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Merch ID => ' || v_merch_id || ' title => ' || v_merch_title ||
                    ' year => ' || v_merch_year || ' unit price => ' || v_merch_unit_price ||
                    ' kind => ' || v_merch_kind || ' genres => ' || v_genres ||
                    ' performers => ' || v_performers || ' company => ' || v_company_name
                );
        end loop;
        close cursor_select;
end search_by_company;

--exec search_by_company('mc');

create or replace PROCEDURE search_by_m_title(valuess varchar2)
is 
    cursor cursor_select is
    select
        merch_id,
        merch_title,
        merch_year,
        merch_unit_price,
        merch_kind,
        genres,
        performers,
        company_name
    from search_in_merch
    where (merch_kind = 'CD' or merch_kind = 'DVD')
        and lower(merch_title) like lower('%'||valuess||'%');
    
    v_merch_id          search_in_merch.MERCH_ID%TYPE;
    v_merch_title       search_in_merch.MERCH_TITLE%TYPE;
    v_merch_year        search_in_merch.MERCH_YEAR%TYPE;
    v_merch_unit_price  search_in_merch.MERCH_UNIT_PRICE%TYPE;
    v_merch_kind        search_in_merch.MERCH_KIND%TYPE;
    v_genres            search_in_merch.GENRES%TYPE;
    v_performers        search_in_merch.PERFORMERS%TYPE;
    v_company_name      search_in_merch.COMPANY_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_merch_id,
            v_merch_title,
            v_merch_year,
            v_merch_unit_price,
            v_merch_kind,
            v_genres,
            v_performers,
            v_company_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Merch ID => ' || v_merch_id || ' title => ' || v_merch_title ||
                    ' year => ' || v_merch_year || ' unit price => ' || v_merch_unit_price ||
                    ' kind => ' || v_merch_kind || ' genres => ' || v_genres ||
                    ' performers => ' || v_performers || ' company => ' || v_company_name
                );
        end loop;
        close cursor_select;
end search_by_m_title;

--exec search_by_m_title('resh');

create or replace PROCEDURE search_by_genre(valuess varchar2)
is 
    cursor cursor_select is
    select
        merch_id,
        merch_title,
        merch_year,
        merch_unit_price,
        merch_kind,
        genres,
        performers,
        company_name
    from search_in_merch
    where (merch_kind = 'CD' or merch_kind = 'DVD')
        and lower(genres) like lower('%'||valuess||'%');
    
    v_merch_id          search_in_merch.MERCH_ID%TYPE;
    v_merch_title       search_in_merch.MERCH_TITLE%TYPE;
    v_merch_year        search_in_merch.MERCH_YEAR%TYPE;
    v_merch_unit_price  search_in_merch.MERCH_UNIT_PRICE%TYPE;
    v_merch_kind        search_in_merch.MERCH_KIND%TYPE;
    v_genres            search_in_merch.GENRES%TYPE;
    v_performers        search_in_merch.PERFORMERS%TYPE;
    v_company_name      search_in_merch.COMPANY_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_merch_id,
            v_merch_title,
            v_merch_year,
            v_merch_unit_price,
            v_merch_kind,
            v_genres,
            v_performers,
            v_company_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Merch ID => ' || v_merch_id || ' title => ' || v_merch_title ||
                    ' year => ' || v_merch_year || ' unit price => ' || v_merch_unit_price ||
                    ' kind => ' || v_merch_kind || ' genres => ' || v_genres ||
                    ' performers => ' || v_performers || ' company => ' || v_company_name
                );
        end loop;
        close cursor_select;
end search_by_genre;

--exec search_by_genre('op');

create or replace PROCEDURE search_by_perf(valuess varchar2)
is 
    cursor cursor_select is
    select
        merch_id,
        merch_title,
        merch_year,
        merch_unit_price,
        merch_kind,
        genres,
        performers,
        company_name
    from search_in_merch
    where (merch_kind = 'CD' or merch_kind = 'DVD')
        and lower(performers) like lower('%'||valuess||'%');
    
    v_merch_id          search_in_merch.MERCH_ID%TYPE;
    v_merch_title       search_in_merch.MERCH_TITLE%TYPE;
    v_merch_year        search_in_merch.MERCH_YEAR%TYPE;
    v_merch_unit_price  search_in_merch.MERCH_UNIT_PRICE%TYPE;
    v_merch_kind        search_in_merch.MERCH_KIND%TYPE;
    v_genres            search_in_merch.GENRES%TYPE;
    v_performers        search_in_merch.PERFORMERS%TYPE;
    v_company_name      search_in_merch.COMPANY_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_merch_id,
            v_merch_title,
            v_merch_year,
            v_merch_unit_price,
            v_merch_kind,
            v_genres,
            v_performers,
            v_company_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Merch ID => ' || v_merch_id || ' title => ' || v_merch_title ||
                    ' year => ' || v_merch_year || ' unit price => ' || v_merch_unit_price ||
                    ' kind => ' || v_merch_kind || ' genres => ' || v_genres ||
                    ' performers => ' || v_performers || ' company => ' || v_company_name
                );
        end loop;
        close cursor_select;
end search_by_perf;

--exec search_by_perf('moni');

create or replace PROCEDURE search_by_year(valuess varchar2)
is 
    cursor cursor_select is
    select
        merch_id,
        merch_title,
        merch_year,
        merch_unit_price,
        merch_kind,
        genres,
        performers,
        company_name
    from search_in_merch
    where (merch_kind = 'CD' or merch_kind = 'DVD')
        and merch_year like to_date(valuess, 'YYYY-MM-DD');
    
    v_merch_id          search_in_merch.MERCH_ID%TYPE;
    v_merch_title       search_in_merch.MERCH_TITLE%TYPE;
    v_merch_year        search_in_merch.MERCH_YEAR%TYPE;
    v_merch_unit_price  search_in_merch.MERCH_UNIT_PRICE%TYPE;
    v_merch_kind        search_in_merch.MERCH_KIND%TYPE;
    v_genres            search_in_merch.GENRES%TYPE;
    v_performers        search_in_merch.PERFORMERS%TYPE;
    v_company_name      search_in_merch.COMPANY_NAME%TYPE;
    
    begin
        open cursor_select;
        loop fetch cursor_select into         
            v_merch_id,
            v_merch_title,
            v_merch_year,
            v_merch_unit_price,
            v_merch_kind,
            v_genres,
            v_performers,
            v_company_name;
        exit when cursor_select%notfound;
            DBMS_OUTPUT.PUT_LINE
                (
                    'Merch ID => ' || v_merch_id || ' title => ' || v_merch_title ||
                    ' year => ' || v_merch_year || ' unit price => ' || v_merch_unit_price ||
                    ' kind => ' || v_merch_kind || ' genres => ' || v_genres ||
                    ' performers => ' || v_performers || ' company => ' || v_company_name
                );
        end loop;
        close cursor_select;
end search_by_year;

--exec search_by_year('1981-10-1');
