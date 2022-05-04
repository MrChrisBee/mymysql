-- Group By
-- Abfragen mit gruppierten Listen


USE wawi_002;

SELECT * FROM kunden order by ort;
SELECT * FROM kunden GROUP BY geschlecht;

SELECT vorname, count(*) from kunden GROUP BY geschlecht;


/*
Achtung group by ODER where 
nicht beides gleichzeitig!!!!
dann nutze having
*/

Select  gruppe, SUM(ekpreis), AVG(ekpreis) from artikel GROUP BY gruppe HAVING AVG(ekpreis) < 15;