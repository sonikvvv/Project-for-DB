select s.sales_id,s.client_id, s.sale_date, e.employee_name from sales s
join employees e on e.employee_id = s.employee_id

order by s.sale_date, e.employee_name;