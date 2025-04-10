-- Table: products
CREATE TABLE products (
  `Price` FLOAT,
  `ProductName` VARCHAR(255),
  `ProductID` VARCHAR(255),
  `Category` VARCHAR(255)
);

-- Inserting into products
INSERT INTO products VALUES (45.0, 'Bluetooth Speaker', 'P005', 'Electronics');
INSERT INTO products VALUES (15.0, 'Water Bottle', 'P006', 'Lifestyle');
INSERT INTO products VALUES (65.0, 'Running Shoes', 'P010', 'Fitness');
INSERT INTO products VALUES (5.75, 'Notebook', 'P003', 'Stationery');
INSERT INTO products VALUES (10.5, 'USB-C Cable', 'P002', 'Electronics');
INSERT INTO products VALUES (12.99, 'Pen Set', 'P004', 'Stationery');
INSERT INTO products VALUES (32.5, 'Desk Lamp', 'P007', 'Home Office');
INSERT INTO products VALUES (25.99, 'Wireless Mouse', 'P001', 'Electronics');
INSERT INTO products VALUES (29.99, 'Monitor Stand', 'P008', 'Home Office');
INSERT INTO products VALUES (20.0, 'Yoga Mat', 'P009', 'Fitness');


-- Table: orders_shipping_methods
CREATE TABLE orders_shipping_methods (
  `OrderID` INT,
  `ShippingMethod` VARCHAR(255)
);

-- Inserting into orders_shipping_methods
INSERT INTO orders_shipping_methods VALUES (1000, 'Air');
INSERT INTO orders_shipping_methods VALUES (1000, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1001, 'Air');
INSERT INTO orders_shipping_methods VALUES (1001, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1002, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1003, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1004, 'Air');
INSERT INTO orders_shipping_methods VALUES (1004, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1005, 'Express');
INSERT INTO orders_shipping_methods VALUES (1006, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1006, 'Air');
INSERT INTO orders_shipping_methods VALUES (1007, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1007, 'Express');
INSERT INTO orders_shipping_methods VALUES (1008, 'Express');
INSERT INTO orders_shipping_methods VALUES (1008, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1009, 'Air');
INSERT INTO orders_shipping_methods VALUES (1009, 'Express');
INSERT INTO orders_shipping_methods VALUES (1010, 'Express');
INSERT INTO orders_shipping_methods VALUES (1011, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1011, 'Express');
INSERT INTO orders_shipping_methods VALUES (1012, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1012, 'Express');
INSERT INTO orders_shipping_methods VALUES (1013, 'Air');
INSERT INTO orders_shipping_methods VALUES (1013, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1014, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1014, 'Express');
INSERT INTO orders_shipping_methods VALUES (1015, 'Express');
INSERT INTO orders_shipping_methods VALUES (1016, 'Air');
INSERT INTO orders_shipping_methods VALUES (1016, 'Express');
INSERT INTO orders_shipping_methods VALUES (1017, 'Air');
INSERT INTO orders_shipping_methods VALUES (1017, 'Express');
INSERT INTO orders_shipping_methods VALUES (1018, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1019, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1020, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1021, 'Express');
INSERT INTO orders_shipping_methods VALUES (1021, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1022, 'Express');
INSERT INTO orders_shipping_methods VALUES (1022, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1023, 'Air');
INSERT INTO orders_shipping_methods VALUES (1023, 'Express');
INSERT INTO orders_shipping_methods VALUES (1024, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1024, 'Express');
INSERT INTO orders_shipping_methods VALUES (1025, 'Express');
INSERT INTO orders_shipping_methods VALUES (1025, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1026, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1026, 'Express');
INSERT INTO orders_shipping_methods VALUES (1027, 'Express');
INSERT INTO orders_shipping_methods VALUES (1027, 'Air');
INSERT INTO orders_shipping_methods VALUES (1028, 'Express');
INSERT INTO orders_shipping_methods VALUES (1028, 'Air');
INSERT INTO orders_shipping_methods VALUES (1029, 'Express');
INSERT INTO orders_shipping_methods VALUES (1029, 'Air');
INSERT INTO orders_shipping_methods VALUES (1030, 'Air');
INSERT INTO orders_shipping_methods VALUES (1030, 'Express');
INSERT INTO orders_shipping_methods VALUES (1031, 'Air');
INSERT INTO orders_shipping_methods VALUES (1032, 'Air');
INSERT INTO orders_shipping_methods VALUES (1033, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1034, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1034, 'Express');
INSERT INTO orders_shipping_methods VALUES (1035, 'Express');
INSERT INTO orders_shipping_methods VALUES (1035, 'Air');
INSERT INTO orders_shipping_methods VALUES (1036, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1036, 'Air');
INSERT INTO orders_shipping_methods VALUES (1037, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1037, 'Air');
INSERT INTO orders_shipping_methods VALUES (1038, 'Air');
INSERT INTO orders_shipping_methods VALUES (1039, 'Express');
INSERT INTO orders_shipping_methods VALUES (1040, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1040, 'Express');
INSERT INTO orders_shipping_methods VALUES (1041, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1041, 'Air');
INSERT INTO orders_shipping_methods VALUES (1042, 'Express');
INSERT INTO orders_shipping_methods VALUES (1042, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1043, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1044, 'Express');
INSERT INTO orders_shipping_methods VALUES (1044, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1045, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1045, 'Express');
INSERT INTO orders_shipping_methods VALUES (1046, 'Express');
INSERT INTO orders_shipping_methods VALUES (1046, 'Air');
INSERT INTO orders_shipping_methods VALUES (1047, 'Air');
INSERT INTO orders_shipping_methods VALUES (1048, 'Air');
INSERT INTO orders_shipping_methods VALUES (1049, 'Ground');
INSERT INTO orders_shipping_methods VALUES (1049, 'Express');


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


-- Table: customer_state
CREATE TABLE customer_state (
  `CustomerID` VARCHAR(255),
  `State` VARCHAR(255)
);

-- Inserting into customer_state
INSERT INTO customer_state VALUES ('C007', 'CA');
INSERT INTO customer_state VALUES ('C010', 'CA');
INSERT INTO customer_state VALUES ('C004', 'FL');
INSERT INTO customer_state VALUES ('C009', 'NY');
INSERT INTO customer_state VALUES ('C002', 'TX');
INSERT INTO customer_state VALUES ('C008', 'FL');
INSERT INTO customer_state VALUES ('C003', 'IL');
INSERT INTO customer_state VALUES ('C006', 'FL');
INSERT INTO customer_state VALUES ('C007', 'FL');
INSERT INTO customer_state VALUES ('C009', 'FL');
INSERT INTO customer_state VALUES ('C008', 'TX');
INSERT INTO customer_state VALUES ('C008', 'CA');
INSERT INTO customer_state VALUES ('C007', 'NY');
INSERT INTO customer_state VALUES ('C010', 'FL');
INSERT INTO customer_state VALUES ('C007', 'TX');
INSERT INTO customer_state VALUES ('C010', 'IL');
INSERT INTO customer_state VALUES ('C001', 'CA');
INSERT INTO customer_state VALUES ('C003', 'TX');
INSERT INTO customer_state VALUES ('C003', 'CA');
INSERT INTO customer_state VALUES ('C006', 'IL');
INSERT INTO customer_state VALUES ('C005', 'IL');
INSERT INTO customer_state VALUES ('C008', 'IL');
INSERT INTO customer_state VALUES ('C010', 'NY');
INSERT INTO customer_state VALUES ('C004', 'IL');
INSERT INTO customer_state VALUES ('C008', 'NY');
INSERT INTO customer_state VALUES ('C005', 'CA');
INSERT INTO customer_state VALUES ('C005', 'TX');
INSERT INTO customer_state VALUES ('C009', 'CA');
INSERT INTO customer_state VALUES ('C004', 'TX');
INSERT INTO customer_state VALUES ('C009', 'IL');
INSERT INTO customer_state VALUES ('C004', 'CA');
INSERT INTO customer_state VALUES ('C006', 'NY');
INSERT INTO customer_state VALUES ('C002', 'FL');
INSERT INTO customer_state VALUES ('C003', 'NY');
INSERT INTO customer_state VALUES ('C002', 'NY');
INSERT INTO customer_state VALUES ('C006', 'CA');
INSERT INTO customer_state VALUES ('C004', 'NY');
INSERT INTO customer_state VALUES ('C002', 'CA');
INSERT INTO customer_state VALUES ('C001', 'TX');
INSERT INTO customer_state VALUES ('C001', 'IL');
INSERT INTO customer_state VALUES ('C007', 'IL');
INSERT INTO customer_state VALUES ('C010', 'TX');
INSERT INTO customer_state VALUES ('C006', 'TX');
INSERT INTO customer_state VALUES ('C005', 'FL');
INSERT INTO customer_state VALUES ('C005', 'NY');
INSERT INTO customer_state VALUES ('C003', 'FL');
INSERT INTO customer_state VALUES ('C001', 'NY');


-- Table: customer_city
CREATE TABLE customer_city (
  `CustomerID` VARCHAR(255),
  `City` VARCHAR(255)
);

-- Inserting into customer_city
INSERT INTO customer_city VALUES ('C007', 'San Francisco');
INSERT INTO customer_city VALUES ('C010', 'San Francisco');
INSERT INTO customer_city VALUES ('C004', 'Tampa');
INSERT INTO customer_city VALUES ('C009', 'New York');
INSERT INTO customer_city VALUES ('C002', 'Dallas');
INSERT INTO customer_city VALUES ('C008', 'Miami');
INSERT INTO customer_city VALUES ('C003', 'Peoria');
INSERT INTO customer_city VALUES ('C006', 'Tampa');
INSERT INTO customer_city VALUES ('C007', 'Miami');
INSERT INTO customer_city VALUES ('C009', 'Orlando');
INSERT INTO customer_city VALUES ('C008', 'Austin');
INSERT INTO customer_city VALUES ('C008', 'San Francisco');
INSERT INTO customer_city VALUES ('C007', 'Buffalo');
INSERT INTO customer_city VALUES ('C010', 'Miami');
INSERT INTO customer_city VALUES ('C007', 'Dallas');
INSERT INTO customer_city VALUES ('C010', 'Chicago');
INSERT INTO customer_city VALUES ('C001', 'Los Angeles');
INSERT INTO customer_city VALUES ('C010', 'Tampa');
INSERT INTO customer_city VALUES ('C006', 'Miami');
INSERT INTO customer_city VALUES ('C007', 'Orlando');
INSERT INTO customer_city VALUES ('C003', 'Dallas');
INSERT INTO customer_city VALUES ('C003', 'San Diego');
INSERT INTO customer_city VALUES ('C006', 'Peoria');
INSERT INTO customer_city VALUES ('C005', 'Springfield');
INSERT INTO customer_city VALUES ('C003', 'Chicago');
INSERT INTO customer_city VALUES ('C008', 'Chicago');
INSERT INTO customer_city VALUES ('C010', 'Albany');
INSERT INTO customer_city VALUES ('C004', 'Peoria');
INSERT INTO customer_city VALUES ('C008', 'New York');
INSERT INTO customer_city VALUES ('C006', 'Springfield');
INSERT INTO customer_city VALUES ('C008', 'Dallas');
INSERT INTO customer_city VALUES ('C008', 'Los Angeles');
INSERT INTO customer_city VALUES ('C005', 'San Diego');
INSERT INTO customer_city VALUES ('C004', 'Miami');
INSERT INTO customer_city VALUES ('C005', 'Dallas');
INSERT INTO customer_city VALUES ('C009', 'San Diego');
INSERT INTO customer_city VALUES ('C004', 'Dallas');
INSERT INTO customer_city VALUES ('C003', 'San Francisco');
INSERT INTO customer_city VALUES ('C009', 'Springfield');
INSERT INTO customer_city VALUES ('C004', 'Los Angeles');
INSERT INTO customer_city VALUES ('C006', 'Buffalo');
INSERT INTO customer_city VALUES ('C002', 'Miami');
INSERT INTO customer_city VALUES ('C003', 'Buffalo');
INSERT INTO customer_city VALUES ('C002', 'New York');
INSERT INTO customer_city VALUES ('C010', 'Orlando');
INSERT INTO customer_city VALUES ('C006', 'Los Angeles');
INSERT INTO customer_city VALUES ('C005', 'Houston');
INSERT INTO customer_city VALUES ('C004', 'San Diego');
INSERT INTO customer_city VALUES ('C009', 'Tampa');
INSERT INTO customer_city VALUES ('C003', 'Austin');
INSERT INTO customer_city VALUES ('C007', 'Tampa');
INSERT INTO customer_city VALUES ('C004', 'Buffalo');
INSERT INTO customer_city VALUES ('C004', 'Houston');
INSERT INTO customer_city VALUES ('C002', 'San Diego');
INSERT INTO customer_city VALUES ('C010', 'Peoria');
INSERT INTO customer_city VALUES ('C001', 'Austin');
INSERT INTO customer_city VALUES ('C001', 'Peoria');
INSERT INTO customer_city VALUES ('C006', 'San Francisco');
INSERT INTO customer_city VALUES ('C001', 'San Diego');
INSERT INTO customer_city VALUES ('C003', 'Houston');
INSERT INTO customer_city VALUES ('C007', 'Austin');
INSERT INTO customer_city VALUES ('C007', 'New York');
INSERT INTO customer_city VALUES ('C002', 'Buffalo');
INSERT INTO customer_city VALUES ('C007', 'Springfield');
INSERT INTO customer_city VALUES ('C010', 'Austin');
INSERT INTO customer_city VALUES ('C007', 'Chicago');
INSERT INTO customer_city VALUES ('C006', 'Dallas');
INSERT INTO customer_city VALUES ('C005', 'Orlando');
INSERT INTO customer_city VALUES ('C005', 'Miami');
INSERT INTO customer_city VALUES ('C004', 'New York');
INSERT INTO customer_city VALUES ('C007', 'Albany');
INSERT INTO customer_city VALUES ('C004', 'Chicago');
INSERT INTO customer_city VALUES ('C005', 'Buffalo');
INSERT INTO customer_city VALUES ('C010', 'San Diego');
INSERT INTO customer_city VALUES ('C001', 'Dallas');
INSERT INTO customer_city VALUES ('C005', 'Los Angeles');
INSERT INTO customer_city VALUES ('C003', 'Miami');
INSERT INTO customer_city VALUES ('C001', 'Buffalo');
INSERT INTO customer_city VALUES ('C009', 'Buffalo');


-- Table: order_quantities
CREATE TABLE order_quantities (
  `Quantity` INT,
  `OrderID` INT,
  `ProductID` VARCHAR(255)
);

-- Inserting into order_quantities
INSERT INTO order_quantities VALUES (3, 1000, 'P005');
INSERT INTO order_quantities VALUES (1, 1000, 'P006');
INSERT INTO order_quantities VALUES (4, 1001, 'P010');
INSERT INTO order_quantities VALUES (4, 1001, 'P005');
INSERT INTO order_quantities VALUES (3, 1002, 'P006');
INSERT INTO order_quantities VALUES (1, 1002, 'P003');
INSERT INTO order_quantities VALUES (1, 1003, 'P003');
INSERT INTO order_quantities VALUES (2, 1003, 'P003');
INSERT INTO order_quantities VALUES (5, 1004, 'P002');
INSERT INTO order_quantities VALUES (2, 1004, 'P004');
INSERT INTO order_quantities VALUES (1, 1005, 'P007');
INSERT INTO order_quantities VALUES (5, 1005, 'P001');
INSERT INTO order_quantities VALUES (1, 1006, 'P004');
INSERT INTO order_quantities VALUES (5, 1006, 'P007');
INSERT INTO order_quantities VALUES (2, 1007, 'P007');
INSERT INTO order_quantities VALUES (3, 1007, 'P008');
INSERT INTO order_quantities VALUES (4, 1008, 'P004');
INSERT INTO order_quantities VALUES (4, 1008, 'P006');
INSERT INTO order_quantities VALUES (2, 1009, 'P009');
INSERT INTO order_quantities VALUES (1, 1009, 'P005');
INSERT INTO order_quantities VALUES (1, 1010, 'P007');
INSERT INTO order_quantities VALUES (5, 1010, 'P004');
INSERT INTO order_quantities VALUES (1, 1011, 'P010');
INSERT INTO order_quantities VALUES (5, 1011, 'P004');
INSERT INTO order_quantities VALUES (5, 1012, 'P004');
INSERT INTO order_quantities VALUES (4, 1012, 'P001');
INSERT INTO order_quantities VALUES (3, 1013, 'P008');
INSERT INTO order_quantities VALUES (5, 1013, 'P010');
INSERT INTO order_quantities VALUES (5, 1014, 'P004');
INSERT INTO order_quantities VALUES (5, 1014, 'P002');
INSERT INTO order_quantities VALUES (5, 1015, 'P002');
INSERT INTO order_quantities VALUES (1, 1015, 'P007');
INSERT INTO order_quantities VALUES (2, 1016, 'P004');
INSERT INTO order_quantities VALUES (5, 1016, 'P002');
INSERT INTO order_quantities VALUES (5, 1017, 'P002');
INSERT INTO order_quantities VALUES (3, 1017, 'P002');
INSERT INTO order_quantities VALUES (5, 1018, 'P009');
INSERT INTO order_quantities VALUES (5, 1018, 'P005');
INSERT INTO order_quantities VALUES (4, 1019, 'P002');
INSERT INTO order_quantities VALUES (4, 1019, 'P009');
INSERT INTO order_quantities VALUES (5, 1020, 'P007');
INSERT INTO order_quantities VALUES (4, 1021, 'P010');
INSERT INTO order_quantities VALUES (3, 1021, 'P007');
INSERT INTO order_quantities VALUES (4, 1022, 'P009');
INSERT INTO order_quantities VALUES (3, 1022, 'P008');
INSERT INTO order_quantities VALUES (1, 1023, 'P010');
INSERT INTO order_quantities VALUES (2, 1023, 'P004');
INSERT INTO order_quantities VALUES (3, 1024, 'P003');
INSERT INTO order_quantities VALUES (2, 1024, 'P004');
INSERT INTO order_quantities VALUES (5, 1025, 'P003');
INSERT INTO order_quantities VALUES (5, 1025, 'P009');
INSERT INTO order_quantities VALUES (1, 1026, 'P001');
INSERT INTO order_quantities VALUES (3, 1026, 'P002');
INSERT INTO order_quantities VALUES (1, 1027, 'P004');
INSERT INTO order_quantities VALUES (3, 1027, 'P010');
INSERT INTO order_quantities VALUES (1, 1028, 'P003');
INSERT INTO order_quantities VALUES (2, 1028, 'P009');
INSERT INTO order_quantities VALUES (2, 1029, 'P010');
INSERT INTO order_quantities VALUES (3, 1029, 'P009');
INSERT INTO order_quantities VALUES (4, 1030, 'P007');
INSERT INTO order_quantities VALUES (5, 1030, 'P008');
INSERT INTO order_quantities VALUES (2, 1031, 'P002');
INSERT INTO order_quantities VALUES (1, 1031, 'P007');
INSERT INTO order_quantities VALUES (3, 1032, 'P005');
INSERT INTO order_quantities VALUES (1, 1032, 'P004');
INSERT INTO order_quantities VALUES (3, 1033, 'P002');
INSERT INTO order_quantities VALUES (3, 1033, 'P005');
INSERT INTO order_quantities VALUES (5, 1034, 'P001');
INSERT INTO order_quantities VALUES (1, 1034, 'P007');
INSERT INTO order_quantities VALUES (5, 1035, 'P005');
INSERT INTO order_quantities VALUES (3, 1035, 'P007');
INSERT INTO order_quantities VALUES (3, 1036, 'P006');
INSERT INTO order_quantities VALUES (2, 1036, 'P008');
INSERT INTO order_quantities VALUES (2, 1037, 'P005');
INSERT INTO order_quantities VALUES (1, 1037, 'P008');
INSERT INTO order_quantities VALUES (4, 1038, 'P008');
INSERT INTO order_quantities VALUES (2, 1038, 'P006');
INSERT INTO order_quantities VALUES (5, 1039, 'P009');
INSERT INTO order_quantities VALUES (4, 1039, 'P008');
INSERT INTO order_quantities VALUES (3, 1040, 'P005');
INSERT INTO order_quantities VALUES (1, 1040, 'P007');
INSERT INTO order_quantities VALUES (1, 1041, 'P009');
INSERT INTO order_quantities VALUES (1, 1041, 'P005');
INSERT INTO order_quantities VALUES (2, 1042, 'P010');
INSERT INTO order_quantities VALUES (4, 1042, 'P005');
INSERT INTO order_quantities VALUES (3, 1043, 'P005');
INSERT INTO order_quantities VALUES (2, 1043, 'P005');
INSERT INTO order_quantities VALUES (1, 1044, 'P002');
INSERT INTO order_quantities VALUES (2, 1044, 'P004');
INSERT INTO order_quantities VALUES (1, 1045, 'P003');
INSERT INTO order_quantities VALUES (5, 1045, 'P008');
INSERT INTO order_quantities VALUES (5, 1046, 'P003');
INSERT INTO order_quantities VALUES (5, 1046, 'P008');
INSERT INTO order_quantities VALUES (5, 1047, 'P003');
INSERT INTO order_quantities VALUES (5, 1047, 'P001');
INSERT INTO order_quantities VALUES (5, 1048, 'P003');
INSERT INTO order_quantities VALUES (4, 1049, 'P009');
INSERT INTO order_quantities VALUES (1, 1049, 'P007');


-- Table: order_totals
CREATE TABLE order_totals (
  `Total` FLOAT,
  `OrderID` INT,
  `ProductID` VARCHAR(255)
);

-- Inserting into order_totals
INSERT INTO order_totals VALUES (135.0, 1000, 'P005');
INSERT INTO order_totals VALUES (15.0, 1000, 'P006');
INSERT INTO order_totals VALUES (260.0, 1001, 'P010');
INSERT INTO order_totals VALUES (180.0, 1001, 'P005');
INSERT INTO order_totals VALUES (45.0, 1002, 'P006');
INSERT INTO order_totals VALUES (5.75, 1002, 'P003');
INSERT INTO order_totals VALUES (5.75, 1003, 'P003');
INSERT INTO order_totals VALUES (11.5, 1003, 'P003');
INSERT INTO order_totals VALUES (52.5, 1004, 'P002');
INSERT INTO order_totals VALUES (25.98, 1004, 'P004');
INSERT INTO order_totals VALUES (32.5, 1005, 'P007');
INSERT INTO order_totals VALUES (129.95, 1005, 'P001');
INSERT INTO order_totals VALUES (12.99, 1006, 'P004');
INSERT INTO order_totals VALUES (162.5, 1006, 'P007');
INSERT INTO order_totals VALUES (65.0, 1007, 'P007');
INSERT INTO order_totals VALUES (89.97, 1007, 'P008');
INSERT INTO order_totals VALUES (51.96, 1008, 'P004');
INSERT INTO order_totals VALUES (60.0, 1008, 'P006');
INSERT INTO order_totals VALUES (40.0, 1009, 'P009');
INSERT INTO order_totals VALUES (45.0, 1009, 'P005');
INSERT INTO order_totals VALUES (32.5, 1010, 'P007');
INSERT INTO order_totals VALUES (64.95, 1010, 'P004');
INSERT INTO order_totals VALUES (65.0, 1011, 'P010');
INSERT INTO order_totals VALUES (64.95, 1011, 'P004');
INSERT INTO order_totals VALUES (64.95, 1012, 'P004');
INSERT INTO order_totals VALUES (103.96, 1012, 'P001');
INSERT INTO order_totals VALUES (89.97, 1013, 'P008');
INSERT INTO order_totals VALUES (325.0, 1013, 'P010');
INSERT INTO order_totals VALUES (64.95, 1014, 'P004');
INSERT INTO order_totals VALUES (52.5, 1014, 'P002');
INSERT INTO order_totals VALUES (52.5, 1015, 'P002');
INSERT INTO order_totals VALUES (32.5, 1015, 'P007');
INSERT INTO order_totals VALUES (25.98, 1016, 'P004');
INSERT INTO order_totals VALUES (52.5, 1016, 'P002');
INSERT INTO order_totals VALUES (52.5, 1017, 'P002');
INSERT INTO order_totals VALUES (31.5, 1017, 'P002');
INSERT INTO order_totals VALUES (100.0, 1018, 'P009');
INSERT INTO order_totals VALUES (225.0, 1018, 'P005');
INSERT INTO order_totals VALUES (42.0, 1019, 'P002');
INSERT INTO order_totals VALUES (80.0, 1019, 'P009');
INSERT INTO order_totals VALUES (162.5, 1020, 'P007');
INSERT INTO order_totals VALUES (260.0, 1021, 'P010');
INSERT INTO order_totals VALUES (97.5, 1021, 'P007');
INSERT INTO order_totals VALUES (80.0, 1022, 'P009');
INSERT INTO order_totals VALUES (89.97, 1022, 'P008');
INSERT INTO order_totals VALUES (65.0, 1023, 'P010');
INSERT INTO order_totals VALUES (25.98, 1023, 'P004');
INSERT INTO order_totals VALUES (17.25, 1024, 'P003');
INSERT INTO order_totals VALUES (25.98, 1024, 'P004');
INSERT INTO order_totals VALUES (28.75, 1025, 'P003');
INSERT INTO order_totals VALUES (100.0, 1025, 'P009');
INSERT INTO order_totals VALUES (25.99, 1026, 'P001');
INSERT INTO order_totals VALUES (31.5, 1026, 'P002');
INSERT INTO order_totals VALUES (12.99, 1027, 'P004');
INSERT INTO order_totals VALUES (195.0, 1027, 'P010');
INSERT INTO order_totals VALUES (5.75, 1028, 'P003');
INSERT INTO order_totals VALUES (40.0, 1028, 'P009');
INSERT INTO order_totals VALUES (130.0, 1029, 'P010');
INSERT INTO order_totals VALUES (60.0, 1029, 'P009');
INSERT INTO order_totals VALUES (130.0, 1030, 'P007');
INSERT INTO order_totals VALUES (149.95, 1030, 'P008');
INSERT INTO order_totals VALUES (21.0, 1031, 'P002');
INSERT INTO order_totals VALUES (32.5, 1031, 'P007');
INSERT INTO order_totals VALUES (135.0, 1032, 'P005');
INSERT INTO order_totals VALUES (12.99, 1032, 'P004');
INSERT INTO order_totals VALUES (31.5, 1033, 'P002');
INSERT INTO order_totals VALUES (135.0, 1033, 'P005');
INSERT INTO order_totals VALUES (129.95, 1034, 'P001');
INSERT INTO order_totals VALUES (32.5, 1034, 'P007');
INSERT INTO order_totals VALUES (225.0, 1035, 'P005');
INSERT INTO order_totals VALUES (97.5, 1035, 'P007');
INSERT INTO order_totals VALUES (45.0, 1036, 'P006');
INSERT INTO order_totals VALUES (59.98, 1036, 'P008');
INSERT INTO order_totals VALUES (90.0, 1037, 'P005');
INSERT INTO order_totals VALUES (29.99, 1037, 'P008');
INSERT INTO order_totals VALUES (119.96, 1038, 'P008');
INSERT INTO order_totals VALUES (30.0, 1038, 'P006');
INSERT INTO order_totals VALUES (100.0, 1039, 'P009');
INSERT INTO order_totals VALUES (119.96, 1039, 'P008');
INSERT INTO order_totals VALUES (135.0, 1040, 'P005');
INSERT INTO order_totals VALUES (32.5, 1040, 'P007');
INSERT INTO order_totals VALUES (20.0, 1041, 'P009');
INSERT INTO order_totals VALUES (45.0, 1041, 'P005');
INSERT INTO order_totals VALUES (130.0, 1042, 'P010');
INSERT INTO order_totals VALUES (180.0, 1042, 'P005');
INSERT INTO order_totals VALUES (135.0, 1043, 'P005');
INSERT INTO order_totals VALUES (90.0, 1043, 'P005');
INSERT INTO order_totals VALUES (10.5, 1044, 'P002');
INSERT INTO order_totals VALUES (25.98, 1044, 'P004');
INSERT INTO order_totals VALUES (5.75, 1045, 'P003');
INSERT INTO order_totals VALUES (149.95, 1045, 'P008');
INSERT INTO order_totals VALUES (28.75, 1046, 'P003');
INSERT INTO order_totals VALUES (149.95, 1046, 'P008');
INSERT INTO order_totals VALUES (28.75, 1047, 'P003');
INSERT INTO order_totals VALUES (129.95, 1047, 'P001');
INSERT INTO order_totals VALUES (28.75, 1048, 'P003');
INSERT INTO order_totals VALUES (80.0, 1049, 'P009');
INSERT INTO order_totals VALUES (32.5, 1049, 'P007');


-- Table: orders
CREATE TABLE orders (
  `CustomerID` VARCHAR(255),
  `OrderID` INT,
  `ProductID` VARCHAR(255),
  `OrderDate` VARCHAR(255)
);

-- Inserting into orders
INSERT INTO orders VALUES ('C007', 1000, 'P005', '2023-03-07');
INSERT INTO orders VALUES ('C010', 1000, 'P006', '2023-07-18');
INSERT INTO orders VALUES ('C004', 1001, 'P010', '2023-05-14');
INSERT INTO orders VALUES ('C009', 1001, 'P005', '2023-06-14');
INSERT INTO orders VALUES ('C002', 1002, 'P006', '2023-03-24');
INSERT INTO orders VALUES ('C008', 1002, 'P003', '2023-07-16');
INSERT INTO orders VALUES ('C003', 1003, 'P003', '2023-06-27');
INSERT INTO orders VALUES ('C006', 1003, 'P003', '2023-04-02');
INSERT INTO orders VALUES ('C007', 1004, 'P002', '2023-05-08');
INSERT INTO orders VALUES ('C009', 1004, 'P004', '2023-02-04');
INSERT INTO orders VALUES ('C008', 1005, 'P007', '2023-04-07');
INSERT INTO orders VALUES ('C008', 1005, 'P001', '2023-01-24');
INSERT INTO orders VALUES ('C007', 1006, 'P004', '2023-02-13');
INSERT INTO orders VALUES ('C010', 1006, 'P007', '2023-03-27');
INSERT INTO orders VALUES ('C007', 1007, 'P007', '2023-10-22');
INSERT INTO orders VALUES ('C010', 1007, 'P008', '2023-03-13');
INSERT INTO orders VALUES ('C009', 1008, 'P004', '2023-02-28');
INSERT INTO orders VALUES ('C001', 1008, 'P006', '2023-02-22');
INSERT INTO orders VALUES ('C010', 1009, 'P009', '2023-02-22');
INSERT INTO orders VALUES ('C006', 1009, 'P005', '2023-10-22');
INSERT INTO orders VALUES ('C007', 1010, 'P007', '2023-01-25');
INSERT INTO orders VALUES ('C003', 1010, 'P004', '2023-10-09');
INSERT INTO orders VALUES ('C003', 1011, 'P010', '2023-07-25');
INSERT INTO orders VALUES ('C006', 1011, 'P004', '2023-06-28');
INSERT INTO orders VALUES ('C005', 1012, 'P004', '2023-01-27');
INSERT INTO orders VALUES ('C003', 1012, 'P001', '2023-04-23');
INSERT INTO orders VALUES ('C008', 1013, 'P008', '2023-04-27');
INSERT INTO orders VALUES ('C010', 1013, 'P010', '2023-05-16');
INSERT INTO orders VALUES ('C004', 1014, 'P004', '2023-09-22');
INSERT INTO orders VALUES ('C008', 1014, 'P002', '2023-03-22');
INSERT INTO orders VALUES ('C006', 1015, 'P002', '2023-09-08');
INSERT INTO orders VALUES ('C004', 1015, 'P007', '2023-06-23');
INSERT INTO orders VALUES ('C008', 1016, 'P004', '2023-10-13');
INSERT INTO orders VALUES ('C008', 1016, 'P002', '2023-01-04');
INSERT INTO orders VALUES ('C005', 1017, 'P002', '2023-03-17');
INSERT INTO orders VALUES ('C004', 1017, 'P002', '2023-09-10');
INSERT INTO orders VALUES ('C008', 1018, 'P009', '2023-08-24');
INSERT INTO orders VALUES ('C005', 1018, 'P005', '2023-09-10');
INSERT INTO orders VALUES ('C009', 1019, 'P002', '2023-06-14');
INSERT INTO orders VALUES ('C004', 1019, 'P009', '2023-09-28');
INSERT INTO orders VALUES ('C003', 1020, 'P007', '2023-08-20');
INSERT INTO orders VALUES ('C007', 1020, 'P007', '2023-05-03');
INSERT INTO orders VALUES ('C009', 1021, 'P010', '2023-08-13');
INSERT INTO orders VALUES ('C003', 1021, 'P007', '2023-03-06');
INSERT INTO orders VALUES ('C004', 1022, 'P009', '2023-10-12');
INSERT INTO orders VALUES ('C006', 1022, 'P008', '2023-09-06');
INSERT INTO orders VALUES ('C002', 1023, 'P010', '2023-08-16');
INSERT INTO orders VALUES ('C008', 1023, 'P004', '2023-02-02');
INSERT INTO orders VALUES ('C003', 1024, 'P003', '2023-08-18');
INSERT INTO orders VALUES ('C008', 1024, 'P004', '2023-04-11');
INSERT INTO orders VALUES ('C002', 1025, 'P003', '2023-10-23');
INSERT INTO orders VALUES ('C010', 1025, 'P009', '2023-01-22');
INSERT INTO orders VALUES ('C006', 1026, 'P001', '2023-06-07');
INSERT INTO orders VALUES ('C005', 1026, 'P002', '2023-09-15');
INSERT INTO orders VALUES ('C004', 1027, 'P004', '2023-01-29');
INSERT INTO orders VALUES ('C009', 1027, 'P010', '2023-04-29');
INSERT INTO orders VALUES ('C003', 1028, 'P003', '2023-01-02');
INSERT INTO orders VALUES ('C007', 1028, 'P009', '2023-05-06');
INSERT INTO orders VALUES ('C004', 1029, 'P010', '2023-07-31');
INSERT INTO orders VALUES ('C004', 1029, 'P009', '2023-07-15');
INSERT INTO orders VALUES ('C004', 1030, 'P007', '2023-07-15');
INSERT INTO orders VALUES ('C002', 1030, 'P008', '2023-02-09');
INSERT INTO orders VALUES ('C010', 1031, 'P002', '2023-05-12');
INSERT INTO orders VALUES ('C001', 1031, 'P007', '2023-01-03');
INSERT INTO orders VALUES ('C003', 1032, 'P005', '2023-05-20');
INSERT INTO orders VALUES ('C001', 1032, 'P004', '2023-04-25');
INSERT INTO orders VALUES ('C006', 1033, 'P002', '2023-04-15');
INSERT INTO orders VALUES ('C001', 1033, 'P005', '2023-10-23');
INSERT INTO orders VALUES ('C003', 1034, 'P001', '2023-06-01');
INSERT INTO orders VALUES ('C007', 1034, 'P007', '2023-09-14');
INSERT INTO orders VALUES ('C007', 1035, 'P005', '2023-01-17');
INSERT INTO orders VALUES ('C002', 1035, 'P007', '2023-10-13');
INSERT INTO orders VALUES ('C007', 1036, 'P006', '2023-07-02');
INSERT INTO orders VALUES ('C010', 1036, 'P008', '2023-04-01');
INSERT INTO orders VALUES ('C001', 1037, 'P005', '2023-09-17');
INSERT INTO orders VALUES ('C007', 1037, 'P008', '2023-09-13');
INSERT INTO orders VALUES ('C006', 1038, 'P008', '2023-05-01');
INSERT INTO orders VALUES ('C007', 1038, 'P006', '2023-03-20');
INSERT INTO orders VALUES ('C008', 1039, 'P009', '2023-05-23');
INSERT INTO orders VALUES ('C006', 1039, 'P008', '2023-06-06');
INSERT INTO orders VALUES ('C004', 1040, 'P005', '2023-08-07');
INSERT INTO orders VALUES ('C005', 1040, 'P007', '2023-02-17');
INSERT INTO orders VALUES ('C003', 1041, 'P009', '2023-05-15');
INSERT INTO orders VALUES ('C006', 1041, 'P005', '2023-03-09');
INSERT INTO orders VALUES ('C005', 1042, 'P010', '2023-01-05');
INSERT INTO orders VALUES ('C004', 1042, 'P005', '2023-07-27');
INSERT INTO orders VALUES ('C003', 1043, 'P005', '2023-01-05');
INSERT INTO orders VALUES ('C007', 1043, 'P005', '2023-10-21');
INSERT INTO orders VALUES ('C004', 1044, 'P002', '2023-01-30');
INSERT INTO orders VALUES ('C003', 1044, 'P004', '2023-04-23');
INSERT INTO orders VALUES ('C005', 1045, 'P003', '2023-07-20');
INSERT INTO orders VALUES ('C010', 1045, 'P008', '2023-03-03');
INSERT INTO orders VALUES ('C001', 1046, 'P003', '2023-04-21');
INSERT INTO orders VALUES ('C003', 1046, 'P008', '2023-03-04');
INSERT INTO orders VALUES ('C005', 1047, 'P003', '2023-04-18');
INSERT INTO orders VALUES ('C003', 1047, 'P001', '2023-03-03');
INSERT INTO orders VALUES ('C003', 1048, 'P003', '2023-01-05');
INSERT INTO orders VALUES ('C004', 1048, 'P003', '2023-01-30');
INSERT INTO orders VALUES ('C001', 1049, 'P009', '2023-04-10');
INSERT INTO orders VALUES ('C009', 1049, 'P007', '2023-06-28');


