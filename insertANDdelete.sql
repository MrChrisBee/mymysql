 -- DML Data Manupulation Language
 
 use wbs_heute;
 
 INSERT INTO teilnehmer values (1,'timan',4000,29,'m','Hamburg'),(2,'maria',NULL,30,'w','Köln');
 
 -- Update
 
 UPDATE teilnehmer 
	SET t_name = 'Thomas' 
    WHERE t_id = 1;
    
-- Delete

DELETE FROM teilnehmer WHERE t_id = 2;
