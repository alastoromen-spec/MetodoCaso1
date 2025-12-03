-- Verifica cualquier objeto con ese nombre
SELECT name, type_desc, schema_id
FROM sys.objects
WHERE name = 'Products';
