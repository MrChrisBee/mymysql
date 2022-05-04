-- Subselect

USE wawi_002;
SHOW TABLES;

select nachname, vorname, plz, ort FROM kunden WHERE geschlecht = 2; -- liefert eine Tabelle

SELECT sum(vkpreis) from artikel;  -- liefert Einzelwert

SELECT sum(vkpreis), AVG(vkpreis) from artikel;  -- liefert mehrere Einzelwerte

SELECT * FROM artikel
	WHERE vkpreis = (Select max(vkpreis) FROM artikel);
    

-- Subselect mit in
-- Das geht so nicht 
-- SELECT * FROM artikel
--  	WHERE vkpreis IN (Select MAX(vkpreis), MIN(vkpreis) FROM artikel);
-- aber so geht es !!!
SELECT * FROM artikel
  	WHERE vkpreis IN ((Select MAX(vkpreis) FROM artikel), (Select MIN(vkpreis) FROM artikel));
    
SELECT * FROM artikel  -- von unten bis oben
  	WHERE vkpreis BETWEEN (Select MIN(vkpreis) FROM artikel) and (Select MAX(vkpreis) FROM artikel) ORDER BY vkpreis;
    



