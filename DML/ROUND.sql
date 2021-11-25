-- Function ROUND --
-- Definición: Función para dar formato respecto al redondedo de datos numericos. Es importante tener en cuenta que el redondeo se hace al numero más proximo tomando como pivote el número .5.
-- EJEMPLO: 10.3 = 10 AND 10.6 = 11
-- Sintaxis: ROUND (número, [número de decimales])

-- EJEMPLO --
-- Redondear un dato numerico en tres diferentes formatos con información de la tabla entradaSalidaDenero.

SELECT 
	id, 
	montoIE,
    ROUND(montoIE) AS 'montoIERedondeado',
    ROUND(montoIE, 1) AS 'montoIERedondeadoDecimales'
FROM bdpendientes.entradasalidadinero 
WHERE id > 500;