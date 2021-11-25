LOAD DATA INFILE 'c:\\sqlarchivos\\pendientesdb.csv'
	INTO TABLE pendientes
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\r\n';