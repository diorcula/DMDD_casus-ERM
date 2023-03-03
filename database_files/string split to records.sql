-- Gebruik dit script om velden met meerdere waarden om te te zetten naar
-- afzonderlijke records, in dit geval om de lijst met modulefuncties om
-- te zetten naar afzonderlijke functies. Het is gebaseerd op informatie
-- afkomstig van https://stackoverflow.com/a/54069431
-- 
-- So we were having this: tbl_Sample :

-- ColumnID|   Column1 |   Tags
-- --------|-----------|-------------
-- 1       |   ABC     |   10,11,12    
-- 2       |   PQR     |   20,21,22
-- After running this query:

-- ColumnID|   Column1 |   value
-- --------|-----------|-----------
-- 1       |   ABC     |   10
-- 1       |   ABC     |   11
-- 1       |   ABC     |   12
-- 2       |   PQR     |   20
-- 2       |   PQR     |   21
-- 2       |   PQR     |   22

-- Eenvoudig voorbeeld:
-- SELECT [value]  As Colour
-- FROM STRING_SPLIT('blue, green, yellow', ',');
-- Merk op dat je hier zelf de overbodige spaties uit moet verwijderen.


SELECT productno, functions AS "all_functions", TRIM(value) AS module_function  --Do not change 'value' name. Leave it as it is.
FROM products  
CROSS APPLY STRING_SPLIT(CAST(functions AS VARCHAR(1024)), ','); --'functions' is the name of column containing comma separated values
