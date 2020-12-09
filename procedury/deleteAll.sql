CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAll`()
BEGIN
	DECLARE counter INT DEFAULT 1;
    WHILE counter < 1000000 DO
		DELETE FROM zajecia
        WHERE idZajecia > 11;
	
    END WHILE;
END