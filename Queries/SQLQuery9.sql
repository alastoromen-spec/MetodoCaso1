SELECT name, SCHEMA_NAME(schema_id) AS schema_name
FROM sys.objects
WHERE name = 'Products' ;

