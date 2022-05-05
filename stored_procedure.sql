use edvhandel_001;

-- einfache prozedur erstellen
-- syntax
/*
	DELIMITER //  -- $$, aa, whatever

CREATE procedure [procedure name] ([parameter 1], [parameter 2], [parameter 3])
Begin

	SQL Queryes... ;
    SQL Queryes... ;
    SQL Queryes... ;
    
    END //  -- $$, aa, whatever
    
*/
-- prozedur erstellen:
Delimiter //
CREATE PROCEDURE m_info()
BEGIN
	SELECT name, vorname, strasse from mitarbeiter;
END //

Delimiter ;
-- use it
CALL m_info();
-- insert procedure

DELIMITER ;;
CREATE PROCEDURE insert_data(bezeichnungs_name VARCHAR(30))
BEGIN
	INSERT INTO abteilung (bezeichnung) VALUES (bezeichnungs_name);
END;
;;
-- use it
DELIMITER ;

CALL insert_data("Fliegentöter");

CALL insert_data("PR");