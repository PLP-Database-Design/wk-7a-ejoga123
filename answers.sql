USE commercedb;


-- Question 1

-- create product details table 
CREATE TABLE productDetails(
    oder_id INT PRIMARY KEY,
    customerName VARCHAR(100),
    products VARCHAR(100)
);

-- insert into product details table 
INSERT INTO productDetails(order_id, customerName, products)
VALUE
(101, 'John Doe' 'Laptop' ),
(101, 'John Doe' 'Mouse' ),
(102, 'Jane Smith' 'Tablet' ),
(102, 'Jane Smith' 'Keyboard' ),
(102, 'Jane Smith' 'Mouse' ),
(103, 'Emily Clark' 'Phone' );

-- Question 2 

-- create oders table 
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customerName VARCHAR(100)
);

INSERT INTO orders(oder_id, customerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- create product table 
CREATE TABLE product(
    order_id INT,
    product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (oder_id, product),
    FOREIGN KEY (order_id) REFERENCES orders (oder_id)
);

INSERT INTO product(order_id, product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, ' Mouse', 2),
(103, ' Phone', 1);









