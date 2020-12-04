CREATE DEFINER=`root`@`localhost` PROCEDURE `poprawOcene`(
	idOcenyPoprawka INT,
    nowaOcena INT
    
)
BEGIN
	if (nowaOcena >= 1 AND nowaOcena <= 6) THEN
		UPDATE Ocena
		SET Ocena = nowaOcena
		WHERE idOceny = idOcenyPoprawka;
	else
		UPDATE Ocena
        SET Ocena = 1
        WHERE idOceny = idOcenyPoprawka;
	END IF;
END