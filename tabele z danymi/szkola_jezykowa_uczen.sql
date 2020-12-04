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
-- Table structure for table `uczen`
--

DROP TABLE IF EXISTS `uczen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uczen` (
  `idUczen` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `PESEL` varchar(20) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  `Nr_telefonu` varchar(20) NOT NULL,
  `Klasa_idKlasa` int DEFAULT NULL,
  `Nauczyciel_idNauczyciel` int DEFAULT NULL,
  `Przedmiot_idPrzedmiot` int DEFAULT NULL,
  PRIMARY KEY (`idUczen`),
  KEY `fk_Uczen_Klasa1_idx` (`Klasa_idKlasa`),
  KEY `fk_Uczen_Nauczyciel1_idx` (`Nauczyciel_idNauczyciel`),
  KEY `fk_Uczen_Przedmiot1_idx` (`Przedmiot_idPrzedmiot`),
  CONSTRAINT `fk_Uczen_Klasa1` FOREIGN KEY (`Klasa_idKlasa`) REFERENCES `klasa` (`idKlasa`),
  CONSTRAINT `fk_Uczen_Nauczyciel1` FOREIGN KEY (`Nauczyciel_idNauczyciel`) REFERENCES `nauczyciel` (`idNauczyciel`),
  CONSTRAINT `fk_Uczen_Przedmiot1` FOREIGN KEY (`Przedmiot_idPrzedmiot`) REFERENCES `przedmiot` (`idPrzedmiot`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uczen`
--

LOCK TABLES `uczen` WRITE;
/*!40000 ALTER TABLE `uczen` DISABLE KEYS */;
INSERT INTO `uczen` VALUES (1,'Anastazja','Łukasik','61070288141','anastazjałukasik953@158843.pl','962905403',1,1,1),(2,'Łukasz','Wójcik','75022375090','łukaszwojcik453@158843.pl','863614574',1,1,1),(3,'Anita','Orłowski','62091416260','anitaorłowski360@158843.pl','828934148',1,1,1),(4,'Rozalia','Makowski','71121352102','rozaliamakowski837@158843.pl','783727265',1,1,1),(5,'Grażyna','Olejnik','68022178253','grazynaolejnik858@158843.pl','548817923',1,1,1),(6,'Zdzisław','Wierzbicki','51050754438','zdzisławwierzbicki222@158843.pl','865403401',1,1,1),(7,'Kamila','Brzeziński','49072851462','kamilabrzezinski984@158843.pl','733918903',1,1,1),(8,'Amanda','Włodarczyk','72072045971','amandawłodarczyk308@158843.pl','657445635',1,1,1),(9,'Jolanta','Kozioł','46012788120','jolantakozioł134@158843.pl','541568597',1,1,1),(10,'Mirosław','Łuczak','91070479689','mirosławłuczak479@158843.pl','834828443',1,1,1),(11,'Andrzej','Zając','69070965397','andrzejzajac835@158843.pl','884838860',1,1,1),(12,'Lidia','Madej','55120665506','lidiamadej652@158843.pl','678520853',1,1,1),(13,'Bernard','Urbaniak','74010556661','bernardurbaniak697@158843.pl','985519159',1,1,1),(14,'Tadeusz','Szydłowski','76051758225','tadeuszszydłowski225@158843.pl','789623220',1,1,1),(15,'Ireneusz','Jarosz','77012336290','ireneuszjarosz939@158843.pl','548386274',1,1,1),(16,'Kornelia','Stępień','72122731238','korneliastepien301@158843.pl','626377144',1,1,1),(17,'Czesław','Janik','66091046824','czesławjanik318@158843.pl','873084016',1,1,1),(18,'Sławomir','Kozłowski','85020355795','sławomirkozłowski697@158843.pl','504571877',1,1,1),(19,'Miłosz','Bednarski','69020743786','miłoszbednarski888@158843.pl','844615101',1,1,1),(20,'Urszula','Kowalski','55031874358','urszulakowalski215@158843.pl','806185926',1,1,1),(21,'Kinga','Zawadzki','73082543857','kingazawadzki626@158843.pl','587944426',1,1,1),(22,'Krystyna','Dąbrowski','74072649671','krystynadabrowski904@158843.pl','842057474',1,1,1),(23,'Klaudia','Świderski','78022887007','klaudiaswiderski285@158843.pl','866676127',1,1,1),(24,'Celina','Kubicki','50122265485','celinakubicki628@158843.pl','842616611',1,1,1),(25,'Anastazja','Śliwiński','97091372916','anastazjasliwinski829@158843.pl','891714887',1,1,1),(26,'Anastazja','Ostrowski','66090483254','anastazjaostrowski239@158843.pl','590380718',1,1,1),(27,'Bogusław','Brzeziński','95091343160','bogusławbrzezinski806@158843.pl','712392867',1,1,1),(28,'Dorota','Karpiński','61111474971','dorotakarpinski667@158843.pl','721121809',1,1,1),(29,'Bartłomiej','Kurek','84042542704','bartłomiejkurek844@158843.pl','588473650',1,1,1),(30,'Grażyna','Zieliński','92032553435','grazynazielinski635@158843.pl','837632397',2,2,1),(31,'Jarosław','Muszyński','89120473908','jarosławmuszynski761@158843.pl','954787745',2,2,1),(32,'Fryderyk','Osiński','49031057734','fryderykosinski563@158843.pl','614780905',2,2,1),(33,'Marzena','Błaszyk','52020788051','marzenabłaszyk442@158843.pl','609179723',2,2,1),(34,'Marcin','Murawski','92020410812','marcinmurawski255@158843.pl','840353688',2,2,1),(35,'Stanisława','Wróblewski','76031073659','stanisławawroblewski875@158843.pl','902460983',2,2,1),(36,'Magdalena','Zych','80032328174','magdalenazych491@158843.pl','610579221',2,2,1),(37,'Norbert','Kaczmarek','52102533673','norbertkaczmarek300@158843.pl','871578872',2,2,1),(38,'Danuta','Włodarczyk','85050846853','danutawłodarczyk704@158843.pl','727220772',2,2,1),(39,'Otylia','Maciejewski','83092486698','otyliamaciejewski956@158843.pl','682624735',2,2,1),(40,'Remigiusz','Witkowski','75082399140','remigiuszwitkowski335@158843.pl','928872254',2,2,1),(41,'Alicja','Kopeć','93041790550','alicjakopec570@158843.pl','975453238',2,2,1),(42,'Adela','Turek','93122356098','adelaturek958@158843.pl','610795471',2,2,1),(43,'Patrycja','Gołębiewski','85112285509','patrycjagołebiewski587@158843.pl','634201183',2,2,1),(44,'Sławomir','Piotrowski','79090689173','sławomirpiotrowski472@158843.pl','707686769',2,2,1),(45,'Alicja','Tomczyk','88022887408','alicjatomczyk335@158843.pl','913181701',2,2,1),(46,'Bernadeta','Wawrzyniak','91072073544','bernadetawawrzyniak947@158843.pl','824898811',2,2,1),(47,'Rafał','Mazurek','69011187269','rafałmazurek773@158843.pl','935153221',2,2,1),(48,'Rozalia','Łuczak','47042470298','rozaliałuczak998@158843.pl','619010992',2,2,1),(49,'Przemysław','Czajkowski','66111229223','przemysławczajkowski50@158843.pl','997147687',2,2,1),(50,'Marlena','Stasiak','96042470124','marlenastasiak383@158843.pl','779029672',2,2,1),(51,'Marcelina','Kaczor','50122753755','marcelinakaczor986@158843.pl','818105913',2,2,1),(52,'Wiesław','Wojciechowski','98050672843','wiesławwojciechowski156@158843.pl','716732129',2,2,1),(53,'Franciszek','Turek','84100934858','franciszekturek651@158843.pl','715472131',2,2,1),(54,'Irena','Przybysz','57092124960','irenaprzybysz502@158843.pl','732808569',2,2,1),(55,'Paweł','Bielecki','50102338486','pawełbielecki142@158843.pl','983589299',2,2,1),(56,'Kacper','Kwiecień','85100367363','kacperkwiecien734@158843.pl','679461977',2,2,1),(57,'Marta','Rybak','81091897859','martarybak463@158843.pl','825668969',2,2,1),(58,'Bernard','Sroka','93052756012','bernardsroka264@158843.pl','584727391',2,2,1),(59,'Artur','Marcinkowski','86110932682','arturmarcinkowski282@158843.pl','876753467',3,4,9),(60,'Adam','Grzelak','61100211508','adamgrzelak882@158843.pl','708255370',3,4,9),(61,'Sylwia','Chrzanowski','94030417472','sylwiachrzanowski652@158843.pl','682967353',3,4,9),(62,'Henryk','Wilczyński','68021427449','henrykwilczynski102@158843.pl','529648207',3,4,9),(63,'Karolina','Leśniak','78121597839','karolinalesniak849@158843.pl','914442184',3,4,9),(64,'Amelia','Witek','93041858424','ameliawitek572@158843.pl','637370172',3,4,9),(65,'Krystian','Lis','97011399447','krystianlis993@158843.pl','787596797',3,4,9),(66,'Jacek','Żak','80082115608','jacekzak833@158843.pl','901316182',3,4,9),(67,'Danuta','Kołodziejczyk','68122498716','danutakołodziejczyk840@158843.pl','691195816',3,4,9),(68,'Mariola','Baran','89022722421','mariolabaran994@158843.pl','570342268',3,4,9),(69,'Gabriel','Janicki','83061329204','gabrieljanicki842@158843.pl','798222747',3,4,9),(70,'Krystian','Turek','96060677928','krystianturek223@158843.pl','696668967',3,4,9),(71,'Stefan','Mróz','75020114165','stefanmroz821@158843.pl','924176312',3,4,9),(72,'Fryderyk','Białek','65030618780','fryderykbiałek352@158843.pl','732088501',3,4,9),(73,'Beniamin','Maciejewski','45020832375','beniaminmaciejewski217@158843.pl','854383083',3,4,9),(74,'Emilia','Kot','50080471055','emiliakot589@158843.pl','599795878',3,4,9),(75,'Luiza','Kuczyński','48090718434','luizakuczynski111@158843.pl','794146263',3,4,9),(76,'Krzysztof','Wróblewski','93020311167','krzysztofwroblewski370@158843.pl','610050153',3,4,9),(77,'Cyprian','Marczak','89071647935','cyprianmarczak789@158843.pl','971820735',3,4,9),(78,'Wiesława','Majchrzak','86032792244','wiesławamajchrzak223@158843.pl','838645873',3,4,9),(79,'Leszek','Bielecki','88061161215','leszekbielecki651@158843.pl','913755968',3,4,9),(80,'Sandra','Majchrzak','84051377365','sandramajchrzak919@158843.pl','804870621',3,4,9),(81,'Andżelika','Szymański','63062697404','andzelikaszymanski966@158843.pl','940392928',3,4,9),(82,'Jacek','Świderski','61071035655','jacekswiderski396@158843.pl','933958401',3,4,9),(83,'Rudolf','Mikołajczyk','53070442441','rudolfmikołajczyk631@158843.pl','784246210',3,4,9),(84,'Aldona','Małecki','61100470711','aldonamałecki230@158843.pl','693665910',3,4,9),(85,'Matylda','Stefański','93112043780','matyldastefanski266@158843.pl','968506488',3,4,9),(86,'Lidia','Wilczyński','50101288658','lidiawilczynski684@158843.pl','658676637',3,4,9),(87,'Rozalia','Kędzierski','60090252178','rozaliakedzierski660@158843.pl','867956341',3,4,9),(88,'Eliza','Kalinowski','83011024301','elizakalinowski403@158843.pl','960875863',4,3,6),(89,'Kazimiera','Bednarczyk','50021024407','kazimierabednarczyk869@158843.pl','860292457',4,3,6),(90,'Marceli','Grzybowski','86112654324','marceligrzybowski792@158843.pl','543558972',4,3,6),(91,'Andrzej','Markiewicz','55070471201','andrzejmarkiewicz865@158843.pl','781027783',4,3,6),(92,'Bogdan','Gajda','90031863393','bogdangajda986@158843.pl','919141273',4,3,6),(93,'Bernard','Skiba','58042758869','bernardskiba108@158843.pl','850328649',4,3,6),(94,'Lucjan','Baranowski','46011673149','lucjanbaranowski569@158843.pl','630221004',4,3,6),(95,'Jolanta','Olszewski','77111711615','jolantaolszewski31@158843.pl','573052170',4,3,6),(96,'Daniel','Włodarczyk','64042667189','danielwłodarczyk54@158843.pl','782009791',4,3,6),(97,'Kornelia','Chmiel','84041841016','korneliachmiel77@158843.pl','632156319',4,3,6),(98,'Adrianna','Kowalik','65081885322','adriannakowalik603@158843.pl','957525754',4,3,6),(99,'Julia','Kowalewski','64030783294','juliakowalewski890@158843.pl','613264268',4,3,6),(100,'Zbigniew','Kozioł','96041954070','zbigniewkozioł31@158843.pl','563974584',4,3,6),(101,'Monika','Wesołowski','46080563523','monikawesołowski136@158843.pl','909826099',4,3,6),(102,'Amanda','Polak','79040593286','amandapolak945@158843.pl','611837888',4,3,6),(103,'Janusz','Czajkowski','54052246844','januszczajkowski16@158843.pl','533962455',4,3,6),(104,'Aldona','Staniszewski','81070130874','aldonastaniszewski147@158843.pl','857663250',4,3,6),(105,'Ilona','Jankowski','56021671418','ilonajankowski340@158843.pl','761375865',4,3,6),(106,'Halina','Bednarek','69061135841','halinabednarek522@158843.pl','891475900',4,3,6),(107,'Krystian','Stefaniak','70032843240','krystianstefaniak411@158843.pl','933696698',4,3,6),(108,'Sebastian','Jastrzębski','47011147922','sebastianjastrzebski514@158843.pl','776010607',4,3,6),(109,'Kleopatra','Nowak','76091511351','kleopatranowak332@158843.pl','923446310',4,3,6),(110,'Ireneusz','Lisowski','57122548697','ireneuszlisowski811@158843.pl','805862461',4,3,6),(111,'Justyna','Karpiński','62072559083','justynakarpinski438@158843.pl','856541092',4,3,6),(112,'Ludwik','Nowicki','68112033478','ludwiknowicki126@158843.pl','912149590',4,3,6),(113,'Eugenia','Baranowski','59070245641','eugeniabaranowski746@158843.pl','575340866',4,3,6),(114,'Irmina','Sokołowski','66040241129','irminasokołowski401@158843.pl','849610317',4,3,6),(115,'Jacek','Pawłowski','68041875883','jacekpawłowski313@158843.pl','988249529',4,3,6),(116,'Miłosz','Żak','54052117445','miłoszzak397@158843.pl','906261735',4,3,6);
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

-- Dump completed on 2020-12-04 16:48:42
