This is a database for a business (Kevin_cookies); It consist of 3 tables (Customers, Orders, Products)......

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
