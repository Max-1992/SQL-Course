-- Function DATE_FORMAT --
-- Definición: Función que da formato a las columnas de tipo fecha.
-- Sintaxis: DATE_FORMAT (fecha, formato_de_fecha)

-- EJEMPLO --
-- Modificar el formato de las fechas.

SELECT 
	id, 
	fechaES,
    DATE_FORMAT(fechaES, '%d-%m-%y') AS 'fecha1',
    DATE_FORMAT(fechaES, '%e-%b-%Y') AS 'fecha2',
    DATE_FORMAT(fechaES, '%d/%m/%y') AS 'fecha3'
FROM bdpendientes.entradasalidadinero 
WHERE id > 500;