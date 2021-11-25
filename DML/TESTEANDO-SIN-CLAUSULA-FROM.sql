-- Testeando Expresiones sin la clasula FROM --

SELECT 
	CURRENT_DATE() AS 'fecha',
    DATE_FORMAT(CURRENT_DATE(), '%d-%m-%y') AS 'fecha1',
    DATE_FORMAT(CURRENT_DATE(), '%e-%b-%Y') AS 'fecha2',
    DATE_FORMAT(CURRENT_DATE(), '%d/%m/%y') AS 'fecha3',
    DATE_FORMAT(CURRENT_DATE(), '%d/%m/%Y') AS 'fecha4',
    DATE_FORMAT(CURRENT_DATE(), '%D-%M-%Y') AS 'fecha5';
    
SELECT 
	'HOLA MUNDO' AS 'palabra', 
	CONCAT('HOLA MUNDO', ' ', 'desde', ' ', 'SQL!') AS 'frase',
    LEFT(CONCAT('HOLA MUNDO'), 4) AS 'saludo';

SELECT 
	SUM(10 + 15) AS 'sumaResult',
    ROUND(SUM(10 + 15.6)) AS 'sumaRestulRound';