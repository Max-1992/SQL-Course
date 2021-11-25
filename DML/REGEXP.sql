-- REGEXP OPERATOR --
-- Definición: El operador REGEXP sirve para recuperar renglones que tengan un patrón llamado máscara. La máscara determina que valores satisfacen la condción.
-- Las máscaras para REGEXP contienen contructuores y caracterés especiales. Usando máscaras con REGEXP se puede decir que no es CASE-SENSITIVE.
-- REGEXP Constructor '^': Coincide con el patrón desde el comienzo del valor que se prueba. 
-- REGEXP Constructor '$': Coincide con el patrón  al final del valor testeado.
-- REGEXP Constructor '-': Coincide con cualquier valor.
-- REGEXP Constructor [charlist]: Coincide con cualqueir caracter dentro de los corchetes.
-- REGEXP Constructor [charlist1-charlist2]: Coincide con cualquier caracter entre el rango dado.
-- REGEXP Constructor '|': Separa dos patrones de cadena y coincide cad uno. Simil OR.
-- Sintaxis: REGEXP regular_expression

-- Selecciona los emplados cuyos nombres y apellidos contengan la combinación de caracteres 'sa'.
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP 'sa' AND last_name REGEXP 'sa';

-- Selecciona los emplados cuyos nombres y apellidos contengan la combinación de caracteres 'sa' al principio.
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP '^sa' AND last_name REGEXP '^sa';

-- Selecciona los emplados cuyos nombres contengan la combinación de caracteres 'so' y su apellidos contengan la combinación de caracteres 'sa' al principio.
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP '^so' AND last_name REGEXP '^sa';

-- Selecciona los emplados cuyos nombres y apellidos contengan la combinación de caracteres 'na' al al final.
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP 'na$' AND last_name REGEXP 'na$';

-- Selecciona a los empleados cuyo nombre contenga la frase 'rs' o la frase 'sn' y que el aperllido contenga la frase 'rs' o 'sn' o 'an'. 
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP 'rs|sn' AND last_name REGEXP 'rs|sn|an';

-- Selecciona a los empleados cuyo nombre contenga la letra 'n' seguida de una 'i' o una 'a' y que el apellido contega una letra 'n' sguida de una 'u' o una 'e'. 
SELECT * FROM dbemployes.employees
WHERE first_name REGEXP 'n[ia]' AND last_name REGEXP 'n[ue]';

-- Selecciona a los empleados cuyo nombre contenga la frase 'mar' seguida de una 'i' o una 'y' y en seguida de esa letra que le presiga una 'a' o una 'o'.
SELECT * FROM dbemployes.employees WHERE first_name REGEXP 'mar[iy][ao]';

-- Selecciona los empleados cuyo nombre en su parte final contengan la siguiente convinación de caracteres, tenga una letra de la 'a' a la 'z', enseguida de ese caracter tiene que seguir una vocal y despues de la vocal finaliza con una letra n. 
SELECT * FROM dbemployes.employees WHERE first_name REGEXP '[a-z][aeiou]n$';