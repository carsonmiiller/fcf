-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: FiveCourseFeeder
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Birdfeeder`
--

DROP TABLE IF EXISTS `Birdfeeder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Birdfeeder` (
  `Birdfeeder_id` int NOT NULL AUTO_INCREMENT,
  `Birdfeeder_user_id` int NOT NULL,
  `Birdfeeder_settings` enum('on','off','special') DEFAULT NULL,
  PRIMARY KEY (`Birdfeeder_id`),
  KEY `Birdfeeder_user_id` (`Birdfeeder_user_id`),
  CONSTRAINT `Birdfeeder_ibfk_1` FOREIGN KEY (`Birdfeeder_user_id`) REFERENCES `Users` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Birds`
--

DROP TABLE IF EXISTS `Birds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Birds` (
  `Birds_id` int NOT NULL AUTO_INCREMENT,
  `Bird_understood` enum('yes','no') DEFAULT NULL,
  `Bird_name` varchar(45) DEFAULT NULL,
  `Bird_time_seen_id` datetime DEFAULT NULL,
  `Bird_user_id` int NOT NULL,
  `Bird_birdfeeder_id` int NOT NULL,
  PRIMARY KEY (`Birds_id`),
  KEY `Bird_user_id` (`Bird_user_id`),
  KEY `Bird_birdfeeder_id` (`Bird_birdfeeder_id`),
  CONSTRAINT `Birds_ibfk_1` FOREIGN KEY (`Bird_user_id`) REFERENCES `Users` (`User_id`),
  CONSTRAINT `Birds_ibfk_2` FOREIGN KEY (`Bird_birdfeeder_id`) REFERENCES `Birdfeeder` (`Birdfeeder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stats`
--

DROP TABLE IF EXISTS `Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stats` (
  `Stats_id` int NOT NULL AUTO_INCREMENT,
  `Stats_num_birds_seen` int DEFAULT NULL,
  `Stats_num_squirrels_seen` int DEFAULT NULL,
  `Stats_num_birds_identified` int DEFAULT NULL,
  `Stats_num_birds_unidentified` int DEFAULT NULL,
  `Stats_user_id` int NOT NULL,
  PRIMARY KEY (`Stats_id`),
  KEY `Stats_ibfk_1` (`Stats_user_id`),
  CONSTRAINT `Stats_ibfk_1` FOREIGN KEY (`Stats_user_id`) REFERENCES `Users` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `User_id` int NOT NULL AUTO_INCREMENT,
  `User_username` varchar(45) NOT NULL,
  `User_password` varchar(45) NOT NULL,
  `User_first_name` varchar(45) NOT NULL,
  `User_last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-31 17:45:15
