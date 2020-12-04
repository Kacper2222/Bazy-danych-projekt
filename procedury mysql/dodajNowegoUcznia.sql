CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajNowegoUcznia`(
	DodajImie VARCHAR(30),
    DodajNazwisko VARCHAR(30),
    DodajPESEL VARCHAR(20),
    Dodaje_mail VARCHAR(45),
    DodajNr_telefonu VARCHAR(20),
    DodajKlasa_idKlasa INT,
    DodajNauczyciel_idNauczyciel INT,
    DodajPrzedmiot_idPrzedmiot INT
)
BEGIN
	INSERT INTO uczen(Imie, Nazwisko, PESEL, e_mail, Nr_telefonu, Klasa_idKlasa, Nauczyciel_idNauczyciel, Przedmiot_idPrzedmiot)
    VALUES(DodajImie, DodajNazwisko, DodajPESEL, Dodaje_mail, DodajNr_telefonu, DodajKlasa_idKlasa, DodajNauczyciel_idNauczyciel, DodajPrzedmiot_idPrzedmiot);
END