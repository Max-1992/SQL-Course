-- Sentencia que regresa todos los registros de la tabla personas.
SELECT * FROM bdpendientes.pendientes;
SELECT * FROM bdpendientes.usuarios;
SELECT * FROM bdpendientes.estatuspendiente;
SELECT * FROM bdpendientes.personas;
SELECT * FROM bdpendientes.ingresosegresos;
SELECT * FROM bdpendientes.grupoingeg;
SELECT * FROM bdpendientes.entradasalidadinero;
SELECT * FROM bdpendientes.tipoingeg;

-- Obtener los campos nombre y correo de la tabla persona ordenado de forma descendente por nombre.
SELECT nombre, correo FROM bdpendientes.personas ORDER BY nombre DESC;

-- Obtener los campos nombre y correo de la tabla persona ordenado de forma ascendente por nombre.
SELECT nombre, correo FROM bdpendientes.personas ORDER BY nombre ASC;

-- Regresar la fecha de entrada o salida de dinero, el monto de entrada o salida de la tabla entadaSalidaDinero, donde la fecha este entre el 1 de enero del 2018 y el 31 de enero del mismo añon, ordenados por fecha ascendente.
SELECT fechaES, montoIE FROM bdpendientes.entradasalidadinero 
WHERE fechaES BETWEEN '2018-01-01' AND '2018-01-31'
ORDER BY fechaES ASC;

-- Regresa los registros de la tabla entadaSalidaDinero cuyo monto sea mayor o igual a 500, y ese monto se muestra multiplicado por 2, solamente muestra los campos id, fechasES, montoIE "original" y montoTotal "montoIE *2".
SELECT id, fechaES, montoIE, (montoIE * 2) AS 'montoTotal' FROM bdpendientes.entradasalidadinero
WHERE montoIE >= 500;