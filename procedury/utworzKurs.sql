CREATE DEFINER=`root`@`localhost` PROCEDURE `utworzKurs`(
	Nauczyciel INT,
    Data_rozp DATE,
    Data_zak DATE,
    Przedmiot INT
)
BEGIN
	INSERT INTO Kurs(Nauczyciel_idNauczyciel, Data_rozpoczecia, Data_zakonczenia, Przedmiot_idPrzedmiot)
    VALUES(Nauczyciel, Data_rozp, Data_zak, Przedmiot);
END