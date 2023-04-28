create database HOME_WORK_2;
show databases;
USE home_work_2;
CREATE TABLE sales
(
	id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	count_product INT
);

SELECT * FROM sales;
INSERT INTO sales (order_date, count_product)
VALUES
	('2022-01-01', 156),
	('2022-01-01', 180),
    ('2022-01-03', 21),
    ('2022-01-04', 124),
    ('2022-01-05', 341);
    
SELECT id AS "Номер заказа",
IF(count_product<100, "Маленький заказ",
	IF(count_product BETWEEN 100 AND 300, "Средний заказ",
		IF(count_product>300, "Большой заказ", "Нет данных"))
) AS "Тип заказа"
FROM sales;

drop table orders;

CREATE TABLE orders
(
	id SERIAL PRIMARY KEY,
    employee_id VARCHAR(5) NOT NULL UNIQUE,
    amount DECIMAL(8,2),
    order_status VARCHAR(16)
);

SELECT * FROM orders;

INSERT INTO orders (employee_id, amount, order_status)
VALUES
    ("e03", 15.0, "OPEN"),
    ("e01", 25.50, "OPEN"),
    ("e05", 100.70, "CLOSED"),
    ("e02", 22.18, "OPEN"),
    ("e04", 9.50, "CANCELLED");
    
SELECT * ,
CASE order_status
    WHEN "OPEN" THEN "Order is in open state"
    WHEN 'CLOSED' THEN "Order is closed"
    WHEN 'CANCELLED' THEN "Order is cancelled"
END AS "full_order_status"
FROM orders;
