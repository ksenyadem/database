--Задание 5. Сформулировать 5 смысловых запросов к БД. Написать их на SQL.

/*1.Вывести контактную информацию о поставщиках по условию, вторая цифра номера телефона 5*/
select s.сompany_title "Название компании", s.contact_name "Контактное лицо", s.phone_no "Номер телефона"
from supplier s
where s.phone_no like '%(%)_5%'

--2. Вывести информацию о продукции, категории «Фрукты/овощи».
 select p.product_title "Наименование продукта", p.rest "Остаток", p.unit_price_amt "Цена" from product p, category c
 where c.category_title='Фрукты/овощи' and p.сategory_id=c.category_id 

--3. Вывести информацию о продукции,цена которой лежит в диапозоне от 200 до 500
select * from product p
where p.unit_price_amt between 200 and 500
 
--4. вывести информацию о поставщик, у которых номер вакса не равен null
select s.сompany_title "Название компании", s.contact_name "Контактное лицо", s.phone_no "Номер телефона", s.fax_no "Номер факса" from supplier s 
where s.fax_no is not null

--5 Вывести наименование продукции, цена которой выше средней 
select p.product_title "Наименвоание продукции", p.unit_price_amt "Цена" from product p 
group by p.product_title, p.unit_price_amt 
having p.unit_price_amt >(select avg(p2.unit_price_amt )from product p2 )
