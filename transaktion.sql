USE edvhandel_001;


START TRANSACTION;
UPDATE mitarbeiter
	SET name = 'david' 
    WHERE mitarbeiter_nr in (1,2,3,4);
    
ROLLBACK;

