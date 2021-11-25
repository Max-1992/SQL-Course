-- UNION CLAUSE --
-- Descripción: La clausula UNION nos permite combinar los result set de dos o más sentecias SELECT en un único result set.
	-- Cada result set debe regresar el mismo numero de columnas, al mismo tiempo cada columna debe ser compatible en cada result set.
    -- El uso de UNION da por resultado renglones o filas distintos es decir elimina los duplicados de forma implicita, si queremos que muestre renglones o filas que esten duplicadas entonces debemos utilizar la palabra reservada ALL.
    -- Los nombres de las columnas en el result set final son tomados de la primer sentencia SELECT.
    -- Para ordenar los datos del result set por medio del uso de la clausula ORDER BY esta debe ser utilizada en el ultimo SELECT de la cadena y tomara efecto sobre los nombres de los campos de la primer instrucción SELECT.
    
-- Sintaxis: 
	-- SELECT_statement_1
    -- UNION [ALL]
    -- SELECT_statement_2
    -- UNION [ALL]
    -- SELECT_statement_3
    -- [ORDER BY order_by_list]

-- EJEMPLO --

-- Realiza una sentencia UNION de la tabla de personas en la cual solo se ocupara el id, nombre, correo y telefono.
-- Debemos formar los mismos campos de la tabla clientes para mostrar como unirlas por medio de la instrucción UNION
SELECT 
	id, 
	nombre, 
	correo, 
	telefono 
FROM bdpendientes.personas
UNION
SELECT 
	id, 
	CONCAT(nombre, ' ', apaterno, ' ', amaterno) AS 'nombre', 
	correo, 
	telefono 
FROM bdpendientes.clientes
ORDER BY id ASC;

-- Realiza una sentencia UNION de la tabla de personas en la cual solo se ocupara el id, nombre, correo y telefono.
-- Debemos formar los mismos campos de la tabla clientes para mostrar como unirlas por medio de la instrucción UNION
-- Utilizar la clausula all para obtener los datos repetidos.
SELECT 
	id, 
	nombre, 
	correo, 
	telefono 
FROM bdpendientes.personas
UNION ALL
SELECT 
	id, 
	CONCAT(nombre, ' ', apaterno, ' ', amaterno) AS 'nombre', 
	correo, 
	telefono 
FROM bdpendientes.clientes
ORDER BY id ASC;

-- Realizar una union entre la misma tabla, en este caso la tabla clientes, con las siguientes instrucciones.
-- Obtener todos los registros de los cliente cuyo apellido es PEREZ.
-- Obener todos los clientes cuyo telefono no comience con las digitos 340.
SELECT * FROM bdpendientes.clientes WHERE bdpendientes.clientes.apaterno = 'PEREZ'
UNION ALL
SELECT * FROM bdpendientes.clientes WHERE LEFT(bdpendientes.clientes.telefono, 3) != 340;

SELECT * FROM clientes WHERE clientes.apaterno = 'PEREZ'
UNION ALL
SELECT * FROM clientes WHERE LEFT(clientes.telefono, 3) != 340;

-- Esta consulta puede ser traducida de la siguiente manera
SELECT * FROM clientes WHERE clientes.apaterno = 'PEREZ' OR LEFT(clientes.telefono, 3) != 340;
