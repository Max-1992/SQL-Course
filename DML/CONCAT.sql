-- Realiza un ejemplo con la tabla personas en la cual se concatenaran tres campos y una función propia de MySQL, además utilizara apostrofes dentro de la cadena.
SELECT 
	*,
	CONCAT('Nombre "Completo/apellido": ', nombre, ' ', 'Correo Electronico: ', correo, ' ', 'Numero Telefonico: ', telefono,  ' ', 'Registrado: ', NOW()) AS 'informacionDeContacto'
FROM bdpendientes.personas;
