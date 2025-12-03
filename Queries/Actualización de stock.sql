-- Actualiza stock al registrar una venta
CREATE TRIGGER trg_ActualizarStock_Venta
ON Ventas
AFTER INSERT
AS
BEGIN
    UPDATE Productos
    SET Stock = Stock - i.Cantidad
    FROM Productos p
    INNER JOIN inserted i ON p.ProductoID = i.ProductoID;
END;

-- Actualiza stock al recibir un envío
CREATE TRIGGER trg_ActualizarStock_Entrada
ON Entradas
AFTER INSERT
AS
BEGIN
    UPDATE Productos
    SET Stock = Stock + i.Cantidad
    FROM Productos p
    INNER JOIN inserted i ON p.ProductoID = i.ProductoID;
END;
