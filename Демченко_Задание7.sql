/*Создать по 1 представлению на каждую таблицу. В представлениях должен быть
реализован механизм маскирования личных (секретных) данных и скрытия технических
 полей (суррогатных ключей и т.п.)*/

--Представление для таблицы Должности
create view Position_v
as
select p.job_title "Название должности" from "Position" p 


--Представление для отображения товара, которые начинаются с буквы М
create view category_v
as
select c.category_id "Номер категории", c.category_title "Название категории" 
from category c 
where c.category_title like 'М%'
with check option

--Представление для отображения информации о клиенте
create view customer_v as
select c.company_title "Название компании", c.contact_name "Контактное лицо",
overlay( c.phone_no placing '***-**-**' from 8 for 16) "Номер телефона"
from customer c 


--Представление для таблицы Служащие
create view employe_v as
select e.surname || ' ' || e."Name"  "Фамилия и имя служащего", 
e.birth_dt "Дата рождения", overlay(e.mobile_phone_no placing '*******' from 5 for 8) "Номер телефона",
p.job_title "Занимаемая должность"
from employe e, "Position" p
where e.position_id =p.position_id 

--Представление для таблицы Заказы
create view order_v as
select overlay(o.order_id placing '**' from 2 for 1) "Номер заказа", 
o.order_dt "Дата заказа", c.company_title "Клиент", e.surname || ' ' || e."Name"  "Фамилия и имя служащего"
from "order" o 
inner join employe e 
on o.employe_id =e.employe_id 
inner join customer c 
on c.customer_id =o.customer_id 

--Представление для таблицы Продукты
create view product_v as
select p.product_title "Наименование продукта", p.rest "Остаток", c.category_title "Категория товара", s.сompany_title "Поставщик"
from product p, category c, supplier s
where p.unit_price_amt >195 and p.сategory_id=c.category_id and p.supplier_id =s.supplier_id 

--Представление для таблицы Поставщики
create view supplier_v as
select s.сompany_title  "Название компании", s.contact_name "Контактное лицо",
overlay( s.phone_no placing '***-**-**' from 8 for 16) "Номер телефона"
from supplier s 
where s.phone_no is not null

--Представление для таблицы Заказы-Продукты
create view oxp_v as
select p.product_title "Наименование продукта", o.order_dt "Дата заказа" , oxp.quantity "Количество товара" from order_x_product oxp, product p, "order" o
where oxp.order_id=o.order_id and p.product_id=oxp.product_id 
and oxp.quantity>=50
