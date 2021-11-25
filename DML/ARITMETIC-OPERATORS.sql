-- Realizamos una consulta a la tabla de entradaSalidaDinero analizando un ingreso con id = 21 para hacer uso de el modulo y el residuo.
SELECT 
	idIngresosEgresos, 
	montoIE,
    (montoIE / 2) AS 'montoIEDivDos',
    (montoIE DIV 2) AS 'montoIEDivDosEntero',
    (montoIE MOD 2) AS 'montoIEResiduo'
FROM bdpendientes.entradasalidadinero 
WHERE id = 21 OR id = 368;

-- Realizaremos operacione con parentesis para demostrar la presedencia de los operadores.
SELECT
	idIngresosEgresos, 
	montoIE,
    montoIE + 2 * 3 AS 'montoSinParentesis',
    (montoIE + 2 ) * 3 AS 'montoConParentesis'
FROM bdpendientes.entradasalidadinero
WHERE id = 21;