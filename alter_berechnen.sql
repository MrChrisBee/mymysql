use maxversicherung;



Select date_format(from_Days(DATEDIFF(Now(), Geburtsdatum)+1) ,'%Y')*1 AS `Alter` from mitarbeiter;