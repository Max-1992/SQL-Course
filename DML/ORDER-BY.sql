-- IS NULL OPERATOR --
-- Definición: El uso de la clausula ORDER BY es para especificar como nuestros registros en el set de respuestas serán ordenados.
-- Criterios de ordenamiento: Es posible ordenar de forma ascendente (ASC) o descendente (DESC) el ordenamiento por defecto es ASC.
-- Criterio de campos: Es posible ordenar por más de un campo o columna. No hay restrcción por tipo de campo a ordenar.
-- Sintaxis: ORDER BY match_expression [ASC/DESC], [match_expression [ASC/DESC]]

-- Ordenar registros de manera ascendente
SELECT 
	DATE_FORMAT(birth_date, '%d/%m/%Y') AS 'birth_date', 
	first_name, 
	last_name 
FROM dbemployes.employees ORDER BY birth_date ASC;

-- Ordenar registros de manera descendente
SELECT 
	DATE_FORMAT(birth_date, '%d/%m/%Y') AS 'birth_date', 
	first_name, 
	last_name 
FROM dbemployes.employees ORDER BY birth_date DESC;

-- Ordenar registros por nombre y apellido de manera ascendente
SELECT 
	DATE_FORMAT(birth_date, '%d/%m/%Y') AS 'birth_date', 
	first_name, 
	last_name 
FROM dbemployes.employees ORDER BY first_name ASC, last_name ASC;

-- Ordenar registros por nombre y apellido de manera descendente
SELECT 
	DATE_FORMAT(birth_date, '%d/%m/%Y') AS 'birth_date', 
	first_name, 
	last_name 
FROM dbemployes.employees ORDER BY first_name DESC, last_name DESC;