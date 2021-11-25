-- NATURAL --
-- Definición: Se utiliza para trabajar con JOINS, su principal uso es el de reducir o simplificar las consultas SQL.
	-- Para ello el campo o clave foranea debe tener el mismo nombre que la clave primaria. Es decir que si la clave primaria se llama idPersona, la clave foranea debe llamarse idPersona.
	-- Basicamente la clasula NATURAL une o realiza la comparación a través de campos comunes en ambas tablas.
    -- Se debe tener en cuenta que siempre realiza un enlazamiento natural con la tabla de su izquierda es por ello que es importante que solo se utilice en la primer instrucción o para realizar JOINS a una sola tabla.
    
-- Sintaxis: 
	-- SELECT select_list_columns FROM table_1
		-- [INNER] JOIN table_2 USING(join_condition)

-- Consulta de ejemplo: Cantidad total de registro 443308
SELECT COUNT(*) FROM dbemployes.employees
INNER JOIN dbemployes.titles ON dbemployes.employees.emp_no = dbemployes.titles.emp_no;

-- EJEMPLO 1 JOIN a una tabla --
SELECT COUNT(*) FROM dbemployes.employees
	NATURAL JOIN dbemployes.titles;

SELECT COUNT(*) FROM employees
	NATURAL JOIN titles;

-- EJEMPLO 2  JOIN a multiples tablas--
SELECT COUNT(*) FROM dbemployes.employees
	NATURAL JOIN dbemployes.titles
	INNER JOIN dbemployes.salaries USING(emp_no)
	INNER JOIN dbemployes.dept_emp USING(emp_no)
	INNER JOIN dbemployes.dept_manager USING(emp_no);

SELECT COUNT(*) FROM employees
	NATURAL JOIN titles
	INNER JOIN salaries USING(emp_no)
	INNER JOIN dept_emp USING(emp_no)
	INNER JOIN dept_manager USING(emp_no);