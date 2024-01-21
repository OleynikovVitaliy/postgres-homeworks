-- SQL-команды для создания таблиц
CREATE TABLE customers_data
(
	customer_id VARCHAR (50) PRIMARY KEY,
	company_name VARCHAR (50) NOT NULL,
	contact_name VARCHAR (50) NOT NULL
);

CREATE TABLE employees_data
(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	title VARCHAR (50) NOT NULL,
	birth_date DATE NOT NULL,
	notes TEXT
);

CREATE TABLE orders_data
(
	order_id INT PRIMARY KEY,
	customer_id VARCHAR (50) REFERENCES customers_data (customer_id) NOT NULL,
	employee_id INT REFERENCES employees_data (employee_id) NOT NULL,
	order_date DATE NOT NULL,
	ship_city VARCHAR (50) NOT NULL
)
