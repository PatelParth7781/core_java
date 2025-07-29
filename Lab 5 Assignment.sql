/*Consider two tables, customers and orders, with the following structures:
 Customers Table:
 customer_id (Primary Key)
 first_name
 Last_name
 Orders Table:
 order_id (Primary Key)
 customer_id (Foreign Key)
 order_date
 Total_amount
*/

mysql> CREATE TABLE customers (customer_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50));
Query OK, 0 rows affected (0.07 sec)

mysql> desc customers;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | int         | NO   | PRI | NULL    |       |
| first_name  | varchar(50) | YES  |     | NULL    |       |
| last_name   | varchar(50) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO customers (customer_id, first_name, last_name) VALUES (1, 'Om', 'Joshi'),(2, 'Pintoo', 'Prajapati'),(3, 'Smith', 'Sthvara');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from customers;
+-------------+------------+-----------+
| customer_id | first_name | last_name |
+-------------+------------+-----------+
|           1 | Om         | Joshi     |
|           2 | Pintoo     | Prajapati |
|           3 | Smith      | Sthvara   |
+-------------+------------+-----------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, total_amount DECIMAL(10, 2), FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
Query OK, 0 rows affected (0.11 sec)

mysql> desc orders;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| order_id     | int           | NO   | PRI | NULL    |       |
| customer_id  | int           | YES  | MUL | NULL    |       |
| order_date   | date          | YES  |     | NULL    |       |
| total_amount | decimal(10,2) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (1, 1, '2022-01-01', 100.00),(2, 1, '2022-01-15', 200.00),(3, 2, '2022-02-01', 50.00);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|        1 |           1 | 2022-01-01 |       100.00 |
|        2 |           1 | 2022-01-15 |       200.00 |
|        3 |           2 | 2022-02-01 |        50.00 |
+----------+-------------+------------+--------------+
3 rows in set (0.00 sec)

/*Write an SQL query to retrieve the first and last names of customers along with the
 order date and total amount of their orders. Use an INNER JOIN to connect the two
 tables.
*/

mysql> SELECT c.first_name, c.last_name, o.order_date, o.total_amount FROM customers c INNER JOIN orders o ON c.customer_id = o.customer_id;
+------------+-----------+------------+--------------+
| first_name | last_name | order_date | total_amount |
+------------+-----------+------------+--------------+
| Om         | Joshi     | 2022-01-01 |       100.00 |
| Om         | Joshi     | 2022-01-15 |       200.00 |
| Pintoo     | Prajapati | 2022-02-01 |        50.00 |
+------------+-----------+------------+--------------+
3 rows in set (0.00 sec)

/*
Consider two tables, departments and employees, with the following structures:
 Departments Table:
 department_id (Primary Key)
 department_name
 Employees Table:
 employee_id (Primary Key)
 first_name
 last_name
 department_id (Foreign Key)
*/

mysql> CREATE TABLE departments (department_id INT PRIMARY KEY, department_name VARCHAR(50));
Query OK, 0 rows affected (0.08 sec)

mysql> desc departments;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO departments (department_id, department_name) VALUES (1, 'Sales'),(2, 'Marketing'),(3, 'IT');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | Sales           |
|             2 | Marketing       |
|             3 | IT              |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE employees (employee_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), department_id INT, FOREIGN KEY (department_id) REFERENCES departments(department_id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc employees;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| first_name    | varchar(50) | YES  |     | NULL    |       |
| last_name     | varchar(50) | YES  |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (1, 'Parth', 'Patel', 1),(2, 'Rahul', 'Chaudhary', 2),(3, 'Hiren', 'Raval', NULL);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from employees;
+-------------+------------+-----------+---------------+
| employee_id | first_name | last_name | department_id |
+-------------+------------+-----------+---------------+
|           1 | Parth      | Patel     |             1 |
|           2 | Rahul      | Chaudhary |             2 |
|           3 | Hiren      | Raval     |          NULL |
+-------------+------------+-----------+---------------+
3 rows in set (0.00 sec)

/*Write an SQL query to retrieve a list of all departments and the names of employees
 who belong to each department. Use a LEFT JOIN to include departments that have no
 employees.
*/

mysql> SELECT d.department_name, e.first_name, e.last_name FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id;
+-----------------+------------+-----------+
| department_name | first_name | last_name |
+-----------------+------------+-----------+
| Sales           | Parth      | Patel     |
| Marketing       | Rahul      | Chaudhary |
| IT              | NULL       | NULL      |
+-----------------+------------+-----------+
3 rows in set (0.00 sec)
