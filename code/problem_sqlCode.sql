create or replace PROCEDURE SalesByDate(search_type number, valuess varchar2)
is 
    
    case[search_type]
        when 1 then
            cursor cursor_select is
            select * 
            from search_in_merch
            where (merch_kind = 'CD' or merch_kind = 'DVD')
                and lower(company_name) like lower('%'|| valuess ||'%');
        when 2 then
            cursor cursor_select is
            select * 
            from search_in_merch
            where (merch_kind = 'CD' or merch_kind = 'DVD')
                and lower(merch_title) like lower('%||valuess||%');
        when 3 then
            cursor cursor_select is
            select *
            from search_in_merch
            where (merch_kind = 'CD' or merch_kind = 'DVD')
                and merch_year like to_date(valuess, 'YYYY-MM-DD');
        when 4 then
            cursor cursor_select is
            select *
            from search_in_merch
            where (merch_kind = 'CD' or merch_kind = 'DVD')
                and lower(genres) like lower('%'||valuess||'%');
        when 5 then
            cursor cursor_select is
            select *
            from search_in_merch
            where lower(performers) like lower('%'||valuess||'%');
        else select * from search_in_merch;
    end
    
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
end SalesByDate;