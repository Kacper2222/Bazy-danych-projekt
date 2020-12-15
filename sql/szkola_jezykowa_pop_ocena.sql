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
-- Table structure for table `ocena`
--

DROP TABLE IF EXISTS `ocena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocena` (
  `idOcena` int NOT NULL AUTO_INCREMENT,
  `Uczen_idUczen` int NOT NULL,
  `Nauczyciel_idNauczyciel` int NOT NULL,
  `Powod` varchar(30) DEFAULT NULL,
  `Ocena` int DEFAULT NULL,
  `Poprawiona_Ocena` int DEFAULT NULL,
  `Uwagi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idOcena`),
  KEY `fk_Ocena_Uczen1_idx` (`Uczen_idUczen`),
  KEY `fk_Ocena_Nauczyciel1_idx` (`Nauczyciel_idNauczyciel`),
  CONSTRAINT `fk_Ocena_Nauczyciel1` FOREIGN KEY (`Nauczyciel_idNauczyciel`) REFERENCES `nauczyciel` (`idNauczyciel`),
  CONSTRAINT `fk_Ocena_Uczen1` FOREIGN KEY (`Uczen_idUczen`) REFERENCES `uczen` (`idUczen`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocena`
--

LOCK TABLES `ocena` WRITE;
/*!40000 ALTER TABLE `ocena` DISABLE KEYS */;
INSERT INTO `ocena` VALUES (1,7,1,'sprawdzian',2,3,'super'),(2,9,1,'praca domowa',2,0,'brak'),(3,7,1,'odpowiedz ustna',2,0,'brak'),(4,4,1,'kartkowka',2,0,'postaraj sie nastepnym razem'),(5,13,1,'kartkowka',2,0,'postaraj sie nastepnym razem'),(6,18,1,'odpowiedz ustna',2,0,'postaraj sie nastepnym razem'),(7,20,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(8,10,1,'praca domowa',2,0,'brak'),(9,25,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(10,12,1,'inna forma',2,0,'super'),(11,9,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(12,3,1,'sprawdzian',2,0,'brak'),(13,24,1,'odpowiedz ustna',2,0,'super'),(14,6,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(15,16,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(16,8,1,'praca domowa',2,0,'super'),(17,23,1,'sprawdzian',2,0,'brak'),(18,22,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(19,7,1,'odpowiedz ustna',2,0,'brak'),(20,10,1,'praca domowa',2,0,'brak'),(21,11,1,'praca domowa',2,0,'brak'),(22,15,1,'praca domowa',2,0,'super'),(23,25,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(24,10,1,'kartkowka',2,0,'brak'),(25,5,1,'odpowiedz ustna',2,0,'brak'),(26,16,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(27,14,1,'praca domowa',2,0,'brak'),(28,21,1,'praca domowa',2,0,'super'),(29,12,1,'kartkowka',2,0,'super'),(30,19,1,'inna forma',2,0,'super'),(31,2,1,'odpowiedz ustna',2,0,'super'),(32,23,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(33,23,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(34,12,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(35,9,1,'praca domowa',2,0,'super'),(36,14,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(37,23,1,'odpowiedz ustna',2,0,'super'),(38,3,1,'praca domowa',2,0,'brak'),(39,24,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(40,17,1,'odpowiedz ustna',2,0,'brak'),(41,22,1,'praca domowa',2,0,'super'),(42,9,1,'sprawdzian',2,0,'super'),(43,2,1,'inna forma',2,0,'brak'),(44,7,1,'inna forma',2,0,'super'),(45,8,1,'kartkowka',2,0,'super'),(46,2,1,'odpowiedz ustna',2,0,'super'),(47,16,1,'kartkowka',2,0,'postaraj sie nastepnym razem'),(48,2,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(49,4,1,'kartkowka',2,0,'postaraj sie nastepnym razem'),(50,2,1,'kartkowka',2,0,'super'),(51,17,1,'praca domowa',2,0,'brak'),(52,18,1,'odpowiedz ustna',2,0,'brak'),(53,14,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(54,17,1,'inna forma',2,0,'super'),(55,21,1,'odpowiedz ustna',2,0,'postaraj sie nastepnym razem'),(56,24,1,'praca domowa',2,0,'super'),(57,25,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(58,16,1,'odpowiedz ustna',2,0,'postaraj sie nastepnym razem'),(59,3,1,'praca domowa',2,0,'brak'),(60,6,1,'odpowiedz ustna',2,0,'super'),(61,15,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(62,13,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(63,20,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(64,20,1,'sprawdzian',2,0,'super'),(65,24,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(66,2,1,'praca domowa',2,0,'super'),(67,7,1,'sprawdzian',2,0,'brak'),(68,22,1,'praca domowa',2,0,'brak'),(69,8,1,'sprawdzian',2,0,'brak'),(70,15,1,'praca domowa',2,0,'super'),(71,7,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(72,16,1,'sprawdzian',2,0,'brak'),(73,24,1,'sprawdzian',2,0,'super'),(74,6,1,'inna forma',2,0,'super'),(75,23,1,'praca domowa',2,0,'brak'),(76,21,1,'odpowiedz ustna',2,0,'super'),(77,9,1,'kartkowka',2,0,'brak'),(78,8,1,'odpowiedz ustna',2,0,'super'),(79,6,1,'inna forma',2,0,'super'),(80,13,1,'sprawdzian',2,0,'brak'),(81,16,1,'sprawdzian',2,0,'brak'),(82,2,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(83,16,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(84,14,1,'praca domowa',2,0,'brak'),(85,23,1,'praca domowa',2,0,'super'),(86,9,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(87,17,1,'odpowiedz ustna',2,0,'super'),(88,21,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(89,25,1,'inna forma',2,0,'brak'),(90,23,1,'inna forma',2,0,'super'),(91,14,1,'inna forma',2,0,'super'),(92,23,1,'sprawdzian',2,0,'brak'),(93,18,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(94,13,1,'inna forma',2,0,'super'),(95,17,1,'kartkowka',2,0,'super'),(96,21,1,'inna forma',2,0,'brak'),(97,18,1,'kartkowka',2,0,'super'),(98,18,1,'odpowiedz ustna',2,0,'brak'),(99,18,1,'odpowiedz ustna',2,0,'postaraj sie nastepnym razem'),(100,6,1,'praca domowa',2,0,'brak'),(101,3,1,'kartkowka',2,0,'super'),(102,21,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(103,18,1,'sprawdzian',2,0,'brak'),(104,9,1,'sprawdzian',2,0,'super'),(105,4,1,'kartkowka',2,0,'brak'),(106,4,1,'kartkowka',2,0,'brak'),(107,18,1,'kartkowka',2,0,'brak'),(108,4,1,'inna forma',2,0,'postaraj sie nastepnym razem'),(109,20,1,'kartkowka',2,0,'brak'),(110,5,1,'inna forma',2,0,'super'),(111,20,1,'praca domowa',2,0,'brak'),(112,25,1,'inna forma',2,0,'brak'),(113,19,1,'praca domowa',2,0,'brak'),(114,18,1,'sprawdzian',2,0,'postaraj sie nastepnym razem'),(115,14,1,'kartkowka',2,0,'postaraj sie nastepnym razem'),(116,24,1,'kartkowka',2,0,'super'),(117,12,1,'kartkowka',2,0,'super'),(118,13,1,'praca domowa',2,0,'super'),(119,9,1,'inna forma',2,0,'super'),(120,15,1,'odpowiedz ustna',2,0,'brak'),(121,21,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(122,15,1,'inna forma',2,0,'super'),(123,21,1,'praca domowa',2,0,'postaraj sie nastepnym razem'),(124,19,1,'odpowiedz ustna',2,0,'super'),(125,3,1,'sprawdzian',2,0,'postaraj sie nastepnym razem');
/*!40000 ALTER TABLE `ocena` ENABLE KEYS */;
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
