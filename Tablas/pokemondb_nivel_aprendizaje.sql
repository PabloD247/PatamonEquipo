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
-- Table structure for table `nivel_aprendizaje`
--

DROP TABLE IF EXISTS `nivel_aprendizaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel_aprendizaje` (
  `id_forma_aprendizaje` int NOT NULL,
  `nivel` int NOT NULL,
  PRIMARY KEY (`id_forma_aprendizaje`),
  CONSTRAINT `nivel_aprendizaje_ibfk_1` FOREIGN KEY (`id_forma_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_aprendizaje`
--

LOCK TABLES `nivel_aprendizaje` WRITE;
/*!40000 ALTER TABLE `nivel_aprendizaje` DISABLE KEYS */;
INSERT INTO `nivel_aprendizaje` VALUES (56,1),(57,7),(58,13),(59,20),(60,27),(61,34),(62,41),(63,48),(64,22),(65,30),(66,38),(67,46),(68,54),(69,43),(70,55),(71,65),(72,9),(73,15),(74,24),(75,33),(76,42),(77,56),(78,36),(79,8),(80,28),(81,35),(82,31),(83,39),(84,47),(85,52),(86,12),(87,16),(88,17),(89,21),(90,26),(91,32),(92,25),(93,5),(94,19),(95,44),(96,40),(97,49),(98,14),(99,23),(100,29),(101,10),(102,50),(103,37),(104,51),(105,59),(106,18),(107,45),(108,11),(109,53),(110,60),(111,64),(112,58),(113,63),(114,66),(115,70),(116,75),(117,81);
/*!40000 ALTER TABLE `nivel_aprendizaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:04
