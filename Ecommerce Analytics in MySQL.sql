CREATE DATABASE ECommerce_Analytics;

USE ECommerce_Analytics;

CREATE TABLE customers(
customer_id INT NOT NULL,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(30),
phone VARCHAR(20),
city VARCHAR(20),
state VARCHAR(20),
join_date DATE,
PRIMARY KEY(customer_id));

INSERT INTO customers(customer_id,first_name,last_name,email,phone,city,state,join_date)
VALUES
(1,'Rohan','Mehta','rohan.mehta@gmail.com','9876543210','Mumbai','MH','2023-01-15'),
(2,'Priya','Singh','Priya.Singh@gmail.com','9988776655','Delhi','DL','2023-01-15'),
(3,'Aman','Gupta','aman.gupta@gmai.com','9123456789','Pune','MH','2023-03-05'),
(4,'Neha','Sharma','neha.sharma@gmail.com','9087654321','Jaipur','RJ','2023-05-12'),
(5,'Raj','Verma','raj.verma@gmail.com','9090909090','Kolkata','WB','2023-07-21');

CREATE TABLE categories(
category_id INT NOT NULL,
category_name VARCHAR(20),
PRIMARY KEY(category_id));

INSERT INTO categories(category_id,category_name)
VALUES
(1,'Electronics'),
(2,'Fashion'),
(3,'Home & Fashion'),
(4,'Sprots & Fitness');

CREATE TABLE Products(
product_id INT NOT NULL,
product_name VARCHAR(20),
category_id INT,
price INT,
brand VARCHAR(20),
PRIMARY KEY(product_id),
FOREIGN KEY (category_id) REFERENCES categories (category_id));

INSERT INTO products(product_id,product_name,category_id,price,brand)
VALUES
(101,'Wireless Earbuds',1,1499,'Boat'),
(102,'Smartwatch',1,2999,'Noise'),
(103,'Mens Hoodie',2,899,'HRX'),
(104,'Ceramic Dinner Set',3,1599,'ClayArt'),
(105,'Yoga Mat',4,699,'CultSport');

CREATE TABLE orders(
order_id INT NOT NULL,
customer_id INT,
order_date DATE,
order_status VARCHAR(20),
delivery_date VARCHAR(20),
PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id));

INSERT INTO orders(order_id,customer_id,order_date,order_status,delivery_date)
VALUES
(5001,1,'2023-09-12','Delivered','2023-09-15'),
(5002,3,'2023-09-13','Cancelled','NULL'),
(5003,2,'2023-09-15','Delivered','2023-09-19'),
(5004,4,'2023-09-18','Shipped','NULL'),
(5005,1,'2023-09-19','Delivered','2023-09-22');

CREATE TABLE order_items(
item_id INT NOT NULL,
order_id INT,
product_id INT,
quantity INT,
price_at_purchase INT,
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES products(product_id));

INSERT INTO products(item_id,order_id,product_id,quantity,price_at_purchase)
VALUES
(1,5001,101,1,1499),
(2,5001,103,2,899),
(3,5003,102,1,2999),
(4,5004,105,1,699),
(5,5005,104,1,1599);

CREATE TABLE payments(
payment_id INT NOT NULL,
order_id INT,
payment_mode VARCHAR(10),
payment_status VARCHAR(10),
amount_paid INT,
FOREIGN KEY (order_id) REFERENCES orders (order_id));

INSERT INTO payments(payment_id,order_id,payment_mode,payment_status,amount_paid)
VALUES
(9001,5001,'UPI','Successful',3297),
(9002,5003,'Card','Successful',2999),
(9003,5004,'COD','Pending',699),
(9004,5005,'UPI','Successful',1599);

CREATE TABLE inventory(
product_id INT NOT NULL,
stock_quantity INT,
Last_updated DATE,
FOREIGN KEY(product_id) REFERENCES products(product_id));

INSERT INTO inventory(product_id,stock_quantity,last_updated)
VALUES
(101,35,'2023-09-20'),
(102,20,'2023-09-21'),
(103,50,'2023-09-19'),
(104,10,'2023-09-20'),
(105,75,'2023-09-18');


