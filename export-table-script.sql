select * from pendientes

INTO OUTFILE
	'c:\\sqlarchivos\\pendientesdb.csv'
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';