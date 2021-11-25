-- IS NULL OPERATOR --
-- Definición: El uso del operador IS NULL nos permite preguntar a la base de datos si un campo se encuentra sin valor, esto no debe confundirse con una cadena vacia ('') o con el valor 0.
-- Es muy importante hacer la distinción entre un tipo de dato NULL y un String '' vacio, ya que estos no representan el mismo valor.
-- Sintaxis: WHERE match_expression IS [NOT] NULLpersonas

-- Seleccionar todos los registro cuyo telefono sea un string vacio.
SELECT * FROM bdpendientes.personas WHERE telefono = '';

-- Seleccionar todos los registro cuyo telefono sea diferente a un string vacio.
SELECT * FROM bdpendientes.personas WHERE telefono != '';

-- Seleccionar todos los registro cuyo telefono sea un dato NULL o NULO.
SELECT * FROM bdpendientes.personas WHERE telefono IS NULL;

-- Seleccionar todos los registro cuyo telefono sea diferente un dato NULL O NULO.
SELECT * FROM bdpendientes.personas WHERE telefono IS NOT NULL;
