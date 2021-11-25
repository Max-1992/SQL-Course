-- Function LEFT --
-- Definición: Función que trabaja con cadenas y extrae el numero de caracteres que se indique como parametro.
-- Sintaxis: LEFT (cadena, numero_de_caracteres)

-- EJEMPLO --
-- Extraer los primeros 10 carácteres de un campo de base de datos llamado observaciones.

SELECT 
	id, 
	observaciones,
    LEFT(observaciones, 10) AS 'obsSubtract'
FROM bdpendientes.entradasalidadinero 
WHERE id > 500;