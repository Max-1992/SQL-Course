-- BETWEEN OPERATOR --
-- Definición: Este operador limita el numero de filas regresadas por una sentencia SELECT, puede tener uno o dos parametos. Con un simple argumento le especificamos el numer máximo de registros a regresar empezando desde el primer registro. Al codificar los dos parámetros el offset especifica la primer fila a regresar. Regularmente esta clausura se utiliza junto a la de ORDER BY.
-- Sintaxis: LIMIT [offset], row_count

-- EJEMPLO --

-- Ejecuta una instrucción SQL que regrese los 10 primeros registros de la tabla pendientes ordenados de forma ascendente por id.
SELECT * FROM bdpendientes.pendientes 
ORDER BY id ASC 
LIMIT 10;

-- Ejecuta una instrucción SQL que regrese los 10 primeros registros de la tabla pendientes ordenados de forma ascendente por id, saltando los 100 primeros registors.
SELECT * FROM bdpendientes.pendientes 
ORDER BY id ASC 
LIMIT 100, 10;