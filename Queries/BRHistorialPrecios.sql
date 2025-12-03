/* Business requirement "Historial de Precios"*/
CREATE TABLE PriceHistory (
    PriceHistoryID INT PRIMARY KEY,
    ProductID INT,
    OldPrice DECIMAL(10, 2),
    NewPrice DECIMAL(10, 2),
    ChangeDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);