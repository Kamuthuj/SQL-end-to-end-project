CREATE DATABASE car_store_dbo;
CREATE TABLE orders (row_id INT PRIMARY KEY NOT NULL,
					 Order_id VARCHAR(10) NOT NULL,
                     created_at DATETIME NOT NULL,
                     item_name VARCHAR(20) NOT NULL,
                     item_price DECIMAL(5,2) NOT NULL,
                     quantity INT NOT NULL,
                     customer_id INT NOT NULL,
                     
                     delivery BOOLEAN,
                    add_id INT NOT NULL
);

CREATE TABLE  customers (customer_id INT PRIMARY KEY NOT NULL,
                       customer_fname VARCHAR(10) NOT NULL,
                         customer_lname VARCHAR (10) NOT NULL
);

CREATE TABLE address(add_id INT PRIMARY KEY NOT NULL,
                      delivery_address VARCHAR(20) NOT NULL,
                     delivery_city VARCHAR(20) NOT NULL,
                     delivery_zipcode VARCHAR(10) NOT NULL
);

CREATE TABLE produts(product_id INT NOT NULL,
                     Product_name VARCHAR(10) NOT NULL,
                     product_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE inventory(inventory_id INT PRIMARY KEY NOT NULL,
                       product_id INT NOT NULL,
                       quantity INT NOT NULL
);
                      
CREATE TABLE employees(employee_id INT PRIMARY KEY NOT NULL,
					   employee_fname VARCHAR(15) NOT NULL,
                       employee_lname VARCHAR(15) NOT NULL,
                       employee_position VARCHAR(10) NOT NULL,
                       hourly_pay DECIMAL (5,2) NOT NULL
);
					
