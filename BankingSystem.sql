CREATE DATABASE bankingsystem;
USE bankingsystem;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    DOB DATE,
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Create Accounts table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(50),
    amount DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- Insert 5 rows into Customers table
INSERT INTO Customers VALUES
(1, 'John', 'Doe', '1990-01-15', 'john.doe@email.com', '1234567890', '123 Main St'),
(2, 'Alice', 'Smith', '1985-05-22', 'alice.smith@email.com', '9876543210', '456 Oak St'),
(3, 'Bob', 'Johnson', '1978-11-30', 'bob.johnson@email.com', '5551234567', '789 Pine St'),
(4, 'Eva', 'Williams', '1995-07-10', 'eva.williams@email.com', '1112223333', '101 Elm St'),
(5, 'David', 'Brown', '1980-03-18', 'david.brown@email.com', '9998887777', '202 Maple St');

-- Insert 5 rows into Accounts table
INSERT INTO Accounts VALUES
(101, 1, 'savings', 5000.00),
(102, 2, 'current', 10000.00),
(103, 3, 'zero_balance', 0.00),
(104, 4, 'savings', 8000.00),
(105, 5, 'current', 12000.00);

-- Insert 5 rows into Transactions table
INSERT INTO Transactions VALUES
(1001, 101, 'deposit', 1000.00, '2023-01-10'),
(1002, 102, 'withdrawal', 500.00, '2023-02-15'),
(1003, 103, 'deposit', 200.00, '2023-03-20'),
(1004, 104, 'transfer', 300.00, '2023-04-25'),
(1005, 105, 'withdrawal', 1000.00, '2023-05-30');
