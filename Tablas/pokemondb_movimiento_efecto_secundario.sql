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
-- Table structure for table `movimiento_efecto_secundario`
--

DROP TABLE IF EXISTS `movimiento_efecto_secundario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_efecto_secundario` (
  `id_movimiento` int NOT NULL,
  `id_efecto_secundario` int NOT NULL,
  `probabilidad` double NOT NULL,
  PRIMARY KEY (`id_movimiento`,`id_efecto_secundario`),
  KEY `id_efecto_secundario` (`id_efecto_secundario`),
  CONSTRAINT `movimiento_efecto_secundario_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `movimiento` (`id_movimiento`),
  CONSTRAINT `movimiento_efecto_secundario_ibfk_2` FOREIGN KEY (`id_efecto_secundario`) REFERENCES `efecto_secundario` (`id_efecto_secundario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_efecto_secundario`
--

LOCK TABLES `movimiento_efecto_secundario` WRITE;
/*!40000 ALTER TABLE `movimiento_efecto_secundario` DISABLE KEYS */;
INSERT INTO `movimiento_efecto_secundario` VALUES (3,1,10),(6,1,12.5),(8,1,10),(11,3,100),(14,4,20),(17,5,10),(19,5,10),(20,5,10),(21,5,10),(23,5,30),(26,6,10),(27,3,100),(28,6,10),(29,6,30),(30,6,10),(33,7,10),(34,8,10),(35,8,10),(36,8,10),(40,9,30),(41,9,30),(65,2,12.5),(81,9,30),(82,5,30),(83,2,12.5),(87,9,10),(95,9,10),(98,9,30),(107,3,100),(117,5,20),(117,6,20),(117,7,20),(124,2,12.5),(141,10,10),(142,11,30),(149,12,10),(152,11,10),(155,4,30),(156,4,40),(158,4,30),(167,1,10),(168,10,20);
/*!40000 ALTER TABLE `movimiento_efecto_secundario` ENABLE KEYS */;
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
