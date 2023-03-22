
/*
In this video, we will be discussing the differences between the WHERE and HAVING clauses in SQL.

The WHERE clause is used to filter rows based on a specific condition in the SELECT statement.
It is used with the SELECT, UPDATE, and DELETE statements.
The condition specified in the WHERE clause is applied to each row before the query result set is returned.

On the other hand, the HAVING clause is used to filter groups based on a specific condition in the SELECT statement
that uses aggregate functions like SUM, COUNT, AVG, etc.
It is used with the SELECT statement only. The condition specified in the HAVING clause is applied to the groups formed by the GROUP BY clause
after the aggregation has been performed.

We will discuss the syntax and usage of both clauses, and also show some examples of how they can be used in SQL queries.
By the end of this video, you will have a clear understanding of when to use the WHERE and HAVING clauses in your SQL queries.
*/



--Schema to create the table and insert dummy data
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2022-01-01', 100.00),
(2, 2, '2022-01-01', 200.00),
(3, 1, '2022-01-02', 50.00),
(4, 3, '2022-01-03', 300.00),
(5, 2, '2022-01-03', 150.00);


--Sample query using both Where and Having
SELECT
  customer_id,
  COUNT(*) AS num_orders,
  SUM(total_amount) AS total_spent
FROM orders
WHERE order_date >= '2022-01-01'
GROUP BY customer_id
HAVING COUNT(*) >= 2 AND SUM(total_amount) >= 200.00;
