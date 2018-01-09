CREATE DATABASE bamazon

use bamazon

CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT,
	item_id INTEGER(12),
	product_name VARCHAR(45) NOT NULL,
	department_name VARCHAR(45) NOT NULL,
	price DECIMAL(10,2) NULL,
	stock_quantity INT NULL,
	PRIMARY KEY (id)
);

SELECT * from products 

UPDATE products
SET item_id = 200
WHERE id = 2


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (100, "Ruler", "Office Supplies", 3.75, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (200, "Shampoo", "Beauty", 5.25, 34);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (300, "Echo Dot", "Electronics", 29.99, 11);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (400, "Fedora Hat", "Clothing", 10.50, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (500, "Stapler", "Office Supplies", 2.39, 15);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (600, "Eyeliner", "Beauty", 1.99, 24);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (700, "iPhone", "Electronics", 699.98, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (800, "Nike Shoes", "Clothing", 105.66, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (900, "Laptop", "Electronics", 1693.99, 3);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (1000, "Plaid Skirt", "Clothing", 25.45, 33);