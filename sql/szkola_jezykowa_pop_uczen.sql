-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: szkola_jezykowa_pop
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
-- Table structure for table `uczen`
--

DROP TABLE IF EXISTS `uczen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uczen` (
  `idUczen` int NOT NULL AUTO_INCREMENT,
  `Klasa_idKlasa` int NOT NULL,
  `Imie` varchar(45) DEFAULT NULL,
  `Nazwisko` varchar(45) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  `Nr_telefonu` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idUczen`),
  KEY `fk_Uczen_Klasa_idx` (`Klasa_idKlasa`),
  CONSTRAINT `fk_Uczen_Klasa` FOREIGN KEY (`Klasa_idKlasa`) REFERENCES `klasa` (`idKlasa`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczen`
--

LOCK TABLES `uczen` WRITE;
/*!40000 ALTER TABLE `uczen` DISABLE KEYS */;
INSERT INTO `uczen` VALUES (1,1,'Roksana','Socha','78111645535','roksanasocha43@158843.pl','863626315'),(2,1,'Rafał','Zalewski','93092577808','rafałzalewski728@158843.pl','582450739'),(3,1,'Milena','Maciejewski','76040393902','milenamaciejewski420@158843.pl','770521337'),(4,1,'Grażyna','Michalski','91032536827','grazynamichalski635@158843.pl','884865282'),(5,1,'Eryk','Kosiński','45101617650','erykkosinski643@158843.pl','989366268'),(6,1,'Lucjan','Grzybowski','90071312123','lucjangrzybowski690@158843.pl','838734146'),(7,1,'Henryk','Jakubowski','89091751519','henrykjakubowski959@158843.pl','655617715'),(8,1,'Borys','Lisowski','83102524482','boryslisowski454@158843.pl','989404074'),(9,1,'Berenika','Kozieł','84121023938','berenikakozieł78@158843.pl','727111302'),(10,1,'Teresa','Janik','69090616636','teresajanik359@158843.pl','664336703'),(11,1,'Zuzanna','Kasprzyk','69041380316','zuzannakasprzyk177@158843.pl','679189136'),(12,1,'Pamela','Grzybowski','71070653345','pamelagrzybowski944@158843.pl','751419949'),(13,1,'Eugeniusz','Żak','68030741408','eugeniuszzak137@158843.pl','787692769'),(14,1,'Bogusława','Kamiński','54121817570','bogusławakaminski144@158843.pl','895211286'),(15,1,'Paulina','Krawczyk','93122678577','paulinakrawczyk574@158843.pl','846282804'),(16,1,'Emanuel','Przybysz','52082214083','emanuelprzybysz413@158843.pl','628245611'),(17,1,'Grażyna','Włodarczyk','82082072071','grazynawłodarczyk951@158843.pl','859687696'),(18,1,'Ignacy','Jarosz','88030634864','ignacyjarosz379@158843.pl','636795969'),(19,1,'Róża','Karpiński','85062070390','rozakarpinski48@158843.pl','943523935'),(20,1,'Kamila','Sroka','51102578613','kamilasroka184@158843.pl','996357213'),(21,1,'Karina','Wróblewski','90092558694','karinawroblewski786@158843.pl','548202894'),(22,1,'Marcelina','Kucharski','49091465190','marcelinakucharski860@158843.pl','955372187'),(23,1,'Matylda','Grzelak','98051034305','matyldagrzelak416@158843.pl','749635028'),(24,1,'Ludmiła','Nawrocki','57021050392','ludmiłanawrocki247@158843.pl','919627383'),(25,1,'Sandra','Malinowski','58031574652','sandramalinowski555@158843.pl','885760390');
/*!40000 ALTER TABLE `uczen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 16:24:58
