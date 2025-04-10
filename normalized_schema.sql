-- Table: products
CREATE TABLE products (
  `Price` FLOAT,
  `Category` VARCHAR(255),
  `ProductID` VARCHAR(255),
  `ProductName` VARCHAR(255)
);

-- Inserting into products
INSERT INTO products VALUES (45.0, 'Electronics', 'P005', 'Bluetooth Speaker');
INSERT INTO products VALUES (15.0, 'Lifestyle', 'P006', 'Water Bottle');
INSERT INTO products VALUES (65.0, 'Fitness', 'P010', 'Running Shoes');
INSERT INTO products VALUES (5.75, 'Stationery', 'P003', 'Notebook');
INSERT INTO products VALUES (10.5, 'Electronics', 'P002', 'USB-C Cable');
INSERT INTO products VALUES (12.99, 'Stationery', 'P004', 'Pen Set');
INSERT INTO products VALUES (32.5, 'Home Office', 'P007', 'Desk Lamp');
INSERT INTO products VALUES (25.99, 'Electronics', 'P001', 'Wireless Mouse');
INSERT INTO products VALUES (29.99, 'Home Office', 'P008', 'Monitor Stand');
INSERT INTO products VALUES (20.0, 'Fitness', 'P009', 'Yoga Mat');


-- Table: orders
CREATE TABLE orders (
  `OrderID` INT,
  `ShippingMethod` VARCHAR(255)
);

-- Inserting into orders
INSERT INTO orders VALUES (1000, 'Air');
INSERT INTO orders VALUES (1000, 'Ground');
INSERT INTO orders VALUES (1001, 'Air');
INSERT INTO orders VALUES (1001, 'Ground');
INSERT INTO orders VALUES (1002, 'Ground');
INSERT INTO orders VALUES (1003, 'Ground');
INSERT INTO orders VALUES (1004, 'Air');
INSERT INTO orders VALUES (1004, 'Ground');
INSERT INTO orders VALUES (1005, 'Express');
INSERT INTO orders VALUES (1006, 'Ground');
INSERT INTO orders VALUES (1006, 'Air');
INSERT INTO orders VALUES (1007, 'Ground');
INSERT INTO orders VALUES (1007, 'Express');
INSERT INTO orders VALUES (1008, 'Express');
INSERT INTO orders VALUES (1008, 'Ground');
INSERT INTO orders VALUES (1009, 'Air');
INSERT INTO orders VALUES (1009, 'Express');
INSERT INTO orders VALUES (1010, 'Express');
INSERT INTO orders VALUES (1011, 'Ground');
INSERT INTO orders VALUES (1011, 'Express');
INSERT INTO orders VALUES (1012, 'Ground');
INSERT INTO orders VALUES (1012, 'Express');
INSERT INTO orders VALUES (1013, 'Air');
INSERT INTO orders VALUES (1013, 'Ground');
INSERT INTO orders VALUES (1014, 'Ground');
INSERT INTO orders VALUES (1014, 'Express');
INSERT INTO orders VALUES (1015, 'Express');
INSERT INTO orders VALUES (1016, 'Air');
INSERT INTO orders VALUES (1016, 'Express');
INSERT INTO orders VALUES (1017, 'Air');
INSERT INTO orders VALUES (1017, 'Express');
INSERT INTO orders VALUES (1018, 'Ground');
INSERT INTO orders VALUES (1019, 'Ground');
INSERT INTO orders VALUES (1020, 'Ground');
INSERT INTO orders VALUES (1021, 'Express');
INSERT INTO orders VALUES (1021, 'Ground');
INSERT INTO orders VALUES (1022, 'Express');
INSERT INTO orders VALUES (1022, 'Ground');
INSERT INTO orders VALUES (1023, 'Air');
INSERT INTO orders VALUES (1023, 'Express');
INSERT INTO orders VALUES (1024, 'Ground');
INSERT INTO orders VALUES (1024, 'Express');
INSERT INTO orders VALUES (1025, 'Express');
INSERT INTO orders VALUES (1025, 'Ground');
INSERT INTO orders VALUES (1026, 'Ground');
INSERT INTO orders VALUES (1026, 'Express');
INSERT INTO orders VALUES (1027, 'Express');
INSERT INTO orders VALUES (1027, 'Air');
INSERT INTO orders VALUES (1028, 'Express');
INSERT INTO orders VALUES (1028, 'Air');
INSERT INTO orders VALUES (1029, 'Express');
INSERT INTO orders VALUES (1029, 'Air');
INSERT INTO orders VALUES (1030, 'Air');
INSERT INTO orders VALUES (1030, 'Express');
INSERT INTO orders VALUES (1031, 'Air');
INSERT INTO orders VALUES (1032, 'Air');
INSERT INTO orders VALUES (1033, 'Ground');
INSERT INTO orders VALUES (1034, 'Ground');
INSERT INTO orders VALUES (1034, 'Express');
INSERT INTO orders VALUES (1035, 'Express');
INSERT INTO orders VALUES (1035, 'Air');
INSERT INTO orders VALUES (1036, 'Ground');
INSERT INTO orders VALUES (1036, 'Air');
INSERT INTO orders VALUES (1037, 'Ground');
INSERT INTO orders VALUES (1037, 'Air');
INSERT INTO orders VALUES (1038, 'Air');
INSERT INTO orders VALUES (1039, 'Express');
INSERT INTO orders VALUES (1040, 'Ground');
INSERT INTO orders VALUES (1040, 'Express');
INSERT INTO orders VALUES (1041, 'Ground');
INSERT INTO orders VALUES (1041, 'Air');
INSERT INTO orders VALUES (1042, 'Express');
INSERT INTO orders VALUES (1042, 'Ground');
INSERT INTO orders VALUES (1043, 'Ground');
INSERT INTO orders VALUES (1044, 'Express');
INSERT INTO orders VALUES (1044, 'Ground');
INSERT INTO orders VALUES (1045, 'Ground');
INSERT INTO orders VALUES (1045, 'Express');
INSERT INTO orders VALUES (1046, 'Express');
INSERT INTO orders VALUES (1046, 'Air');
INSERT INTO orders VALUES (1047, 'Air');
INSERT INTO orders VALUES (1048, 'Air');
INSERT INTO orders VALUES (1049, 'Ground');
INSERT INTO orders VALUES (1049, 'Express');


-- Table: customers
CREATE TABLE customers (
  `CustomerName` VARCHAR(255),
  `CustomerID` VARCHAR(255)
);

-- Inserting into customers
INSERT INTO customers VALUES ('Grace Lee', 'C007');
INSERT INTO customers VALUES ('Jack Wilson', 'C010');
INSERT INTO customers VALUES ('David Wright', 'C004');
INSERT INTO customers VALUES ('Isla Turner', 'C009');
INSERT INTO customers VALUES ('Bob Johnson', 'C002');
INSERT INTO customers VALUES ('Henry Clark', 'C008');
INSERT INTO customers VALUES ('Carol Davis', 'C003');
INSERT INTO customers VALUES ('Frank Moore', 'C006');
INSERT INTO customers VALUES ('Alice Smith', 'C001');
INSERT INTO customers VALUES ('Eva Adams', 'C005');


-- Table: customer_states
CREATE TABLE customer_states (
  `State` VARCHAR(255),
  `CustomerID` VARCHAR(255)
);

-- Inserting into customer_states
INSERT INTO customer_states VALUES ('CA', 'C007');
INSERT INTO customer_states VALUES ('CA', 'C010');
INSERT INTO customer_states VALUES ('FL', 'C004');
INSERT INTO customer_states VALUES ('NY', 'C009');
INSERT INTO customer_states VALUES ('TX', 'C002');
INSERT INTO customer_states VALUES ('FL', 'C008');
INSERT INTO customer_states VALUES ('IL', 'C003');
INSERT INTO customer_states VALUES ('FL', 'C006');
INSERT INTO customer_states VALUES ('FL', 'C007');
INSERT INTO customer_states VALUES ('FL', 'C009');
INSERT INTO customer_states VALUES ('TX', 'C008');
INSERT INTO customer_states VALUES ('CA', 'C008');
INSERT INTO customer_states VALUES ('NY', 'C007');
INSERT INTO customer_states VALUES ('FL', 'C010');
INSERT INTO customer_states VALUES ('TX', 'C007');
INSERT INTO customer_states VALUES ('IL', 'C010');
INSERT INTO customer_states VALUES ('CA', 'C001');
INSERT INTO customer_states VALUES ('TX', 'C003');
INSERT INTO customer_states VALUES ('CA', 'C003');
INSERT INTO customer_states VALUES ('IL', 'C006');
INSERT INTO customer_states VALUES ('IL', 'C005');
INSERT INTO customer_states VALUES ('IL', 'C008');
INSERT INTO customer_states VALUES ('NY', 'C010');
INSERT INTO customer_states VALUES ('IL', 'C004');
INSERT INTO customer_states VALUES ('NY', 'C008');
INSERT INTO customer_states VALUES ('CA', 'C005');
INSERT INTO customer_states VALUES ('TX', 'C005');
INSERT INTO customer_states VALUES ('CA', 'C009');
INSERT INTO customer_states VALUES ('TX', 'C004');
INSERT INTO customer_states VALUES ('IL', 'C009');
INSERT INTO customer_states VALUES ('CA', 'C004');
INSERT INTO customer_states VALUES ('NY', 'C006');
INSERT INTO customer_states VALUES ('FL', 'C002');
INSERT INTO customer_states VALUES ('NY', 'C003');
INSERT INTO customer_states VALUES ('NY', 'C002');
INSERT INTO customer_states VALUES ('CA', 'C006');
INSERT INTO customer_states VALUES ('NY', 'C004');
INSERT INTO customer_states VALUES ('CA', 'C002');
INSERT INTO customer_states VALUES ('TX', 'C001');
INSERT INTO customer_states VALUES ('IL', 'C001');
INSERT INTO customer_states VALUES ('IL', 'C007');
INSERT INTO customer_states VALUES ('TX', 'C010');
INSERT INTO customer_states VALUES ('TX', 'C006');
INSERT INTO customer_states VALUES ('FL', 'C005');
INSERT INTO customer_states VALUES ('NY', 'C005');
INSERT INTO customer_states VALUES ('FL', 'C003');
INSERT INTO customer_states VALUES ('NY', 'C001');


-- Table: customer_cities
CREATE TABLE customer_cities (
  `CustomerID` VARCHAR(255),
  `City` VARCHAR(255)
);

-- Inserting into customer_cities
INSERT INTO customer_cities VALUES ('C007', 'San Francisco');
INSERT INTO customer_cities VALUES ('C010', 'San Francisco');
INSERT INTO customer_cities VALUES ('C004', 'Tampa');
INSERT INTO customer_cities VALUES ('C009', 'New York');
INSERT INTO customer_cities VALUES ('C002', 'Dallas');
INSERT INTO customer_cities VALUES ('C008', 'Miami');
INSERT INTO customer_cities VALUES ('C003', 'Peoria');
INSERT INTO customer_cities VALUES ('C006', 'Tampa');
INSERT INTO customer_cities VALUES ('C007', 'Miami');
INSERT INTO customer_cities VALUES ('C009', 'Orlando');
INSERT INTO customer_cities VALUES ('C008', 'Austin');
INSERT INTO customer_cities VALUES ('C008', 'San Francisco');
INSERT INTO customer_cities VALUES ('C007', 'Buffalo');
INSERT INTO customer_cities VALUES ('C010', 'Miami');
INSERT INTO customer_cities VALUES ('C007', 'Dallas');
INSERT INTO customer_cities VALUES ('C010', 'Chicago');
INSERT INTO customer_cities VALUES ('C001', 'Los Angeles');
INSERT INTO customer_cities VALUES ('C010', 'Tampa');
INSERT INTO customer_cities VALUES ('C006', 'Miami');
INSERT INTO customer_cities VALUES ('C007', 'Orlando');
INSERT INTO customer_cities VALUES ('C003', 'Dallas');
INSERT INTO customer_cities VALUES ('C003', 'San Diego');
INSERT INTO customer_cities VALUES ('C006', 'Peoria');
INSERT INTO customer_cities VALUES ('C005', 'Springfield');
INSERT INTO customer_cities VALUES ('C003', 'Chicago');
INSERT INTO customer_cities VALUES ('C008', 'Chicago');
INSERT INTO customer_cities VALUES ('C010', 'Albany');
INSERT INTO customer_cities VALUES ('C004', 'Peoria');
INSERT INTO customer_cities VALUES ('C008', 'New York');
INSERT INTO customer_cities VALUES ('C006', 'Springfield');
INSERT INTO customer_cities VALUES ('C008', 'Dallas');
INSERT INTO customer_cities VALUES ('C008', 'Los Angeles');
INSERT INTO customer_cities VALUES ('C005', 'San Diego');
INSERT INTO customer_cities VALUES ('C004', 'Miami');
INSERT INTO customer_cities VALUES ('C005', 'Dallas');
INSERT INTO customer_cities VALUES ('C009', 'San Diego');
INSERT INTO customer_cities VALUES ('C004', 'Dallas');
INSERT INTO customer_cities VALUES ('C003', 'San Francisco');
INSERT INTO customer_cities VALUES ('C009', 'Springfield');
INSERT INTO customer_cities VALUES ('C004', 'Los Angeles');
INSERT INTO customer_cities VALUES ('C006', 'Buffalo');
INSERT INTO customer_cities VALUES ('C002', 'Miami');
INSERT INTO customer_cities VALUES ('C003', 'Buffalo');
INSERT INTO customer_cities VALUES ('C002', 'New York');
INSERT INTO customer_cities VALUES ('C010', 'Orlando');
INSERT INTO customer_cities VALUES ('C006', 'Los Angeles');
INSERT INTO customer_cities VALUES ('C005', 'Houston');
INSERT INTO customer_cities VALUES ('C004', 'San Diego');
INSERT INTO customer_cities VALUES ('C009', 'Tampa');
INSERT INTO customer_cities VALUES ('C003', 'Austin');
INSERT INTO customer_cities VALUES ('C007', 'Tampa');
INSERT INTO customer_cities VALUES ('C004', 'Buffalo');
INSERT INTO customer_cities VALUES ('C004', 'Houston');
INSERT INTO customer_cities VALUES ('C002', 'San Diego');
INSERT INTO customer_cities VALUES ('C010', 'Peoria');
INSERT INTO customer_cities VALUES ('C001', 'Austin');
INSERT INTO customer_cities VALUES ('C001', 'Peoria');
INSERT INTO customer_cities VALUES ('C006', 'San Francisco');
INSERT INTO customer_cities VALUES ('C001', 'San Diego');
INSERT INTO customer_cities VALUES ('C003', 'Houston');
INSERT INTO customer_cities VALUES ('C007', 'Austin');
INSERT INTO customer_cities VALUES ('C007', 'New York');
INSERT INTO customer_cities VALUES ('C002', 'Buffalo');
INSERT INTO customer_cities VALUES ('C007', 'Springfield');
INSERT INTO customer_cities VALUES ('C010', 'Austin');
INSERT INTO customer_cities VALUES ('C007', 'Chicago');
INSERT INTO customer_cities VALUES ('C006', 'Dallas');
INSERT INTO customer_cities VALUES ('C005', 'Orlando');
INSERT INTO customer_cities VALUES ('C005', 'Miami');
INSERT INTO customer_cities VALUES ('C004', 'New York');
INSERT INTO customer_cities VALUES ('C007', 'Albany');
INSERT INTO customer_cities VALUES ('C004', 'Chicago');
INSERT INTO customer_cities VALUES ('C005', 'Buffalo');
INSERT INTO customer_cities VALUES ('C010', 'San Diego');
INSERT INTO customer_cities VALUES ('C001', 'Dallas');
INSERT INTO customer_cities VALUES ('C005', 'Los Angeles');
INSERT INTO customer_cities VALUES ('C003', 'Miami');
INSERT INTO customer_cities VALUES ('C001', 'Buffalo');
INSERT INTO customer_cities VALUES ('C009', 'Buffalo');


-- Table: order_details
CREATE TABLE order_details (
  `Quantity` INT,
  `OrderID` INT,
  `ProductID` VARCHAR(255)
);

-- Inserting into order_details
INSERT INTO order_details VALUES (3, 1000, 'P005');
INSERT INTO order_details VALUES (1, 1000, 'P006');
INSERT INTO order_details VALUES (4, 1001, 'P010');
INSERT INTO order_details VALUES (4, 1001, 'P005');
INSERT INTO order_details VALUES (3, 1002, 'P006');
INSERT INTO order_details VALUES (1, 1002, 'P003');
INSERT INTO order_details VALUES (1, 1003, 'P003');
INSERT INTO order_details VALUES (2, 1003, 'P003');
INSERT INTO order_details VALUES (5, 1004, 'P002');
INSERT INTO order_details VALUES (2, 1004, 'P004');
INSERT INTO order_details VALUES (1, 1005, 'P007');
INSERT INTO order_details VALUES (5, 1005, 'P001');
INSERT INTO order_details VALUES (1, 1006, 'P004');
INSERT INTO order_details VALUES (5, 1006, 'P007');
INSERT INTO order_details VALUES (2, 1007, 'P007');
INSERT INTO order_details VALUES (3, 1007, 'P008');
INSERT INTO order_details VALUES (4, 1008, 'P004');
INSERT INTO order_details VALUES (4, 1008, 'P006');
INSERT INTO order_details VALUES (2, 1009, 'P009');
INSERT INTO order_details VALUES (1, 1009, 'P005');
INSERT INTO order_details VALUES (1, 1010, 'P007');
INSERT INTO order_details VALUES (5, 1010, 'P004');
INSERT INTO order_details VALUES (1, 1011, 'P010');
INSERT INTO order_details VALUES (5, 1011, 'P004');
INSERT INTO order_details VALUES (5, 1012, 'P004');
INSERT INTO order_details VALUES (4, 1012, 'P001');
INSERT INTO order_details VALUES (3, 1013, 'P008');
INSERT INTO order_details VALUES (5, 1013, 'P010');
INSERT INTO order_details VALUES (5, 1014, 'P004');
INSERT INTO order_details VALUES (5, 1014, 'P002');
INSERT INTO order_details VALUES (5, 1015, 'P002');
INSERT INTO order_details VALUES (1, 1015, 'P007');
INSERT INTO order_details VALUES (2, 1016, 'P004');
INSERT INTO order_details VALUES (5, 1016, 'P002');
INSERT INTO order_details VALUES (5, 1017, 'P002');
INSERT INTO order_details VALUES (3, 1017, 'P002');
INSERT INTO order_details VALUES (5, 1018, 'P009');
INSERT INTO order_details VALUES (5, 1018, 'P005');
INSERT INTO order_details VALUES (4, 1019, 'P002');
INSERT INTO order_details VALUES (4, 1019, 'P009');
INSERT INTO order_details VALUES (5, 1020, 'P007');
INSERT INTO order_details VALUES (4, 1021, 'P010');
INSERT INTO order_details VALUES (3, 1021, 'P007');
INSERT INTO order_details VALUES (4, 1022, 'P009');
INSERT INTO order_details VALUES (3, 1022, 'P008');
INSERT INTO order_details VALUES (1, 1023, 'P010');
INSERT INTO order_details VALUES (2, 1023, 'P004');
INSERT INTO order_details VALUES (3, 1024, 'P003');
INSERT INTO order_details VALUES (2, 1024, 'P004');
INSERT INTO order_details VALUES (5, 1025, 'P003');
INSERT INTO order_details VALUES (5, 1025, 'P009');
INSERT INTO order_details VALUES (1, 1026, 'P001');
INSERT INTO order_details VALUES (3, 1026, 'P002');
INSERT INTO order_details VALUES (1, 1027, 'P004');
INSERT INTO order_details VALUES (3, 1027, 'P010');
INSERT INTO order_details VALUES (1, 1028, 'P003');
INSERT INTO order_details VALUES (2, 1028, 'P009');
INSERT INTO order_details VALUES (2, 1029, 'P010');
INSERT INTO order_details VALUES (3, 1029, 'P009');
INSERT INTO order_details VALUES (4, 1030, 'P007');
INSERT INTO order_details VALUES (5, 1030, 'P008');
INSERT INTO order_details VALUES (2, 1031, 'P002');
INSERT INTO order_details VALUES (1, 1031, 'P007');
INSERT INTO order_details VALUES (3, 1032, 'P005');
INSERT INTO order_details VALUES (1, 1032, 'P004');
INSERT INTO order_details VALUES (3, 1033, 'P002');
INSERT INTO order_details VALUES (3, 1033, 'P005');
INSERT INTO order_details VALUES (5, 1034, 'P001');
INSERT INTO order_details VALUES (1, 1034, 'P007');
INSERT INTO order_details VALUES (5, 1035, 'P005');
INSERT INTO order_details VALUES (3, 1035, 'P007');
INSERT INTO order_details VALUES (3, 1036, 'P006');
INSERT INTO order_details VALUES (2, 1036, 'P008');
INSERT INTO order_details VALUES (2, 1037, 'P005');
INSERT INTO order_details VALUES (1, 1037, 'P008');
INSERT INTO order_details VALUES (4, 1038, 'P008');
INSERT INTO order_details VALUES (2, 1038, 'P006');
INSERT INTO order_details VALUES (5, 1039, 'P009');
INSERT INTO order_details VALUES (4, 1039, 'P008');
INSERT INTO order_details VALUES (3, 1040, 'P005');
INSERT INTO order_details VALUES (1, 1040, 'P007');
INSERT INTO order_details VALUES (1, 1041, 'P009');
INSERT INTO order_details VALUES (1, 1041, 'P005');
INSERT INTO order_details VALUES (2, 1042, 'P010');
INSERT INTO order_details VALUES (4, 1042, 'P005');
INSERT INTO order_details VALUES (3, 1043, 'P005');
INSERT INTO order_details VALUES (2, 1043, 'P005');
INSERT INTO order_details VALUES (1, 1044, 'P002');
INSERT INTO order_details VALUES (2, 1044, 'P004');
INSERT INTO order_details VALUES (1, 1045, 'P003');
INSERT INTO order_details VALUES (5, 1045, 'P008');
INSERT INTO order_details VALUES (5, 1046, 'P003');
INSERT INTO order_details VALUES (5, 1046, 'P008');
INSERT INTO order_details VALUES (5, 1047, 'P003');
INSERT INTO order_details VALUES (5, 1047, 'P001');
INSERT INTO order_details VALUES (5, 1048, 'P003');
INSERT INTO order_details VALUES (4, 1049, 'P009');
INSERT INTO order_details VALUES (1, 1049, 'P007');


-- Table: order_costs
CREATE TABLE order_costs (
  `OrderID` INT,
  `ProductID` VARCHAR(255),
  `Total` FLOAT
);

-- Inserting into order_costs
INSERT INTO order_costs VALUES (1000, 'P005', 135.0);
INSERT INTO order_costs VALUES (1000, 'P006', 15.0);
INSERT INTO order_costs VALUES (1001, 'P010', 260.0);
INSERT INTO order_costs VALUES (1001, 'P005', 180.0);
INSERT INTO order_costs VALUES (1002, 'P006', 45.0);
INSERT INTO order_costs VALUES (1002, 'P003', 5.75);
INSERT INTO order_costs VALUES (1003, 'P003', 5.75);
INSERT INTO order_costs VALUES (1003, 'P003', 11.5);
INSERT INTO order_costs VALUES (1004, 'P002', 52.5);
INSERT INTO order_costs VALUES (1004, 'P004', 25.98);
INSERT INTO order_costs VALUES (1005, 'P007', 32.5);
INSERT INTO order_costs VALUES (1005, 'P001', 129.95);
INSERT INTO order_costs VALUES (1006, 'P004', 12.99);
INSERT INTO order_costs VALUES (1006, 'P007', 162.5);
INSERT INTO order_costs VALUES (1007, 'P007', 65.0);
INSERT INTO order_costs VALUES (1007, 'P008', 89.97);
INSERT INTO order_costs VALUES (1008, 'P004', 51.96);
INSERT INTO order_costs VALUES (1008, 'P006', 60.0);
INSERT INTO order_costs VALUES (1009, 'P009', 40.0);
INSERT INTO order_costs VALUES (1009, 'P005', 45.0);
INSERT INTO order_costs VALUES (1010, 'P007', 32.5);
INSERT INTO order_costs VALUES (1010, 'P004', 64.95);
INSERT INTO order_costs VALUES (1011, 'P010', 65.0);
INSERT INTO order_costs VALUES (1011, 'P004', 64.95);
INSERT INTO order_costs VALUES (1012, 'P004', 64.95);
INSERT INTO order_costs VALUES (1012, 'P001', 103.96);
INSERT INTO order_costs VALUES (1013, 'P008', 89.97);
INSERT INTO order_costs VALUES (1013, 'P010', 325.0);
INSERT INTO order_costs VALUES (1014, 'P004', 64.95);
INSERT INTO order_costs VALUES (1014, 'P002', 52.5);
INSERT INTO order_costs VALUES (1015, 'P002', 52.5);
INSERT INTO order_costs VALUES (1015, 'P007', 32.5);
INSERT INTO order_costs VALUES (1016, 'P004', 25.98);
INSERT INTO order_costs VALUES (1016, 'P002', 52.5);
INSERT INTO order_costs VALUES (1017, 'P002', 52.5);
INSERT INTO order_costs VALUES (1017, 'P002', 31.5);
INSERT INTO order_costs VALUES (1018, 'P009', 100.0);
INSERT INTO order_costs VALUES (1018, 'P005', 225.0);
INSERT INTO order_costs VALUES (1019, 'P002', 42.0);
INSERT INTO order_costs VALUES (1019, 'P009', 80.0);
INSERT INTO order_costs VALUES (1020, 'P007', 162.5);
INSERT INTO order_costs VALUES (1021, 'P010', 260.0);
INSERT INTO order_costs VALUES (1021, 'P007', 97.5);
INSERT INTO order_costs VALUES (1022, 'P009', 80.0);
INSERT INTO order_costs VALUES (1022, 'P008', 89.97);
INSERT INTO order_costs VALUES (1023, 'P010', 65.0);
INSERT INTO order_costs VALUES (1023, 'P004', 25.98);
INSERT INTO order_costs VALUES (1024, 'P003', 17.25);
INSERT INTO order_costs VALUES (1024, 'P004', 25.98);
INSERT INTO order_costs VALUES (1025, 'P003', 28.75);
INSERT INTO order_costs VALUES (1025, 'P009', 100.0);
INSERT INTO order_costs VALUES (1026, 'P001', 25.99);
INSERT INTO order_costs VALUES (1026, 'P002', 31.5);
INSERT INTO order_costs VALUES (1027, 'P004', 12.99);
INSERT INTO order_costs VALUES (1027, 'P010', 195.0);
INSERT INTO order_costs VALUES (1028, 'P003', 5.75);
INSERT INTO order_costs VALUES (1028, 'P009', 40.0);
INSERT INTO order_costs VALUES (1029, 'P010', 130.0);
INSERT INTO order_costs VALUES (1029, 'P009', 60.0);
INSERT INTO order_costs VALUES (1030, 'P007', 130.0);
INSERT INTO order_costs VALUES (1030, 'P008', 149.95);
INSERT INTO order_costs VALUES (1031, 'P002', 21.0);
INSERT INTO order_costs VALUES (1031, 'P007', 32.5);
INSERT INTO order_costs VALUES (1032, 'P005', 135.0);
INSERT INTO order_costs VALUES (1032, 'P004', 12.99);
INSERT INTO order_costs VALUES (1033, 'P002', 31.5);
INSERT INTO order_costs VALUES (1033, 'P005', 135.0);
INSERT INTO order_costs VALUES (1034, 'P001', 129.95);
INSERT INTO order_costs VALUES (1034, 'P007', 32.5);
INSERT INTO order_costs VALUES (1035, 'P005', 225.0);
INSERT INTO order_costs VALUES (1035, 'P007', 97.5);
INSERT INTO order_costs VALUES (1036, 'P006', 45.0);
INSERT INTO order_costs VALUES (1036, 'P008', 59.98);
INSERT INTO order_costs VALUES (1037, 'P005', 90.0);
INSERT INTO order_costs VALUES (1037, 'P008', 29.99);
INSERT INTO order_costs VALUES (1038, 'P008', 119.96);
INSERT INTO order_costs VALUES (1038, 'P006', 30.0);
INSERT INTO order_costs VALUES (1039, 'P009', 100.0);
INSERT INTO order_costs VALUES (1039, 'P008', 119.96);
INSERT INTO order_costs VALUES (1040, 'P005', 135.0);
INSERT INTO order_costs VALUES (1040, 'P007', 32.5);
INSERT INTO order_costs VALUES (1041, 'P009', 20.0);
INSERT INTO order_costs VALUES (1041, 'P005', 45.0);
INSERT INTO order_costs VALUES (1042, 'P010', 130.0);
INSERT INTO order_costs VALUES (1042, 'P005', 180.0);
INSERT INTO order_costs VALUES (1043, 'P005', 135.0);
INSERT INTO order_costs VALUES (1043, 'P005', 90.0);
INSERT INTO order_costs VALUES (1044, 'P002', 10.5);
INSERT INTO order_costs VALUES (1044, 'P004', 25.98);
INSERT INTO order_costs VALUES (1045, 'P003', 5.75);
INSERT INTO order_costs VALUES (1045, 'P008', 149.95);
INSERT INTO order_costs VALUES (1046, 'P003', 28.75);
INSERT INTO order_costs VALUES (1046, 'P008', 149.95);
INSERT INTO order_costs VALUES (1047, 'P003', 28.75);
INSERT INTO order_costs VALUES (1047, 'P001', 129.95);
INSERT INTO order_costs VALUES (1048, 'P003', 28.75);
INSERT INTO order_costs VALUES (1049, 'P009', 80.0);
INSERT INTO order_costs VALUES (1049, 'P007', 32.5);


-- Table: order_dates
CREATE TABLE order_dates (
  `OrderDate` VARCHAR(255),
  `OrderID` INT,
  `ProductID` VARCHAR(255),
  `CustomerID` VARCHAR(255)
);

-- Inserting into order_dates
INSERT INTO order_dates VALUES ('2023-03-07', 1000, 'P005', 'C007');
INSERT INTO order_dates VALUES ('2023-07-18', 1000, 'P006', 'C010');
INSERT INTO order_dates VALUES ('2023-05-14', 1001, 'P010', 'C004');
INSERT INTO order_dates VALUES ('2023-06-14', 1001, 'P005', 'C009');
INSERT INTO order_dates VALUES ('2023-03-24', 1002, 'P006', 'C002');
INSERT INTO order_dates VALUES ('2023-07-16', 1002, 'P003', 'C008');
INSERT INTO order_dates VALUES ('2023-06-27', 1003, 'P003', 'C003');
INSERT INTO order_dates VALUES ('2023-04-02', 1003, 'P003', 'C006');
INSERT INTO order_dates VALUES ('2023-05-08', 1004, 'P002', 'C007');
INSERT INTO order_dates VALUES ('2023-02-04', 1004, 'P004', 'C009');
INSERT INTO order_dates VALUES ('2023-04-07', 1005, 'P007', 'C008');
INSERT INTO order_dates VALUES ('2023-01-24', 1005, 'P001', 'C008');
INSERT INTO order_dates VALUES ('2023-02-13', 1006, 'P004', 'C007');
INSERT INTO order_dates VALUES ('2023-03-27', 1006, 'P007', 'C010');
INSERT INTO order_dates VALUES ('2023-10-22', 1007, 'P007', 'C007');
INSERT INTO order_dates VALUES ('2023-03-13', 1007, 'P008', 'C010');
INSERT INTO order_dates VALUES ('2023-02-28', 1008, 'P004', 'C009');
INSERT INTO order_dates VALUES ('2023-02-22', 1008, 'P006', 'C001');
INSERT INTO order_dates VALUES ('2023-02-22', 1009, 'P009', 'C010');
INSERT INTO order_dates VALUES ('2023-10-22', 1009, 'P005', 'C006');
INSERT INTO order_dates VALUES ('2023-01-25', 1010, 'P007', 'C007');
INSERT INTO order_dates VALUES ('2023-10-09', 1010, 'P004', 'C003');
INSERT INTO order_dates VALUES ('2023-07-25', 1011, 'P010', 'C003');
INSERT INTO order_dates VALUES ('2023-06-28', 1011, 'P004', 'C006');
INSERT INTO order_dates VALUES ('2023-01-27', 1012, 'P004', 'C005');
INSERT INTO order_dates VALUES ('2023-04-23', 1012, 'P001', 'C003');
INSERT INTO order_dates VALUES ('2023-04-27', 1013, 'P008', 'C008');
INSERT INTO order_dates VALUES ('2023-05-16', 1013, 'P010', 'C010');
INSERT INTO order_dates VALUES ('2023-09-22', 1014, 'P004', 'C004');
INSERT INTO order_dates VALUES ('2023-03-22', 1014, 'P002', 'C008');
INSERT INTO order_dates VALUES ('2023-09-08', 1015, 'P002', 'C006');
INSERT INTO order_dates VALUES ('2023-06-23', 1015, 'P007', 'C004');
INSERT INTO order_dates VALUES ('2023-10-13', 1016, 'P004', 'C008');
INSERT INTO order_dates VALUES ('2023-01-04', 1016, 'P002', 'C008');
INSERT INTO order_dates VALUES ('2023-03-17', 1017, 'P002', 'C005');
INSERT INTO order_dates VALUES ('2023-09-10', 1017, 'P002', 'C004');
INSERT INTO order_dates VALUES ('2023-08-24', 1018, 'P009', 'C008');
INSERT INTO order_dates VALUES ('2023-09-10', 1018, 'P005', 'C005');
INSERT INTO order_dates VALUES ('2023-06-14', 1019, 'P002', 'C009');
INSERT INTO order_dates VALUES ('2023-09-28', 1019, 'P009', 'C004');
INSERT INTO order_dates VALUES ('2023-08-20', 1020, 'P007', 'C003');
INSERT INTO order_dates VALUES ('2023-05-03', 1020, 'P007', 'C007');
INSERT INTO order_dates VALUES ('2023-08-13', 1021, 'P010', 'C009');
INSERT INTO order_dates VALUES ('2023-03-06', 1021, 'P007', 'C003');
INSERT INTO order_dates VALUES ('2023-10-12', 1022, 'P009', 'C004');
INSERT INTO order_dates VALUES ('2023-09-06', 1022, 'P008', 'C006');
INSERT INTO order_dates VALUES ('2023-08-16', 1023, 'P010', 'C002');
INSERT INTO order_dates VALUES ('2023-02-02', 1023, 'P004', 'C008');
INSERT INTO order_dates VALUES ('2023-08-18', 1024, 'P003', 'C003');
INSERT INTO order_dates VALUES ('2023-04-11', 1024, 'P004', 'C008');
INSERT INTO order_dates VALUES ('2023-10-23', 1025, 'P003', 'C002');
INSERT INTO order_dates VALUES ('2023-01-22', 1025, 'P009', 'C010');
INSERT INTO order_dates VALUES ('2023-06-07', 1026, 'P001', 'C006');
INSERT INTO order_dates VALUES ('2023-09-15', 1026, 'P002', 'C005');
INSERT INTO order_dates VALUES ('2023-01-29', 1027, 'P004', 'C004');
INSERT INTO order_dates VALUES ('2023-04-29', 1027, 'P010', 'C009');
INSERT INTO order_dates VALUES ('2023-01-02', 1028, 'P003', 'C003');
INSERT INTO order_dates VALUES ('2023-05-06', 1028, 'P009', 'C007');
INSERT INTO order_dates VALUES ('2023-07-31', 1029, 'P010', 'C004');
INSERT INTO order_dates VALUES ('2023-07-15', 1029, 'P009', 'C004');
INSERT INTO order_dates VALUES ('2023-07-15', 1030, 'P007', 'C004');
INSERT INTO order_dates VALUES ('2023-02-09', 1030, 'P008', 'C002');
INSERT INTO order_dates VALUES ('2023-05-12', 1031, 'P002', 'C010');
INSERT INTO order_dates VALUES ('2023-01-03', 1031, 'P007', 'C001');
INSERT INTO order_dates VALUES ('2023-05-20', 1032, 'P005', 'C003');
INSERT INTO order_dates VALUES ('2023-04-25', 1032, 'P004', 'C001');
INSERT INTO order_dates VALUES ('2023-04-15', 1033, 'P002', 'C006');
INSERT INTO order_dates VALUES ('2023-10-23', 1033, 'P005', 'C001');
INSERT INTO order_dates VALUES ('2023-06-01', 1034, 'P001', 'C003');
INSERT INTO order_dates VALUES ('2023-09-14', 1034, 'P007', 'C007');
INSERT INTO order_dates VALUES ('2023-01-17', 1035, 'P005', 'C007');
INSERT INTO order_dates VALUES ('2023-10-13', 1035, 'P007', 'C002');
INSERT INTO order_dates VALUES ('2023-07-02', 1036, 'P006', 'C007');
INSERT INTO order_dates VALUES ('2023-04-01', 1036, 'P008', 'C010');
INSERT INTO order_dates VALUES ('2023-09-17', 1037, 'P005', 'C001');
INSERT INTO order_dates VALUES ('2023-09-13', 1037, 'P008', 'C007');
INSERT INTO order_dates VALUES ('2023-05-01', 1038, 'P008', 'C006');
INSERT INTO order_dates VALUES ('2023-03-20', 1038, 'P006', 'C007');
INSERT INTO order_dates VALUES ('2023-05-23', 1039, 'P009', 'C008');
INSERT INTO order_dates VALUES ('2023-06-06', 1039, 'P008', 'C006');
INSERT INTO order_dates VALUES ('2023-08-07', 1040, 'P005', 'C004');
INSERT INTO order_dates VALUES ('2023-02-17', 1040, 'P007', 'C005');
INSERT INTO order_dates VALUES ('2023-05-15', 1041, 'P009', 'C003');
INSERT INTO order_dates VALUES ('2023-03-09', 1041, 'P005', 'C006');
INSERT INTO order_dates VALUES ('2023-01-05', 1042, 'P010', 'C005');
INSERT INTO order_dates VALUES ('2023-07-27', 1042, 'P005', 'C004');
INSERT INTO order_dates VALUES ('2023-01-05', 1043, 'P005', 'C003');
INSERT INTO order_dates VALUES ('2023-10-21', 1043, 'P005', 'C007');
INSERT INTO order_dates VALUES ('2023-01-30', 1044, 'P002', 'C004');
INSERT INTO order_dates VALUES ('2023-04-23', 1044, 'P004', 'C003');
INSERT INTO order_dates VALUES ('2023-07-20', 1045, 'P003', 'C005');
INSERT INTO order_dates VALUES ('2023-03-03', 1045, 'P008', 'C010');
INSERT INTO order_dates VALUES ('2023-04-21', 1046, 'P003', 'C001');
INSERT INTO order_dates VALUES ('2023-03-04', 1046, 'P008', 'C003');
INSERT INTO order_dates VALUES ('2023-04-18', 1047, 'P003', 'C005');
INSERT INTO order_dates VALUES ('2023-03-03', 1047, 'P001', 'C003');
INSERT INTO order_dates VALUES ('2023-01-05', 1048, 'P003', 'C003');
INSERT INTO order_dates VALUES ('2023-01-30', 1048, 'P003', 'C004');
INSERT INTO order_dates VALUES ('2023-04-10', 1049, 'P009', 'C001');
INSERT INTO order_dates VALUES ('2023-06-28', 1049, 'P007', 'C009');


