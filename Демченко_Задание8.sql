--8. Создать 2 сложных представления (с джойном).
SET search_path = food_store, public;


--Для каждого служащего посчитать сколько заказов он оформил  и на какую сумму за 2020 год
select e.surname || ' ' || e."Name"  "Фамилия и имя служащего", count(o.employe_id ) "Количество заказов", 
sum(p.unit_price_amt*oxp.quantity) "Сумма заказа"
from employe e
inner join "order" o
on e.employe_id =o.employe_id 
inner join order_x_product oxp 
on o.order_id =oxp.order_id 
inner join product p
on oxp.product_id=p.product_id 
where EXTRACT(month FROM o.order_dt)=2020
group by e.surname, e."Name" 
order by e.surname


--Для каждого заказа вывести информацию о количестве позиций в заказе и о количестве товаров в заказе
select o.order_id "Номер заказа", o.order_dt "Дата заказа", count(oxp.order_id ) "Количество позицый в заказе",
sum(oxp.quantity) "Количество товаров в заказе"
from "order" o 
inner join order_x_product oxp 
on o.order_id =oxp.order_id 
group by o.order_dt, o.order_id

