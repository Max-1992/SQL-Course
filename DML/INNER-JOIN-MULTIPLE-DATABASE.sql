-- INNER JOIN MULTIPLE DATABASE --
-- Definición: Un servidor de MySQL puede almacenar tablas en multiples bases de datos, conocidas también como Schemas.
	-- Cuando se ejecuta una consulta de tipo SELECT es posible realizar un JOIN con otras tablas de otras bases de datos si se tienen los priviliegios para esta acción.
	-- Para poder realizar esta tarea se debe colocar como prefijo el nombre de la base de datos antes de la tabla.
    -- Las bases de datos deben encontrarse alojadas dentro del mismo servidor.
-- Sintaxis: database_name.table_name

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
INNER JOIN dbemployes.employees ON bdpendientes.personas.id = dbemployes.employees.emp_no;

-- Obtener del Schema bdPendientes en su tabla personas los campos id | nombre | correo | telefono.
-- Obtener del Schema dbemployes en su tabla employees los campos birth_date | hire_date luego renombrarlos a  fechaNacimiento | fechaIngreso.
SELECT 
	P.id,
    P.nombre,
    P.correo,
    P.telefono,
    E.birth_date AS 'FechaNacimiento',
    E.hire_date AS 'FechaIngreso'
FROM bdpendientes.personas P
INNER JOIN dbemployes.employees E ON P.id = E.emp_no;

-- Obtener del Schema bdPendientes en su tabla personas los campos id | nombre | correo | telefono.
-- Obtener del Schema dbemployes en su tabla employees los campos birth_date | hire_date luego renombrarlos a  fechaNacimiento | fechaIngreso.
-- Obtener del Schema dbemployes en su tabla salaries el campo salary luego renombrarlo a salario.
-- Crear una condición para filtrar set de respuesta por id de persona.
SELECT 
	bdpendientes.personas.id,
    bdpendientes.personas.nombre,
    bdpendientes.personas.correo,
    bdpendientes.personas.telefono,
    dbemployes.employees.birth_date AS 'fechaNacimiento',
    dbemployes.employees.hire_date AS 'fechaIngreso',
    dbemployes.salaries.salary AS 'salario'
FROM bdpendientes.personas
INNER JOIN dbemployes.employees ON bdpendientes.personas.id = dbemployes.employees.emp_no
INNER JOIN dbemployes.salaries ON dbemployes.employees.emp_no = dbemployes.salaries.emp_no
WHERE  bdpendientes.personas.id = 1;

-- Obtener del Schema bdPendientes en su tabla personas los campos id | nombre | correo | telefono.
-- Obtener del Schema dbemployes en su tabla employees los campos birth_date | hire_date luego renombrarlos a  fechaNacimiento | fechaIngreso.
-- Obtener del Schema dbemployes en su tabla salaries el campo salary luego renombrarlo a salario.
-- Crear una condición para filtrar set de respuesta por id de persona.
SELECT 
	P.id,
    P.nombre,
    P.correo,
    P.telefono,
    E.birth_date AS 'fechaNacimiento',
    E.hire_date AS 'fechaIngreso',
    S.salary AS 'salario'
FROM bdpendientes.personas P
INNER JOIN dbemployes.employees E ON P.id = E.emp_no
INNER JOIN dbemployes.salaries S ON E.emp_no = S.emp_no
WHERE  P.id = 4;