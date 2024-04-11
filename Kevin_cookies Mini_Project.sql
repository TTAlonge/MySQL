/*Create a database for a business (Kevin_cookies); It should consist of 3 tables (Customers, Orders, Products)
Customers table
	Cust_ID {Mandatory, Primary key, Auto_increment}
	First Name {Not Mandatory, Unique}
	Last Name {Mandatory, Not Unique}
	Age {Mandatory, Not Unique}
    
    Orders Table
	Order ID {Mandatory, Primary key}
	Order Date {Mandatory, Unique}
	Price per unit {Mandatory, Unique}

Products Table
	Product ID {Mandatory, Primary key, Auto_increment}
	Product Name {Mandatory, Unique}

*/

create database Kevin_cookies;
use Kevin_cookies;
CREATE TABLE  CustomersTable (
	Cust_ID INT(7) NOT NULL AUTO_INCREMENT, 
	FirstName VARCHAR(50) UNIQUE,
    LastName VARCHAR(50) NOT NULL,
    AGE  INT(3) NOT NULL,
    PRIMARY KEY(Cust_ID)
    );
    
INSERT INTO CustomersTable(Cust_ID, FirstName, LastName, AGE)
VALUES(202401, 'Oluchi', 'Okonkwo', 27);
INSERT INTO CustomersTable(FirstName, LastName, AGE)
VALUES('Fatima', 'Gold', 28);
INSERT INTO CustomersTable(FirstName, LastName, AGE)
VALUES('', 'Simi', 29);
INSERT INTO CustomersTable(FirstName, LastName, AGE)
VALUES('Peter', 'Gold', 31);
INSERT INTO CustomersTable(FirstName, LastName, AGE)
VALUES('Promise', 'Isa', 31);

DESCRIBE CustomersTable;
SELECT * FROM CustomersTable;

CREATE TABLE  ProductsTable (
	ProductID INT(7) NOT NULL AUTO_INCREMENT, 
	ProductName VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY(ProductID)
    );
   
INSERT INTO ProductsTable(ProductID, ProductName)
VALUES(100101, 'Chocolate chip cookies');
INSERT INTO ProductsTable(ProductName)
VALUES('Sugar Cookie');
INSERT INTO ProductsTable(ProductName)
VALUES('Shortbread');
INSERT INTO ProductsTable(ProductName)
VALUES('Snickerdoodles');
INSERT INTO ProductsTable(ProductName)
VALUES('Peanut butter cookies');

DESCRIBE ProductsTable;
SELECT * FROM ProductsTable;

CREATE TABLE  OrdersTable (
	Order_ID INT(7) NOT NULL, 
	Order_Date VARCHAR(50) NOT NULL UNIQUE,
    Price_Per_Unit_₦ INT(7) NOT NULL UNIQUE,
    PRIMARY KEY(Order_ID)
    );
    
INSERT INTO OrdersTable(Order_ID, Order_Date, Price_Per_Unit_₦)
VALUES(501201, '20th March', 700);
INSERT INTO OrdersTable(Order_ID, Order_Date, Price_Per_Unit_₦)
VALUES(501202, '22th March', 950);
INSERT INTO OrdersTable(Order_ID, Order_Date, Price_Per_Unit_₦)
VALUES(501203, '29th March', 900);
INSERT INTO OrdersTable(Order_ID, Order_Date, Price_Per_Unit_₦)
VALUES(501204, '2nd April', 650);
INSERT INTO OrdersTable(Order_ID, Order_Date, Price_Per_Unit_₦)
VALUES(501205, '4th April', 850); 


DESCRIBE OrdersTable;
SELECT * FROM OrdersTable;
    
	