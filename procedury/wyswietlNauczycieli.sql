CREATE DEFINER=`root`@`localhost` PROCEDURE `wyswietlNauczycieli`()
BEGIN
	SELECT Imie, Nazwisko, e_mail, Nr_telefonu FROM nauczyciel;
END