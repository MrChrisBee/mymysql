USE edvhandel_001;

SELECT * from bestellung 
	WHERE kunden_nr IN
		(SELECT k.kunden_nr FROM kunde k WHERE k.plz LIKE '4%');
        
        
        
