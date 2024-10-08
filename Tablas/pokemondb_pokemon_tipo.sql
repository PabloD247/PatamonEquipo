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
-- Table structure for table `pokemon_tipo`
--

DROP TABLE IF EXISTS `pokemon_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_tipo` (
  `numero_pokedex` int NOT NULL,
  `id_tipo` int NOT NULL,
  PRIMARY KEY (`numero_pokedex`,`id_tipo`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `pokemon_tipo_ibfk_1` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`),
  CONSTRAINT `pokemon_tipo_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_tipo`
--

LOCK TABLES `pokemon_tipo` WRITE;
/*!40000 ALTER TABLE `pokemon_tipo` DISABLE KEYS */;
INSERT INTO `pokemon_tipo` VALUES (7,1),(8,1),(9,1),(54,1),(55,1),(60,1),(61,1),(62,1),(72,1),(73,1),(79,1),(80,1),(86,1),(87,1),(90,1),(91,1),(98,1),(99,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(129,1),(130,1),(131,1),(134,1),(138,1),(139,1),(140,1),(141,1),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(46,2),(47,2),(48,2),(49,2),(123,2),(127,2),(147,3),(148,3),(149,3),(25,4),(26,4),(81,4),(82,4),(100,4),(101,4),(125,4),(135,4),(145,4),(92,5),(93,5),(94,5),(4,6),(5,6),(6,6),(37,6),(38,6),(58,6),(59,6),(77,6),(78,6),(126,6),(136,6),(146,6),(86,7),(87,7),(91,7),(124,7),(131,7),(144,7),(56,8),(57,8),(62,8),(66,8),(67,8),(68,8),(106,8),(107,8),(16,9),(17,9),(18,9),(19,9),(20,9),(21,9),(22,9),(35,9),(36,9),(39,9),(40,9),(52,9),(53,9),(83,9),(84,9),(85,9),(108,9),(113,9),(115,9),(128,9),(132,9),(133,9),(137,9),(143,9),(1,10),(2,10),(3,10),(43,10),(44,10),(45,10),(46,10),(47,10),(69,10),(70,10),(71,10),(102,10),(103,10),(114,10),(63,11),(79,11),(80,11),(96,11),(97,11),(102,11),(103,11),(121,11),(122,11),(124,11),(150,11),(151,11),(64,12),(74,12),(75,12),(76,12),(95,12),(111,12),(112,12),(138,12),(139,12),(140,12),(141,12),(142,12),(27,13),(28,13),(31,13),(34,13),(50,13),(51,13),(65,13),(74,13),(75,13),(76,13),(95,13),(104,13),(105,13),(111,13),(112,13),(1,14),(2,14),(3,14),(13,14),(14,14),(15,14),(23,14),(24,14),(29,14),(30,14),(31,14),(32,14),(33,14),(34,14),(41,14),(42,14),(43,14),(44,14),(45,14),(48,14),(49,14),(69,14),(70,14),(71,14),(72,14),(73,14),(88,14),(89,14),(92,14),(93,14),(94,14),(109,14),(110,14),(6,15),(12,15),(16,15),(17,15),(18,15),(21,15),(22,15),(41,15),(42,15),(83,15),(84,15),(85,15),(123,15),(130,15),(142,15),(144,15),(145,15),(146,15),(149,15);
/*!40000 ALTER TABLE `pokemon_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:02
