CREATE DEFINER=`root`@`localhost` PROCEDURE `poprawOceny`(
	numeriteracji INT
)
BEGIN
	DECLARE counter INT DEFAULT 1;
	WHILE counter < numeriteracji DO
		 if (SELECT Ocena FROM ocena WHERE idOcena = counter) <= 6 THEN
			 UPDATE Ocena
			 SET Poprawiona_Ocena = Ocena + 1
			 WHERE idOcena = counter;
            
		SET counter = counter + 1;
        
	end if;
    END WHILE;
END