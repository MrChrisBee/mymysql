--	-------------------------------------------------------------
--		AUFGABEN 
--	-------------------------------------------------------------

use maxversicherung;
show tables;
-- NUTZE DATENBANK maxversicherung??? 
-- Bitte ggf Datenbanknamen anpassen.


--	-------------------------------------------------------------
--	Aufgabe 1
-- Erstellen Sie eine Mitarbeiter-Liste mit Personalnummer, Name und Geburtsdatum. In der Spalte Name sollen Vorname und Nachname 
-- komplett in einem String angezeigt werden.

-- CONCAT()






--	-------------------------------------------------------------
--	Aufgabe 2
-- Erzeugen Sie eine Mitarbeiter-Liste für die Kommunikation. Dabei sollen zunächst Personalnummer, Vorname und Name angegeben werden.
-- Weiterhin sollen in dieser Liste in einer Spalte nur die Telefon-Vorwahl (ohne /) ausgegeben werden. Geben Sie der 
-- Spalte über einen Alias eine aussagekräftige Überschrift

-- CONCAT()
-- LEFT()




--	-------------------------------------------------------------
--	Aufgabe 3
-- Erzeugen Sie eine Mitarbeiter-Liste für die Kommunikation. Dabei sollen zunächst Personalnummer, Vorname und Name angegeben werden.
-- Weiterhin sollen in dieser Liste in getrennten Spalten Telefon-Vorwahl (ohne /) und Telefon-Nummer ausgegeben werden. Geben Sie den 
-- beiden Spalten über einen Alias aussagekräftige Überschriften

Select Personalnummer, Vorname, Name, SUBSTRING_INDEX(Telefon, '/', 1) as vor, SUBSTRING_INDEX(Telefon, '/', -1) as nach from mitarbeiter;







--	-------------------------------------------------------------
--	Aufgabe 4
-- Erzeugen Sie eine Mitarbeiter-Liste für die Kommunikation. Dabei sollen zunächst Personalnummer, Vorname und Name angegeben werden.
-- In zwei weiteren Spalten sollen die beiden Teile der eMail-Adresse getrennt voneinander ausgegeben werden (also 
-- der Teil vor @ und der Teil nach @)
Select Personalnummer, Vorname, Name, SUBSTRING_INDEX(Email, '@', 1) as vor, SUBSTRING_INDEX(Email, '@', -1) as nach from mitarbeiter;



