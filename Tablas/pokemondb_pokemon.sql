-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemondb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `numero_pokedex` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  PRIMARY KEY (`numero_pokedex`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur',6.9,0.7),(2,'Ivysaur',13,1),(3,'Venasaur',100,2),(4,'Charmander',8.5,0.6),(5,'Charmeleon',19,1.1),(6,'Charizard',90.5,1.7),(7,'Squirtle',9,0.5),(8,'Wartortle',22.5,1),(9,'Blastoise',85.5,1.6),(10,'Caperpie',2.9,0.3),(11,'Metapod',9.9,0.7),(12,'Butterfree',32,1.1),(13,'Weedle',3.2,0.3),(14,'Kakuna',10,0.6),(15,'Beedrill',29.5,1),(16,'Pidgey',1.8,0.3),(17,'Pidgeotto',30,1.1),(18,'Pidgeot',39.5,1.5),(19,'Rattata',3.5,0.3),(20,'Raticate',18.5,0.7),(21,'Spearow',2,0.3),(22,'Fearow',38,1.2),(23,'Ekans',6.9,2),(24,'Arbok',65,3.5),(25,'Pikachu',6,0.4),(26,'Raichu',30,0.8),(27,'Sandshrew',12,0.6),(28,'Sandslash',29.5,1),(29,'Nidoran♀',7,0.4),(30,'Nidorina',20,0.8),(31,'Nidoqueen',60,1.3),(32,'Nidoran♂',9,0.5),(33,'Nidorino',19.5,0.9),(34,'Nidoking',62,1.4),(35,'Clefairy',7.5,0.6),(36,'Clefable',40,1.3),(37,'Vulpix',9.9,0.6),(38,'Ninetales',19.9,1.1),(39,'Jigglypuff',5.5,0.5),(40,'Wigglytuff',12,1),(41,'Zubat',7.5,0.8),(42,'Golbat',55,1.6),(43,'Oddish',5.4,0.5),(44,'Gloom',8.6,0.8),(45,'Vileplume',18.6,1.2),(46,'Paras',5.4,0.3),(47,'Parasect',29.5,1),(48,'Venonat',30,1),(49,'Venomoth',12.5,1.5),(50,'Digglet',0.8,0.2),(51,'Dugtrio',33.3,0.7),(52,'Meowth',4.2,0.4),(53,'Persian',32,1),(54,'Psyduck',19.6,0.8),(55,'Golduck',76.6,1.7),(56,'Mankey',28,0.5),(57,'Primeape',32,1),(58,'Growlithe',19,0.7),(59,'Arcanine',155,1.9),(60,'Poliwag',12.4,0.6),(61,'Poliwhirl',20,1),(62,'Poliwrath',54,1.3),(63,'Abra',19.5,0.9),(64,'Kadabra',56.5,1.3),(65,'Alakazam',48,1.5),(66,'Machop',19.5,0.8),(67,'Mackoke',70.5,1.5),(68,'Machamp',130,1.6),(69,'Bellsprout',4,0.7),(70,'Weepinbell',6.4,1),(71,'Victreebel',15.5,1.7),(72,'Tentacool',45.5,0.9),(73,'Tentacruel',55,1.6),(74,'Geodude',20,0.4),(75,'Graveler',105,1),(76,'Golem',300,1.4),(77,'Ponyta',30,1),(78,'Rapidash',95,1.7),(79,'Slowpoke',36,1.2),(80,'Slowbro',78.5,1.6),(81,'Magnemite',6,0.3),(82,'Magneton',60,1),(83,'Farfetch\'d',15,0.8),(84,'Doduo',39.2,1.4),(85,'Dodrio',85.2,1.8),(86,'Seel',90,1.1),(87,'Dewgong',120,1.7),(88,'Grimer',30,0.9),(89,'Muk',30,1.2),(90,'Shellder',4,0.3),(91,'Cloyster',132.5,1.5),(92,'Gastly',0.1,1.3),(93,'Haunter',0.1,1.6),(94,'Gengar',40.5,1.5),(95,'Onix',210,8.8),(96,'Drowzee',32.4,1),(97,'Hypno',75.6,1.6),(98,'Krabby',6.5,0.4),(99,'Kingler',60,1.3),(100,'Voltorb',10.4,0.5),(101,'Electrode',66.6,1.2),(102,'Exeggcute',2.5,0.4),(103,'Exeggutor',120,2),(104,'Cubone',6.5,0.4),(105,'Marowak',45,1),(106,'Hitmonlee',49.8,1.5),(107,'Hitmonchan',50.2,1.4),(108,'Lickitung',65,1.2),(109,'Koffing',1,0.6),(110,'Weezing',9.5,1.2),(111,'Rhyhorn',115,1),(112,'Rhydon',120,1.9),(113,'Chansey',34.6,1.1),(114,'Tangela',35,1),(115,'Kangaskhan',80,2.2),(116,'Horsea',8,0.4),(117,'Seadra',25,1.2),(118,'Goldeen',15,0.6),(119,'Seaking',39,1.3),(120,'Staryu',34.5,0.8),(121,'Starmie',80,1.1),(122,'Mr. Mime',54.5,1.3),(123,'Scyther',56,1.5),(124,'Jynx',40.6,1.4),(125,'Electabuzz',30,1.1),(126,'Magmar',44.5,1.3),(127,'Pinsir',55,1.5),(128,'Tauros',88.4,1.4),(129,'Magikarp',10,0.9),(130,'Gyarados',235,6.5),(131,'Lapras',220,2.5),(132,'Ditto',4,0.3),(133,'Eevee',6.5,0.3),(134,'Vaporeon',29,1),(135,'Jolteon',24.5,0.8),(136,'Flareon',25,0.9),(137,'Porygon',36.5,0.8),(138,'Omanyte',7.5,4),(139,'Omastar',35,1),(140,'Kabuto',11.5,0.5),(141,'Kabutops',40.5,1.3),(142,'Aerodactyl',59,1.8),(143,'Snorlax',460,2.1),(144,'Articuno',55.4,1.7),(145,'Zapdos',52.6,1.6),(146,'Moltres',60,2),(147,'Dratini',3.3,1.8),(148,'Dragonair',16.5,4),(149,'Dragonite',210,2.2),(150,'Mewtwo',122,2),(151,'Mew',4,0.4);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:01
