CREATE DEFINER=`root`@`localhost` PROCEDURE `tworzDateZajec`(
	rozpoczecia DATE,
    zakonczenia DATE
)
BEGIN
	DECLARE counter INT;
    DECLARE counterDate DATE;
    SET counterDate = rozpoczecia;
    SET counter = 2;
	WHILE counterDate BETWEEN rozpoczecia AND zakonczenia DO
		INSERT INTO zajecia(idZajecia, Kurs_idKurs, Data_zajec, Nr_sali)
		VALUES(counter, 1, counterDate, 112);
		SET counterDate = date_add(counterDate, INTERVAL 1 WEEK);
		SET counter = counter + 1;
        
    END WHILE;
   
END