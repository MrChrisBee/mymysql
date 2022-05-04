DROP DATABASE parkhaus;
## Hallo
CREATE DATABASE parkhaus;
## noch ein hallo
USE parkhaus;

CREATE TABLE mitarbeiter (
	id INT PRIMARY KEY,
    vorname VARCHAR(20),
    nachname VARCHAR(20),
    email VARCHAR(20)
);


CREATE TABLE autos (
	id INT PRIMARY KEY,
    kennzeichen VARCHAR(10)
);

INSERT INTO mitarbeiter VALUES (1001,"Thomas","Meiser","t.m@vollcool.de"),(1002,"Sara","Möller","s.m@vollcool.de"),(1003,"Ingo","Sonstwo","i.s@vollcool.de");

INSERT INTO autos VALUES (1001, "HSK-a 1"),(1002, "HSK-a 2"),(1003, "HSK-a 3"),(1004, "HSK-a 4");


CREATE TABLE projekt (
	id INT PRIMARY KEY,
    titel VARCHAR(10),
    start DATE,
    end DATE
);

INSERT INTO projekt VALUES (50, "Projekt A", '2020-5-01', '2020-12-24'),(60, "Projekt B", '2020-5-01', '2020-12-24'),(70, "Projekt C", '2020-5-01', '2020-12-24'),(80, "Projekt E", '2020-5-01', '2020-12-24');

CREATE TABLE zuweisung (
	id INT PRIMARY KEY,
	id_mitarbeiter INT,
    id_projekt INT
);

INSERT INTO zuweisung VALUES (1, 1001, 50), (2,1001,60),(3,1002,50);


-- alle mitarbeiter mit Ihren Autos
SELECT 
	m.vorname,
    m.nachname,
    a.kennzeichen
from mitarbeiter m INNER JOIN autos a
	ON m.id = a.id;
    
-- alle mitarbeiter mit einem projekt

SELECT 
	m.vorname,
    m.nachname,
    p.titel
from 
	mitarbeiter m 
INNER JOIN zuweisung z
	ON m.id = z.id_mitarbeiter
INNER JOIN projekt p
	ON z.id_projekt = p.id;
