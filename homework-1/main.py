"""Скрипт для заполнения данными таблиц в БД Postgres."""
import psycopg2
import csv
connect = psycopg2.connect(
    host='localhost',
    database='north',
    user='postgres',
    password='Polino4ka!'
)


with connect:
    with connect.cursor() as cursor:
        with open('north_data/customers_data.csv', 'r') as file:
            reader = csv.reader(file)
            next(reader)
            for row in reader:
                cursor.execute("insert into customers_data (customer_id, company_name, contact_name) values (%s, %s, %s)", row)


with connect:
    with connect.cursor() as cursor:
        with open('north_data/employees_data.csv', 'r') as file:
            reader = csv.reader(file)
            next(reader)
            for row in reader:
                cursor.execute("insert into employees_data (employee_id, first_name, last_name, title, birth_date, notes) values (%s, %s, %s, %s, %s, %s)", row)


with connect:
    with connect.cursor() as cursor:
        with open('north_data/orders_data.csv', 'r') as file:
            reader = csv.reader(file)
            next(reader)
            for row in reader:
                cursor.execute("insert into orders_data (order_id, customer_id, employee_id, order_date, ship_city) values (%s, %s, %s, %s, %s)", row)

connect.commit()
