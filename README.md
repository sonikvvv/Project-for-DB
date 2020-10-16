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
![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/logical%20model.jpg "Logical model image")

## 3. Relation Model
![alt text](https://github.com/sonikvvv/Project-for-DB/blob/main/Relational%20model.jpg "Relational model image")

## 4. Create Tables code 
[Create tables code](https://github.com/sonikvvv/Project-for-DB/blob/main/DB%20Project/SQL_Code.ddl)

## 5. Insert into tables code
[Insert statements](https://github.com/sonikvvv/Project-for-DB/blob/main/insertInto.sql)

## 6. Select statements
