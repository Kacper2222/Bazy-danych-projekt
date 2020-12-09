CREATE DEFINER=`root`@`localhost` PROCEDURE `wyswietlKursy`()
BEGIN
	SELECT przedmiot.Przedmiot, nauczyciel.Imie, nauczyciel.Nazwisko, Data_rozpoczecia, Data_zakonczenia 
    FROM kurs
    LEFT JOIN przedmiot
    ON kurs.Przedmiot_idPrzedmiot = przedmiot.idPrzedmiot
    LEFT JOIN nauczyciel
    ON kurs.Nauczyciel_idNauczyciel = nauczyciel.idNauczyciel;
END