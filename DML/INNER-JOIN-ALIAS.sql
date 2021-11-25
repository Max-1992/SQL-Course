-- INNER JOIN USE ALIAS --

-- Descripción ALIAS: El alias en una tabla es un nombre alternativo asigando despues de la clausula FROM. Usualemente el alias se construye con una o dos letras del nombre de la tabla, este se utiliza para simplificar el nombre de las tablas. 
	-- Al usuar un alias para una tabla, tienes que usar este alias para invocarla en toda la consulta SQL, ya no podrás volver a utilizar el nombre de la tabla una vez que le hayas agregado eun alias.
    -- Puedes utilizar un alias para una sola tabla o las que se desee dentro de una consulta SQL, no es necesario que si una tabla posee un alias el resto deba tenerlo.

-- Descripción INNER JOIN:
	-- Un JOIN combina las columnas de dos o mas tablas en un mismo resultSet basado en las condiciones que se especifiquen, mostrando como resultado solo las filas que cumplan dicha condicion.
    -- Una condición de unión nombra una de las columnas en cada una de las dos tablas involucradas en la unión e indica cómo deben compararse las dos columnas por lo regular es utilizando el simbolo de igual '='. 
    -- Las tablas son unidas típicamente en la relación mediante la llave primaria de una tabla con la llave foránea de la otra.
    -- Si las dos columnas poseen el mismo nombre, estas deben ser diferenciadas por medio del nombre de la tabla ej: tabla.nombreCampo. 
    
    -- Sintaxis: 
	-- SELECT select_list_columns FROM table_1 [Alias_name_T1]
		-- [INNER] JOIN table_2  [Alias_name_T2] ON join_condition_1
        -- [INNER] JOIN table_3 [Alias_name_T3] ON join_condition_2
        
-- EJEMPLOS --

-- ALIAS
	-- entradasalidadinero: 'ESD' | 'esd'
    -- personas: 'P' | 'p'
    -- ingresosegresos: 'IE' | 'ie'
    -- tipoingeg: 'TIE' | 'tie'
    -- grupoingeg: 'GIE' | 'gie'

-- Obtener el detalle de una transacción que muestre los siguiente datos:
	-- Fecha | Monto | identificador de la persona | nombre | Tipo | Categoria | Descripcion
SELECT 
    ESD.fechaES AS 'Fecha',
    P.id AS 'idPersona',
	P.nombre,
	TIE.descripcion AS 'Tipo',
	ESD.montoIE AS 'Monto',
	GIE.descripcion AS 'Categoria',
    IE.descripcion AS 'descripcion'
FROM bdpendientes.entradasalidadinero ESD
	INNER JOIN bdpendientes.personas P ON ESD.idPersonas = P.id
    INNER JOIN bdpendientes.ingresosegresos IE ON ESD.idIngresosEgresos = IE.id
    INNER JOIN bdpendientes.tipoingeg TIE ON IE.idTipoIngEg = TIE.id
    INNER JOIN bdpendientes.grupoingeg GIE ON IE.idGrupoIngEg = GIE.id
ORDER BY Fecha ASC;

-- Obtener el detalle de una transacción que muestre los siguiente datos:
	-- Fecha | Monto | identificador de la persona | nombre | Tipo | Categoria | Descripcion
SELECT 
    esd.fechaES AS 'Fecha',
    p.id AS 'idPersona',
	p.nombre,
	tie.descripcion AS 'Tipo',
	esd.montoIE AS 'Monto',
	gie.descripcion AS 'Categoria',
    ie.descripcion AS 'descripcion'
FROM bdpendientes.entradasalidadinero esd
	INNER JOIN bdpendientes.personas p ON esd.idPersonas = p.id
    INNER JOIN bdpendientes.ingresosegresos ie ON esd.idIngresosEgresos = ie.id
    INNER JOIN bdpendientes.tipoingeg tie ON ie.idTipoIngEg = tie.id
    INNER JOIN bdpendientes.grupoingeg gie ON ie.idGrupoIngEg = gie.id
ORDER BY Fecha ASC;
	