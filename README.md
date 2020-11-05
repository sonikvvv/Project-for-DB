# Project-for-DB

## 1. Assignment
Да се проектира и реализира база от данни за **МУЗИКАЛЕН МАГАЗИН**, която да съхранява следната информация: 
1.	*Стока (CD, DVD, Blue-Ray, и др.)* – вид, година, наименование, изпълнител, жанр, музикална компания, единична цена.
2.	*Клиент* – име, адрес и телефон.
3.	*Служител* – име, позиция, телефон.
4.	*Продажби* – клиент, служител, дата на продажба, стоки, брой.

Правила:
* Всеки клиент може да закупи повече от една стока.
* Всяка стока е от един: вид, жанр, изпълнител, компания.

Базата данни трябва да е **нормализирана** и да позволява:
1.	**Въвеждане и корекция** на данни.
2.	**Търсене на CD, DVD** по: вид, изпълнител, жанр, година, музикална компания.
3.	**Справки** за:
    * Продажби на служител, подредени по дата.
    * Последните 5 продажби на стоки, подредени по служител.
    * Закупени стоки от клиент, подредени по вид и дата.
    * Закупени стоки за период, подредени по клиенти и дати.

## 2. Logical Model
![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/logical%20model.jpg "Logical model image")

## 3. Relation Model
![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/Relational%20model.jpg "Relational model image")

## 4. Create Tables code 
[Create tables code](https://github.com/sonikvvv/Project-for-DB/blob/main/DB%20Project/SQL_Code.ddl)

## 5. Insert into tables code
[Insert statements](https://github.com/sonikvvv/Project-for-DB/blob/main/insertInto.sql)

## 6. Select statements
1. Продажби на служител, подредени по дата. e.employee_id = 5
    ```sql
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
    ```
    ![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/select%203.1%20empl5.jpg "Result from first query")
2. Последните 5 продажби на стоки, подредени по служител.
    * Продажби подредени по дата.
        ```sql
        select s.sale_id, s.sale_date, s.client_id, e.employee_name
        from sales s
        join employee e on s.employee_id = e.employee_id
        order by sale_date DESC;
        ```
       ![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/select%203.2.1.jpg "Result from second query")
    * Последните 5 продажби на стоки.
        ```sql
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
        ```
        ![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/select%203.2.2.jpg "Result from third query")
3. Закупени стоки от клиент, подредени по вид и дата.
    ```sql
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
    ```
    ![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/images/select%203.3%20client4.jpg "Result from fourth query")
4. Закупени стоки за период, подредени по клиенти и дати.
    ```sql
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
    ```

