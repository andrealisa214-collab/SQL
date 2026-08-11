USE FinancialDB;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(200)
);
CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Account_Type VARCHAR(50),
    Balance DECIMAL(12,2) DEFAULT 0,
    Open_Date DATE,
    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
);

CREATE TABLE Ledgers (
    Ledger_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT NOT NULL,
    Ledger_Type VARCHAR(50),
    Opening_Balance DECIMAL(12,2),
    Closing_Balance DECIMAL(12,2),
    FOREIGN KEY (Account_ID)
        REFERENCES Accounts(Account_ID)
);
CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT NOT NULL,
    Transaction_Type VARCHAR(20),
    Amount DECIMAL(12,2),
    Transaction_Date DATE,
    FOREIGN KEY (Account_ID)
        REFERENCES Accounts(Account_ID)
);

CREATE TABLE Invoices (
    Invoice_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Invoice_Date DATE,
    Due_Date DATE,
    Total_Amount DECIMAL(12,2),
    Status VARCHAR(20),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Invoice_ID INT NOT NULL,
    Payment_Date DATE,
    Amount DECIMAL(12,2),
    Payment_Method VARCHAR(30),
    FOREIGN KEY (Invoice_ID)
        REFERENCES Invoices(Invoice_ID)
);