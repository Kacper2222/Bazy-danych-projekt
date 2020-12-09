CREATE DEFINER=`root`@`localhost` PROCEDURE `poprawionaPojedynczaOcena`(
	idOcenyPoprawka INT,
    nowaOcena INT
)
BEGIN
	if (nowaOcena > 1 AND nowaOcena <= 6) THEN
		UPDATE Ocena
        SET Poprawiona_ocena = nowaOcena
        WHERE idOcena = idOcenyPoprawka;
	else
		UPDATE Ocena
        SET Poprawiona_ocena = 1
        WHERE idOcena = idOcenyPoprawka;
	end if;
END