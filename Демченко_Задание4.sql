insert into "Position" values(1,'Координатор по продажам' );
insert into "Position" values(2,'Менеджер по продажам' );
insert into "Position" values(3,'Старший менеджер' );
insert into "Position" values(4,'Администратор' );
insert into "Position" values(5,'Торговый представитель' );

insert into category values(1,'Напитки','Безалкогольные напитки, кофе, чай');
insert into category values(2,'Приправы', 'Сладкие и пикантные соусы, приправы');
insert into category values(3,'Кондитерские издели', 'Десерты, конфеты и сладкие хлеба');
insert into category values(4,'Молочные продукты' );
insert into category values(5,'Зерно, зерновые изделия', 'Хлеба , крекеры , макаронные изделия и крупы' );
insert into category values(6,'Мясо / птица');
insert into category values(7,'Фрукты/овощи' );
insert into category values(8,'Морепродукты' );

insert into customer values(1,'Искра','Шкат	Владимир Владимирович','Иркутск','ул. Журавлева д.17 пом.1','8(302)345-98-87','+7(924)354-45-45');
insert into customer values(2,'Золотая Броть','Игов Рафиль Раифович','Уфа','Хадии-Давлетшиной 5','8(456)645-58-07','+7(954)654-77-45');
insert into customer values(3,'Истра','Фролов Игорь Владимирович','Иркутск','Ленина д.17 пом.1','8(789)345-98-90','+7(924)435-45-89');
insert into customer values(4,'Слайс','Шустов Денис	Сергеевич','Пенза',null,null,'+7(924)354-45-45');
insert into customer values(5,'Натуралист','Игов Рафиль Раифович','Уфа','ул. Хадии-Давлетшиной 5','8(456)645-58-07','+7(984)654-77-45');
insert into customer values(6,'РОССИ','Шкат	Владимир Владимирович','Иркутск','ул. Журавлева д.17 пом.1','8(302)345-98-87','+7(924)354-45-45');
insert into customer values(7,'Караван','Казулина Ангелина Игоревна','Чита','ул. Красноярска д. 15','8(302)245-48-07','+7(914)678-63-43');
insert into customer values(8,'Кон ИД', 'Иванов Иван Иванович',null,null,null,'+7(954)123-85-76');


insert into supplier values(1,'РОТ ФРОНТ', 'Григорьев Данил Леонидович', null, null, 'Москва', 'Ленина 12');
insert into supplier values(2, 'Маккавеевский пищекомбинат',	'Рогов Иван Григорьевич' ,'+7(945)353-35-35', null,'Чита', 'Угданская 13');
insert into supplier values(3,'Дион',	'Суворов Николай Иванович',	'+7(923)344-56-57','8(443)435-42-76', 'Чита', 'Сухая Падь 5');  
insert into supplier values(4,'Читинская мясная компания',	'Смирнов Олег Игоревич', '+7(923)657-75-54','8(302)267-67-09','Чита', 'Промышленная 3');
insert into supplier values(5, 'Горкунов',	'Якимова Юлия Петровна','+7(923)567-21-43', null ,'Иркутск','Ленина 24'); 
insert into supplier values(6, 'Два капитана',	'Ивашкин Илья Юрьевич');
insert into supplier values(7,'ФИШЕРИС', 'Волков Антон Иннокентьевич', null, null, null, null);
insert into supplier values(8,'Русское море',	'Попова Инга Игоревна',null, '8(788)456-06-54',	'Москва',	'Летниковская 10');
insert into supplier values(9,'Читинский молочный комбинат',	'Федоров Иван Сергеевич',	null, null,'Чита', 'Балейская 2');

insert into product values(1,'Зеленый чай', 234, 65, 1,3 );
insert into product values(2,'Яблоки', 178, 200, 7,7 );
insert into product values(3,'Вишневое варенье', 56, 6, 3,6 );
insert into product values(4,'Криветки', 678, 234, 8,8 );
insert into product values(5,'Хлеб бездрожжевой', 65, 78, 5,5 );
insert into product values(6,'Филе индейки', 634, 8, 6,4 );
insert into product values(7,'Куриное филе', 234, 65, 6,4);
insert into product values(8,'Груши', 345, 450, 7,6 );
insert into product values(9,'Бананы', 97, 700, 7,7 );
insert into product values(10,'Мармелад', 134, 65, 3,5 );
insert into product values(11,'Ореховое печенье', 244, 67, 3,5 );

insert into  employe values(1,'Григорьев', 'Илья', '1978-12-01', null, '+7(913)345-67-89', 1);
insert into  employe values(2,'Иванов', 'Иван', '1989-02-01', 'Журавлева 45 д6', '+7(914)789-56-43', 2);
insert into  employe values(3,'Петров', 'Петр', '1996-11-30', null, '+7(913)677-23-12', 4);
insert into  employe values(4,'Федоров', 'Сергей', '1993-12-11', null, '+7(934)553-23-35', 5);
insert into  employe values(5,'Швалва', 'Юлия', '1986-03-26', null, '+7(956)466-43-76', 3);
insert into  employe values(6,'Якимова', 'Жанна', '1989-12-25', null, '+7(924)675-54-34', 4);
insert into  employe values(7,'Нестерова', 'Екатерина', '1988-05-13', null, '+7(963)456-10-56', 2);

insert into  "order" values('AA1','2020-01-20', '2020-01-22', 2, 3);
insert into  "order" values('AA2','2020-01-23', '2020-01-23', 1, 5);
insert into  "order" values('AA3','2020-03-20', '2020-03-25', 3, 7);
insert into  "order" values('AA4','2020-03-04', '2020-03-05', 2, 3);
insert into  "order" values('AA5','2020-03-17', '2020-03-17', 5, 2);
insert into  "order" values('AA6','2020-04-19', '2020-04-20', 6, 1);
insert into  "order" values('AA7','2020-05-20', '2020-05-22', 3, 2);
insert into  "order" values('AA8','2020-06-01', '2020-06-22', 4, 1);

insert into  order_x_product values(23,'AA1',3);
insert into  order_x_product values(3,'AA1',4);
insert into  order_x_product values(56,'AA1',8);
insert into  order_x_product values(20,'AA2',1);
insert into  order_x_product values(39,'AA3',7);
insert into  order_x_product values(53,'AA3',6);
insert into  order_x_product values(23,'AA4',3);
insert into  order_x_product values(21,'AA5',2);
insert into  order_x_product values(2,'AA6',5);
insert into  order_x_product values(23,'AA7',3);
insert into  order_x_product values(37,'AA7',3);
insert into  order_x_product values(45,'AA8',11);
insert into  order_x_product values(3,'AA8',3);
insert into  order_x_product values(32,'AA8',4);
insert into  order_x_product values(16,'AA8',8);