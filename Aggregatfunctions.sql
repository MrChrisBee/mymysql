/*
aggregate functions
SUM(column)
MIN(column)
MAX(column)
COUNT(column)
AVG(column)
*/


USE wawi_002;

select SUM(vkpreis*mengebestellt) FROM artikel;

SELECT COUNT(*) FROM artikel where vkpreis > 0;

SELECT AVG(vkpreis)  mist FROM artikel;
-- or
SELECT AVG(vkpreis) as mist FROM artikel;