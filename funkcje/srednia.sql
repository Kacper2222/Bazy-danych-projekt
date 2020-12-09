CREATE DEFINER=`root`@`localhost` FUNCTION `sredniaOcena_popOcena`(idUczen INT) RETURNS float
    DETERMINISTIC
BEGIN

	DECLARE result FLOAT;
    if idUczen > 0 THEN
			SET result = (SELECT (SUM(ocena)+SUM(Poprawiona_ocena))/(count(powod)*2) 
			FROM ocena WHERE Uczen_idUczen = idUczen);
    else 
			SET result = (SELECT (SUM(ocena)+SUM(Poprawiona_ocena))/(count(powod)*2) 
            FROM ocena WHERE Uczen_idUczen > 0);
	end if;
RETURN result;
END