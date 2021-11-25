-- LIKE OPERATOR --
-- Definición: Los operadores LIKE sirven para recuperar renglones que tengan un patrón llamado máscara. La máscara determina que valores satisfacen la condción.
-- Las máscaras para el LIKE pueden contener símbolos especiales llamados wildcards o comodines las cuales son NO CASE-SENSITIVE.
-- LIKE Simbolo '%': Coinciede con una cadena de cero o más caracteres.
-- LIKE Simbolo '_': Coincide con cualquier caracter.
-- Sintaxis: WHERE match_expression [NOT] LIKE pattern

-- Seleccionamos todos los empleados cuyo nombre coincida en sus primeros tres caracteres utilizando el patrón 'Man', también el apellido que comince por las primeras tres letras 'man'.
SELECT * FROM dbemployes.employees WHERE first_name LIKE 'MAN%' AND last_name LIKE 'MAN%';

-- Selecciona todos los empleados cuyo nombre empiece por 'Ma', los siguientes dos caracteres pueden ser los que sea, y el quito caracter deberia de ser la letra 'u', el mismo patron para nombre y apellido.
SELECT * FROM dbemployes.employees WHERE first_name LIKE 'MA__U%' AND last_name LIKE 'MA__U%';

-- Selecciona todos los empleados cuyo nombre y apellido terminen con las letras 'ton'. 
SELECT * FROM dbemployes.employees WHERE first_name LIKE '%ton' AND last_name LIKE '%ton';

-- Selecciona a todos los empleados cuyo nombre contenga las letras seguidas 'uan'. 
SELECT * FROM dbemployes.employees WHERE first_name LIKE '%uan%';

-- Selecciona todos los empleados cuyo nombre y apellido contengan solo 5 caracteres.
SELECT * FROM dbemployes.employees WHERE first_name LIKE '_____' AND last_name LIKE '_____';