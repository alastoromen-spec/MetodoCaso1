/*querie to revert things in case CreateTables.sql queries fails*/

DROP TRIGGER IF EXISTS UpdateStockAfterShipment;

DROP TRIGGER IF EXISTS UpdateStockAfterSale;

DROP TABLE IF EXISTS PriceHistory;

DROP TABLE IF EXISTS Customers;

DROP TABLE IF EXISTS Sales;

DROP TABLE IF EXISTS Products;