-- SUBQUERIES (SubConsultas) --
-- Descripción: Las subConsultas basicamente nos permiten realizar consulta SQL dentro de otras consultas SQL.
	-- Un SubQuery puede estar presente en 4 situaciónes:
		-- En la clausula WHERE como condición de busqueda.
        -- En la clausula HAVING como una condición de busqueda.
        -- En la clausula FROM como parte o especificación de una tabla.
        -- En la clausula SELECT com una especificación de columna.
	-- Un SubQuery es una sentecia SELECT que puede ser codificada dentro de otra sentencia SQL y debe estar encerrada entre parentesis.
    -- Un SubQuery puede regresar:
		-- Un valor simple, es decir una simple columna.
        -- Una tabla de valores, es decir un resultset con múltiples columnas.
	-- La sintaxis de un SubQuery es practicamente identica a la de un SELECT normal, la diferencia es que no puede utilizar la clausula ORDER BY.
    -- Las SubConsultas puede ser anidadas dentro de otras subConsultas.
    
    
-- SUB-CONSULTAS ESCALARES ----------------------------------------------------------------------------------------------------------------------------------
-- Descripción: Es una sentecia SELECT dentro de una consulta externa para devolver un único valor. Es decir que siempre devolvera una única columna con un único valor.

-- Sacar todos los registros de la tabla entradaSalidaDinero pero solo aquellos cuyo montoIE sea mayor al promedio de dicho campo PROM 1718.58.
SELECT * FROM bdpendientes.entradasalidadinero WHERE bdpendientes.entradasalidadinero.montoIE > (
	SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero
)
ORDER BY montoIE ASC;

SELECT * FROM entradasalidadinero WHERE entradasalidadinero.montoIE > (
	SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero
)
ORDER BY montoIE ASC;

-- Sacar todos los registros de la tabla entradaSalidaDinero pero solo aquellos cuyo montoIE sea mayor al promedio de dicho campo PROM 1718.58.
-- Devolver el campo montoPromedio como una nueva columna con el valor promedio del monto.
SELECT 
	*,
	(SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero) AS 'montoPromedio'
 FROM entradasalidadinero WHERE entradasalidadinero.montoIE > (
	SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero
)
ORDER BY montoIE ASC;

SELECT 
	*,
	(SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero) AS 'montoPromedio'
 FROM  bdpendientes.entradasalidadinero WHERE  bdpendientes.entradasalidadinero.montoIE > (
	SELECT ROUND(AVG(montoIE), 2) FROM bdpendientes.entradasalidadinero
)
ORDER BY montoIE ASC;
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------