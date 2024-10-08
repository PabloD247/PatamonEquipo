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
-- Table structure for table `mt`
--

DROP TABLE IF EXISTS `mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt` (
  `id_forma_aprendizaje` int NOT NULL,
  `MT` varchar(5) NOT NULL,
  PRIMARY KEY (`id_forma_aprendizaje`),
  CONSTRAINT `mt_ibfk_1` FOREIGN KEY (`id_forma_aprendizaje`) REFERENCES `forma_aprendizaje` (`id_forma_aprendizaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt`
--

LOCK TABLES `mt` WRITE;
/*!40000 ALTER TABLE `mt` DISABLE KEYS */;
INSERT INTO `mt` VALUES (1,'MT01'),(2,'MT02'),(3,'MT03'),(4,'MT04'),(5,'MT05'),(6,'MT06'),(7,'MT07'),(8,'MT08'),(9,'MT09'),(10,'MT10'),(11,'MT11'),(12,'MT12'),(13,'MT13'),(14,'MT14'),(15,'MT15'),(16,'MT16'),(17,'MT17'),(18,'MT18'),(19,'MT19'),(20,'MT20'),(21,'MT21'),(22,'MT22'),(23,'MT23'),(24,'MT24'),(25,'MT25'),(26,'MT26'),(27,'MT27'),(28,'MT28'),(29,'MT29'),(30,'MT30'),(31,'MT31'),(32,'MT32'),(33,'MT33'),(34,'MT34'),(35,'MT35'),(36,'MT36'),(37,'MT37'),(38,'MT38'),(39,'MT39'),(40,'MT40'),(41,'MT41'),(42,'MT42'),(43,'MT43'),(44,'MT44'),(45,'MT45'),(46,'MT46'),(47,'MT47'),(48,'MT48'),(49,'MT49'),(50,'MT50');
/*!40000 ALTER TABLE `mt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:00
