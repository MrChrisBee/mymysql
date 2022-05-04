CREATE DATABASE integritaet;

USE integritaet;

CREATE TABLE abteilung(
	abteilung_id INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO abteilung VALUES (10,'IT'),(20,'HR'),(30,'INFRA'),(40,'Prod');


CREATE TABLE mitarbeiter(
id INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
FK_Abteilung_id INT
);

-- adding the constraint

ALTER TABLE mitarbeiter
ADD FOREIGN KEY (FK_Abteilung_id) REFERENCES abteilung (abteilung_id);

-- insert some test data

INSERT INTO mitarbeiter VALUES (101, 'Paul', 10);
INSERT INTO mitarbeiter VALUES (102, 'Gaul', 20);
INSERT INTO mitarbeiter VALUES (103, 'Haul', 30);
INSERT INTO mitarbeiter VALUES (104, 'Saul', 40);


-- nun sollen wir die Abteilung id 10 löschen

DELETE FROM abteilung WHERE abteilung_id = 10; -- löst eine Fehlermeldung aus wegen der Refernz

-- also löschen (!?) wir mitarbeiter und legen es neu an

DROP TABLE mitarbeiter;

CREATE TABLE mitarbeiter(
id INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
FK_Abteilung_id INT,
FOREIGN KEY (FK_Abteilung_id) REFERENCES abteilung (abteilung_id) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO mitarbeiter VALUES (101, 'Paul', 10);
INSERT INTO mitarbeiter VALUES (102, 'Gaul', 20);
INSERT INTO mitarbeiter VALUES (103, 'Haul', 30);
INSERT INTO mitarbeiter VALUES (104, 'Saul', 40);

DELETE FROM abteilung WHERE abteilung_id = 10;  -- jetzt ist es möglich

DELETE FROM abteilung WHERE abteilung_id = 20; -- gleich noch einmal (in der Abteilung ist auch 'Gaul' der wird durch cascade auch aus mitarbeiter entfernt)
 
 
 
 