create schema food_store; 

create table Customer (
	Customer_id integer NOT null
	,Company_title varchar(100) NOT null
	,Contact_name varchar(100) NOT null
	,City varchar(50) 
	,Adress varchar(100) 
	,Fax_no varchar(15) check (Fax_no like '8(___)___-__-__')
	,Phone_no varchar(16) check (Phone_no like '+7(9__)___-__-__')
	,PRIMARY KEY (Customer_id)
);

create table Category (
	Category_id integer NOT null
	,Category_title varchar(50) NOT null
	,Comment_txt text 
	,PRIMARY KEY (Category_id)
);

create table Supplier (
	Supplier_id integer NOT null
	,Сompany_title varchar(100) NOT null
	,Contact_name varchar(100) NOT null
	,Phone_no varchar(16) check (Phone_no like '+7(9__)___-__-__') NOT null
	,Fax_no varchar(15) check (Fax_no like '8(___)___-__-__')
	,City varchar(50) 
	,Adress varchar(100) 
	,PRIMARY KEY (Supplier_id)
);

create table "Position" (
	Position_id integer NOT null
	,Job_title varchar(100) NOT null
	,Comment_txt TEXT
	,PRIMARY KEY (Position_id)
);

create table Employe (
	Employe_id integer NOT null
	,Surname varchar(50) NOT null
	,"Name" varchar(50) NOT null
	,Birth_dt date
	,Adress varchar(100) 
	,Mobile_phone_no varchar(16) check (Mobile_phone_no like '+7(9__)___-__-__')
	,Position_id INTEGER references "Position"
	,PRIMARY KEY (Employe_id)
);

create table Product (
	Product_id integer NOT null
	,Product_Title varchar(100) NOT null
	,Unit_price_amt DECIMAL(12, 2) NOT null
	,Rest INTEGER 
	,Сategory_id INTEGER references Category
	,Supplier_id INTEGER references Supplier
	,PRIMARY KEY (Product_id)
);

create table "order" (
	Order_id VARCHAR(4) NOT null
	,Order_dt Date NOT null
	,ispatch_dt Date NOT null
	,Customer_id INTEGER references Customer
	,Employe_id INTEGER references Employe
	,PRIMARY KEY (Order_id)
);

create table Order_X_Product  (
	Quantity INTEGER NOT null
	,Order_id VARCHAR(4) references "order"
	,Product_id INTEGER references Product
);