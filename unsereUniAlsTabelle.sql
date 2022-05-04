use universität_spree;

SELECT DISTINCT
		s.s_nr,
		s.s_vorname,
		s.s_nachname,
		s.s_geb_datum,
		s.s_alter,
		z.z_nr,
		z.z_tel,
        k.k_name,
        n.note
	FROM student as s 
		INNER JOIN zimmer as z
        	ON s.FK_z_nr = z.z_nr
		INNER JOIN note_im_kurs as n
			ON s.s_nr = n.FK_s_nr
		INNER JOIN kurs as k
			ON n.FK_k_nr = k.k_nr;