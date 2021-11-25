-- INNER JOIN IMPLICITO --
-- Descripción:
	-- Se conoce como INNER JOIN implicito cuando en lugar de codificar la condición JOIN en la clausula FROM se puede codificar haciendo uso de la clausula WHERE  escribiendo ahí las condiciones.
    -- Las tablas deberan colocarse en la clausula FROM y serán separadas por una coma.
    
-- Sintaxis: 
	-- SELECT select_list_columns FROM table_1 [Alias_name_T1], table_2  [Alias_name_T2], table_3 [Alias_name_T3] 
		-- WHERE table_1.column_name = table_2.column_name, table_2.column_name = table_3.column_name;

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
FROM 
	bdpendientes.entradasalidadinero ESD,
    bdpendientes.personas P,
    bdpendientes.ingresosegresos IE,
    bdpendientes.tipoingeg TIE,
    bdpendientes.grupoingeg GIE
WHERE ESD.idPersonas = P.id
    AND ESD.idIngresosEgresos = IE.id
    AND IE.idTipoIngEg = TIE.id
    AND IE.idGrupoIngEg = GIE.id
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
FROM 
	bdpendientes.entradasalidadinero esd,
    bdpendientes.personas p,
    bdpendientes.ingresosegresos ie,
    bdpendientes.tipoingeg tie,
    bdpendientes.grupoingeg gie
WHERE esd.idPersonas = p.id
    AND esd.idIngresosEgresos = ie.id
    AND ie.idTipoIngEg = tie.id
    AND ie.idGrupoIngEg = gie.id
ORDER BY Fecha ASC;

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
FROM 
	entradasalidadinero ESD,
    personas P,
    ingresosegresos IE,
    tipoingeg TIE,
    grupoingeg GIE
WHERE ESD.idPersonas = P.id
    AND ESD.idIngresosEgresos = IE.id
    AND IE.idTipoIngEg = TIE.id
    AND IE.idGrupoIngEg = GIE.id
ORDER BY Fecha ASC;