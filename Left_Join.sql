CREATE TABLE Customers (
  CustomerID INT,
  CustomerName VARCHAR(50),
  ContactName VARCHAR(50),
  Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES
  (1, 'Alfreds', 'Maria', 'Germany'),
  (2, 'Ana Trujillo', 'Ana', 'Mexico'),
  (3, 'Antonio', 'Antonio', 'Mexico'),
  (4, 'Around the Horn', 'Thomas', 'UK'),
  (5, 'Berglunds', 'Christina', 'Sweden');

CREATE TABLE Orders (
  OrderID INT,
  CustomerID INT,
  OrderDate DATE
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES
  (1, 3, '2022-01-01'),
  (2, 4, '2022-01-02'),
  (3, 2, '2022-01-03'),
  (4, 1, '2022-01-04'),
  (5, 3, '2022-01-05');


--Sample left join query to fetch orders corresponding to the customers. 
SELECT Customers.CustomerName, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
