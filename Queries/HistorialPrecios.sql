CREATE TRIGGER trg_Historial_Precios
ON Products
AFTER UPDATE
AS
BEGIN
    INSERT INTO PriceHistory (ProductoID, PrecioAnterior, PrecioNuevo, FechaCambio)
    SELECT d.ProductoID, d.Precio, i.Precio, GETDATE()
    FROM deleted d
    INNER JOIN inserted i ON d.ProductoID = i.ProductoID
    WHERE d.Precio <> i.Precio;
END;
