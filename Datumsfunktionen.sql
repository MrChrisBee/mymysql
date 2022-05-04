-- System functions: Datum und Zeit


SELECT 
	dayname(now()),
    day(now()),
    monthname(now()),
    month(now()),
    year(now()),
    hour(now()),
    minute(now()),
    second(now());
    
    SELECT datediff(day(now())-day('1967-07-10'));
