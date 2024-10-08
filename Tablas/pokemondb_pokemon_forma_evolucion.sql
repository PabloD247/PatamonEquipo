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
-- Table structure for table `pokemon_forma_evolucion`
--

DROP TABLE IF EXISTS `pokemon_forma_evolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_forma_evolucion` (
  `numero_pokedex` int NOT NULL,
  `id_forma_evolucion` int NOT NULL,
  PRIMARY KEY (`numero_pokedex`,`id_forma_evolucion`),
  KEY `id_forma_evolucion` (`id_forma_evolucion`),
  CONSTRAINT `pokemon_forma_evolucion_ibfk_1` FOREIGN KEY (`numero_pokedex`) REFERENCES `pokemon` (`numero_pokedex`),
  CONSTRAINT `pokemon_forma_evolucion_ibfk_2` FOREIGN KEY (`id_forma_evolucion`) REFERENCES `forma_evolucion` (`id_forma_evolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon_forma_evolucion`
--

LOCK TABLES `pokemon_forma_evolucion` WRITE;
/*!40000 ALTER TABLE `pokemon_forma_evolucion` DISABLE KEYS */;
INSERT INTO `pokemon_forma_evolucion` VALUES (64,1),(67,1),(75,1),(93,1),(25,2),(133,2),(37,3),(58,3),(133,3),(61,4),(90,4),(120,4),(133,4),(10,5),(13,5),(11,6),(14,6),(1,7),(4,7),(7,7),(63,7),(16,8),(29,8),(32,8),(19,9),(21,9),(129,9),(23,10),(27,10),(41,10),(2,11),(116,11),(5,12),(8,12),(17,12),(30,13),(33,13),(35,13),(39,13),(43,14),(69,14),(44,15),(70,15),(102,15),(46,16),(48,17),(84,17),(50,18),(96,18),(52,19),(56,19),(66,19),(98,19),(104,19),(54,20),(118,20),(60,21),(74,21),(92,21),(72,22),(81,22),(100,22),(147,22),(77,23),(138,23),(140,23),(79,24),(86,25),(88,26),(109,27),(111,28),(148,29);
/*!40000 ALTER TABLE `pokemon_forma_evolucion` ENABLE KEYS */;
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
