-- OUTER JOIN --
-- Descripción:
	-- Un OUTER JOIN regresa todas las filas que cumplan con la condición del JOIN y además las filas que no cumplan tanto de la izquierda o de la derecha ( LEFT JOIN or RIGHT JOIN). 
    -- Cuando se recupera una fila con una columna que no encuentra conincidencia, cualquier columna de la otra tabla se incluye en el conjuento de resultado con valores nulos.
    -- La palabra reservada OUTER es opcional y usualmente es emitida.
    
-- LEFT JOIN --
-- Descripción: Este es uno de los dos tipos de OUTER JOIN que existen, basicamente toma la tabla de la izquierda y intenta hacer los JOIN que cumplan con la condición de la tabla de la derecha, en caso de que haya datos que no coincidan estos serán regresados con valores nulos.

-- Realizamos un LEFT JOIN utilizando como tabla izquierda la tabla de personas, esto con el fin de que por cada persona de la tabla persona vallamos y busquemos un empleado en la tabla employees.
-- Obtener del Schema bdPendientes en su tabla personas los campos id | nombre | correo | telefono.
-- Obtener del Schema dbemployes en su tabla employees los campos birth_date | hire_date luego renombrarlos a  fechaNacimiento | fechaIngreso.
SELECT 
	bdpendientes.personas.id,
    bdpendientes.personas.nombre,
    bdpendientes.personas.correo,
    bdpendientes.personas.telefono,
    dbemployes.employees.birth_date AS 'FechaNacimiento',
    dbemployes.employees.hire_date AS 'FechaIngreso'
FROM bdpendientes.personas
LEFT JOIN dbemployes.employees ON bdpendientes.personas.id = dbemployes.employees.emp_no;
    
-- RIGHT JOIN --
-- Descripción: Este es uno de los dos tipos de OUTER JOIN que existen, basicamente toma la tabla de la derecha y intenta hacer los JOIN que cumplan con la condición de la tabla de la izquierda, en caso de que haya datos que no coincidan estos serán regresados con valores nulos.

-- Realizamos un RIGHT JOIN utilizando como tabla izquierda la tabla de personas, esto con el fin de que por cada empleado de la tabla employees vallamos y busquemos una persona en la tabla personas.
-- Obtener del Schema bdPendientes en su tabla personas los campos id | nombre | correo | telefono.
-- Obtener del Schema dbemployes en su tabla employees los campos birth_date | hire_date luego renombrarlos a  fechaNacimiento | fechaIngreso.
SELECT 
	bdpendientes.personas.id,
    bdpendientes.personas.nombre,
    bdpendientes.personas.correo,
    bdpendientes.personas.telefono,
    dbemployes.employees.birth_date AS 'FechaNacimiento',
    dbemployes.employees.hire_date AS 'FechaIngreso',
    dbemployes.employees.first_name,
	dbemployes.employees.last_name,
    dbemployes.employees.gender
FROM bdpendientes.personas
RIGHT JOIN dbemployes.employees ON bdpendientes.personas.id = dbemployes.employees.emp_no;
    