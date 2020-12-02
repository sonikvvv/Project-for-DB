alter session set nls_date_format = 'DD.MM.YYYY';

--2
create table search_in_merch as
with search_merch as
(
    select
        m.merch_id,
        m.merch_title,
        m.merch_year,
        m.merch_unit_price,
        mk.merch_kind,
        g.genre_name,
        LISTAGG(p.performer_name, ',') within group (order by p.performer_name) as performers,
        c.company_name
    from merch m
        join merch_genre mg on mg.merch_id = m.merch_id
        join genre g on g.genre_id = mg.genre_id
        join company c on m.company_id = c.company_id
        join merch_performer mp on m.merch_id = mp.merch_id
        join performer p on mp.performer_id = p.performer_id
        join merch_kind mk on m.merch_kind_id = mk.merch_kind_id
    group by m.merch_id, m.merch_title, m.merch_year, m.merch_unit_price, mk.merch_kind, 
             c.company_name, g.genre_name
    order by m.merch_id
)
select 
    s.merch_id,
    s.merch_title,
    s.merch_year,
    s.merch_unit_price,
    s.merch_kind,
    LISTAGG(s.genre_name, ',') within group (order by s.genre_name) as genres,
    s.performers,
    s.company_name
from search_merch s
group by s.merch_id, s.merch_title, s.merch_year, s.merch_unit_price, s.merch_kind, 
s.performers, s.company_name;

desc search_in_merch;

select * 
from search_in_merch
where (merch_kind = 'CD' or merch_kind = 'DVD')
    and lower(company_name) like lower('%&value%'); --mc
    
select * 
from search_in_merch
where (merch_kind = 'CD' or merch_kind = 'DVD')
    and lower(merch_title) like lower('%&resh%'); --resh
    
select *
from search_in_merch
where (merch_kind = 'CD' or merch_kind = 'DVD')
    and merch_year like to_date('&value', 'YYYY-MM-DD'); -- 1981-10-1

select *
from search_in_merch
where (merch_kind = 'CD' or merch_kind = 'DVD')
    and lower(genres) like lower('%&value%'); --op

select *
from search_in_merch
where lower(performers) like lower('%&value%'); --moni

-- 3.1 -- 
select
    s.sale_id,
    s.sale_date, 
    s.client_id,
    e.employee_name,
    e.employee_id
from sales s
join EMPLOYEE e on e.employee_id = s.employee_id
where e.employee_id = &employee_id
group by e.employee_name, s.sale_id, s.sale_date, s.client_id, e.employee_id
order by e.employee_name DESC, s.sale_date DESC;

-- 3.2 --
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

select s.sale_id, s.sale_date, s.client_id, e.employee_name
from sales s
join employee e on s.employee_id = e.employee_id
order by sale_date DESC;

-- 3.3 -- 
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
where c.client_id = &client_id
order by mk.merch_kind ASC, s.sale_date DESC;

-- 3.4 --
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
    (s.sale_date >= to_date('&from_date', 'DD.MM.YYYY')) and
    (s.sale_date <= to_date('&to_datee', 'DD.MM.YYYY'))
order by s.sale_date DESC, c.client_name;