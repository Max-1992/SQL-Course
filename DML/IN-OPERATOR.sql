-- OPERADOR IN --
-- Definición: El operador IN se puede utilizar para validar si una lista de elementos son validos para mostrar. Este operador puede ser combinado con operadores logicos como el NOT o se puede hacer uso de el en subconsultas.
-- Sintaxis: WHERE test_expression [NOT] IN ({ subconsulta | expression, [expression_2 ...] })

-- EJEMPLO --

-- Selecciona todas las personas con id = 1 o 2 o 3 o 4.
SELECT * FROM bdpendientes.personas WHERE id IN (1, 2, 3, 4);

-- Selecciona todas las personas que no tengan los id = 1 o 2 o 3 o 4.
SELECT * FROM bdpendientes.personas WHERE NOT id IN (1, 2, 3, 4);

-- Selecciona de la tabla personas todos los registros que coincidan con los nombres 'JUAN PEREZ GARCIA', 'ARACELI ORTIZ PINEDO', 'ANDRES PEREZ LOPEZ'. 
SELECT * FROM bdpendientes.personas WHERE nombre IN ('JUAN PEREZ GARCIA', 'ARACELI ORTIZ PINEDO', 'ANDRES PEREZ LOPEZ');

-- Selecciona de la tabla personas todos los registros que no coincidan con los nombres 'JUAN PEREZ GARCIA', 'ARACELI ORTIZ PINEDO', 'ANDRES PEREZ LOPEZ'. 
SELECT * FROM bdpendientes.personas WHERE NOT nombre IN ('JUAN PEREZ GARCIA', 'ARACELI ORTIZ PINEDO', 'ANDRES PEREZ LOPEZ');

-- Realizar una consulta de la tabla entradaSalidaDinero donde el idPersonas sea el de 'JUAN PEREZ GARCIA', 'ARACELI ORTIZ PINEDO', 'ANDRES PEREZ LOPEZ' pero haciendo uso de una subconsulta de la tacla personas. 
SELECT * FROM bdpendientes.entradasalidadinero
WHERE idPersonas IN (
	SELECT id FROM bdpendientes.personas 
		WHERE nombre IN ('JUAN PEREZ GARCIA', 'MANUEL ALBERTO MARTINEZ SANCHEZ', 'JESUS DE LA CUEVA RODARTE')
);

SELECT * FROM bdpendientes.entradasalidadinero;