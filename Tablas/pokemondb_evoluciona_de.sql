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
-- Table structure for table `evoluciona_de`
--

DROP TABLE IF EXISTS `evoluciona_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evoluciona_de` (
  `pokemon_evolucionado` int NOT NULL,
  `pokemon_origen` int NOT NULL,
  PRIMARY KEY (`pokemon_evolucionado`,`pokemon_origen`),
  KEY `pokemon_origen` (`pokemon_origen`),
  CONSTRAINT `evoluciona_de_ibfk_1` FOREIGN KEY (`pokemon_evolucionado`) REFERENCES `pokemon` (`numero_pokedex`),
  CONSTRAINT `evoluciona_de_ibfk_2` FOREIGN KEY (`pokemon_origen`) REFERENCES `pokemon` (`numero_pokedex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evoluciona_de`
--

LOCK TABLES `evoluciona_de` WRITE;
/*!40000 ALTER TABLE `evoluciona_de` DISABLE KEYS */;
INSERT INTO `evoluciona_de` VALUES (2,1),(3,2),(5,4),(6,5),(5,6),(8,7),(9,8),(11,10),(12,11),(14,13),(15,14),(17,16),(18,17),(20,19),(22,21),(24,23),(26,25),(28,27),(30,29),(31,30),(33,32),(34,33),(36,35),(38,37),(40,39),(42,41),(44,43),(45,44),(47,46),(49,48),(51,50),(53,52),(55,54),(57,56),(59,58),(61,60),(62,61),(64,63),(65,64),(67,66),(68,67),(70,69),(71,70),(73,72),(75,74),(76,75),(78,77),(80,79),(82,81),(85,84),(87,86),(89,88),(91,90),(93,92),(94,93),(97,96),(99,98),(101,100),(103,102),(105,104),(110,109),(112,111),(117,116),(119,118),(121,120),(130,129),(134,133),(135,133),(136,133),(139,138),(141,140),(148,147),(149,148);
/*!40000 ALTER TABLE `evoluciona_de` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:03
