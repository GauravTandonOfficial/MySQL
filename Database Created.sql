CREATE DATABASE ecommerce_analytics;

USE ecommerce_analytics;

CREATE TABLE customers
(customer_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(50),
email VARCHAR(50),
phone VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
registration_date DATE,
PRIMARY KEY(customer_id));

INSERT INTO customers
VALUES
(1,'Rahul','Sharma','Male','rahul@gmail.com','9876543210','Delhi','Delhi','2023-01-15'),
(2,'Anjali','Verma','Female','anjali@gmail.com','9123456780','Noida','Up','2023-02-10'),
(3,'Amit','Singh','Male','amit@gmail.com','9988776655','Lucknow','Up','2023-03-05'),
(4,'Priya','Mehta','Female','priya@gmail.com','9090909090','Mumbai','Maharashtra','2023-04-12');

SELECT *
FROM ecommerce_analytics.customers;

CREATE TABLE categories
(category_id INT NOT NULL,
category_name VARCHAR(50),
PRIMARY KEY(category_id));

INSERT INTO categories
VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Home Appliances'),
(4,'Books');

SELECT *
FROM ecommerce_analytics.categories;

CREATE TABLE products
(product_id INT NOT NULL,
product_name VARCHAR(50),
category_id INT,
price INT,
stock_quantity INT,
brand VARCHAR(50),
PRIMARY KEY(product_id),
FOREIGN KEY(category_id) REFERENCES categories(category_id));

INSERT INTO products
VALUES
(101,'Smartphone',1,18000,50,'Samsung'),
(102,'Laptop',1,55000,30,'Hp'),
(103,'Tshirt',2,799,100,'Puma'),
(104,'Washing Machine',3,24000,20,'LG'),
(105,'Novel Book',4,399,60,'Penguin');

SELECT *
FROM ecommerce_analytics.products;

CREATE TABLE orders
(order_id INT NOT NULL,
customer_id INT,
order_date DATE,
order_status VARCHAR(50),
payment_mode VARCHAR(50),
PRIMARY KEY(order_id),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id));

INSERT INTO orders
VALUES
(5001,1,'2023-06-01','Delivered','UPI'),
(5002,2,'2023-06-05','shipped','Credit Card'),
(5003,3,'2023-06-10','Cancelled','COD'),
(5004,1,'2023-06-15','Delivered','Debit Card');

SELECT *
FROM ecommerce_analytics.orders;

CREATE TABLE order_items
(order_item_id INT NOT NULL,
order_id INT,
product_id INT,
quantity INT,
total_price INT,
PRIMARY KEY(order_item_id),
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES products(product_id));

INSERT INTO order_items
VALUES
(1,5001,101,1,18000),
(2,5001,103,2,1598),
(3,5002,102,1,55000),
(4,5004,105,3,1197);

SELECT *
FROM ecommerce_analytics.order_items;

CREATE TABLE reviews
(review_id INT NOT NULL,
product_id INT,
customer_Id INT,
rating INT,
review_date DATE,
comments VARCHAR(50),
PRIMARY KEY(review_id),
FOREIGN KEY(product_id)REFERENCES products(product_id),
FOREIGN KEY(customer_id)REFERENCES customers(customer_id));

INSERT INTO reviews 
VALUES
(1,101,1,5,'2023-06-10','Excellent Phone'),
(2,103,1,4,'2023-06-12','Good quality'),
(3,102,2,5,'2023-06-15','worth the price'),
(4,105,3,3,'2023-06-18','Average read');

SELECT *
FROM ecommerce_analytics.reviews;
