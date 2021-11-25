-- BETWEEN OPERATOR --
-- Definición: Este operador se puede utilizar para validar si una lista de elemetnos son validos para mostrar desde un limite menor hasta uno mayor. Es posible combinar el uso del operador NOT con el operador BETWEEN
-- Sintaxis: WHERE test_expresión [NOT] BETWEEN inicio AND fin

-- EJEMPLO --

 -- Seleccionamos todos los registros de la tabla entradaSalidaDinero donde la fecha sea desde el 1 de enero y hasta el 31 de enero del 2018, y que también su montoIE este enter 100 y 2000. 
 SELECT * FROM bdpendientes.entradasalidadinero
 WHERE (fechaES BETWEEN '2018/01/01' AND '2018/12/31') AND (montoIE BETWEEN 100 AND 2000)
ORDER BY fechaES ASC;

-- Realicemos una consulta que nos regrese todos los registros de la tabla personas, donde el nombre comience con la letra A hasta la letra K.
SELECT * FROM bdpendientes.personas WHERE nombre BETWEEN 'A' AND 'K' ORDER BY nombre ASC;