# SQL Joins Demonstration

This repository provides a practical demonstration of different SQL `JOIN` clauses using a sample dataset of customers and orders. Each join type is contained in its own SQL file to clearly illustrate its function and output.

---

## Repository Contents

* `create_db.sql`: A script to create the MySQL database named `task_5`.
* `customers.csv`: Sample data for the `Customers` table.
* `orders.csv`: Sample data for the `Orders` table, linked to customers by `CustomerID`.
* `Inner.sql`, `left.sql`, `right.sql`, `full.sql`: SQL scripts demonstrating each of the major join types.
* `innerjoin.png`, `leftjoin.png`, `rightjoin.png`, `fulljoin.png`: Venn diagrams that visually represent the logic of each join.

---

## How to Use This Repository

1.  **Create Database & Tables**: First, run the `create_db.sql` script to create the `task_5` database. Then, connect to the database and run a `CREATE TABLE` script to set up the `Customers` and `Orders` tables.
2.  **Import Data**: Use a `LOAD DATA INFILE` command in MySQL to import the data from `customers.csv` and `orders.csv` into their respective tables.
3.  **Run Join Queries**: Execute the SQL scripts (`Inner.sql`, `left.sql`, etc.) to see the results of each join.

---

## Join Explanations

### INNER JOIN (`Inner.sql`)

* **What it does:** The `INNER JOIN` returns only the records that have matching `CustomerID` values in **both** the `Customers` and `Orders` tables.
* **Result:** You will see a list of customers who have placed at least one order, along with their order details. Customers who have not placed an order will be excluded.

### LEFT JOIN (`left.sql`)

* **What it does:** The `LEFT JOIN` returns **all** records from the left table (`Customers`) and the matched records from the right table (`Orders`).
* **Result:** You will see all customers. If a customer has placed an order, their order details will be shown. If a customer has not placed an order, their order detail columns will contain `NULL`.

### RIGHT JOIN (`right.sql`)

* **What it does:** The `RIGHT JOIN` returns **all** records from the right table (`Orders`) and the matched records from the left table (`Customers`).
* **Result:** In this specific dataset, the result will be identical to the `INNER JOIN` because every order has a valid, matching customer. If an order existed with an invalid `CustomerID`, it would appear in the results with `NULL` in the customer columns.

### FULL OUTER JOIN (`full.sql`)

* **What it does:** This query emulates a `FULL OUTER JOIN`, which returns all records when there is a match in either the left or the right table. This is achieved by combining a `LEFT JOIN` and a `RIGHT JOIN` with `UNION`.
* **Result:** You will see all customers and all orders. Customers without orders will have `NULL` for order details, and any orders without a matching customer would also be listed (with `NULL` for customer details).
