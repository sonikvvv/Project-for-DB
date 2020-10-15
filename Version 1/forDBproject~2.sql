select *
from sales s
--join sales_merch_quantity smq on smq.sales_id = s.sales_id
;
select * from sales_merch_quantity order by sales_id;

select sales_id, 
    listagg(merch_id, ',') within group(order by merch_id) as merch_id,
    listagg(quantity,',') within group(order by sales_id) as quantity
from sales_merch_quantity 
group by sales_id;

select smg.sales_id, m.merch_name, smg.quantity from sales_merch_quantity smg
join merchandise m on m.merch_id = smg.merch_id
order by smg.sales_id;

select 
    s.sales_id,
    s.sale_date,
    e.employee_name,
    c.client_name,
    smg.quantity,
    m.merch_name,
    to_char(m.year_made, 'YYYY') as year_made,
    m.company,
    m.performer,
    mk.merch_kind_name,
    mg.music_genre_name,
    m.unit_price,
    smg.quantity * m.unit_price as total
from sales s 
join clients c on c.client_id = s.client_id
join sales_merch_quantity smg on smg.sales_id = s.sales_id
join merchandise m on m.merch_id = smg.merch_id
join merch_kind mk on mk.merch_kind_id = m.merch_id
join music_genres mg on mg.music_genre_id = m.music_genre_id
join employees e on e.employee_id = s.sales_id
group by s.sales_id, s.sale_date, e.employee_name, c.client_name, smg.quantity, 
m.merch_name, to_char(m.year_made, 'YYYY'), m.company, m.performer, mk.merch_kind_name, 
mg.music_genre_name, m.unit_price, smg.quantity * m.unit_price
order by s.sales_id;


select 5 * 6 from dual;