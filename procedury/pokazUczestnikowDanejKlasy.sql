CREATE DEFINER=`root`@`localhost` PROCEDURE `pokazUczestkiowDanejKlasy`(
	idKlasy INT
    )
BEGIN
	SELECT Imie, Nazwisko FROM uczen
    WHERE Klasa_idKlasa = idKlasy;
END