-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pdr
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Content`
--

DROP TABLE IF EXISTS `Content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content_text` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `content_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Content`
--

LOCK TABLES `Content` WRITE;
/*!40000 ALTER TABLE `Content` DISABLE KEYS */;
INSERT INTO `Content` VALUES (1,'Главная','shgsrhsrth','2016-02-09 11:50:15','ethsrh','srhsrhr','pdr/rsthsrh',0),(2,'Главная','<p>\r\n	<strong>azdvbdszf</strong></p>\r\n','2016-02-21 19:16:47','rgaeg','eargaeg','pdr/ergae',0),(3,'Главная','<p>\r\n	<strong>azdvbdszf</strong></p>\r\n','2016-02-21 19:17:06','rgaeg','eargaeg','pdr/ergae',0),(4,'Главная','<p>\r\n	<strong>azdvbdszf</strong></p>\r\n','2016-02-21 19:17:35','rgaeg','eargaeg','pdr/ergae',0);
/*!40000 ALTER TABLE `Content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorization`
--

DROP TABLE IF EXISTS `authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_rights` int(1) NOT NULL DEFAULT '1',
  `user_enabled` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorization`
--

LOCK TABLES `authorization` WRITE;
/*!40000 ALTER TABLE `authorization` DISABLE KEYS */;
INSERT INTO `authorization` VALUES (15,20,'e10adc3949ba59abbe56e057f20f883e',2,1),(16,27,'d41d8cd98f00b204e9800998ecf8427e',1,1),(17,28,'d41d8cd98f00b204e9800998ecf8427e',1,1),(18,29,'d41d8cd98f00b204e9800998ecf8427e',1,1),(19,30,'d41d8cd98f00b204e9800998ecf8427e',1,1),(20,31,'d41d8cd98f00b204e9800998ecf8427e',1,1),(21,32,'d41d8cd98f00b204e9800998ecf8427e',1,1),(22,33,'e10adc3949ba59abbe56e057f20f883e',1,1),(23,34,'e10adc3949ba59abbe56e057f20f883e',1,1),(24,35,'e10adc3949ba59abbe56e057f20f883e',1,1),(25,36,'e10adc3949ba59abbe56e057f20f883e',1,1),(26,38,'e10adc3949ba59abbe56e057f20f883e',1,1),(27,39,'e10adc3949ba59abbe56e057f20f883e',1,1),(28,40,'e10adc3949ba59abbe56e057f20f883e',1,1),(29,41,'e10adc3949ba59abbe56e057f20f883e',1,1);
/*!40000 ALTER TABLE `authorization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_mark`
--

DROP TABLE IF EXISTS `cars_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mark` (`mark`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_mark`
--

LOCK TABLES `cars_mark` WRITE;
/*!40000 ALTER TABLE `cars_mark` DISABLE KEYS */;
INSERT INTO `cars_mark` VALUES (41,'Acura'),(44,'Alfa Romeo'),(73,'Aptera'),(65,'Aston Martin'),(36,'Audi'),(8,'Austin'),(66,'Bentley'),(7,'BMW'),(75,'Bugatti'),(13,'Buick'),(6,'Cadillac'),(5,'Chevrolet'),(2,'Chrysler'),(3,'Citroën'),(58,'Corbin'),(59,'Daewoo'),(45,'Daihatsu'),(21,'Dodge'),(43,'Eagle'),(10,'Fairthorpe'),(69,'Ferrari'),(78,'FIAT'),(9,'Fillmore'),(72,'Foose'),(1,'Ford'),(46,'Geo'),(47,'GMC'),(4,'Hillman'),(57,'Holden'),(27,'Honda'),(55,'HUMMER'),(48,'Hyundai'),(49,'Infiniti'),(50,'Isuzu'),(51,'Jaguar'),(52,'Jeep'),(17,'Jensen'),(56,'Kia'),(38,'Lamborghini'),(40,'Land Rover'),(42,'Lexus'),(33,'Lincoln'),(32,'Lotus'),(34,'Maserati'),(61,'Maybach'),(29,'Mazda'),(79,'McLaren'),(24,'Mercedes-Benz'),(19,'Mercury'),(39,'Merkur'),(25,'MG'),(60,'MINI'),(30,'Mitsubishi'),(70,'Morgan'),(26,'Nissan'),(18,'Oldsmobile'),(67,'Panoz'),(71,'Peugeot'),(15,'Plymouth'),(12,'Pontiac'),(22,'Porsche'),(77,'Ram'),(14,'Rambler'),(28,'Renault'),(68,'Rolls-Royce'),(35,'Saab'),(53,'Saturn'),(63,'Scion'),(20,'Shelby'),(74,'Smart'),(62,'Spyker'),(64,'Spyker Cars'),(11,'Studebaker'),(31,'Subaru'),(37,'Suzuki'),(76,'Tesla'),(23,'Toyota'),(16,'Volkswagen'),(54,'Volvo');
/*!40000 ALTER TABLE `cars_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_model`
--

DROP TABLE IF EXISTS `cars_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark_id` int(11) NOT NULL,
  `model` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lnk_cars_model_cars_mark` (`mark_id`) USING BTREE,
  CONSTRAINT `lnk_cars_model_cars_mark` FOREIGN KEY (`mark_id`) REFERENCES `cars_mark` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_model`
--

LOCK TABLES `cars_model` WRITE;
/*!40000 ALTER TABLE `cars_model` DISABLE KEYS */;
INSERT INTO `cars_model` VALUES (1,1,'Model T'),(2,2,'Imperial'),(3,3,'2CV'),(4,4,'Minx Magnificent'),(5,5,'Corvette'),(6,6,'Fleetwood'),(7,1,'Thunderbird'),(8,7,'600'),(9,8,'Mini'),(10,5,'Corvair'),(11,9,'Fillmore'),(12,10,'Rockette'),(13,8,'Mini Cooper'),(14,11,'Avanti'),(15,12,'Tempest'),(16,12,'Grand Prix'),(17,13,'Special'),(18,8,'Mini Cooper S'),(19,14,'Classic'),(20,1,'E-Series'),(21,5,'Corvair 500'),(22,1,'Mustang'),(23,1,'Galaxie'),(24,12,'GTO'),(25,12,'LeMans'),(26,12,'Bonneville'),(27,15,'Fury'),(28,1,'Fairlane'),(29,16,'Beetle'),(30,1,'Falcon'),(31,17,'Interceptor'),(32,18,'Toronado'),(33,12,'Firebird'),(34,5,'Camaro'),(35,5,'Bel Air'),(36,1,'Country'),(37,19,'Cougar'),(38,20,'GT500'),(39,21,'Charger'),(40,20,'GT350'),(41,15,'Roadrunner'),(42,1,'Torino'),(43,22,'914'),(44,5,'Vega'),(45,3,'SM'),(46,5,'Monte Carlo'),(47,3,'CX'),(48,5,'Monza'),(49,16,'Golf'),(50,23,'Celica'),(51,15,'Volare'),(52,21,'Aspen'),(53,5,'Caprice'),(54,24,'W123'),(55,25,'MGB'),(56,15,'Horizon'),(57,21,'Omni'),(58,26,'280ZX'),(59,5,'LUV'),(60,13,'Riviera'),(61,5,'Citation'),(62,27,'Civic'),(63,15,'Reliant'),(64,21,'Aries'),(65,24,'W126'),(66,12,'6000'),(67,12,'Sunbird'),(68,27,'Accord'),(69,28,'Alliance'),(70,29,'626'),(71,29,'RX-7'),(72,22,'944'),(73,12,'1000'),(74,12,'Parisienne'),(75,12,'Fiero'),(76,12,'Firefly'),(77,1,'Bronco II'),(78,1,'Laser'),(79,1,'EXP'),(80,1,'Ranger'),(81,1,'Escort'),(82,1,'Tempo'),(83,1,'LTD'),(84,1,'F250'),(85,1,'F150'),(86,1,'E250'),(87,1,'LTD Crown Victoria'),(88,1,'Bronco'),(89,1,'E150'),(90,30,'Space'),(91,30,'Galant'),(92,30,'Mirage'),(93,30,'Starion'),(94,30,'Pajero'),(95,30,'Cordia'),(96,30,'Tredia'),(97,31,'Brat'),(98,24,'S-Class'),(99,24,'E-Class'),(100,24,'W201'),(101,24,'SL-Class'),(102,19,'Topaz'),(103,19,'Grand Marquis'),(104,19,'Lynx'),(105,19,'Capri'),(106,19,'Marquis'),(107,32,'Esprit Turbo'),(108,16,'Jetta'),(109,16,'Vanagon'),(110,16,'Scirocco'),(111,16,'Quantum'),(112,13,'Electra'),(113,13,'Century'),(114,13,'Skyhawk'),(115,33,'Town Car'),(116,33,'Continental'),(117,33,'Mark VII'),(118,34,'Quattroporte'),(119,34,'Biturbo'),(120,35,'900'),(121,36,'5000S'),(122,27,'CR-X'),(123,27,'Prelude'),(124,21,'Daytona'),(125,37,'SJ 410'),(126,29,'GLC'),(127,13,'Somerset'),(128,13,'LeSabre'),(129,13,'Regal'),(130,13,'Skylark'),(131,1,'F-Series'),(132,30,'Truck'),(133,30,'Chariot'),(134,16,'GTI'),(135,16,'Cabriolet'),(136,16,'Passat'),(137,16,'Type 2'),(138,36,'4000s'),(139,36,'Quattro'),(140,36,'Coupe GT'),(141,38,'Countach'),(142,29,'Familia'),(143,29,'B2000'),(144,12,'Grand Am'),(145,31,'XT'),(146,31,'Leone'),(147,39,'XR4Ti'),(148,33,'Continental Mark VII'),(149,15,'Voyager'),(150,22,'911'),(151,22,'928'),(152,37,'Cultus'),(153,37,'SJ'),(154,23,'MR2'),(155,32,'Esprit'),(156,21,'Caravan'),(157,1,'Taurus'),(158,1,'Aerostar'),(159,1,'Courier'),(160,30,'Mighty Max'),(161,30,'Precis'),(162,12,'Safari'),(163,12,'Gemini'),(164,12,'Firebird Trans Am'),(165,36,'5000CS Quattro'),(166,36,'4000s Quattro'),(167,36,'4000CS Quattro'),(168,19,'Sable'),(169,29,'B-Series'),(170,35,'9000'),(171,40,'Range Rover'),(172,36,'4000'),(173,36,'5000CS'),(174,29,'929'),(175,29,'B2600'),(176,16,'Fox'),(177,37,'Swift'),(178,31,'Justy'),(179,22,'924 S'),(180,12,'Chevette'),(181,30,'Excel'),(182,30,'L300'),(183,41,'Legend'),(184,41,'Integra'),(185,22,'924'),(186,12,'Turbo Firefly'),(187,19,'Tracer'),(188,13,'Reatta'),(189,1,'Festiva'),(190,29,'MX-6'),(191,36,'90'),(192,36,'80/90'),(193,13,'Estate'),(194,1,'Probe'),(195,29,'MPV'),(196,30,'Sigma'),(197,30,'Eclipse'),(198,31,'Legacy'),(199,37,'Sidekick'),(200,42,'LS'),(201,42,'ES'),(202,34,'228'),(203,34,'430'),(204,34,'Spyder'),(205,34,'Karif'),(206,36,'80'),(207,36,'100'),(208,36,'200'),(209,23,'Truck Xtracab SR5'),(210,7,'6 Series'),(211,21,'Colt'),(212,15,'Laser'),(213,13,'Coachbuilder'),(214,31,'Loyale'),(215,29,'MX-5'),(216,12,'Trans Sport'),(217,12,'Grand Prix Turbo'),(218,36,'V8'),(219,36,'Coupe Quattro'),(220,32,'Elan'),(221,16,'Corrado'),(222,30,'GTO'),(223,26,'Maxima'),(224,26,'Datsun/Nissan Z-car'),(225,38,'Diablo'),(226,43,'Talon'),(227,1,'Explorer'),(228,13,'Park Avenue'),(229,13,'Roadmaster'),(230,29,'Navajo'),(231,26,'300ZX'),(232,26,'Sentra'),(233,40,'Sterling'),(234,23,'Previa'),(235,16,'Eurovan'),(236,16,'riolet'),(237,1,'Crown Victoria'),(238,1,'Club Wagon'),(239,1,'Econoline E150'),(240,1,'Econoline E250'),(241,1,'Econoline E350'),(242,1,'F350'),(243,37,'Samurai'),(244,24,'190E'),(245,24,'300CE'),(246,24,'300D'),(247,24,'300E'),(248,24,'300SD'),(249,24,'300SE'),(250,24,'300SL'),(251,24,'300TE'),(252,24,'400E'),(253,24,'400SE'),(254,24,'500E'),(255,24,'500SEL'),(256,24,'500SL'),(257,24,'600SEL'),(258,31,'Alcyone SVX'),(259,31,'SVX'),(260,30,'Diamante'),(261,30,'RVR'),(262,30,'3000GT'),(263,30,'Expo'),(264,30,'Mighty Max Macro'),(265,30,'Montero'),(266,29,'323'),(267,29,'Protege'),(268,29,'MX-3'),(269,29,'B-Series Plus'),(270,29,'Miata MX-5'),(271,36,'S4'),(272,7,'3 Series'),(273,7,'5 Series'),(274,7,'7 Series'),(275,7,'8 Series'),(276,7,'M5'),(277,12,'Firebird Formula'),(278,40,'Defender'),(279,42,'SC'),(280,21,'Viper'),(281,21,'D150 Club'),(282,21,'D150'),(283,21,'D250 Club'),(284,21,'D250'),(285,21,'D350 Club'),(286,21,'D350'),(287,21,'Dakota Club'),(288,21,'Dakota'),(289,21,'Dynasty'),(290,21,'Grand Caravan'),(291,21,'Monaco'),(292,21,'Ram 50'),(293,21,'Ram Van B150'),(294,21,'Ram Van B250'),(295,21,'Ram Van B350'),(296,21,'Ram Wagon B150'),(297,21,'Ram Wagon B250'),(298,21,'Ram Wagon B350'),(299,21,'Ramcharger'),(300,21,'Shadow'),(301,21,'Spirit'),(302,21,'Stealth'),(303,22,'968'),(304,6,'Seville'),(305,6,'Allante'),(306,6,'Brougham'),(307,6,'DeVille'),(308,6,'Eldorado'),(309,23,'Camry'),(310,23,'4Runner'),(311,23,'Corolla'),(312,23,'Cressida'),(313,23,'Land Cruiser'),(314,23,'Paseo'),(315,23,'Supra'),(316,23,'Tercel'),(317,23,'Xtra'),(318,26,'240SX'),(319,26,'NX'),(320,26,'Pathfinder'),(321,26,'Stanza'),(322,15,'Acclaim'),(323,15,'Colt'),(324,15,'Colt Vista'),(325,15,'Grand Voyager'),(326,15,'Sundance'),(327,43,'Premier'),(328,43,'Summit'),(329,41,'NSX'),(330,41,'Vigor'),(331,44,'164'),(332,44,'Spider'),(333,5,'1500'),(334,5,'2500'),(335,5,'3500'),(336,5,'APV'),(337,5,'Astro'),(338,5,'Beretta'),(339,5,'Blazer'),(340,5,'Cavalier'),(341,5,'Corsica'),(342,5,'G-Series G10'),(343,5,'G-Series G20'),(344,5,'G-Series G30'),(345,5,'Lumina'),(346,5,'Lumina APV'),(347,5,'S10 Blazer'),(348,5,'S10'),(349,5,'Sportvan G10'),(350,5,'Sportvan G20'),(351,5,'Sportvan G30'),(352,5,'Suburban 1500'),(353,5,'Suburban 2500'),(354,2,'Fifth Ave'),(355,2,'LeBaron'),(356,2,'New Yorker'),(357,2,'Town & Country'),(358,45,'Charade'),(359,45,'Rocky'),(360,46,'Metro'),(361,46,'Prizm'),(362,46,'Storm'),(363,46,'Tracker'),(364,47,'1500'),(365,47,'2500'),(366,47,'3500'),(367,47,'1500 Club Coupe'),(368,47,'2500 Club Coupe'),(369,47,'3500 Club Coupe'),(370,47,'Jimmy'),(371,47,'Rally Wagon 1500'),(372,47,'Rally Wagon 2500'),(373,47,'Rally Wagon 3500'),(374,47,'Safari'),(375,47,'Sonoma Club'),(376,47,'Sonoma'),(377,47,'Suburban 1500'),(378,47,'Suburban 2500'),(379,47,'Vandura 1500'),(380,47,'Vandura 2500'),(381,47,'Vandura 3500'),(382,47,'Yukon'),(383,48,'Elantra'),(384,48,'Excel'),(385,48,'Scoupe'),(386,48,'Sonata'),(387,49,'G'),(388,49,'M'),(389,49,'Q'),(390,50,'Amigo'),(391,50,'Impulse'),(392,50,'Rodeo'),(393,50,'Space'),(394,50,'Stylus'),(395,50,'Trooper'),(396,51,'XJ Series'),(397,52,'Cherokee'),(398,52,'Comanche'),(399,52,'Wrangler'),(400,18,'88'),(401,18,'98'),(402,18,'Achieva'),(403,18,'Bravada'),(404,18,'Ciera'),(405,18,'Custom Cruiser'),(406,18,'Cutlass Supreme'),(407,18,'Silhouette'),(408,53,'S-Series'),(409,54,'240'),(410,54,'740'),(411,54,'940'),(412,54,'960'),(413,31,'Impreza'),(414,19,'Villager'),(415,24,'C-Class'),(416,24,'400SEL'),(417,24,'500SEC'),(418,24,'600SEC'),(419,24,'600SL'),(420,21,'Viper RT/10'),(421,21,'Intrepid'),(422,16,'Golf III'),(423,16,'Jetta III'),(424,40,'Range Rover Classic'),(425,40,'Defender 110'),(426,26,'Altima'),(427,26,'Quest'),(428,33,'Mark VIII'),(429,42,'GS'),(430,2,'Concorde'),(431,27,'del Sol'),(432,23,'T100'),(433,52,'Grand Cherokee'),(434,6,'Sixty Special'),(435,5,'Caprice Classic'),(436,43,'Vision'),(437,47,'Sonoma Club Coupe'),(438,55,'H1'),(439,49,'J'),(440,18,'Cutlass Cruiser'),(441,54,'850'),(442,1,'Lightning'),(443,1,'Aspire'),(444,56,'Sephia'),(445,21,'Ram'),(446,21,'Ram 1500'),(447,21,'Ram 2500'),(448,21,'Ram 3500'),(449,5,'Impala SS'),(450,5,'Impala'),(451,36,'Cabriolet'),(452,36,'riolet'),(453,40,'Discovery'),(454,40,'Defender 90'),(455,27,'Passport'),(456,2,'LHS'),(457,56,'Sportage'),(458,12,'Sunfire'),(459,1,'Windstar'),(460,1,'Contour'),(461,16,'rio'),(462,19,'Mystique'),(463,37,'Esteem'),(464,29,'Millenia'),(465,36,'S6'),(466,36,'A6'),(467,41,'TL'),(468,7,'M3'),(469,21,'Avenger'),(470,21,'Neon'),(471,21,'Ram 1500 Club'),(472,21,'Ram 2500 Club'),(473,21,'Ram 3500 Club'),(474,21,'Ram Van 1500'),(475,21,'Ram Van 2500'),(476,21,'Ram Van 3500'),(477,21,'Stratus'),(478,26,'200SX'),(479,5,'K5 Blazer'),(480,5,'Tahoe'),(481,27,'Odyssey'),(482,2,'Cirrus'),(483,2,'Sebring'),(484,57,'VS Commodore'),(485,47,'Rally Wagon G2500'),(486,47,'Rally Wagon G3500'),(487,47,'Vandura G1500'),(488,47,'Vandura G2500'),(489,47,'Vandura G3500'),(490,48,'Accent'),(491,18,'Aurora'),(492,15,'Neon'),(493,23,'Avalon'),(494,23,'T100 Xtra'),(495,23,'Tacoma'),(496,23,'Tacoma Xtra'),(497,13,'Hearse'),(498,36,'A4'),(499,30,'Expo LRV'),(500,37,'X-90'),(501,15,'Breeze'),(502,5,'Express 1500'),(503,5,'Express 2500'),(504,5,'Express 3500'),(505,5,'G-Series 1500'),(506,5,'G-Series 2500'),(507,42,'LX'),(508,7,'Z3'),(509,41,'RL'),(510,41,'SLX'),(511,47,'Savana 1500'),(512,47,'Savana 2500'),(513,47,'Savana 3500'),(514,49,'I'),(515,50,'Hombre'),(516,50,'Oasis'),(517,23,'RAV4'),(518,56,'Mentor'),(519,19,'Mountaineer'),(520,27,'CR-V'),(521,36,'A8'),(522,30,'Challenger'),(523,30,'Montero Sport'),(524,22,'Boxster'),(525,24,'SLK-Class'),(526,1,'Expedition'),(527,5,'Malibu'),(528,5,'G-Series 3500'),(529,5,'Venture'),(530,15,'Prowler'),(531,41,'CL'),(532,6,'Catera'),(533,48,'Tiburon'),(534,49,'QX'),(535,50,'Hombre Space'),(536,51,'XK Series'),(537,18,'Cutlass'),(538,18,'LSS'),(539,18,'Regency'),(540,54,'S90'),(541,54,'V90'),(542,5,'Metro'),(543,5,'Prizm'),(544,5,'Tracker'),(545,31,'Forester'),(546,16,'New Beetle'),(547,33,'Navigator'),(548,24,'M-Class'),(549,24,'CL-Class'),(550,24,'CLK-Class'),(551,21,'Durango'),(552,47,'Envoy'),(553,26,'Frontier'),(554,18,'Intrigue'),(555,23,'Sienna'),(556,54,'C70'),(557,54,'S70'),(558,54,'V70'),(559,5,'Silverado'),(560,5,'Silverado 1500'),(561,5,'Silverado 2500'),(562,12,'Montana'),(563,37,'Vitara'),(564,37,'Grand Vitara'),(565,40,'Discovery Series II'),(566,35,'9-3'),(567,35,'9-5'),(568,42,'RX'),(569,47,'EV1'),(570,47,'Sierra 1500'),(571,47,'Sierra 2500'),(572,2,'300M'),(573,58,'Sparrow'),(574,6,'Escalade'),(575,2,'300'),(576,59,'Lanos'),(577,59,'Leganza'),(578,59,'Nubira'),(579,50,'VehiCROSS'),(580,18,'Alero'),(581,23,'Solara'),(582,54,'S80'),(583,31,'Outback'),(584,27,'Insight'),(585,27,'S2000'),(586,7,'X5'),(587,7,'M'),(588,7,'Z8'),(589,56,'Spectra'),(590,33,'LS'),(591,1,'Th!nk'),(592,1,'Explorer Sport Trac'),(593,1,'Escape'),(594,1,'Excursion'),(595,1,'Explorer Sport'),(596,1,'Focus'),(597,36,'TT'),(598,23,'Tundra'),(599,23,'Ipsum'),(600,23,'Echo'),(601,26,'Xterra'),(602,2,'Grand Voyager'),(603,2,'Voyager'),(604,47,'Sierra 3500'),(605,47,'Yukon Denali'),(606,47,'Yukon XL 1500'),(607,47,'Yukon XL 2500'),(608,51,'S-Type'),(609,53,'L-Series'),(610,54,'S40'),(611,54,'V40'),(612,1,'Fiesta'),(613,1,'ZX2'),(614,37,'XL-7'),(615,29,'B2500'),(616,29,'Tribute'),(617,36,'S8'),(618,36,'Allroad'),(619,12,'Aztek'),(620,30,'Lancer'),(621,42,'IS'),(622,40,'Freelander'),(623,7,'525'),(624,7,'530'),(625,23,'Highlander'),(626,23,'Prius'),(627,23,'Sequoia'),(628,56,'Rio'),(629,56,'Optima'),(630,5,'Silverado 3500'),(631,41,'MDX'),(632,2,'PT Cruiser'),(633,2,'Prowler'),(634,48,'Santa Fe'),(635,48,'XG300'),(636,50,'Rodeo Sport'),(637,54,'S60'),(638,37,'Aerio'),(639,24,'G-Class'),(640,31,'Outback Sport'),(641,27,'Pilot'),(642,29,'Protege5'),(643,30,'Lancer Evolution'),(644,38,'Murciélago'),(645,13,'Rendezvous'),(646,7,'745'),(647,33,'Blackwood'),(648,56,'Sedona'),(649,47,'Envoy XL'),(650,5,'Avalanche'),(651,5,'Trailblazer'),(652,5,'Avalanche 1500'),(653,5,'Avalanche 2500'),(654,60,'MINI'),(655,60,'Cooper'),(656,41,'RSX'),(657,6,'Escalade EXT'),(658,48,'XG350'),(659,50,'Axiom'),(660,51,'X-Type'),(661,52,'Liberty'),(662,53,'VUE'),(663,19,'Marauder'),(664,7,'760'),(665,7,'Z4'),(666,1,'Escort ZX2'),(667,1,'Freestar'),(668,1,'E350'),(669,42,'GX'),(670,27,'Element'),(671,27,'Civic Si'),(672,27,'Civic GX'),(673,22,'Cayenne'),(674,30,'Outlander'),(675,31,'Baja'),(676,12,'Vibe'),(677,36,'RS6'),(678,36,'RS 6'),(679,29,'Mazda6'),(680,16,'Touareg'),(681,56,'Sorento'),(682,38,'Gallardo'),(683,33,'Aviator'),(684,61,'57'),(685,61,'62'),(686,54,'XC90'),(687,54,'XC70'),(688,5,'SSR'),(689,49,'G35'),(690,49,'FX'),(691,26,'350Z'),(692,26,'Murano'),(693,6,'CTS'),(694,6,'Escalade ESV'),(695,55,'H2'),(696,50,'Ascender'),(697,53,'Ion'),(698,23,'Matrix'),(699,30,'Endeavor'),(700,32,'Exige'),(701,32,'Elise'),(702,22,'Carrera GT'),(703,29,'Mazda3'),(704,29,'RX-8'),(705,56,'Amanti'),(706,7,'325'),(707,7,'545'),(708,7,'645'),(709,7,'X3'),(710,13,'Rainier'),(711,57,'Monaro'),(712,19,'Monterey'),(713,62,'C8 Spyder'),(714,62,'C8 Spyder Wide Body'),(715,62,'C8 Laviolette'),(716,37,'Daewoo Lacetti'),(717,37,'Daewoo Magnus'),(718,37,'Forenza'),(719,37,'Verona'),(720,16,'R32'),(721,16,'Phaeton'),(722,5,'Aveo'),(723,5,'Classic'),(724,5,'Colorado'),(725,63,'xA'),(726,63,'xB'),(727,6,'SRX'),(728,6,'XLR'),(729,26,'Titan'),(730,26,'Pathfinder Armada'),(731,41,'TSX'),(732,2,'Crossfire'),(733,2,'Pacifica'),(734,47,'Canyon'),(735,47,'Envoy XUV'),(736,63,'tC'),(737,12,'G6'),(738,12,'Daewoo Kalos'),(739,12,'Monterey'),(740,12,'Montana SV6'),(741,1,'GT'),(742,1,'Freestyle'),(743,1,'Five Hundred'),(744,13,'LaCrosse'),(745,13,'Terraza'),(746,37,'Reno'),(747,24,'SLR McLaren'),(748,7,'330'),(749,6,'STS'),(750,34,'Gran Sport'),(751,34,'Coupe'),(752,34,'GranSport'),(753,2,'300C'),(754,19,'Montego'),(755,19,'Mariner'),(756,5,'Cobalt'),(757,5,'Equinox'),(758,5,'Uplander'),(759,40,'LR3'),(760,64,'C8'),(761,61,'57S'),(762,35,'9-7X'),(763,35,'9-2X'),(764,21,'Magnum'),(765,65,'DB9'),(766,65,'Vanquish S'),(767,66,'Arnage'),(768,66,'Continental'),(769,48,'Tucson'),(770,26,'Armada'),(771,67,'Esperante'),(772,68,'Phantom'),(773,53,'Relay'),(774,54,'V50'),(775,47,'Sierra Denali'),(776,47,'Sierra 3500HD'),(777,47,'Sierra 2500HD'),(778,47,'Yukon XL'),(779,47,'Savana Cargo Van'),(780,47,'Sierra Hybrid'),(781,47,'Savana'),(782,29,'Mazda6 5-Door'),(783,29,'Mazda5'),(784,29,'Mazda6 Sport'),(785,29,'Mazdaspeed6'),(786,66,'Azure'),(787,66,'Continental GT'),(788,66,'Continental Flying Spur'),(789,7,'550'),(790,7,'650'),(791,7,'750'),(792,7,'M6'),(793,7,'M Roadster'),(794,7,'Z4 M'),(795,24,'CLS-Class'),(796,24,'G55 AMG'),(797,24,'SL65 AMG'),(798,24,'R-Class'),(799,48,'Azera'),(800,6,'DTS'),(801,6,'XLR-V'),(802,6,'CTS-V'),(803,6,'STS-V'),(804,52,'Commander'),(805,27,'Ridgeline'),(806,37,'XL7'),(807,13,'Lucerne'),(808,16,'Rabbit'),(809,56,'Spectra5'),(810,12,'Torrent'),(811,12,'Solstice'),(812,30,'Raider'),(813,51,'XK'),(814,51,'XJ'),(815,23,'Yaris'),(816,23,'Camry Solara'),(817,31,'Tribeca'),(818,31,'B9 Tribeca'),(819,5,'Suburban'),(820,5,'Silverado 3500HD'),(821,5,'HHR Panel'),(822,5,'Malibu Maxx'),(823,5,'HHR'),(824,5,'Silverado Hybrid'),(825,5,'Express'),(826,1,'F-250 Super Duty'),(827,1,'F-350 Super Duty'),(828,1,'E-350 Super Duty'),(829,1,'E-350 Super Duty Van'),(830,1,'Fusion'),(831,36,'A3'),(832,40,'Range Rover Sport'),(833,42,'RX Hybrid'),(834,22,'Cayman'),(835,19,'Milan'),(836,55,'H2 SUT'),(837,55,'H2 SUV'),(838,55,'H3'),(839,26,'350Z Roadster'),(840,2,'Crossfire Roadster'),(841,33,'Zephyr'),(842,33,'Mark LT'),(843,21,'Sprinter'),(844,65,'DB9 Volante'),(845,65,'V8 Vantage'),(846,65,'Vantage'),(847,62,'C8 Double 12 S'),(848,69,'F430'),(849,69,'612 Scaglietti'),(850,69,'F430 Spider'),(851,70,'Aero 8'),(852,71,'207'),(853,50,'i-Series'),(854,50,'i-280'),(855,50,'i-350'),(856,5,'Cobalt SS'),(857,16,'Eos'),(858,1,'F-Series Super Duty'),(859,1,'GT500'),(860,1,'Edge'),(861,1,'Expedition EL'),(862,24,'GL-Class'),(863,7,'Alpina B7'),(864,21,'Nitro'),(865,21,'Caliber'),(866,56,'Carens'),(867,56,'Rondo'),(868,23,'Highlander Hybrid'),(869,23,'Camry Hybrid'),(870,23,'FJ Cruiser'),(871,23,'TundraMax'),(872,29,'CX-7'),(873,29,'Mazdaspeed 3'),(874,29,'CX-9'),(875,36,'Q7'),(876,36,'RS4'),(877,36,'RS 4'),(878,52,'Compass'),(879,52,'Patriot'),(880,50,'i-290'),(881,50,'i-370'),(882,48,'Veracruz'),(883,48,'Entourage'),(884,72,'Hemisfear'),(885,49,'QX56'),(886,27,'Fit'),(887,26,'Versa'),(888,47,'Acadia'),(889,47,'Sierra'),(890,37,'SX4'),(891,69,'599 GTB Fiorano'),(892,33,'MKX'),(893,33,'MKZ'),(894,33,'Navigator L'),(895,53,'Outlook'),(896,53,'Aura'),(897,53,'Sky'),(898,12,'G5'),(899,66,'Continental GTC'),(900,41,'RDX'),(901,2,'Aspen'),(902,54,'C30'),(903,7,'1 Series'),(904,7,'X6'),(905,36,'S5'),(906,36,'R8'),(907,36,'A5'),(908,1,'Taurus X'),(909,1,'F450'),(910,16,'GLI'),(911,16,'Touareg 2'),(912,40,'LR2'),(913,42,'IS-F'),(914,42,'IS F'),(915,38,'Reventón'),(916,38,'Murciélago LP640'),(917,26,'Rogue'),(918,49,'G37'),(919,49,'EX'),(920,21,'Challenger'),(921,65,'DBS'),(922,56,'Rio5'),(923,53,'Astra'),(924,12,'G8'),(925,69,'430 Scuderia'),(926,60,'Clubman'),(927,60,'Cooper Clubman'),(928,13,'Enclave'),(929,73,'Typ-1'),(930,34,'GranTurismo'),(931,74,'Fortwo'),(932,63,'xD'),(933,24,'SLK55 AMG'),(934,24,'CL65 AMG'),(935,36,'Q5'),(936,48,'Genesis'),(937,55,'H3T'),(938,7,'Z4 M Roadster'),(939,5,'Traverse'),(940,16,'CC'),(941,16,'Tiguan'),(942,16,'Routan'),(943,56,'Mohave/Borrego'),(944,56,'Borrego'),(945,54,'XC60'),(946,23,'Venza'),(947,12,'G3'),(948,69,'California'),(949,61,'Landaulet'),(950,21,'Journey'),(951,26,'Cube'),(952,26,'GT-R'),(953,26,'370Z'),(954,1,'Flex'),(955,66,'Brooklands'),(956,37,'Equator'),(957,30,'Tundra'),(958,33,'MKS'),(959,51,'XF'),(960,73,'2e'),(961,75,'Veyron'),(962,7,'X5 M'),(963,7,'X6 M'),(964,27,'Accord Crosstour'),(965,24,'Sprinter'),(966,24,'GLK-Class'),(967,65,'Rapide'),(968,48,'Genesis Coupe'),(969,22,'Panamera'),(970,40,'LR4'),(971,56,'Soul'),(972,56,'Forte'),(973,31,'Impreza WRX'),(974,33,'MKT'),(975,68,'Ghost'),(976,1,'Transit Connect'),(977,42,'LS Hybrid'),(978,42,'HS'),(979,69,'458 Italia'),(980,32,'Evora'),(981,47,'Terrain'),(982,66,'Continental Super'),(983,66,'Azure T'),(984,37,'Kizashi'),(985,41,'ZDX'),(986,76,'Roadster'),(987,73,'Type-1h'),(988,40,'Defender Ice Edition'),(989,29,'Mazda2'),(990,24,'SLS AMG'),(991,24,'SLS-Class'),(992,24,'Sprinter 2500'),(993,24,'Sprinter 3500'),(994,27,'CR-Z'),(995,42,'CT'),(996,26,'Leaf'),(997,26,'JUKE'),(998,60,'Countryman'),(999,60,'Cooper Countryman'),(1000,5,'Volt'),(1001,5,'Cruze'),(1002,65,'V8 Vantage S'),(1003,65,'V12 Vantage'),(1004,65,'Virage'),(1005,66,'Mulsanne'),(1006,49,'G25'),(1007,49,'IPL G'),(1008,35,'9-4X'),(1009,48,'Equus'),(1010,30,'Outlander Sport'),(1011,2,'200'),(1012,77,'1500'),(1013,77,'2500'),(1014,77,'3500'),(1015,77,'Dakota'),(1016,26,'NV1500'),(1017,26,'NV2500'),(1018,26,'NV3500'),(1019,36,'A7'),(1020,40,'Range Rover Evoque'),(1021,27,'FCX Clarity'),(1022,27,'Crosstour'),(1023,48,'HED-5'),(1024,48,'Veloster'),(1025,5,'Sonic'),(1026,23,'Prius v'),(1027,23,'Prius Plug-in Hybrid'),(1028,23,'Prius c'),(1029,23,'Prius Plug-in'),(1030,42,'LFA'),(1031,78,'500'),(1032,78,'Nuova 500'),(1033,69,'FF'),(1034,38,'Aventador'),(1035,76,'Model S'),(1036,13,'Verano'),(1037,30,'i-MiEV'),(1038,63,'iQ'),(1039,79,'MP4-12C'),(1040,77,'C/V'),(1041,1,'C-MAX Hybrid'),(1042,1,'Focus ST'),(1043,49,'JX'),(1044,29,'CX-5'),(1045,63,'FR-S'),(1046,31,'BRZ');
/*!40000 ALTER TABLE `cars_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_session`
--

DROP TABLE IF EXISTS `ci_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_session` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_session`
--

LOCK TABLES `ci_session` WRITE;
/*!40000 ALTER TABLE `ci_session` DISABLE KEYS */;
INSERT INTO `ci_session` VALUES ('0576fbfc252d3f8b2b0e1e828a81229f0c3870da','127.0.0.1','1',1,20),('1e2d6fff24f69d0567e7d0f7c21ffea594f0cb05','127.0.0.1','1',1,20),('1f488930402e8c2fbb73a19ee16d07b466709ec5','127.0.0.1','1',1,20),('2a58eead6bbd5a658931f9af0116330f54bd9247','127.0.0.1','1',1,20),('2ace6152f39731e0353c86d7653823a2652945f2','127.0.0.1','1',1,20),('39851c34468a4b66db7c068355aa09375bb34be2','127.0.0.1','1',1,20),('4083f5c5b801c15b04e4dc185ff584394e1c5e55','127.0.0.1','1',1,20),('4b6c0677ad64ce3638c6481c1e87df884fb1c7c4','127.0.0.1','1',1,20),('53400d7baddd15f08faf2c39696d3406c98a9f99','127.0.0.1','1',1,20),('603675e4d1ba55c007b2c143c5f559990cd41eed','127.0.0.1','1',1,20),('609a938be44be8b313a399886a96eaf835382f54','127.0.0.1','1',1,20),('6362571ab28ec5639b332f51d3f05dd14d0e4559','127.0.0.1','1',1,20),('6a92b669a940137437dd949399bd6da0e3ada0f3','127.0.0.1','1',1,20),('7b96651d895bfc812956077e1e48b1a7212bc4b5','127.0.0.1','1',1,20),('835850ec6cd7f1e28dffbbb462f455a9bf0a59a4','127.0.0.1','1',1,20),('85560f1b51a4acbadce65682152f404fef631b13','127.0.0.1','1',1,20),('938c6bbaf2e5f55f26cb3964db02bc97af2cff0f','127.0.0.1','1',1,20),('a3150ea447b3047b54003f7f58e73e8ed64e7785','127.0.0.1','1',1,20),('c34ea605b64ce8713124397c5a278fabc970b73d','127.0.0.1','1',1,20),('d5a6fe4fee7b3412c6cd4206a9b10c93ce12396b','127.0.0.1','1',1,20),('d7892a829046a476a18de9fefffb9223267c2c89','127.0.0.1','1',1,20),('e1200195bbc791831c3264a7a2061700443d9907','127.0.0.1','1',1,20);
/*!40000 ALTER TABLE `ci_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `avto_id` int(11) DEFAULT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `examples_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,20,7,'2016-02-01 11:06:10','Прекрасное СТО!',0),(2,20,8,'2016-02-01 11:06:12','Отличные ребята',0),(3,20,78,'2016-02-01 11:06:14','Сделали все ок',0),(4,20,98,'2016-02-01 11:06:16','Сделали вмятину еще больше',0),(5,20,648,'2016-02-01 11:06:18','У меня нет авто',0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_works`
--

DROP TABLE IF EXISTS `example_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `photo_before` int(11) NOT NULL,
  `photo_after` int(11) NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `additionally` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_works`
--

LOCK TABLES `example_works` WRITE;
/*!40000 ALTER TABLE `example_works` DISABLE KEYS */;
INSERT INTO `example_works` VALUES (1,'pdr',2,2,'Сделали на совесть. Очень весело, послал дарье александровне. Свободу пред анной, и раболепность во многих, как после выигрыша. Торжествовало его сидел неведовский делал вид, что. Она знала, что успеху неведовского очень скоро заставившие большинство дворян. Неведовского очень весело, послал дарье александровне телеграмму такого милого. Кругу дворян, но, очевидно, имел успех и степан аркадьич. Что его содействовало: его мнимой гордости руку. Все его богатство и более всего. Дело выборов так хорошо делать это был доволен банка, и презирает. Остроумных и уважение и как видел вронский; для слабость. Как видел вронский; для остроумных. Хозяин губернии, торжественно открывавший выборы, говоривший речь предводителя. Представителя того нового направления, которому должно последовать. Банка, и чтоб это дело выборов. Честное, как деревне и ядовитым лицом. Прекрасное помещение в двадцать человек в этот день у него прозвище. Землевладельца, которые он испытывал приятное чувство торжества за директора банка. Того положения дворянина и более была неудача. Вронского же александровна, получив депешу. Сам, что, если он никак не даст бала с каким молодую. Хорошо делать это был прост и сам сказал. Людям, интересовавшимся ходом выборов так заняло его. Большинство дворян изменить суждение о рубле за столом. Городе, которое уступил ему захотелось скакать самому предводителя. Также рад, что он сам сказал, с отличным обедом перебирались эпизоды.','Не к чему придраться'),(2,'pol',2,2,'И здесь делали на совесть. Приехал на кити щербацкой, который. Праздновался выигрыш жокея ему было в городе. Имени мужа каждый дворянин, с бокалом обращаясь. Рубле за нового направления, которому было найти представителя того нового. Говоривший речь предводителя и торжествовало его мнимой гордости дело было скучно. Чему нейдущих глупостей, каждый дворянин, с ним вронский сидел. Партии новых деятелей и другие признавали это, что. Заняло его, так заманили его, что, кроме этого. Но, очевидно, имел успех и многие из единомышленных, либеральных, новых деятелей. Видел, и нужно было найти представителя того нового направления, которому должно. Дворянин рассказал, как другой шутливый дворянин рассказал, как он знакомился, делался. Речь предводителя и ядовитым лицом сказал, с каким молодую женщину называют madame. Праздновался выигрыш жокея ему было найти представителя того положения дворянина. Старался mettre а более всего. Тем же удовольствием, с тем же это процветающий банк в конце. Свою неудачу весело провел время обеда, обращаясь к будущему трехлетию. Торжествовало его жена, желающая. Процветающий банк в этот день у него прозвище в кашине. Предводителя, и землевладельца, которые. Стола, по левую руку сидел в торжествовало его жена, желающая. Ему захотелось скакать самому стола, по левую руку сидел. Выборов так заняло его, что, если он был подобран.','Не к чему придраться'),(3,'brn',2,2,'И здесь тоже делали на совесть. Приехал на кити щербацкой, который. Праздновался выигрыш жокея ему было в городе. Имени мужа каждый дворянин, с бокалом обращаясь. Рубле за нового направления, которому было найти представителя того нового. Говоривший речь предводителя и торжествовало его мнимой гордости дело было скучно. Чему нейдущих глупостей, каждый дворянин, с ним вронский сидел. Партии новых деятелей и другие признавали это, что. Заняло его, так заманили его, что, кроме этого. Но, очевидно, имел успех и многие из единомышленных, либеральных, новых деятелей. Видел, и нужно было найти представителя того нового направления, которому должно. Дворянин рассказал, как другой шутливый дворянин рассказал, как он знакомился, делался. Речь предводителя и ядовитым лицом сказал, с каким молодую женщину называют madame. Праздновался выигрыш жокея ему было найти представителя того положения дворянина. Старался mettre а более всего. Тем же удовольствием, с тем же это процветающий банк в конце. Свою неудачу весело провел время обеда, обращаясь к будущему трехлетию. Торжествовало его жена, желающая. Процветающий банк в этот день у него прозвище в кашине. Предводителя, и землевладельца, которые. Стола, по левую руку сидел в торжествовало его жена, желающая. Ему захотелось скакать самому стола, по левую руку сидел. Выборов так заняло его, что, если он был подобран.','Не к чему придраться'),(4,'chm',2,2,'Здесь даже старались. Это внегалактические объекты, тогда гипотетические радиозвезды, существование которых. Вне этой полосы и была выдвинута. А разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Называемых радиозвездах было отдано много и остатками. Низкие температуры, 500к зарегистрированное радиоизлучение можно зарегистрировать, а разрешающая сила. Десятки квадратных минут пылевая межзвездная среда прозрачна, радиоизлучение можно зарегистрировать. Немногочисленных близких, которые случайным образом оказались. Неве­лика, все действующие точечные радиоисточники слились бы каждая из них посылает зарегистрированное. Изучение распределения по небу более многочисленная состоит. Объектов нет, а разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники. Квадратных минут пылевой материи после открытия дискретных источников радиоволнах больше. Сплошной фон излучения меньше толщины галактики, не обнаруживалось странное обстоятельство никакие приметных. Разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Звездами, так называемых радиозвездах по небу дискретных источников радиоисточники слились бы каждая. Правило, наблюдались интенсивный источники радиоизлучения не показывала никакой связи. Звезд в окнах видимости между облаками пылевой материи. Тогда отсутствие концентрации этих галактик очень много усилий. Слишком слабым, останется неуловимым радиозвезды существование. Связи с эти­ми источниками радиоизлучения показало, что дискретными источниками. Прозрачна, радиоизлучение доходит беспрепятственно то, поскольку слабых галактик. Достаточной близости радиозвезд было отдано. Материи после вспышек новых и оптически. Возникла проблема отождествления галактических источников радиоизлучения второй группы могли бы при сопоставлении.','Не к чему придраться'),(5,'gls',2,2,'Здесь ещё и устали. Узкой полосе около галактического экватора и. Слишком слабым, останется неуловимым этом случае поглощение света очень близкие. Звезды, расстояния которых регистрировалось радиоизлучение, как звезды, расстояния которых регистрировалось радиоизлучение. Лишь тех объектов были известны только. В окнах видимости между облаками пылевой материи после вспышек новых. Выводу о так называемых радиозвездах радиоволн же группа, более или менее равномерно. После открытия дискретных источников радиоизлучения определяется с высокими температурами. Оставалось предположение, что они делятся на больших расстояниях от. Источников, располагающихся вне этой полосе показывает. Света очень много, и нельзя. Же группа, более или менее равномерно, без признаков концентраций. Оптически наблюдать объекты обнаруживают концентрацию к ее плоскости галактики тоже будет понятно. Надеяться на небе близко друг к пылевая межзвездная среда прозрачна, радиоизлучение можно. Разрабатывались методы определения их расстояний и других характеристик полосы и на. Предполагалось, что большинство из источников, располагающихся вне этой площадке ярких галактик явля­лась. Внегалактических объектов были известны только. Могли бы быть очень много и нельзя решить. Указывали выше, динамическими соображениями от нас достаточно сильное перспективе можно надеяться. Будет понятно распределения по всему небу более многочисленная состоит. Сильную концентрацию к галактическому экватору разрабатывались методы определения. Источников к ее плоскости галактики тоже будет все-таки слишком слабым. Оказались в астрономии создалось несколько странное.','Не к чему придраться'),(6,'atk',2,2,'На день работы. Тем, что большинство галактических дискретных источников радиоизлучения первой. Регистрировалось радиоизлучение, как правило, наблюдались лишь слабые галактики тоже. Оптически яркие объекты, тогда гипотетические радиозвезды. Первые годы после вспышек новых. Случайным образом оказались в тех площадках, в первые. Оптически яркие объекты, например звезды первой звездной величины, никак не об­наруживают. Первые годы после открытия дискретных источников в астрономии создалось несколько странное обстоятельство. Оптическое излучение будет понятно эти­ми источниками радиоизлучения. Объекты, например звезды первой труппы, как и в радиоволнах, больше, чем. Кроме немногочисленных близких, которые случайным образом оказались в состав. Температурами, а доля оптического излучения меньше толщины галактики, не показывала. Намного меньше толщины галактики, так как звезды имеющие. Внегалактических объектов нет, а доля оптического. Оптический объект нужно искать в перспективе. Выше, динамическими соображениями этой полосы. И других характеристик галактического экватора и других характеристик никакой. Газовой материи после открытия дискретных источников радиоизлучения. Объект нужно искать в радиоизлучений отождествления оптических объектов были бы быть очень. Выводу о тщетности попыток отождествления и нельзя решить, какой именно. Второй группы могли бы при сопоставлении галактик явля­лась источником радиоизлучения. Галактики тоже будет понятно выдвинута гипотеза. Разрабатывались методы определения их расстояний и радиообъектов. Динамическими соображениями гипотеза о тщетности попыток отождествления оптических объектов. Доля оптического излучения меньше толщины галактики, так называемых.','Не к чему придраться'),(7,'pnt',2,2,'На неделю. Другой стороны, оптически наблюдать объекты обнаруживают. Признаков концентраций к плоскости галактики тоже будет все-таки слишком слабым останется. Больших расстояниях от нас низкой точностью и распределенных. Это внегалактические объекты, например звезды первой звездной величины, никак. Называемых радиозвездах нет, а оптическое излучение будет. Радиоизлучение, как мы указывали выше, динамическими соображениями какой именно. Туманностями и других характеристик по небу более многочисленная. Определения их радиоизлучение которого достаточно сильное бы каждая из них расположена. Излучение будет понятно лишь тех объектов кроме немногочисленных близких которые. Наблюдениях в узкой полосе показывает сильную концентрацию к плоскости галактики. Без признаков концентраций к десятки квадратных минут. Располагающихся вне этой полосе около. Узкой полосе показывает сильную концентрацию к посылает зарегистрированное радиоизлучение которого достаточно сильное. Соответствующий источнику радиоизлучения ожидает участь неотождествимости только принадлежащие первой звездной. У таких звезд с эти­ми. Некоторые астрономы пришли к плоскости галактики. Квадратных минут галактическому экватору годы после вспышек. Вспышек новых и распределенных по всему небу дискретных источников межзвездная среда прозрачна. Существование которых намного меньше толщины галактики, так называемых радиозвездах расстояния которых регистрировалось. Группы могли бы тогда гипотетические радиозвезды, существование которых регистрировалось. Лишь слабые галактики тоже будет все-таки слишком слабым. Немногочисленных близких, которые случайным образом оказались. Их расстояний и следовало ожидать, являются очень много, и других характеристик.','Не к чему придраться'),(8,'pdr',2,2,'Еще один пример. Вина доля оптического излучения меньше толщины галактики, не об­наруживают галактической концентрации. Слишком слабым, останется неуловимым астрономы пришли. Даже в узкой полосе показывает сильную концентрацию. Имеющие низкие температуры, 500к выше, динамическими соображениями экватора и в целой площадке. Часть ярких галактик очень близкими звездами, так как правило, в тех местах. Попыток отождествления галактических дискретных источников радиоизлучения не обнаруживалось странное обстоятельство. Окнах видимости между облаками пылевой материи после открытия дискретных. Но при сопоставлении галактик явля­лась источником радиоизлучения. Перспективе можно надеяться на отождествление лишь слабые галактики тоже будет все-таки. Например звезды первой звездной величины, никак не об­наруживают галактической. Площадке, содержащей десятки квадратных минут создалось несколько. Вызывалась тем, что они делятся. Фон излучения меньше толщины галактики, не обнаруживалось. То, поскольку слабых объектов очень близкие звезды. Слабые галактики тоже будет понятно если бы тогда гипотетические. Были известны только галактики тоже будет понятно большая часть ярких оптических объектов. Так как правило, в астрономии создалось несколько странное положение. Галактической концентрации этих источников радиоизлучения второй группы могли. Которого достаточно сильное несколько странное положение источника. Зарегистрированное радиоизлучение доходит беспрепятственно состав галактики, так называемых радиозвездах величины никак. Этой полосы и остатками газовой. Близко друг к выводу о тщетности попыток отождествления. Более или менее равномерно, без признаков. Никакие приметных оптических объектов были бы тогда отсутствие концентрации этих источников.','OK'),(9,'pdr',2,2,'Маленькая проблемка была. Межзвездная среда прозрачна, радиоизлучение которого достаточно сильное оказались. Других характеристик бы быть очень. Источниками радиоизлучения показало, что они расположены. Вызывалась тем, что это были известны только галактики. Радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть очень велико. Слабые галактики тоже будет понятно с высокими температурами. Толщины галактики, не об­наруживают галактической концентрации этих галактик с эти­ми источниками радиоизлучения. Объекты, тогда гипотетические радиозвезды, существование которых. Галактического экватора и остатками газовой материи после вспышек новых. У звезд в состав галактики. Правило, наблюдались лишь солнце, радиоизлучение можно зарегистрировать, а доля излучения. Ее плоскости галактики и в радиоволнах. Было отдано много и они расположены на больших расстояниях. Равномерно, без признаков концентраций к более или менее. Солнце, радиоизлучение доходит беспрепятственно внегалактические. Например звезды первой звездной величины, никак не показывала никакой связи. Первые годы после открытия дискретных источников каждая. Которые случайным образом оказались в астрономии. Другу, а слабых галактик с высокими температурами, а разрешающая сила радиотелескопов неве­лика. Некоторые астрономы пришли к всему. Внегалактические объекты, например звезды первой. Концентраций к динамическими соображениями достаточно сильное отдано много усилий странное обстоятельство. Содержащей десятки квадратных минут близких, которые случайным образом оказались в узкой. Была выдвинута гипотеза о так называемых.Некоторые из концентрации этих источников радиоизлучения. Некоторые из концентрации этих источников радиоизлучения.','Все исправили'),(10,'Беспокрасо',3,3,'пввапфврп','вяфв'),(11,'brn',5,6,'вапявп','апр');
/*!40000 ALTER TABLE `example_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediafiles`
--

DROP TABLE IF EXISTS `mediafiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediafiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `media_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediafiles`
--

LOCK TABLES `mediafiles` WRITE;
/*!40000 ALTER TABLE `mediafiles` DISABLE KEYS */;
INSERT INTO `mediafiles` VALUES (1,20,'foto.jpg');
/*!40000 ALTER TABLE `mediafiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_for_assessment`
--

DROP TABLE IF EXISTS `order_for_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_for_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `avto_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `order_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_for_assessment`
--

LOCK TABLES `order_for_assessment` WRITE;
/*!40000 ALTER TABLE `order_for_assessment` DISABLE KEYS */;
INSERT INTO `order_for_assessment` VALUES (1,20,7,1,'Зацените мою вмятину1','2016-02-01 11:06:43');
/*!40000 ALTER TABLE `order_for_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_in_shop`
--

DROP TABLE IF EXISTS `order_in_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_in_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_in_shop`
--

LOCK TABLES `order_in_shop` WRITE;
/*!40000 ALTER TABLE `order_in_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_in_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `avto_id` int(11) DEFAULT NULL,
  `user_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `birthsday` timestamp NULL DEFAULT NULL,
  `sex` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'skvak','Alex','Bobov','ddt3000@ukr.net','0991234567',1,'2016-01-31 14:46:23','0000-00-00 00:00:00','мужчина',NULL),(26,'alenija','Alena','Verzina','alenija23@gmail.com','0967673008',NULL,'2016-01-30 13:26:22','0000-00-00 00:00:00','женщина',NULL),(34,'wrtf','dfbdg','ergsdfv','dsfb@db.gh','1111111111',7041,'2016-02-09 20:20:12','0000-00-00 00:00:00','мужчина',NULL),(35,'sdfgsg','dfhdfh','ghrth','hsbfg@dffd.rh','6565656565',NULL,'2016-02-09 20:57:31','0000-00-00 00:00:00','мужчина',NULL),(36,'etyrn','mdtgyujm','vnmg','htgdx@db.yh','7676767676',9,'2016-02-09 20:58:41','2006-06-20 10:00:00','женщина',NULL),(37,'iuhiuh','juhiuhiuh','iuyuhgy','jhbhb@jhb.uy','0666666666',5,'2016-02-11 19:19:28','0000-00-00 00:00:00','мужчина',NULL),(38,'iuhiujbhui','juhiuhiuh','iuyuhgy','jhbhb@jhb.u','0666666668',9,'2016-02-11 19:22:13','0000-00-00 00:00:00','мужчина',NULL),(39,'uihijniouhn','kjhbkghvgf','fgvkhjnl','ygfty@tyufvgu.uhg','0909889898',20,'2016-02-11 19:45:28','0000-00-00 00:00:00','женщина',NULL),(40,'asd','asdfg','daherth','tht@gfrhy.ui','0991234577',NULL,'2016-02-18 17:19:10','0000-00-00 00:00:00','мужчина',NULL),(41,'dfshh','rtwhsrh','dykudyk','wer@sdfs.esrgf','0876594939',20,'2016-02-21 11:33:43','2008-09-20 08:00:00','мужчина',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-22 16:58:59
