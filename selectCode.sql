alter session set nls_date_format = 'DD.MM.YYYY';

-- 3.1
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

-- 3.2
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

-- 3.3
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
where c.client_id = &client_id
order by mk.merch_kind ASC, s.sale_date DESC;

-- 3.4
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
    s.sale_date >= to_date(&from_date, 'DD.MM.YYYY') or
    s.sale_date <= to_date(&to_date, 'DD.MM.YYYY')
order by s.sale_date DESC, c.client_name;