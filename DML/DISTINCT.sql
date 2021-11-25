-- Funcion DISTINCT --
-- Definición: Función que permite obtener los registro que sean distintos en una consulta.
-- Sintaxis: DISTINCT (Dato) OR DISTINCT Dato

-- EJEMPLO --
-- Necestimos obtener todas las fechas que sean diferentes, es decir, necesitamos obtener todas las fechas en las cuales ingreso y egreso dinero sin que estas se repitan.
SELECT 
	DISTINCT fechaES
FROM bdpendientes.entradasalidadinero
order by fechaES ASC;

-- Necestimos obtener todas las fechas que sean diferentes, es decir, necesitamos obtener todas las fechas en las cuales ingreso y egreso dinero sin que estas se repitan. Las fechas deben mostrarse con el siguiente formato dd/mm/aaaa.

SELECT 
	DISTINCT DATE_FORMAT(fechaES, '%d/%m/%Y') AS 'Fecha'
FROM bdpendientes.entradasalidadinero
order by fechaES ASC;

-- Necestimos obtener la cantidad total de todas las fechas que sean diferentes, es decir, necesitamos obtener todas las fechas en las cuales ingreso y egreso dinero sin que estas se repitan.
SELECT 
	COUNT(DISTINCT fechaES) AS 'DateCount',
    COUNT(DISTINCT DATE_FORMAT(fechaES, '%d/%m/%Y')) AS 'DateCountFormat'
FROM bdpendientes.entradasalidadinero
order by fechaES ASC;

-- Necesitamos obtener de cuantos años hay información diferente en la tabla de ingresos y egresos.
SELECT 
	DISTINCT YEAR(fechaES) AS 'DATE'
FROM bdpendientes.entradasalidadinero
order by fechaES ASC;


-- Necesitamos obtener información sobre que estatus existen registrados.
SELECT 
	DISTINCT idEstatusPendiente
FROM bdpendientes.pendientes;