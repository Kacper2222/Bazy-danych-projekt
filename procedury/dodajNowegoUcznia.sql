CREATE DEFINER=`root`@`localhost` PROCEDURE `dodajNowegoUcznia`(
	DodajImie VARCHAR(45),
    DodajNazwisko VARCHAR(45),
    DodajPESEL VARCHAR(11),
    Dodaje_mail VARCHAR(45),
    Dodajnr_telefonu VARCHAR(45),
    Wybierz_klase int
)
BEGIN
	INSERT INTO uczen(Klasa_idKlasa, Imie, Nazwisko, PESEL, e_mail, Nr_telefonu)
    VALUES(Wybierz_klase, DodajImie, DodajNazwisko, DodajPESEL, Dodaje_mail, Dodajnr_telefonu);
END