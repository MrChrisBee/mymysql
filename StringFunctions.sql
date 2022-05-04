/*
Systemfunktionen
----------------

String Functions
01 concat()
02 concat_ws()

03 Char_Lenght()

04 Replace()

05 Substring()

06 Locate()
*/


use maxversicherung;

SELECT concat("Hallo"," ","Zusammen");  -- Hallo Zusammen

SELECT concat_ws(" -- ", "Hallo", "Zusammen");

SELECT char_length("Beerwerth");

Select replace("Das ist doch alles käse!", 'k', 'K');

Select substring('hallo du' FROM 3);

SELECT substring("test",2,2);

 SELECT SUBSTRING('foobarbar' FROM 4);
 
 SELECT SUBSTRING_INDEX('www.mysql.com', '.', 2);
 
 SELECT SUBSTRING_INDEX('www.mysql.com', '.', -2);
 
 SELECT TRIM('  bar   ');
 
 SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');
 
 SELECT locate('@','info@cokuss.de');
 
 SELECT * FROM mitarbeiter;
 
SELECT Name,
	locate('e',Name) 'position des e',
    locate('ch',Name) 'position des ch',
	Telefon,
    locate('/',Telefon) 'position des /',
	left(telefon, locate('/',Telefon)-1) 'Vorwahl',
    right(telefon, length(telefon)-locate('/',Telefon)) 'Vorwahl'
FROM mitarbeiter;


