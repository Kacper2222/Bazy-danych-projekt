-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: szkola_jezykowa
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nauczyciel`
--

DROP TABLE IF EXISTS `nauczyciel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nauczyciel` (
  `idNauczyciel` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `PESEL` varchar(45) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  `Nr_telefonu` varchar(45) NOT NULL,
  `Przedmiot_idPrzedmiot` int DEFAULT NULL,
  `Obecnosc_idObecnosc` int DEFAULT NULL,
  PRIMARY KEY (`idNauczyciel`),
  UNIQUE KEY `idNauczyciel_UNIQUE` (`idNauczyciel`),
  UNIQUE KEY `PESEL_UNIQUE` (`PESEL`),
  KEY `fk_Nauczyciel_Przedmiot1_idx` (`Przedmiot_idPrzedmiot`),
  KEY `fk_Nauczyciel_Obecnosc1_idx` (`Obecnosc_idObecnosc`),
  CONSTRAINT `fk_Nauczyciel_Obecnosc1` FOREIGN KEY (`Obecnosc_idObecnosc`) REFERENCES `obecnosc` (`idObecnosc`),
  CONSTRAINT `fk_Nauczyciel_Przedmiot1` FOREIGN KEY (`Przedmiot_idPrzedmiot`) REFERENCES `przedmiot` (`idPrzedmiot`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nauczyciel`
--

LOCK TABLES `nauczyciel` WRITE;
/*!40000 ALTER TABLE `nauczyciel` DISABLE KEYS */;
INSERT INTO `nauczyciel` VALUES (1,'Adolf','Konieczny','56051871823','adolfkonieczny968@158843.pl','565740801',1,1),(2,'Andrzej','Rybak','91112129055','andrzejrybak716@158843.pl','893144415',1,67),(3,'Adela','Czarnecki','73012777135','adelaczarnecki978@158843.pl','691008765',6,32),(4,'Milena','Michalak','65060344350','milenamichalak667@158843.pl','861621202',9,47),(5,'Weronika','Kozieł','63052795035','weronikakozieł850@158843.pl','913609132',9,76),(6,'Olga','Żukowski','64092819606','olgazukowski369@158843.pl','516095050',8,9),(7,'Sylwia','Bednarz','65120371725','sylwiabednarz908@158843.pl','604927319',7,48),(8,'Kleopatra','Przybysz','84062159130','kleopatraprzybysz172@158843.pl','828808952',4,45),(9,'Edyta','Janik','86031691703','edytajanik921@158843.pl','522083956',6,43),(10,'Alicja','Urbański','61031818093','alicjaurbanski517@158843.pl','971103616',4,25),(11,'Artur','Borowski','54020633667','arturborowski126@158843.pl','871389882',2,26),(12,'Igor','Domański','66012120829','igordomanski529@158843.pl','733048143',2,29),(13,'Igor','Marczak','92081211033','igormarczak923@158843.pl','596587578',7,60),(14,'Ireneusz','Łuczak','45080199449','ireneuszłuczak368@158843.pl','717564859',1,84),(15,'Zenon','Jaworski','91112354436','zenonjaworski813@158843.pl','563623507',8,15),(16,'Barbara','Janik','84021810304','barbarajanik315@158843.pl','658452049',6,25),(17,'Bronisław','Mróz','73022732396','bronisławmroz299@158843.pl','837598693',2,87),(18,'Daniel','Biernacki','55021938881','danielbiernacki34@158843.pl','581202147',7,84),(19,'Hilary','Sokołowski','47091563050','hilarysokołowski223@158843.pl','779063488',5,22),(20,'Klaudiusz','Zając','71022396335','klaudiuszzajac116@158843.pl','684990545',1,72),(21,'Marta','Gajda','62060496806','martagajda849@158843.pl','684583524',2,56),(22,'Tamara','Marek','57102274459','tamaramarek760@158843.pl','714607063',8,60),(23,'Marzena','Białek','58050293543','marzenabiałek312@158843.pl','699853969',8,91),(24,'Mateusz','Brzozowski','72082573794','mateuszbrzozowski86@158843.pl','621886372',8,93),(25,'Małgorzata','Grabowski','58121480250','małgorzatagrabowski174@158843.pl','687890091',2,16),(26,'Wacław','Krupa','98020630608','wacławkrupa244@158843.pl','821516320',2,79),(27,'Patrycja','Kołodziej','46030959553','patrycjakołodziej665@158843.pl','668498191',2,39),(28,'Dariusz','Kopeć','60110937747','dariuszkopec702@158843.pl','573638095',6,32),(29,'Marian','Murawski','97121470779','marianmurawski684@158843.pl','808576230',2,20),(30,'Luiza','Kaczmarek','89101175118','luizakaczmarek137@158843.pl','569173994',5,34),(31,'Konrad','Woźniak','89081723099','konradwozniak400@158843.pl','613057158',6,22),(32,'Eugenia','Błaszyk','95080435664','eugeniabłaszyk497@158843.pl','535936482',2,89),(33,'Jolanta','Grzelak','89030512029','jolantagrzelak550@158843.pl','932298639',3,99),(34,'Irmina','Stępień','68032275926','irminastepien44@158843.pl','510572311',7,83),(35,'Kamil','Kowalczyk','88102552744','kamilkowalczyk652@158843.pl','644188840',9,87),(36,'Eugenia','Brzozowski','84112769151','eugeniabrzozowski644@158843.pl','962741037',6,3),(37,'Stefan','Dobrowolski','72042063369','stefandobrowolski89@158843.pl','737332177',1,37),(38,'Tadeusz','Janowski','48071610492','tadeuszjanowski863@158843.pl','652955076',3,89),(39,'Paulina','Kurek','48102217118','paulinakurek443@158843.pl','619069733',4,93),(40,'Magdalena','Wiśniewski','56112646881','magdalenawisniewski112@158843.pl','738881561',5,29),(41,'Łucja','Urbaniak','81090978441','łucjaurbaniak620@158843.pl','847780379',8,45);
/*!40000 ALTER TABLE `nauczyciel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 16:48:42
