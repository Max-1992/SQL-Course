-- CLUSULA WHERE --
-- Definición: Esta clausula limita el set de resultados de una tabal en vase a los criterios especificados.
-- Sintaxis: WHERE expresión

-- OPERADERES LOGICOS --
-- Definición: Los operadores logicos permiten realizar comparaciones con más de una expresión.
-- AND ('Y'): Debe cumplir con todas las condiciones para mostrar el set de resultado.
-- OR ('O'): Debe cumplir al menos una de las condiciones para mostrar el set de resultado.
-- NOT ('NO'): No debe cumplir con la condicion dada o dicho de otra manera niega la condición para mostrar el set de resultado.

-- EJEMPLO --
-- Selecciona todos los registros donde el id sea diferente de 8 y el telefono comience con 493 y que el id sea par.
SELECT * FROM bdpendientes.personas
WHERE 
	id != 8 
	AND (id MOD 2) = 0
	AND LEFT(telefono, 3) = '493';
    
-- Selecciona todos los registros el telefono comience con 493 o con 444.
SELECT * FROM bdpendientes.personas
WHERE 
	LEFT(telefono, 3) = '493' 
    OR LEFT(telefono, 3) = '444';
    
-- Selecciona todos los registros cuyo telefono comience con cualquier cadena menos 493.
SELECT 
	*, 
	LEFT(telefono, 3) AS 'prefix' 
FROM bdpendientes.personas 
WHERE NOT LEFT(telefono, 3) = '493';

-- Prioridad de los Operadores Lógicos --
-- Seleccionar los registros cuyo telefono comience con 474 o 493 y que su id sea mayor o igual 8.
SELECT 
	*,
    LEFT(telefono, 3) AS 'Prefix'
FROM bdpendientes.personas
WHERE (LEFT(telefono, 3) = '474' OR LEFT(telefono, 3) = '493') AND (id >= 8);

-- Seleccionar los registros cuyo telefono no comiencen con 474 o 493 y que su id NO sea mayor o igual 8.
SELECT 
	*,
    LEFT(telefono, 3) AS 'Prefix'
FROM bdpendientes.personas
WHERE 
	NOT (LEFT(telefono, 3) = '474' OR LEFT(telefono, 3) = '493') 
	AND 
    NOT (id >= 8);
