create schema ecommerce_GISMA_3;
use ecommerce_GISMA_3;


create table Customers(
customer_id INT auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) not null unique,
phone_number varchar(50),
registration_date date,
country varchar(50)
);

CREATE TABLE Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
total_amount DECIMAL(10,2),
o_status VARCHAR(20) DEFAULT'Pending',
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE Transactions ( 
    transaction_id INT AUTO_INCREMENT PRIMARY KEY, 
    transaction_date DATE NOT NULL, 
    payment_method VARCHAR(50), 
    amount DECIMAL(10, 2) NOT NULL, 
    order_id INT, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)); 

CREATE TABLE Suppliers ( 
    supplier_id INT AUTO_INCREMENT PRIMARY KEY, 
    supplier_name VARCHAR(100) NOT NULL, 
    contact_name VARCHAR(50), 
    phone VARCHAR(20), 
    country VARCHAR(50)
    );

CREATE TABLE Products ( 
    product_id INT AUTO_INCREMENT PRIMARY KEY, 
    product_name VARCHAR(100) NOT NULL, 
    category VARCHAR(50), 
    price DECIMAL(10, 2) NOT NULL, 
    stock INT DEFAULT 0, 
    supplier_id INT, 
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id) 
); 


CREATE TABLE Order_Details ( 
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY, 
    order_id INT, 
    product_id INT, 
    quantity INT NOT NULL, 
    price_each DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
    FOREIGN KEY (product_id) REFERENCES Products(product_id) 
); 

show tables;