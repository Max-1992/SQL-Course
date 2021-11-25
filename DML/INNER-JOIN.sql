-- INNER JOIN --
-- Descripción:
	-- Un JOIN combina las columnas de dos o mas tablas en un mismo resultSet basado en las condiciones que se especifiquen, mostrando como resultado solo las filas que cumplan dicha condicion.
    -- Una condición de unión nombra una de las columnas en cada una de las dos tablas involucradas en la unión e indica cómo deben compararse las dos columnas por lo regular es utilizando el simbolo de igual '='. 
    -- Las tablas son unidas típicamente en la relación mediante la llave primaria de una tabla con la llave foránea de la otra.
    -- Si las dos columnas poseen el mismo nombre, estas deben ser diferenciadas por medio del nombre de la tabla ej: tabla.nombreCampo. 
    
-- Sintaxis: 
	-- SELECT select_list_columns FROM table_1
		-- [INNER] JOIN table_2 ON join_condition_1
        -- [INNER] JOIN table_3 ON join_condition_2

-- EJEMPLOS --

-- Obtener todos los campos de las tablas entradasalidadinero y personas.
SELECT * FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id;
    
-- Obtener los campos id de cada una de las tablas involucradas 'entradasalidadinero y personas'.
SELECT 
	bdpendientes.entradasalidadinero.id AS 'idEntradaSalidaDinero',
    bdpendientes.personas.id AS 'idPersona'
FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id;
    
-- Obtener de la tabla entradasalidadinero los campos id, fecha, monto y las obaservaciones. De la tabla personas obtener el id, nombre y correo de la persona que realizo la entrada o salida de dinero.
SELECT 
	bdpendientes.entradasalidadinero.id AS 'idEntradaSalidaDinero',
    bdpendientes.entradasalidadinero.fechaES,
	bdpendientes.entradasalidadinero.montoIE,
	bdpendientes.entradasalidadinero.observaciones,
    bdpendientes.personas.id AS 'idPersona',
	bdpendientes.personas.nombre,
	bdpendientes.personas.correo
FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id;

-- Obtener de la tabla entradasalidadinero los campos id, fecha, monto.
-- Obtener de la tabla personas obtener el id, nombre y correo de la persona.
-- Obtener de la tabla ingresosegresos los campos id y descripción.
SELECT 
	bdpendientes.entradasalidadinero.id AS 'idEntradaSalidaDinero',
    bdpendientes.entradasalidadinero.fechaES,
	bdpendientes.entradasalidadinero.montoIE,
    bdpendientes.personas.id AS 'idPersona',
	bdpendientes.personas.nombre,
	bdpendientes.personas.correo,
    bdpendientes.ingresosegresos.id AS 'idIngresosEgresos',
    bdpendientes.ingresosegresos.descripcion
FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id
    INNER JOIN bdpendientes.ingresosegresos ON bdpendientes.entradasalidadinero.idIngresosEgresos = bdpendientes.ingresosegresos.id;
    
-- Obtener de la tabla entradasalidadinero los campos id, fecha, monto.
-- Obtener de la tabla personas obtener el id, nombre y correo de la persona.
-- Obtener de la tabla ingresosegresos los campos id y descripción.
-- Obtener de la tabla tipoingeg los campos id y descripcion.
-- Obtener de la tabla grupoingeg los campos id y descripcio.
SELECT 
	bdpendientes.entradasalidadinero.id AS 'idEntradaSalidaDinero',
    bdpendientes.entradasalidadinero.fechaES,
	bdpendientes.entradasalidadinero.montoIE,
    bdpendientes.personas.id AS 'idPersona',
	bdpendientes.personas.nombre,
	bdpendientes.personas.correo,
    bdpendientes.ingresosegresos.id AS 'idIngresosEgresos',
    bdpendientes.ingresosegresos.descripcion AS 'descripcionIE',
    bdpendientes.tipoingeg.id AS 'idTipoIE',
    bdpendientes.tipoingeg.descripcion AS 'TipoIE',
	bdpendientes.grupoingeg.id AS 'idGrupoIE',
    bdpendientes.grupoingeg.descripcion AS 'descripcionGrupoIE'
FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id
    INNER JOIN bdpendientes.ingresosegresos ON bdpendientes.entradasalidadinero.idIngresosEgresos = bdpendientes.ingresosegresos.id
    INNER JOIN bdpendientes.tipoingeg ON bdpendientes.ingresosegresos.idTipoIngEg = bdpendientes.tipoingeg.id
    INNER JOIN bdpendientes.grupoingeg ON bdpendientes.ingresosegresos.idGrupoIngEg = bdpendientes.grupoingeg.id;
    
-- Obtener el detalle de una transacción que muestre los siguiente datos:
	-- Fecha | Monto | identificador de la persona | nombre | Tipo | Categoria | Descripcion
SELECT 
    bdpendientes.entradasalidadinero.fechaES AS 'Fecha',
    bdpendientes.personas.id AS 'idPersona',
	bdpendientes.personas.nombre,
	bdpendientes.tipoingeg.descripcion AS 'Tipo',
	bdpendientes.entradasalidadinero.montoIE AS 'Monto',
	bdpendientes.grupoingeg.descripcion AS 'Categoria',
    bdpendientes.ingresosegresos.descripcion AS 'descripcion'
FROM bdpendientes.entradasalidadinero
	INNER JOIN bdpendientes.personas ON bdpendientes.entradasalidadinero.idPersonas = bdpendientes.personas.id
    INNER JOIN bdpendientes.ingresosegresos ON bdpendientes.entradasalidadinero.idIngresosEgresos = bdpendientes.ingresosegresos.id
    INNER JOIN bdpendientes.tipoingeg ON bdpendientes.ingresosegresos.idTipoIngEg = bdpendientes.tipoingeg.id
    INNER JOIN bdpendientes.grupoingeg ON bdpendientes.ingresosegresos.idGrupoIngEg = bdpendientes.grupoingeg.id
ORDER BY Fecha ASC;
	