SELECT *
FROM customers c
JOIN orders o 
ON c.customer_id= o.customer_id

-- A left join to join customers on orders

CREATE VIEW order_summary AS
SELECT order_id,item_name, item_price, quantity,customer_id, (item_price * quantity) AS total
FROM orders;

-- created a view to enable me work easily with the total as it is not a new column

SELECT item_name, SUM(quantity) AS total_order_items
FROM order_summary
GROUP BY item_name
ORDER BY total_order_items DESC

-- created a query to find out the total sales on the items

SELECT *
FROM orders
WHERE quantity >10

-- Orders exceeding 10 units

SELECT *,(item_price * quantity) AS total_revenue_nairobi
FROM orders
WHERE add_id = 'nairobi';

SELECT SUM(item_price*quantity) AS total_revenue_nairobi
FROM orders
WHERE add_id='nairobi'

-- total revenue in Nairobi 3999.5

SELECT SUM(item_price*quantity) AS total_revenue_nakuru
FROM orders
WHERE add_id='nakuru'

-- total revenue Nakuru 2208.05

SELECT SUM(item_price*quantity) AS total_revenue_mombasa
FROM orders
WHERE add_id='mombasa'
 
 -- total revenue mombasa 2596.25
 
 -- total revenue ksm 495
 
 SELECT SUM(item_price*quantity) AS total_revenue_western
FROM orders
WHERE add_id='western'

-- total revenue western 3355.75

SELECT SUM(item_price*quantity) AS total_revenue_kitui
FROM orders
WHERE add_id='kitui'
 
 -- total revenue kitui 1193.5
 
-- total salaries for the management who work 6 days a week 8hrs a day:

CREATE VIEW employee_overall AS
SELECT *,(hourly_pay*192) AS monthly_pay
FROM employees

SELECT SUM(monthly_pay)
FROM employee_overall

-- totals used in salaries 6940.80

SELECT *
FROM cost c
JOIN products p
ON c.product_id=p.product_id

CREATE VIEW gross_profit AS
SELECT p.product_id,p.product_name,p.product_price,c.product_cost,(p.product_price-c.product_cost) AS gross_profit
FROM products p
JOIN cost c
ON p.product_id =c.product_id

SELECT *
FROM gross_profit
























