-- Create Database
CREATE DATABASE consumer_behavior;
USE consumer_behavior;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    location VARCHAR(50)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);