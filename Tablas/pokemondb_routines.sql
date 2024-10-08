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
-- Temporary view structure for view `pokemon_evolucion_piedra`
--

DROP TABLE IF EXISTS `pokemon_evolucion_piedra`;
/*!50001 DROP VIEW IF EXISTS `pokemon_evolucion_piedra`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pokemon_evolucion_piedra` AS SELECT 
 1 AS `numero_pokedex`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cantidad_tipo_pokemon`
--

DROP TABLE IF EXISTS `cantidad_tipo_pokemon`;
/*!50001 DROP VIEW IF EXISTS `cantidad_tipo_pokemon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidad_tipo_pokemon` AS SELECT 
 1 AS `tipo`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pokemon_no_evolucionan`
--

DROP TABLE IF EXISTS `pokemon_no_evolucionan`;
/*!50001 DROP VIEW IF EXISTS `pokemon_no_evolucionan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pokemon_no_evolucionan` AS SELECT 
 1 AS `numero_pokedex`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `pokemon_evolucion_piedra`
--

/*!50001 DROP VIEW IF EXISTS `pokemon_evolucion_piedra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pokemon_evolucion_piedra` AS select distinct `p`.`numero_pokedex` AS `numero_pokedex`,`p`.`nombre` AS `nombre` from (((`pokemon` `p` join `pokemon_forma_evolucion` `pfe`) join `forma_evolucion` `fe`) join `tipo_evolucion` `te`) where ((`p`.`numero_pokedex` = `pfe`.`numero_pokedex`) and (`pfe`.`id_forma_evolucion` = `fe`.`id_forma_evolucion`) and (`fe`.`tipo_evolucion` = `te`.`id_tipo_evolucion`) and (lower(`te`.`tipo_evolucion`) = 'piedra')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cantidad_tipo_pokemon`
--

/*!50001 DROP VIEW IF EXISTS `cantidad_tipo_pokemon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidad_tipo_pokemon` AS select `t`.`nombre` AS `tipo`,count(0) AS `cantidad` from ((`pokemon` `p` join `pokemon_tipo` `pt`) join `tipo` `t`) where ((`p`.`numero_pokedex` = `pt`.`numero_pokedex`) and (`pt`.`id_tipo` = `t`.`id_tipo`)) group by `t`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pokemon_no_evolucionan`
--

/*!50001 DROP VIEW IF EXISTS `pokemon_no_evolucionan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pokemon_no_evolucionan` AS select `p`.`numero_pokedex` AS `numero_pokedex`,`p`.`nombre` AS `nombre` from (`pokemon` `p` join `evoluciona_de` `ev`) where ((`p`.`numero_pokedex` = `ev`.`pokemon_evolucionado`) and exists(select `evoluciona_de`.`pokemon_origen` from `evoluciona_de` where (`evoluciona_de`.`pokemon_origen` = `p`.`numero_pokedex`)) is false) union select `p`.`numero_pokedex` AS `numero_pokedex`,`p`.`nombre` AS `nombre` from `pokemon` `p` where exists(select 1 from `evoluciona_de` where ((`evoluciona_de`.`pokemon_origen` = `p`.`numero_pokedex`) or (`evoluciona_de`.`pokemon_evolucionado` = `p`.`numero_pokedex`))) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 17:11:04
