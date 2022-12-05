-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PID` char(10) NOT NULL DEFAULT 'JDDDMMYYYY',
  `FName` varchar(15) NOT NULL DEFAULT 'John',
  `LName` varchar(20) NOT NULL DEFAULT 'Doe',
  `DOB` date DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Room_Num` smallint NOT NULL,
  `Hospital_Address` varchar(30) NOT NULL,
  `DID` char(10) DEFAULT NULL,
  `Ailment_Name` varchar(25) NOT NULL,
  `Intake_Timestamp` timestamp NOT NULL,
  `Discharge_Timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PID`),
  KEY `DID_idx` (`DID`),
  KEY `Hospital_Address_idx` (`Hospital_Address`),
  CONSTRAINT `PATIENT.DID` FOREIGN KEY (`DID`) REFERENCES `doctor` (`DID`),
  CONSTRAINT `PATIENT.Hospital_Address` FOREIGN KEY (`Hospital_Address`) REFERENCES `hospital` (`Hospital_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('BP01302000','Ben','Platt','2000-01-30','904 Ravens Head Rd.',3,'101 Braddock Rd.','DF9041','Allergic Reaction','2022-11-07 20:09:00','0000-00-00 00:00:00'),('EN04251992','Erika','Nelson','1991-04-25','14th Avenue',25,'101 Braddock Rd.','DF9041','Migraine','2022-10-28 20:28:00','2022-10-28 20:35:54'),('JB04281980','Johnny','Bravo','1980-04-28','78 North Street',23,'101 Braddock Rd.','JB0271','Cancer','2022-11-21 21:24:00','0000-00-00 00:00:00'),('KB07201962','Kristina','Bergeson','1962-07-20','3272 Rosewood Lane',45,'101 Braddock Rd.','AS6312','Breast Cancer','2022-10-16 02:34:00','0000-00-00 00:00:00'),('MC03141996','Michael','Crawford','1996-03-14','246 Poplar Street',21,'101 Braddock Rd.','DF9041','Allergic Reaction','2022-09-27 17:56:00','2022-09-28 11:35:00'),('SC11211943','Sandra','Chung','1943-11-21','1981 Rebecca Street',11,'101 Braddock Rd.','KW2437','Hip Replacement','2022-10-03 10:30:00','2022-10-06 12:11:00');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 15:33:10
