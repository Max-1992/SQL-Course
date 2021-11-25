-- SELF JOIN --
-- Descripción:
	-- Un SELFT-JOIN es un join para unir una tabla con sigo misma.
    -- Cuando creas un SELFT-JOIN , este debe usar un alias para las tablas, por lo menos para una de las declaraciones.
    -- Los SELFT-JOIN solo establecen una relación uno a uno con un mismo registro de la tabla. Es decir que un registro de la tabla solo puede estar vinculado a otro registro de la misma tabla.
    
-- Sintaxis: 
	-- SELECT select_list_columns FROM table_1 [alias_name]
		-- JOIN table_2 [alias_name] ON join_condition_1

-- EJEMPLOS --
-- Seleccionamos todos los registros
SELECT * FROM personas;

-- Hacemos una consulta con el uso de self-join para obtener los jefes de cada una de las personas
SELECT 
	personas.id,
	personas.nombre, 
	personas.correo, 
	personas.telefono,
	personas.idPersonasJefe,
	jefes.nombre as 'jefe',
	jefes.correo as 'correoJefe'
FROM personas
JOIN personas jefes ON personas.idPersonasJefe = jefes.id
