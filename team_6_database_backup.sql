-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: national_parks
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission` (
  `admission_id` int NOT NULL,
  `park_id` int NOT NULL,
  `ticket_cost_per_person` int NOT NULL,
  `ticket_cost_per_motorcycle` int DEFAULT NULL,
  `ticket_cost_per_private_vehicle` int DEFAULT NULL,
  `opening_hours` time DEFAULT NULL,
  `closing_hours` time DEFAULT NULL,
  PRIMARY KEY (`admission_id`),
  KEY `fk_admisson_parks1_idx` (`park_id`),
  CONSTRAINT `fk_admisson_parks1` FOREIGN KEY (`park_id`) REFERENCES `parks` (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,1,15,25,30,'08:00:00','16:00:00'),(2,2,15,25,30,'09:00:00','16:00:00'),(3,3,15,25,30,'09:00:00','16:00:00'),(4,4,15,25,30,NULL,NULL),(5,5,0,0,0,NULL,NULL),(6,6,15,25,30,NULL,NULL),(7,7,20,30,35,NULL,NULL),(8,8,15,25,30,'09:00:00','16:00:00'),(9,9,10,15,20,NULL,NULL),(10,10,15,NULL,NULL,'08:00:00','17:00:00'),(11,11,0,0,0,'08:30:00','17:00:00'),(12,12,0,0,0,NULL,NULL),(13,13,15,25,30,NULL,NULL),(14,14,0,0,0,NULL,NULL),(15,15,15,25,30,NULL,NULL),(16,16,15,NULL,NULL,NULL,NULL),(17,17,15,NULL,NULL,NULL,NULL),(18,18,15,25,30,'08:00:00','17:00:00'),(19,19,0,0,0,'08:00:00','17:00:00'),(20,20,3,NULL,NULL,'05:00:00','23:00:00'),(21,21,20,30,35,'08:00:00','17:00:00'),(22,22,0,0,0,'08:00:00','17:00:00'),(23,23,20,30,35,NULL,NULL),(24,24,20,35,30,'08:00:00','17:00:00'),(25,25,0,0,0,'08:00:00','17:00:00'),(26,26,15,25,20,'09:00:00','16:30:00'),(27,27,10,NULL,NULL,'08:00:00','16:30:00'),(28,28,25,35,30,'09:00:00','17:00:00'),(29,29,15,30,25,NULL,NULL),(30,30,0,0,0,'05:00:00','22:00:00'),(31,31,0,0,0,'07:00:00','23:00:00'),(32,32,7,NULL,NULL,'08:00:00','17:30:00'),(33,33,15,25,30,'07:30:00','17:00:00'),(34,34,0,0,0,NULL,NULL),(35,35,0,0,0,'09:30:00','18:30:00'),(36,36,20,35,35,NULL,NULL),(37,37,0,0,0,'09:00:00','18:30:00'),(38,38,0,0,0,'08:30:00','17:30:00'),(39,39,15,25,30,'09:00:00','17:00:00'),(40,40,0,0,0,NULL,NULL),(41,41,10,15,20,'08:00:00','17:00:00'),(42,42,15,25,30,'09:00:00','16:30:00'),(43,43,0,0,0,'09:00:00','17:00:00'),(44,44,0,0,0,'09:00:00','15:00:00'),(45,45,0,NULL,NULL,'10:00:00','17:00:00'),(46,46,15,20,25,'08:00:00','17:00:00'),(47,47,15,25,30,'07:30:00','20:00:00'),(48,48,0,0,0,'12:00:00','23:59:00'),(49,49,15,25,25,'12:00:00','23:59:00'),(50,50,15,20,25,'05:00:00','20:00:00'),(51,51,20,30,35,'12:00:00','23:59:00'),(52,52,15,25,30,'09:00:00','17:00:00'),(53,53,15,25,30,'12:00:00','23:59:00'),(54,54,0,0,0,'12:00:00','23:59:00'),(55,55,15,20,25,'07:00:00','18:00:00'),(56,56,0,0,0,'12:00:00','23:59:00'),(57,57,0,0,0,'12:00:00','23:59:00'),(58,58,20,30,35,'09:00:00','17:00:00'),(59,59,20,30,35,'12:00:00','23:59:00'),(60,60,20,30,35,'08:00:00','17:00:00');
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layout` (
  `layout_id` int NOT NULL,
  `park_id` int NOT NULL,
  `trail_id` int NOT NULL,
  PRIMARY KEY (`layout_id`),
  KEY `fk_layout_trail1_idx` (`trail_id`),
  KEY `fk_layout_parks1_idx` (`park_id`),
  CONSTRAINT `fk_layout_parks1` FOREIGN KEY (`park_id`) REFERENCES `parks` (`park_id`),
  CONSTRAINT `fk_layout_trail1` FOREIGN KEY (`trail_id`) REFERENCES `trail` (`trail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,1,66),(2,1,68),(3,2,14),(4,2,16),(5,2,18),(6,2,48),(7,2,77),(8,3,17),(9,3,64),(10,3,100),(11,4,52),(12,5,43),(13,5,85),(14,6,63),(15,9,21),(16,8,36),(17,7,58),(18,7,70),(19,7,74),(20,8,28),(21,8,56),(22,9,24),(23,9,34),(24,10,1),(25,11,50),(26,12,75),(27,13,25),(28,14,7),(29,15,67),(30,16,2),(31,16,19),(32,16,42),(33,16,79),(34,17,22),(35,18,83),(36,19,46),(37,21,39),(38,22,32),(39,23,6),(40,23,84),(41,24,47),(42,25,91),(43,26,78),(44,27,55),(45,28,81),(46,29,11),(47,29,15),(48,29,61),(49,30,98),(50,31,20),(51,31,97),(52,32,31),(53,33,54),(54,34,94),(55,35,35),(56,36,72),(57,37,30),(58,38,89),(59,39,45),(60,40,95),(61,41,51),(62,41,69),(63,41,86),(64,42,40),(65,43,27),(66,43,29),(67,44,90),(68,45,37),(69,45,59),(70,46,3),(71,46,88),(72,47,8),(73,47,9),(74,48,5),(75,49,13),(76,50,26),(77,51,41),(78,52,44),(79,52,49),(80,52,87),(81,53,53),(82,54,73),(83,55,12),(84,56,71),(85,57,80),(86,58,4),(87,58,10),(88,58,60),(89,58,62),(90,58,82),(91,58,92),(92,58,99),(93,59,23),(94,59,33),(95,59,57),(96,59,93),(97,60,38),(98,60,65),(99,60,76),(100,60,96);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL,
  `parks_id` int NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `fk_location_parks_idx` (`parks_id`),
  CONSTRAINT `fk_location_parks` FOREIGN KEY (`parks_id`) REFERENCES `parks` (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,1,'ME'),(2,2,'UT'),(3,3,'SD'),(4,4,'TX'),(5,5,'FL'),(6,6,'CO'),(7,7,'UT'),(8,8,'UT'),(9,9,'UT'),(10,10,'NM'),(11,11,'CA'),(12,12,'SC'),(13,13,'OR'),(14,14,'OH'),(15,15,'CA'),(16,16,'AL'),(17,17,'FL'),(18,18,'FL'),(19,19,'AL'),(20,20,'MO'),(21,21,'MT'),(22,22,'AL'),(23,23,'AZ'),(24,24,'WY'),(25,25,'NV'),(26,26,'CO'),(27,27,'TX'),(28,28,'HI'),(29,29,'HI'),(30,30,'AR'),(31,31,'IN'),(32,32,'MI'),(33,33,'CA'),(34,34,'AL'),(35,35,'AL'),(36,36,'CA'),(37,37,'AL'),(38,38,'AL'),(39,39,'CA'),(40,40,'KY'),(41,41,'CO'),(42,42,'WA'),(43,43,'WV'),(44,44,'WA'),(45,45,'WA'),(46,46,'AZ'),(47,47,'CA'),(48,48,'CA'),(49,49,'CO'),(50,50,'AZ'),(51,51,'CA'),(52,52,'VA'),(53,53,'ND'),(54,54,'MN'),(55,55,'NM'),(56,56,'SD'),(57,57,'AL'),(58,58,'WY'),(59,59,'CA'),(60,60,'UT');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overnight_stay`
--

DROP TABLE IF EXISTS `overnight_stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overnight_stay` (
  `overnight_id` int NOT NULL,
  `park_id` int NOT NULL,
  `num_overnight_stay` int NOT NULL,
  PRIMARY KEY (`overnight_id`),
  KEY `fk_overnight_stay_parks1_idx` (`park_id`),
  CONSTRAINT `fk_overnight_stay_parks1` FOREIGN KEY (`park_id`) REFERENCES `parks` (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overnight_stay`
--

LOCK TABLES `overnight_stay` WRITE;
/*!40000 ALTER TABLE `overnight_stay` DISABLE KEYS */;
INSERT INTO `overnight_stay` VALUES (1,1,307),(2,2,23942),(3,3,29376),(4,4,127423),(5,5,1224),(6,6,32167),(7,7,93227),(8,8,69980),(9,9,34911),(10,10,116),(11,11,62414),(12,12,6346),(13,13,45284),(14,14,2141),(15,15,158667),(16,16,18163),(17,17,11148),(18,18,63993),(19,19,1086),(20,20,0),(21,21,86993),(22,22,11418),(23,23,451955),(24,24,408616),(25,25,36102),(26,26,39620),(27,27,12948),(28,28,3386),(29,29,41923),(30,30,30407),(31,31,23337),(32,32,13045),(33,33,269581),(34,34,21502),(35,35,122),(36,36,44466),(37,37,10548),(38,38,3048),(39,39,128422),(40,40,42302),(41,41,32214),(42,42,89322),(43,43,1065),(44,44,22966),(45,45,359748),(46,46,209),(47,47,26118),(48,48,6648),(49,49,109889),(50,50,3461),(51,51,93503),(52,52,236760),(53,53,3323),(54,54,108563),(55,55,808),(56,56,5716),(57,57,429),(58,58,636092),(59,59,508632),(60,60,177332);
/*!40000 ALTER TABLE `overnight_stay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parks`
--

DROP TABLE IF EXISTS `parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parks` (
  `park_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `size` int NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parks`
--

LOCK TABLES `parks` WRITE;
/*!40000 ALTER TABLE `parks` DISABLE KEYS */;
INSERT INTO `parks` VALUES (1,'Acadia',49075),(2,'Arches',76679),(3,'Badlands',242756),(4,'Big Bend',80116321),(5,'Biscayne',172971),(6,'Black Canyon of the Gunnison',30781),(7,'Bryce Canyon',35835),(8,'Canyonlands',337598),(9,'Capitol Reef',241905),(10,'Carlsbad Caverns',46766),(11,'Channel Islands',249561),(12,'Congaree',26539),(13,'Crater Lake',183224),(14,'Cuyahoga Valley',32572),(15,'Death Valley',3373063),(16,'Denali',4740911),(17,'Dry Tortugas',64701),(18,'Everglades',1400539),(19,'Gates of the Arctic',7523897),(20,'Gateway Arch',91),(21,'Glacier',1013126),(22,'Glacier Bay',3223383),(23,'Grand Canyon',1201647),(24,'Grand Teton',310044),(25,'Great Basin',77180),(26,'Great Sand Dunes',107342),(27,'Guadalupe Mountains',86367),(28,'Haleakal?',33265),(29,'HawaiÍi Volcanoes',323431),(30,'Hot Springs',5548),(31,'Indiana Dunes',15067),(32,'Isle Royale',571790),(33,'Joshua Tree',790636),(34,'Katmai',3674529),(35,'Kenai Fjords',669650),(36,'King Canyon',461901),(37,'Kobuk Valley',1750716),(38,'Lake Clark',2619816),(39,'Lassen Volcanic',106589),(40,'Mammoth Cave',54012),(41,'Mesa Verde',52485),(42,'Mount Rainier',236382),(43,'New River Gorge',72808),(44,'North Cascades',504781),(45,'Olympic',922649),(46,'Petrified Forest',221390),(47,'Pinnacles',26686),(48,'Redwood',138999),(49,'Rocky Mountain',265795),(50,'Saguaro',91716),(51,'Sequoia',404063),(52,'Shenandoah',199218),(53,'Theodore Roosevelt',70447),(54,'Voyageurs',218200),(55,'White Sands',146344),(56,'Wind Cave',33971),(57,'Wrangell-St. Elias',8323146),(58,'Yellowstone',2219791),(59,'Yosemite',761748),(60,'Zion',147237);
/*!40000 ALTER TABLE `parks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourist_count`
--

DROP TABLE IF EXISTS `tourist_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourist_count` (
  `tourist_count_id` int NOT NULL,
  `park_id` int NOT NULL,
  `2020_recreational_count` int NOT NULL,
  `2020_non-recreational_count` int NOT NULL,
  `2019_recreational_count` int NOT NULL,
  `2018_recreational_count` int NOT NULL,
  PRIMARY KEY (`tourist_count_id`),
  KEY `fk_tourist_count_parks1_idx` (`park_id`),
  CONSTRAINT `fk_tourist_count_parks1` FOREIGN KEY (`park_id`) REFERENCES `parks` (`park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist_count`
--

LOCK TABLES `tourist_count` WRITE;
/*!40000 ALTER TABLE `tourist_count` DISABLE KEYS */;
INSERT INTO `tourist_count` VALUES (1,1,3537575,47100,3437286,2669034),(2,2,1663557,0,1659702,1238083),(3,3,1008942,55984,970998,916932),(4,4,440091,2364,463832,393907),(5,5,469253,0,708522,402770),(6,6,308962,0,432818,341620),(7,7,2679478,1464655,2594904,1464655),(8,8,739449,0,733996,493914),(9,9,1227627,66851,412465,981038),(10,10,465912,0,440691,183835),(11,11,366250,3144,409630,167290),(12,12,145929,0,159445,119306),(13,13,720659,49600,704512,670500),(14,14,2096053,0,2237997,2755628),(15,15,1678660,33210,1740945,820023),(16,16,594660,556019,601152,54850),(17,17,56810,1392,79200,48543),(18,18,597124,6000,79200,702319),(19,19,9591,0,10518,2872),(20,20,2016180,0,2055309,486000),(21,21,2965309,34029,3049839,1698864),(22,22,597915,203,672087,5748),(23,23,6380495,14788,5974411,2897098),(24,24,3491151,1220029,3405614,3289638),(25,25,153094,1150,131802,120248),(26,26,442905,470,527546,461532),(27,27,172347,1440,188833,151256),(28,28,1044084,20160,994394,319147),(29,29,1116891,1865927,1368376,589775),(30,30,1506887,148205,1467153,1348215),(31,31,1756079,3943,2134285,2293881),(32,32,25798,150,26410,6493),(33,33,2942382,9028,2988547,2399542),(34,34,37818,700,84167,51511),(35,35,321596,0,356601,115882),(36,36,699023,17122,632023,415077),(37,37,14937,7961,15766,11185),(38,38,14479,0,17157,4948),(39,39,499435,0,517039,542274),(40,40,533206,84309,551590,290392),(41,41,563420,7519,556203,287477),(42,42,1518491,457804,1501621,1160754),(43,43,1232627,2400,1195721,1054374),(44,44,30085,0,38208,30885),(45,45,3104455,604587,3245806,2499177),(46,46,644922,120,643588,384483),(47,47,222152,0,177224,165740),(48,48,482536,0,504722,265177),(49,49,4590493,8750,4670053,3305199),(50,50,957405,2897233,1020226,762226),(51,51,1229594,10252,1246053,769086),(52,52,1264880,10962,1425507,1666265),(53,53,749389,6578,691658,551303),(54,54,239656,0,232974,263091),(55,55,603008,0,608785,415383),(56,56,656397,191304,615350,448405),(57,57,79450,0,74518,16655),(58,58,4115000,1122445,4020288,3806306),(59,59,4009436,92498,4422861,2268313),(60,60,4320033,21900,4488268,3591254);
/*!40000 ALTER TABLE `tourist_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trail`
--

DROP TABLE IF EXISTS `trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trail` (
  `trail_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`trail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trail`
--

LOCK TABLES `trail` WRITE;
/*!40000 ALTER TABLE `trail` DISABLE KEYS */;
INSERT INTO `trail` VALUES (1,'Big Room Trail'),(2,'Bison Gluch'),(3,'Blue Mesa Trail'),(4,'Boiling River Trail'),(5,'Boy Scout Tree Trail'),(6,'Bright Angel Trail'),(7,'Buckeye Trail'),(8,'Chalone Peak Trail'),(9,'Chaparral Trailhead'),(10,'Clear Lake Loop'),(11,'Crater Rim Trail'),(12,'Cruiser Lake Trail'),(13,'Crystal Lakes'),(14,'Delicate Arch Trail'),(15,'Devastation Trail'),(16,'Devils Garden Loop'),(17,'Door Trail'),(18,'Double Arch Trail'),(19,'Dragonfly Creek'),(20,'Dune Ridge Trail'),(21,'Fairyland Loop'),(22,'Fort Jefferson Loop'),(23,'Four Mile Trail'),(24,'Frying Pan'),(25,'Garfield Peak Trail'),(26,'Garwood Dam Loop'),(27,'Glade creek area trail'),(28,'Grand View Point'),(29,'Grandview area trails'),(30,'Great Kobuk Sand Dunes'),(31,'Greenstone Ridge Trail'),(32,'Gustavus Plane-Crash Site'),(33,'Half Dome Trail'),(34,'Halls Creek Narrows'),(35,'Harding Icefield Trail'),(36,'Hat Shop'),(37,'Heather Peak'),(38,'Hidden Canyon'),(39,'Hidden Lake Trail'),(40,'High Lakes Loop'),(41,'High Sierra Trail'),(42,'Horseshoe Lake Trail'),(43,'Jetty Trail'),(44,'Jones Run and Doyles River Trails'),(45,'Kings Creek Falls Trail'),(46,'Koyukuk River Route'),(47,'Lake Solitude'),(48,'Landscape Arch Trail'),(49,'Lewis Fall Trail'),(50,'Lobo Canyon Trail'),(51,'Long House Trail'),(52,'Lost Mine Trail'),(53,'Maah Daah Hey Trail'),(54,'Maze Loop'),(55,'McKittrick Canyon Trail'),(56,'Mesa Point'),(57,'Mirror Lake Trail'),(58,'Mossy Cave'),(59,'Mount Storm King'),(60,'Mount Washburn Trail'),(61,'Napau Trail'),(62,'Norris Geyser Basin Boardwalk'),(63,'North Vista Trail'),(64,'Notch Trail'),(65,'Observation Point'),(66,'Ocean Path'),(67,'Panamint City Ghost Town'),(68,'Penobscot and Sargent Mountain Loop'),(69,'Petroglyph Point Trail'),(70,'Queen\'s Garden'),(71,'Rankin Ridge Fire Tower'),(72,'Redwood Mountain Grove'),(73,'Reef Bay Trail'),(74,'Rim Trail'),(75,'River Trail'),(76,'Riverside Walk'),(77,'Sand Dune Arch Trail'),(78,'Sand Ramp Trail'),(79,'Savage Alpine Trail'),(80,'Seven Pass Route'),(81,'Sliding Sands Trail'),(82,'Slough Creek Trail'),(83,'Snake Bight Trail'),(84,'South Kaibab and Bright Angel Trails'),(85,'Spite Highway Trail'),(86,'Step House Trail'),(87,'Stony Man Trail'),(88,'Tawa Trail'),(89,'Telaquana Route'),(90,'Thunder CreekÐPark Creek Pass'),(91,'Timber CreekÐBaker Creek Loop Trail'),(92,'Upper Geyser Basin Boardwalk'),(93,'Valley Loop Trail'),(94,'Valley of Ten Thousand Smokes'),(95,'Violet City Lantern Tour'),(96,'Weeping Rock'),(97,'West Beach Three-Loop Trail'),(98,'West MountainÐMountain Top Trails'),(99,'West Thumb Geyser Basin Boardwalk'),(100,'Window Trail');
/*!40000 ALTER TABLE `trail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 20:38:08
