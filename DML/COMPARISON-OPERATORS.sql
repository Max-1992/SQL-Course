-- CLUSULA WHERE --
-- Definición: Esta clausula limita el set de resultados de una tabal en vase a los criterios especificados.
-- Sintaxis: WHERE expresión

-- EJEMPLO -- 
SELECT * FROM bdpendientes.usuarios WHERE id = 1;

-- OPERADERES DE COMPARACION --
-- Definición: Los operadores de comparación nos permiten realizar distinto tipo de comparaciones.
-- Igual que '='
-- Menor que '<'
-- Mayor que '>'
-- Menor o igual que '<='
-- Mayor o igual que '>='
-- Distinto de '<>'
-- Distindo de '!='

-- EJEMPLO -- 

-- Selecciona un registro por correo.
SELECT * FROM bdpendientes.personas WHERE correo = 'juan@hotmail.com';

-- Selecciona un registro por telefono.
SELECT * FROM bdpendientes.personas WHERE telefono = '4921301447';

-- Realizar todas las operaciones de comparación con el campo id.
SELECT * FROM bdpendientes.personas;
SELECT * FROM bdpendientes.personas WHERE id = 1;
SELECT * FROM bdpendientes.personas WHERE id < 5;
SELECT * FROM bdpendientes.personas WHERE id > 7;
SELECT * FROM bdpendientes.personas WHERE id <= 10;
SELECT * FROM bdpendientes.personas WHERE id >= 10;
SELECT * FROM bdpendientes.personas WHERE id != 7;
SELECT * FROM bdpendientes.personas WHERE id <> 10;

-- Selecciona todos los campos de la tabla entradaSalidaDindero donde la fecha sea mayor al 01/01/2018. 
SELECT * FROM bdpendientes.entradasalidadinero 
WHERE fechaES = '2018/01/01'
ORDER BY fechaES ASC;

-- Seleccionar todos los campos de la tabla entradaSalidaDindero donde el montoIE dividido dos sea menor a 1000.
SELECT *, ROUND(montoIE / 2) AS 'montoNeto' 
FROM bdpendientes.entradasalidadinero
WHERE (montoIE / 2) < 1000
ORDER BY montoIE DESC;

-- Muestra de la tabla de personas los registros cuya primera letra del nombre sea menor a la letra K. 
SELECT * FROM bdpendientes.personas 
WHERE LEFT(nombre, 1) < 'K' 
ORDER BY nombre ASC;