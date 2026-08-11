CREATE DATABASE Financial_DB;
USE FinancialDB;
CREATE TABLE Customers9 (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);
CREATE TABLE Accounts8 (
    Account_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Account_Type VARCHAR(50) NOT NULL,
    Balance DECIMAL(12,2) NOT NULL,
    
    CONSTRAINT FK_Accounts_Customers
        FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID),
        
    CONSTRAINT CHK_Account_Balance
        CHECK (Balance >= 0)
);
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    Account_ID INT NOT NULL,
    Transaction_Date DATE NOT NULL,
    Transaction_Type VARCHAR(10) NOT NULL,
    Amount DECIMAL(12,2) NOT NULL,
    
    CONSTRAINT FK_Transactions_Accounts
        FOREIGN KEY (Account_ID)
        REFERENCES Accounts(Account_ID),
        
    CONSTRAINT CHK_Transaction_Amount
        CHECK (Amount >= 0),
        
    CONSTRAINT CHK_Transaction_Type
        CHECK (Transaction_Type IN ('Credit', 'Debit'))
        );
        ALTER TABLE Customers
ADD Addresses VARCHAR(200);
ALTER TABLE Customers9
ADD CONSTRAINT UQ_Customers_Phone UNIQUE (Phone);
CREATE TABLE Test_Table (
    Test_ID INT PRIMARY KEY,
    Test_Name VARCHAR(50)
);
DROP TABLE Test_Table;
DESCRIBE Customers9;

DESCRIBE Accounts8;

DESCRIBE Transaction;
SHOW CREATE TABLE Customers9;

SHOW CREATE TABLE Accounts8;

SHOW CREATE TABLE Transaction;