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
-- Table structure for table `rendicion_horas`
--

DROP TABLE IF EXISTS `rendicion_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rendicion_horas` (
  `rendicion_id` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int DEFAULT NULL,
  `rol` varchar(30) DEFAULT NULL,
  `id_proyecto` int DEFAULT NULL,
  `cantidad_horas` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`rendicion_id`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `rendicion_horas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`empleado_id`),
  CONSTRAINT `rendicion_horas_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`proyecto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rendicion_horas`
--

LOCK TABLES `rendicion_horas` WRITE;
/*!40000 ALTER TABLE `rendicion_horas` DISABLE KEYS */;
INSERT INTO `rendicion_horas` VALUES (2,1,'programador',1,6,'2022-01-01'),(3,2,'programador',1,6,'2022-01-01'),(4,4,'programador',2,6,'2022-01-01'),(5,4,'programador',2,4,'2022-01-02'),(6,4,'programador',2,4,'2022-01-02'),(7,4,'programador',2,4,'2022-01-02'),(8,4,'programador',2,4,'2022-01-02'),(9,4,'programador',2,4,'2022-01-02'),(10,4,'programador',2,4,'2022-01-02'),(11,4,'programador',2,4,'2022-01-02'),(12,4,'programador',2,4,'2022-01-02'),(13,4,'programador',2,4,'2022-01-02'),(14,4,'programador',2,4,'2022-01-02'),(15,4,'programador',2,4,'2022-01-02'),(16,4,'programador',2,4,'2022-01-02'),(17,4,'programador',2,4,'2022-01-02'),(18,4,'programador',2,4,'2022-01-02'),(19,4,'programador',2,4,'2022-01-02'),(20,4,'programador',2,4,'2022-01-02'),(21,4,'programador',2,4,'2022-01-02'),(22,4,'programador',2,4,'2022-01-02'),(23,4,'programador',2,4,'2022-01-02'),(24,4,'programador',2,4,'2022-01-02'),(25,4,'programador',2,4,'2022-01-02'),(26,4,'programador',2,4,'2022-01-02'),(27,4,'programador',2,4,'2022-01-02'),(28,4,'programador',2,4,'2022-01-02'),(29,4,'programador',2,4,'2022-01-02'),(30,4,'programador',2,4,'2022-01-02'),(31,4,'programador',2,4,'2022-01-02'),(32,4,'programador',2,4,'2022-01-02'),(33,4,'programador',2,4,'2022-01-02'),(34,4,'programador',2,4,'2022-01-02'),(35,4,'programador',2,4,'2022-01-02'),(36,4,'programador',2,4,'2022-01-02'),(37,4,'programador',2,4,'2022-01-02'),(38,4,'programador',2,4,'2022-01-02'),(39,4,'programador',2,4,'2022-01-02'),(40,4,'programador',2,4,'2022-01-02'),(41,4,'programador',2,4,'2022-01-02'),(42,1,'programador',2,6,'2022-02-02');
/*!40000 ALTER TABLE `rendicion_horas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 20:46:14
