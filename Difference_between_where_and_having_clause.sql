
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
