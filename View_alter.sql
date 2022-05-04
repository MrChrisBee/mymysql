


-- 1 erstellung von VIEW

CREATE VIEW alter_mitarbeiter AS
	Select date_format(from_Days(DATEDIFF(CURDATE(), Geburtsdatum)+1) ,'%Y')*1 AS `Alter` from mitarbeiter;
    
    
    SELECT * FROM alter_mitarbeiter;