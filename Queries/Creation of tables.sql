/*Create Basic tables needed for the operation of PYME regarding Sales, Cuestomers and Employees*/
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    SalesCustomerID INT,
    SalesProductID INT,
    SaleDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Quantity INT,

    FOREIGN KEY (SalesCustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalesProductID) REFERENCES Products(ProductID)
);



