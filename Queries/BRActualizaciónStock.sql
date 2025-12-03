/* Business requirement "Actualización de Stock"*/
CREATE TRIGGER UpdateStockAfterSale
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
    UPDATE Products SET Stock = Stock - 1 WHERE ProductID = NEW.ProductID;
END;

