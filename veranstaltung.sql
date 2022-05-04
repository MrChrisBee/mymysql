	CREATE DATABASE IF NOT EXISTS veranstalter;

	USE veranstalter;

	CREATE TABLE IF NOT EXISTS raum
		(
			nummer INT not null AUTO_INCREMENT PRIMARY KEY,
			name VARCHAR(20) NOT Null
		);

	CREATE TABLE IF NOT EXISTS kunde
		(
			nummer INT not null AUTO_INCREMENT PRIMARY KEY,
			name VARCHAR(25) NOT Null
		);

	CREATE TABLE IF NOT EXISTS veranstaltung
		(
			nummer INT not null AUTO_INCREMENT PRIMARY KEY,
			name VARCHAR(25),
			start DATETIME,
			end DATETIME,
			r_nummer INT,
			CONSTRAINT fk_r_nummer FOREIGN KEY (r_nummer) REFERENCES raum(nummer),
			k_nummer INT,
			CONSTRAINT fk_k_nummer FOREIGN KEY (k_nummer) REFERENCES kunde(nummer)
            -- CONSTRAINT Date_Check CHECK(start > CURRENT_TIMESTAMP and end > start)  -- you can check if a Value is in a defined state
		) Engine=InnoDB AUTO_INCREMENT=10;  -- This is a way to make a step other then 1 in auto_increment
		
	DESCRIBE raum;

	INSERT INTO raum (name) VALUES 
	('Nil'),
	('Amazonas'),
	('Jangtsekiang'),
	('Sorpe'),
	('Gelber Fluss'),
	('Kongo');

	INSERT INTO kunde (name) VALUES
	('Li'),
	('Zhang'),
	('Van'),
	('Nguyen'),
	('Garcia'),
	('Gonzalez'),
	('Hernandez'),
	('Smith'),
	('Smirnow'),
	('Müller');

	INSERT INTO veranstaltung (name, start, end, r_nummer, k_nummer)
	VALUES
	('Hochzeit Li-Müller', '2021-07-10 13:00', '2021-07-10 13:30', 4, 1 );
		
	-- https://www.w3schools.com/sql/sql_foreignkey.asp mysql vs oracle  zu foreign key einfacher angeben

	-- das bringt mir die kunden die eine veranstaltung gebucht haben
	SELECT kunde.name, veranstaltung.name from kunde join veranstaltung on veranstaltung.k_nummer = kunde.nummer;  

	-- oder so (wenn es gleichnamige spalten gibt) geht hier also nicht
	-- SELECT kunde.name, veranstaltung.name from kunde natural join veranstaltung; 
    
    SELECT * from veranstaltung;