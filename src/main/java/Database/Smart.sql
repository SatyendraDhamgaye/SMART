-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: smart
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `coursename` varchar(30) DEFAULT NULL,
  `coursecode` varchar(10) DEFAULT NULL,
  `coursedetails` varchar(50) DEFAULT NULL,
  `startfrom` varchar(30) DEFAULT NULL,
  `coursetimelength` varchar(30) DEFAULT NULL,
  `courseprice` varchar(30) DEFAULT NULL,
  `maximumstudents` varchar(30) DEFAULT NULL,
  `coursephoto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('demo','1000','demo','demo','demo','10','10','h'),('demo1','1000','demo1','demo1','demo1','1000','1000','h'),('demo','1000','','demo','demo1','10','1000','h');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `departmentname` varchar(30) DEFAULT NULL,
  `headofdepartment` varchar(30) DEFAULT NULL,
  `departmentstartdate` varchar(30) DEFAULT NULL,
  `studentcapacity` varchar(30) DEFAULT NULL,
  `departmentdetails` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('demo','demo','12-10-12','10','demo'),('demo','demo','12-10-12','10','demo');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libarary`
--

DROP TABLE IF EXISTS `libarary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `libarary` (
  `title` varchar(30) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `authername` varchar(30) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `Assettype` varchar(30) DEFAULT NULL,
  `Purchasedate` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `assetsdetails` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libarary`
--

LOCK TABLES `libarary` WRITE;
/*!40000 ALTER TABLE `libarary` DISABLE KEYS */;
INSERT INTO `libarary` VALUES ('demo','demo','demo','demo','demo','demo','demo','10','demo','demo'),('demo','demo','demo','demo','demo','demo','1','10','demo','demo');
/*!40000 ALTER TABLE `libarary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `joiningdate` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `cpassword` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `mobileno` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `photo` varchar(30) DEFAULT NULL,
  `education` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('demo1','demo1','demo1@gmail.com','110505','demo1','demo1','demo1','demo1','Female','1234567890','10509','demo1','h','demo1');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `enrollno` varchar(30) DEFAULT NULL,
  `addmissionno` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `regisdate` varchar(30) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `sem` varchar(30) DEFAULT NULL,
  `qualification` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `mobileno` varchar(30) DEFAULT NULL,
  `parentname` varchar(30) DEFAULT NULL,
  `parentphno` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `bloodgroup` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `photo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('demo','demo','10','10','demo@gmail.com','10','demo','1','demo','Female','1234567890','demo','10','010509','demo','demo','h');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 14:04:41
