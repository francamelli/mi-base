CREATE DATABASE  IF NOT EXISTS `la_base` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `la_base`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: la_base
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `liquidacion_horas`
--

DROP TABLE IF EXISTS `liquidacion_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liquidacion_horas` (
  `liquidacion_mensual` int DEFAULT NULL,
  `proyecto_id` int DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `liquidacion_id` int DEFAULT NULL,
  `mes` date DEFAULT NULL,
  KEY `cliente_id` (`cliente_id`),
  KEY `proyecto_id` (`proyecto_id`),
  KEY `indice_liquidacion_horas_mes` (`mes`),
  CONSTRAINT `liquidacion_horas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  CONSTRAINT `liquidacion_horas_ibfk_2` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`proyecto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidacion_horas`
--

LOCK TABLES `liquidacion_horas` WRITE;
/*!40000 ALTER TABLE `liquidacion_horas` DISABLE KEYS */;
INSERT INTO `liquidacion_horas` VALUES (6,1,1,1,'2022-01-01'),(12,1,1,2,'2022-01-01'),(12,1,1,3,'2022-01-01'),(6,2,2,4,'2022-01-01'),(166,1,1,6,'2022-01-01'),(166,1,1,7,'2022-01-01'),(6,2,2,8,'2022-02-02'),(12,2,2,9,'2022-02-02'),(12,1,1,0,'2022-01-01'),(220,2,2,0,'2022-01-01'),(12,1,1,9,'2022-01-01'),(220,2,2,10,'2022-01-01'),(12,1,1,11,'2022-01-01'),(220,2,2,12,'2022-01-01');
/*!40000 ALTER TABLE `liquidacion_horas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `auto_numerico_liquidacion` BEFORE INSERT ON `liquidacion_horas` FOR EACH ROW begin
 set @numero=0;
 select numero into @numero from siguiente where nombre_tabla='liquidacion_horas' order by numero desc;
 set new.liquidacion_id =@numero;
 update siguiente set numero=numero+1 where nombre_tabla='liquidacion_horas' order by numero desc;
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-22 12:59:35
