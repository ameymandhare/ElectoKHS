CREATE DATABASE  IF NOT EXISTS `votinglivedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `votinglivedb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: votinglivedb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tacademicyear`
--

DROP TABLE IF EXISTS `tacademicyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tacademicyear` (
  `Acy_Id` int NOT NULL AUTO_INCREMENT,
  `Acy_AcademicYear` varchar(30) DEFAULT NULL,
  `Acy_StartDate` datetime(6) NOT NULL,
  `Acy_EndDate` datetime(6) NOT NULL,
  `Acy_IsActive` tinyint(1) NOT NULL,
  `Acy_IsDeleted` tinyint(1) DEFAULT '0',
  `Acy_DeletedDate` datetime(6) DEFAULT NULL,
  `Acy_DeletedBy` int DEFAULT NULL,
  `Acy_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Acy_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Acy_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacademicyear`
--

LOCK TABLES `tacademicyear` WRITE;
/*!40000 ALTER TABLE `tacademicyear` DISABLE KEYS */;
INSERT INTO `tacademicyear` VALUES (1,'A.Y. 2018-2019','2018-06-01 00:00:00.000000','2019-04-01 00:00:00.000000',1,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tacademicyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tclass`
--

DROP TABLE IF EXISTS `tclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tclass` (
  `Cls_Id` int NOT NULL AUTO_INCREMENT,
  `Cls_Name` varchar(25) DEFAULT NULL,
  `Cls_DisplayName` varchar(25) DEFAULT NULL,
  `Cls_IsDeleted` tinyint(1) DEFAULT '0',
  `Cls_DeletedDate` datetime(6) DEFAULT NULL,
  `Cls_DeletedBy` int DEFAULT NULL,
  `Cls_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Cls_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Cls_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclass`
--

LOCK TABLES `tclass` WRITE;
/*!40000 ALTER TABLE `tclass` DISABLE KEYS */;
INSERT INTO `tclass` VALUES (1,'3','III',0,NULL,NULL,NULL,NULL),(2,'4','IV',0,NULL,NULL,NULL,NULL),(3,'5','V',0,NULL,NULL,NULL,NULL),(4,'6','VI',0,NULL,NULL,NULL,NULL),(5,'7','VII',0,NULL,NULL,NULL,NULL),(6,'8','VIII',0,NULL,NULL,NULL,NULL),(7,'9','IX',0,NULL,NULL,NULL,NULL),(8,'10','X',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tclasssection`
--

DROP TABLE IF EXISTS `tclasssection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tclasssection` (
  `Csc_Id` int NOT NULL AUTO_INCREMENT,
  `Csc_ClassId` int DEFAULT NULL,
  `Csc_SectionId` int DEFAULT NULL,
  `Csc_DisplayName` varchar(30) DEFAULT NULL,
  `Csc_IsDeleted` tinyint(1) DEFAULT '0',
  `Csc_DeletedDate` datetime(6) DEFAULT NULL,
  `Csc_DeletedBy` int DEFAULT NULL,
  `Csc_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Csc_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Csc_Id`),
  KEY `FK__tClassSec__Csc_C__22AA2996` (`Csc_ClassId`),
  KEY `FK__tClassSec__Csc_S__239E4DCF` (`Csc_SectionId`),
  CONSTRAINT `FK__tClassSec__Csc_C__22AA2996` FOREIGN KEY (`Csc_ClassId`) REFERENCES `tclass` (`Cls_Id`),
  CONSTRAINT `FK__tClassSec__Csc_S__239E4DCF` FOREIGN KEY (`Csc_SectionId`) REFERENCES `tsection` (`Sec_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclasssection`
--

LOCK TABLES `tclasssection` WRITE;
/*!40000 ALTER TABLE `tclasssection` DISABLE KEYS */;
INSERT INTO `tclasssection` VALUES (1,1,1,'III-A',0,NULL,NULL,NULL,NULL),(2,1,2,'III-B',0,NULL,NULL,NULL,NULL),(3,1,3,'III-C',0,NULL,NULL,NULL,NULL),(4,2,1,'IV-A',0,NULL,NULL,NULL,NULL),(5,2,2,'IV-B',0,NULL,NULL,NULL,NULL),(6,2,3,'IV-C',0,NULL,NULL,NULL,NULL),(7,3,1,'V-A',0,NULL,NULL,NULL,NULL),(8,3,2,'V-B',0,NULL,NULL,NULL,NULL),(9,3,3,'V-C',0,NULL,NULL,NULL,NULL),(10,4,1,'VI-A',0,NULL,NULL,NULL,NULL),(11,4,2,'VI-B',0,NULL,NULL,NULL,NULL),(12,4,3,'VI-C',0,NULL,NULL,NULL,NULL),(13,5,1,'VII-A',0,NULL,NULL,NULL,NULL),(14,5,2,'VII-B',0,NULL,NULL,NULL,NULL),(15,5,3,'VII-C',0,NULL,NULL,NULL,NULL),(16,6,1,'VIII-A',0,NULL,NULL,NULL,NULL),(17,6,2,'VIII-B',0,NULL,NULL,NULL,NULL),(18,6,3,'VIII-C',0,NULL,NULL,NULL,NULL),(19,7,1,'IX-A',0,NULL,NULL,NULL,NULL),(20,7,2,'IX-B',0,NULL,NULL,NULL,NULL),(21,7,3,'IX-C',0,NULL,NULL,NULL,NULL),(22,8,1,'X-A',0,NULL,NULL,NULL,NULL),(23,8,2,'X-B',0,NULL,NULL,NULL,NULL),(24,8,3,'X-C',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tclasssection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcolumncodes`
--

DROP TABLE IF EXISTS `tcolumncodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcolumncodes` (
  `cc_id` int NOT NULL,
  `cc_code` varchar(5) DEFAULT NULL,
  UNIQUE KEY `UQ__tColumnC__D6777C4DA58BC047` (`cc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcolumncodes`
--

LOCK TABLES `tcolumncodes` WRITE;
/*!40000 ALTER TABLE `tcolumncodes` DISABLE KEYS */;
INSERT INTO `tcolumncodes` VALUES (1,'Ews'),(2,'Ems'),(3,'Rol'),(4,'Cls'),(5,'Sec'),(6,'Csc'),(7,'Hus'),(8,'Add'),(9,'Gen'),(10,'stud'),(11,'Stf');
/*!40000 ALTER TABLE `tcolumncodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tewsmessage`
--

DROP TABLE IF EXISTS `tewsmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tewsmessage` (
  `Ews_Id` int NOT NULL,
  `Ews_ReportId` varchar(30) DEFAULT NULL,
  `Ews_SeverityId` int DEFAULT NULL,
  `Ews_Description` longtext,
  `Ews_LoggedDate` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tewsmessage`
--

LOCK TABLES `tewsmessage` WRITE;
/*!40000 ALTER TABLE `tewsmessage` DISABLE KEYS */;
INSERT INTO `tewsmessage` VALUES (1,NULL,1,'System.IndexOutOfRangeException: Index was outside the bounds of the array.\r\n   at System.Data.SqlClient.SqlDataReader.CheckDataIsReady(Int32 columnIndex, Boolean allowPartiallyReadColumn, Boolean permitAsync, String methodName)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadColumn(Int32 i, Boolean setTimeout, Boolean allowPartiallyReadColumn)\r\n   at System.Data.SqlClient.SqlDataReader.GetString(Int32 i)\r\n   at VoatingSystem.Business.Authentication.CheckStudentExist(String UserName, String Password) in e:\\DotNet\\Repository\\VoatingSystem.Business\\Authentication.cs:line 135','2015-06-22 01:54:15.587000'),(2,NULL,1,'System.IndexOutOfRangeException: Index was outside the bounds of the array.\r\n   at System.Data.SqlClient.SqlDataReader.CheckDataIsReady(Int32 columnIndex, Boolean allowPartiallyReadColumn, Boolean permitAsync, String methodName)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadColumn(Int32 i, Boolean setTimeout, Boolean allowPartiallyReadColumn)\r\n   at System.Data.SqlClient.SqlDataReader.GetString(Int32 i)\r\n   at VoatingSystem.Business.Authentication.CheckStudentExist(String UserName, String Password) in e:\\DotNet\\Repository\\VoatingSystem.Business\\Authentication.cs:line 135','2015-06-22 01:54:53.443000'),(0,NULL,1,'System.Threading.ThreadAbortException: Thread was being aborted.\r\n   at System.Threading.Thread.AbortInternal()\r\n   at System.Threading.Thread.Abort(Object stateInfo)\r\n   at System.Web.HttpResponse.AbortCurrentThread()\r\n   at System.Web.HttpResponse.End()\r\n   at System.Web.HttpResponse.Redirect(String url, Boolean endResponse, Boolean permanent)\r\n   at System.Web.HttpResponse.Redirect(String url, Boolean endResponse)\r\n   at ElectoSystem.Reports.Login.btn_LogIn_Click(Object sender, EventArgs e) in D:\\ELECTO\\ElectoKHS\\Code\\ElectoSystem\\Authenticate\\Login.aspx.cs:line 33','2023-06-12 15:37:59.000000'),(0,NULL,1,'System.Threading.ThreadAbortException: Thread was being aborted.\r\n   at System.Threading.Thread.AbortInternal()\r\n   at System.Threading.Thread.Abort(Object stateInfo)\r\n   at System.Web.HttpResponse.AbortCurrentThread()\r\n   at System.Web.HttpResponse.End()\r\n   at System.Web.HttpResponse.Redirect(String url, Boolean endResponse, Boolean permanent)\r\n   at System.Web.HttpResponse.Redirect(String url, Boolean endResponse)\r\n   at ElectoSystem.Reports.Login.btn_LogIn_Click(Object sender, EventArgs e) in D:\\ELECTO\\ElectoKHS\\Code\\ElectoSystem\\Authenticate\\Login.aspx.cs:line 46','2023-06-12 16:12:23.000000');
/*!40000 ALTER TABLE `tewsmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tewsmessageseverity`
--

DROP TABLE IF EXISTS `tewsmessageseverity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tewsmessageseverity` (
  `Ems_SeverityId` int NOT NULL,
  `Ems_Severity` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tewsmessageseverity`
--

LOCK TABLES `tewsmessageseverity` WRITE;
/*!40000 ALTER TABLE `tewsmessageseverity` DISABLE KEYS */;
INSERT INTO `tewsmessageseverity` VALUES (1,'Error'),(2,'Warning'),(3,'Information'),(4,'Other');
/*!40000 ALTER TABLE `tewsmessageseverity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tgender`
--

DROP TABLE IF EXISTS `tgender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tgender` (
  `Gen_Id` int NOT NULL AUTO_INCREMENT,
  `Gen_Code` varchar(1) DEFAULT NULL,
  `Gen_Text` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Gen_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgender`
--

LOCK TABLES `tgender` WRITE;
/*!40000 ALTER TABLE `tgender` DISABLE KEYS */;
INSERT INTO `tgender` VALUES (1,'M','Male'),(2,'F','Female'),(3,'B','Both');
/*!40000 ALTER TABLE `tgender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thousedesignation`
--

DROP TABLE IF EXISTS `thousedesignation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thousedesignation` (
  `Hsd_Id` int NOT NULL AUTO_INCREMENT,
  `Hsd_HouseId` int DEFAULT NULL,
  `Hsd_Name` varchar(30) DEFAULT NULL,
  `Hsd_Description` varchar(200) DEFAULT NULL,
  `Hsd_DesCode` varchar(5) DEFAULT NULL,
  `Hsd_Gender` int DEFAULT NULL,
  `Hsd_IsDeleted` tinyint(1) DEFAULT '0',
  `Hsd_DeletedDate` datetime(6) DEFAULT NULL,
  `Hsd_DeletedBy` int DEFAULT NULL,
  `Hsd_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hsd_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Hsd_Id`),
  KEY `FK__tHouseDes__Hsd_H__2A4B4B5E` (`Hsd_HouseId`),
  KEY `FK__tHouseDes__Hsd_G__2B3F6F97` (`Hsd_Gender`),
  CONSTRAINT `FK__tHouseDes__Hsd_G__2B3F6F97` FOREIGN KEY (`Hsd_Gender`) REFERENCES `tgender` (`Gen_Id`),
  CONSTRAINT `FK__tHouseDes__Hsd_H__2A4B4B5E` FOREIGN KEY (`Hsd_HouseId`) REFERENCES `thouses` (`Hus_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thousedesignation`
--

LOCK TABLES `thousedesignation` WRITE;
/*!40000 ALTER TABLE `thousedesignation` DISABLE KEYS */;
INSERT INTO `thousedesignation` VALUES (1,1,'Prefect','Prefect','PR',3,0,NULL,NULL,NULL,1),(2,1,'Vice Prefect','Vice Prefect','VP',3,0,NULL,NULL,NULL,1),(3,1,'Junior Prefect','Junior Prefect','JP',3,0,NULL,NULL,NULL,NULL),(4,2,'Prefect','Prefect','PR',3,0,NULL,NULL,NULL,NULL),(5,2,'Vice Prefect','Vice Prefect','VP',3,0,NULL,NULL,NULL,1),(6,2,'Junior Prefect','Junior Prefect','JP',3,0,NULL,NULL,NULL,NULL),(7,3,'Prefect','Prefect','PR',3,0,NULL,NULL,NULL,NULL),(8,3,'Vice Prefect','Vice Prefect','VP',3,0,NULL,NULL,NULL,1),(9,3,'Junior Prefect','Junior Prefect','JP',3,0,NULL,NULL,NULL,NULL),(10,4,'Prefect','Prefect','PR',3,0,NULL,NULL,NULL,NULL),(11,4,'Vice Prefect','Vice Prefect','VP',3,0,NULL,NULL,NULL,1),(12,4,'Junior Prefect','Junior Prefect','JP',3,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `thousedesignation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thouseelection`
--

DROP TABLE IF EXISTS `thouseelection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thouseelection` (
  `Hel_ElectionId` int NOT NULL AUTO_INCREMENT,
  `Hel_StartDate` datetime NOT NULL,
  `Hel_EndDate` datetime NOT NULL,
  `Hel_Description` longtext,
  PRIMARY KEY (`Hel_ElectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Hold information about scheduled House Elections';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thouseelection`
--

LOCK TABLES `thouseelection` WRITE;
/*!40000 ALTER TABLE `thouseelection` DISABLE KEYS */;
INSERT INTO `thouseelection` VALUES (1,'2019-06-21 00:00:00','2019-06-21 23:59:00','Election 2019-20'),(2,'2023-06-14 00:00:00','2023-06-17 00:00:00','Election 2023-24');
/*!40000 ALTER TABLE `thouseelection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thousenomination`
--

DROP TABLE IF EXISTS `thousenomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thousenomination` (
  `Hsn_Id` int NOT NULL AUTO_INCREMENT,
  `Hsn_HouseId` int DEFAULT NULL,
  `Hsn_HouseDesignationId` int DEFAULT NULL,
  `Hsn_ClassSectionId` int DEFAULT NULL,
  `Hsn_studKey` varchar(12) DEFAULT NULL,
  `Hsn_VoteCount` int DEFAULT '0',
  `Hsn_Photo` longtext,
  `Hsn_AboutNominee` longtext,
  `Hsn_IsDeleted` tinyint(1) DEFAULT '0',
  `Hsn_DeletedDate` datetime(6) DEFAULT NULL,
  `Hsn_DeletedBy` int DEFAULT NULL,
  `Hsn_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hsn_LastUpdatedBy` int DEFAULT NULL,
  `Hsn_HouseElectionId` int NOT NULL,
  PRIMARY KEY (`Hsn_Id`),
  UNIQUE KEY `Hsn_studKey_UNIQUE` (`Hsn_studKey`),
  KEY `FK__tHouseNom__Hsn_H__45F365D3` (`Hsn_HouseId`),
  KEY `FK__tHouseNom__Hsn_H__46E78A0C` (`Hsn_HouseDesignationId`),
  KEY `FK__tHouseNom__Hsn_C__47DBAE45` (`Hsn_ClassSectionId`),
  KEY `FK__tHouseNom__Hsn_s__48CFD27E` (`Hsn_studKey`),
  KEY `FK_ElectionId_tHouseNom_Hsn_ElectionId_idx` (`Hsn_HouseElectionId`),
  CONSTRAINT `FK__tHouseNom__Hsn_C__47DBAE45` FOREIGN KEY (`Hsn_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`),
  CONSTRAINT `FK__tHouseNom__Hsn_H__45F365D3` FOREIGN KEY (`Hsn_HouseId`) REFERENCES `thouses` (`Hus_Id`),
  CONSTRAINT `FK__tHouseNom__Hsn_H__46E78A0C` FOREIGN KEY (`Hsn_HouseDesignationId`) REFERENCES `thousedesignation` (`Hsd_Id`),
  CONSTRAINT `FK__tHouseNom__Hsn_s__48CFD27E` FOREIGN KEY (`Hsn_studKey`) REFERENCES `tstudent` (`stud_Key`),
  CONSTRAINT `FK_ElectionId_tHouseNom_Hsn_ElectionId` FOREIGN KEY (`Hsn_HouseElectionId`) REFERENCES `thouseelection` (`Hel_ElectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thousenomination`
--

LOCK TABLES `thousenomination` WRITE;
/*!40000 ALTER TABLE `thousenomination` DISABLE KEYS */;
/*!40000 ALTER TABLE `thousenomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thouses`
--

DROP TABLE IF EXISTS `thouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thouses` (
  `Hus_Id` int NOT NULL AUTO_INCREMENT,
  `Hus_Name` varchar(30) DEFAULT NULL,
  `Hus_Description` varchar(200) DEFAULT NULL,
  `Hus_HouseCode` varchar(3) DEFAULT NULL,
  `Hus_IsDeleted` tinyint(1) DEFAULT '0',
  `Hus_DeletedDate` datetime(6) DEFAULT NULL,
  `Hus_DeletedBy` int DEFAULT NULL,
  `Hus_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hus_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Hus_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thouses`
--

LOCK TABLES `thouses` WRITE;
/*!40000 ALTER TABLE `thouses` DISABLE KEYS */;
INSERT INTO `thouses` VALUES (1,'Agni','Agni House','AH',0,NULL,NULL,NULL,1),(2,'Varun','Varun House','VH',0,NULL,NULL,NULL,NULL),(3,'Prithvi','Prithvi House','PH',0,NULL,NULL,NULL,NULL),(4,'Surya','Surya House','SH',0,NULL,NULL,NULL,NULL),(5,'testB','testc','',1,NULL,1,NULL,1),(6,'Test','Test','TH',1,NULL,1,NULL,NULL),(7,'testa a','test b','TH',1,NULL,1,NULL,NULL),(8,'test','this is a test','TH',1,NULL,1,NULL,NULL),(9,'Test','Test','TH',1,NULL,1,NULL,NULL),(10,'TestA','TestB','TH',1,NULL,1,NULL,NULL),(11,'  ','  ',' H',1,NULL,1,NULL,NULL),(12,'asdsad','asdwdd','H',1,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `thouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troles`
--

DROP TABLE IF EXISTS `troles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `troles` (
  `Rol_RoleId` int NOT NULL AUTO_INCREMENT,
  `Rol_CanAdd` tinyint(1) DEFAULT NULL,
  `Rol_CanEdit` tinyint(1) DEFAULT NULL,
  `Rol_CanDelete` tinyint(1) DEFAULT NULL,
  `Rol_CanView` tinyint(1) DEFAULT '1',
  `Rol_IsDeleted` tinyint(1) DEFAULT '0',
  `Rol_DeletedDate` datetime(6) DEFAULT NULL,
  `Rol_DeletedBy` int DEFAULT NULL,
  `Rol_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Rol_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Rol_RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troles`
--

LOCK TABLES `troles` WRITE;
/*!40000 ALTER TABLE `troles` DISABLE KEYS */;
INSERT INTO `troles` VALUES (1,1,1,1,1,0,NULL,NULL,NULL,NULL),(2,0,0,0,1,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `troles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsection`
--

DROP TABLE IF EXISTS `tsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsection` (
  `Sec_Id` int NOT NULL AUTO_INCREMENT,
  `Sec_Name` varchar(25) DEFAULT NULL,
  `Sec_DisplayName` varchar(25) DEFAULT NULL,
  `Sec_IsDeleted` tinyint(1) DEFAULT '0',
  `Sec_DeletedDate` datetime(6) DEFAULT NULL,
  `Sec_DeletedBy` int DEFAULT NULL,
  `Sec_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Sec_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Sec_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsection`
--

LOCK TABLES `tsection` WRITE;
/*!40000 ALTER TABLE `tsection` DISABLE KEYS */;
INSERT INTO `tsection` VALUES (1,'A','Division A',0,NULL,NULL,NULL,NULL),(2,'B','Division B',0,NULL,NULL,NULL,NULL),(3,'C','Division C',0,NULL,NULL,NULL,NULL),(4,'C','Division C',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsenatedesignation`
--

DROP TABLE IF EXISTS `tsenatedesignation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsenatedesignation` (
  `Sen_Id` int NOT NULL AUTO_INCREMENT,
  `Sen_Name` varchar(30) DEFAULT NULL,
  `Sen_Description` varchar(200) DEFAULT NULL,
  `Sen_DesCode` varchar(5) DEFAULT NULL,
  `Sen_Gender` int DEFAULT NULL,
  `Sen_IsDeleted` tinyint(1) DEFAULT '0',
  `Sen_DeletedDate` datetime(6) DEFAULT NULL,
  `Sen_DeletedBy` int DEFAULT NULL,
  `Sen_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Sen_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Sen_Id`),
  KEY `FK__tSenateDe__Sen_G__2F10007B` (`Sen_Gender`),
  CONSTRAINT `FK__tSenateDe__Sen_G__2F10007B` FOREIGN KEY (`Sen_Gender`) REFERENCES `tgender` (`Gen_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsenatedesignation`
--

LOCK TABLES `tsenatedesignation` WRITE;
/*!40000 ALTER TABLE `tsenatedesignation` DISABLE KEYS */;
INSERT INTO `tsenatedesignation` VALUES (1,'Head Boy','Head Boy','HB',2,0,NULL,NULL,NULL,1),(2,'Head Girl','Head Girl','HG',2,0,NULL,NULL,NULL,NULL),(3,'Games Captain','Games Captain','GC',3,0,NULL,NULL,NULL,NULL),(4,'Vice Games Captain','Vice Games Captain','VGC',3,0,NULL,1,NULL,1);
/*!40000 ALTER TABLE `tsenatedesignation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsenateelection`
--

DROP TABLE IF EXISTS `tsenateelection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsenateelection` (
  `Sel_ElectionId` int NOT NULL AUTO_INCREMENT,
  `Sel_StartDate` datetime NOT NULL,
  `Sel_EndDate` datetime NOT NULL,
  `Sel_Description` longtext,
  PRIMARY KEY (`Sel_ElectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsenateelection`
--

LOCK TABLES `tsenateelection` WRITE;
/*!40000 ALTER TABLE `tsenateelection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsenateelection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsenatenomination`
--

DROP TABLE IF EXISTS `tsenatenomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsenatenomination` (
  `Snn_Id` int NOT NULL AUTO_INCREMENT,
  `Snn_SenateDesignationId` int DEFAULT NULL,
  `Snn_ClassSectionId` int DEFAULT NULL,
  `Snn_studKey` varchar(12) DEFAULT NULL,
  `Snn_VoteCount` int DEFAULT '0',
  `Snn_Photo` longtext,
  `Snn_AboutNominee` longtext,
  `Snn_IsDeleted` tinyint(1) DEFAULT '0',
  `Snn_DeletedDate` datetime(6) DEFAULT NULL,
  `Snn_DeletedBy` int DEFAULT NULL,
  `Snn_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Snn_LastUpdatedBy` int DEFAULT NULL,
  `Snn_SenateElectionId` int NOT NULL,
  PRIMARY KEY (`Snn_Id`),
  UNIQUE KEY `Snn_studKey_UNIQUE` (`Snn_studKey`),
  KEY `FK__tSenateNo__Snn_S__3A81B327` (`Snn_SenateDesignationId`),
  KEY `FK__tSenateNo__Snn_C__3B75D760` (`Snn_ClassSectionId`),
  KEY `FK__tSenateNo__Snn_s__3C69FB99` (`Snn_studKey`),
  KEY `FK__tSenateNo__Snn_ElectionId_idx` (`Snn_SenateElectionId`),
  CONSTRAINT `FK__ElectionId` FOREIGN KEY (`Snn_SenateElectionId`) REFERENCES `tsenateelection` (`Sel_ElectionId`),
  CONSTRAINT `FK__tSenateNo__Snn_C__3B75D760` FOREIGN KEY (`Snn_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`),
  CONSTRAINT `FK__tSenateNo__Snn_S__3A81B327` FOREIGN KEY (`Snn_SenateDesignationId`) REFERENCES `tsenatedesignation` (`Sen_Id`),
  CONSTRAINT `FK__tSenateNo__Snn_s__3C69FB99` FOREIGN KEY (`Snn_studKey`) REFERENCES `tstudent` (`stud_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsenatenomination`
--

LOCK TABLES `tsenatenomination` WRITE;
/*!40000 ALTER TABLE `tsenatenomination` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsenatenomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tstaff`
--

DROP TABLE IF EXISTS `tstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tstaff` (
  `Stf_UserId` int NOT NULL AUTO_INCREMENT,
  `Stf_FirstName` varchar(50) DEFAULT NULL,
  `Stf_MiddleName` varchar(50) DEFAULT NULL,
  `Stf_LastName` varchar(50) DEFAULT NULL,
  `Stf_DoB` datetime DEFAULT NULL,
  `Stf_EmailId` varchar(250) DEFAULT NULL,
  `Stf_ContactNo` varchar(25) DEFAULT NULL,
  `Stf_GenderId` int DEFAULT NULL,
  `Stf_AddressId` int DEFAULT NULL,
  `Stf_IsCandidate` bit(1) DEFAULT NULL,
  `Stf_RoleId` int DEFAULT NULL,
  `Stf_Password` varchar(10) DEFAULT NULL,
  `Stf_CreatedDate` datetime(6) DEFAULT NULL,
  `Stf_CreatedBy` int DEFAULT NULL,
  `Stf_IsDeleted` bit(1) DEFAULT b'0',
  `Stf_DeletedDate` datetime(6) DEFAULT NULL,
  `Stf_Usr_DeletedBy` int DEFAULT NULL,
  `Stf_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Stf_LastUpdatedBy` int DEFAULT NULL,
  PRIMARY KEY (`Stf_UserId`),
  KEY `FK_tStaff_tRoles` (`Stf_RoleId`),
  CONSTRAINT `FK_tStaff_tRoles` FOREIGN KEY (`Stf_RoleId`) REFERENCES `troles` (`Rol_RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstaff`
--

LOCK TABLES `tstaff` WRITE;
/*!40000 ALTER TABLE `tstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tstudent`
--

DROP TABLE IF EXISTS `tstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tstudent` (
  `stud_Id` int NOT NULL,
  `stud_Key` varchar(12) NOT NULL,
  `stud_FirstName` varchar(50) DEFAULT NULL,
  `stud_MiddleName` varchar(50) DEFAULT NULL,
  `stud_LastName` varchar(50) DEFAULT NULL,
  `stud_DoB` date DEFAULT NULL,
  `stud_GenderId` int DEFAULT NULL,
  `stud_ClassSectionId` int DEFAULT NULL,
  `stud_HouseId` int DEFAULT NULL,
  `stud_IsActive` tinyint(1) DEFAULT '1',
  `stud_Password` varchar(25) DEFAULT NULL,
  `stud_CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `stud_CreatedBy` int DEFAULT NULL,
  `stud_IsDeleted` tinyint(1) DEFAULT '0',
  `stud_DeletedDate` datetime(6) DEFAULT NULL,
  `stud_DeletedBy` int DEFAULT NULL,
  `stud_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `stud_LastUpdatedBy` int DEFAULT NULL,
  `stud_Photo` longtext,
  `tstudentcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stud_Key`),
  KEY `FK__tStudent__stud_G__32E0915F` (`stud_GenderId`),
  KEY `FK__tStudent__stud_C__33D4B598` (`stud_ClassSectionId`),
  KEY `FK__tStudent__stud_H__34C8D9D1` (`stud_HouseId`),
  CONSTRAINT `FK__tStudent__stud_C__33D4B598` FOREIGN KEY (`stud_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`),
  CONSTRAINT `FK__tStudent__stud_G__32E0915F` FOREIGN KEY (`stud_GenderId`) REFERENCES `tgender` (`Gen_Id`),
  CONSTRAINT `FK__tStudent__stud_H__34C8D9D1` FOREIGN KEY (`stud_HouseId`) REFERENCES `thouses` (`Hus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstudent`
--

LOCK TABLES `tstudent` WRITE;
/*!40000 ALTER TABLE `tstudent` DISABLE KEYS */;
INSERT INTO `tstudent` VALUES (1,'KL1001','Shlok','Atul','Baviskar','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1001.png',NULL),(2,'KL1002','Advait','Amol','Bhagwat','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1002.png',NULL),(3,'KL1003','Ishwari','Nikhil','Bhujbal','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1003.png',NULL),(4,'KL1004','Aditya','Ram','Chitradurga','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1004.png',NULL),(5,'KL1005','Harshad','Sandeep','Dalvi','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1005.png',NULL),(6,'KL1006','Swarada','Gulshan','Deokar','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1006.png',NULL),(7,'KL1007','Om','Suneet','Digikar','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1007.png',NULL),(8,'KL1008','Anay','Mayur','Dikshit','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1008.png',NULL),(9,'KL1009','Aahaan','Pravin','Gaikwad','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1009.png',NULL),(10,'KL1010','Bhumanyu','Nirbhay','Garud','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1010.png',NULL),(11,'KL1011','Ishaan','Rupesh','Helwade','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1011.png',NULL),(12,'KL1012','Devansh','Mayur','Jaju','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1012.png',NULL),(13,'KL1013','Kasturi','Kiran','Kachare','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1013.png',NULL),(14,'KL1014','Rajveer','Jaysinh','Kadam','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1014.png',NULL),(15,'KL1015','Prajakta','Shree','Kalaskar','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1015.png',NULL),(16,'KL1016','Aprameya','Mandar','Kamat','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1016.png',NULL),(17,'KL1017','Aarav','Ravindrababu','Kamtam','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1017.png',NULL),(18,'KL1018','Ranveer','Vikas','Karpe','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1018.png',NULL),(19,'KL1019','Shravani','Manoj','Katkade','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1019.png',NULL),(20,'KL1020','Avantika','Sagar','Khandar','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1020.png',NULL),(21,'KL1021','Avneesh','Harshal','Kondhalkar','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1021.png',NULL),(22,'KL1022','Viha','Manojkumar','Kulkarni','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1022.png',NULL),(23,'KL1023','Vanya','Naveen','Kumar','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1023.png',NULL),(24,'KL1024','Sachi','Sandesh','Kurade','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1024.png',NULL),(25,'KL1025','Parshwa','Pradeepkumar','Ladage','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1025.png',NULL),(26,'KL1026','Vaikhari','Ganesh','Lehane','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1026.png',NULL),(27,'KL1027','Parth','Shailesh','Mohite','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1027.png',NULL),(28,'KL1028','Anant','Abhay','Nawathey','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1028.png',NULL),(29,'KL1029','Rishaan','Panchal','','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1029.png',NULL),(30,'KL1030','Rutwik','Anand','Parekar','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1030.png',NULL),(31,'KL1031','Kaustubh','Bharat','Patale','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1031.png',NULL),(32,'KL1032','Avanti','Yogesh','Patil','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1032.png',NULL),(33,'KL1033','Amyra','Pankaj','Prasad','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1033.png',NULL),(34,'KL1034','Vedangi','Deepak','Shitole','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1034.png',NULL),(35,'KL1035','Nikita','Ranjeet','Singh','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1035.png',NULL),(36,'KL1036','Shreepad','Suhas','Sonawane','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1036.png',NULL),(37,'KL1037','Shriniwas','Ashish','Tamhane','1990-01-01',3,1,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1037.png',NULL),(38,'KL1038','Mihika','Mandar','Walzade','1990-01-01',3,1,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1038.png',NULL),(39,'KL1039','Vyom','Jayendra','Yadav','1990-01-01',3,1,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1039.png',NULL),(40,'KL1040','Shreshtha','Pankaj','Potdukhe','1990-01-01',3,1,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1040.png',NULL),(41,'KL1041','Asavari','Abhijit','Bhalerao','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1041.png',NULL),(42,'KL1042','Samarth','Amar','Bhambare','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1042.png',NULL),(43,'KL1043','Aditi','Amol','Dalvi','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1043.png',NULL),(44,'KL1044','Shivraj','Sanjay','Dalvi','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1044.png',NULL),(45,'KL1045','Shourya','Ajit','Deshmukh','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1045.png',NULL),(46,'KL1046','Saukhya','Amol','Deshpande','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1046.png',NULL),(47,'KL1047','Nishtha','Gaurav','Dhokriya','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1047.png',NULL),(48,'KL1048','Sajiri','Vikas','Dhore','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1048.png',NULL),(49,'KL1049','Ira','Pravin','Hinge','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1049.png',NULL),(50,'KL1050','Parth','Omkar','Hirve','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1050.png',NULL),(51,'KL1051','Anvi','Jeevan','Jadhav','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1051.png',NULL),(52,'KL1052','Sanvi','Bhushan','Jain','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1052.png',NULL),(53,'KL1053','Nidhish','Amol','Joshi','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1053.png',NULL),(54,'KL1054','Samar','Kamal','Joshi','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1054.png',NULL),(55,'KL1055','Swojas','Jayant','Kadam','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1055.png',NULL),(56,'KL1056','Shourya','Sandip','Kapase','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1056.png',NULL),(57,'KL1057','Piyush','Shahshikant','Kulkarni','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1057.png',NULL),(58,'KL1058','Spruhansh','Pushpendra','Lembhe','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1058.png',NULL),(59,'KL1059','Tanisha','Deodatta','Marathe','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1059.png',NULL),(60,'KL1060','Ira','Kunal','Murudkar','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1060.png',NULL),(61,'KL1061','Advik','Yogesh','Padwal','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1061.png',NULL),(62,'KL1062','Aryan','Suhas','Pargunde','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1062.png',NULL),(63,'KL1063','Advika','Nikhil','Patil','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1063.png',NULL),(64,'KL1064','Arnav','Manojkumar','Patil','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1064.png',NULL),(65,'KL1065','Divija','Kuldeep','Patil','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1065.png',NULL),(66,'KL1066','Manthan','Chandrakant','Patil','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1066.png',NULL),(67,'KL1067','Sanskruti','Swapnil','Patil','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1067.png',NULL),(68,'KL1068','Avadhoot','Chetan','Pawar','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1068.png',NULL),(69,'KL1069','Arnav','Shantanu','Pradhan','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1069.png',NULL),(70,'KL1070','Hetvi','Digvijaysing','Rajput','1990-01-01',3,2,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1070.png',NULL),(71,'KL1071','Aadhish','Pradip','Salunkhe','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1071.png',NULL),(72,'KL1072','Ved','Rakesh','Sarkaniya','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1072.png',NULL),(73,'KL1073','Swaraj','Nitin','Shirole','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1073.png',NULL),(74,'KL1074','Lakshya','Singh','','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1074.png',NULL),(75,'KL1075','Sharvil','Dinesh','Sonavale','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1075.png',NULL),(76,'KL1076','Bhuvik','Hardik','Soni','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1076.png',NULL),(77,'KL1077','Anvi','Nilesh','Virkar','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1077.png',NULL),(78,'KL1078','Nabha','Nikhil','Wadekar','1990-01-01',3,2,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1078.png',NULL),(79,'KL1079','Trisha','Hemant','Yadav','1990-01-01',3,2,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1079.png',NULL),(80,'KL1080','Arish','Atish','Yelulkar','1990-01-01',3,2,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1080.png',NULL),(81,'KL1081','Ashwathi','Asati','','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1081.png',NULL),(82,'KL1082','Raaghav','Yogesh','Bhagwat','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1082.png',NULL),(83,'KL1083','Prathmesh','Shirish','Bhalekar','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1083.png',NULL),(84,'KL1084','Saisha','Sandip','Bhosale','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1084.png',NULL),(85,'KL1085','Parth','Sanjay','Bramhankar','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1085.png',NULL),(86,'KL1086','Ovi','Prashant','Chavan','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1086.png',NULL),(87,'KL1087','Anushree','Santosh','Chemate','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1087.png',NULL),(88,'KL1088','Pranav','Yogesh','Dengle','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1088.png',NULL),(89,'KL1089','Arjun','Chaitanya','Deodhar','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1089.png',NULL),(90,'KL1090','Pramey','Santosh','Dhotre','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1090.png',NULL),(91,'KL1091','Krishna','Pramod','Goggi','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1091.png',NULL),(92,'KL1092','Anvita','Rakesh','Jadhav','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1092.png',NULL),(93,'KL1093','Arnav','Anil','Jadhav','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1093.png',NULL),(94,'KL1094','Kaivalaya','Sunil','Jagtap','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1094.png',NULL),(95,'KL1095','Viraj','Umesh','Jawale','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1095.png',NULL),(96,'KL1096','Aaditya','Abhijeet','Jedhe','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1096.png',NULL),(97,'KL1097','Shantanu','Rahul','Kale','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1097.png',NULL),(98,'KL1098','Dhruv','Shantanu','Kher','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1098.png',NULL),(99,'KL1099','Avanish','Chetan','Kurhade','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1099.png',NULL),(100,'KL1100','Pradnil','Shriniwas','Magre','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1100.png',NULL),(101,'KL1101','Saanvi','Manish','Mahajan','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1101.png',NULL),(102,'KL1102','Aarush','Amit','Mane','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1102.png',NULL),(103,'KL1103','Reyansh','Arun','Mante','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1103.png',NULL),(104,'KL1104','Akshara','Shivdatta','Marathe','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1104.png',NULL),(105,'KL1105','Kritika','Mishra','','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1105.png',NULL),(106,'KL1106','Abeer','Rohit','Mohitkar','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1106.png',NULL),(107,'KL1107','Nivaan','Nair','','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1107.png',NULL),(108,'KL1108','Adwait','Dhiraj','Nimbalkar','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1108.png',NULL),(109,'KL1109','Adiraj','Kailash','Pandhare','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1109.png',NULL),(110,'KL1110','Kashvi','Vikrant','Patil','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1110.png',NULL),(111,'KL1111','Mihir','Gaurav','Patil','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1111.png',NULL),(112,'KL1112','Mukta','Mahesh','Patil','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1112.png',NULL),(113,'KL1113','Anvika','Avinash','Pingale','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1113.png',NULL),(114,'KL1114','Akira','Pankaj','Prasad','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1114.png',NULL),(115,'KL1115','Aaradhya','Pravin','Said','1990-01-01',3,3,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1115.png',NULL),(116,'KL1116','Gandharvee','Hitesh','Saikar','1990-01-01',3,3,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1116.png',NULL),(117,'KL1117','Mahi','Sharma','','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1117.png',NULL),(118,'KL1118','Rashi','Bhushan','Somani','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1118.png',NULL),(119,'KL1119','Kartik','Rahul','Thakare','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1119.png',NULL),(120,'KL1120','Mahak','Rajaram','Vohra','1990-01-01',3,3,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1120.png',NULL),(121,'KL1121','Anvi','Rajesh','Yeole','1990-01-01',3,3,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1121.png',NULL),(122,'KL1122','Nihira','Janmejay','Ambardekar','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1122.png',NULL),(123,'KL1123','Aaradhya','Anand','Atole','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1123.png',NULL),(124,'KL1124','Hridhaan','Kunal','Badgujar','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1124.png',NULL),(125,'KL1125','Aditya','Amit','Belvankar','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1125.png',NULL),(126,'KL1126','Bhuvi','Yogesh','Chaudhari','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1126.png',NULL),(127,'KL1127','Tanush','Ganaraj','Chavan','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1127.png',NULL),(128,'KL1128','Anvi','Arun','Dahiphale','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1128.png',NULL),(129,'KL1129','Sarvesh','Santosh','Daphale','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1129.png',NULL),(130,'KL1130','Shreyas','Sandeep','Deshmukh','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1130.png',NULL),(131,'KL1131','Manan','Dwarkadhish','Deshpande','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1131.png',NULL),(132,'KL1132','Shanaya','Amol','Deshpande','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1132.png',NULL),(133,'KL1133','Prisha','Harshal','Inamdar','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1133.png',NULL),(134,'KL1134','Anvi','Abhishek','Ingle','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1134.png',NULL),(135,'KL1135','Asmi','Anand','Jadhav','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1135.png',NULL),(136,'KL1136','Atharv','Mahavir','Jadhav','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1136.png',NULL),(137,'KL1137','Praveer','Puneet','Kankaria','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1137.png',NULL),(138,'KL1138','Shreeya','Mangesh','Khindre','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1138.png',NULL),(139,'KL1139','Maahi','Sameer','Kulkarni','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1139.png',NULL),(140,'KL1140','Ishan','Pawan','Malpani','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1140.png',NULL),(141,'KL1141','Anwesha','Sachin','Mane','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1141.png',NULL),(142,'KL1142','Aditi','Aruturaj','More','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1142.png',NULL),(143,'KL1143','Krisha','Ashish','Naik','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1143.png',NULL),(144,'KL1144','Mihika','Manish','Nandgaonkar','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1144.png',NULL),(145,'KL1145','Shivansh','Aravansh','Nikam','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1145.png',NULL),(146,'KL1146','Arihan','Pareek','','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1146.png',NULL),(147,'KL1147','Anvi','Amol','Patil','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1147.png',NULL),(148,'KL1148','Hrushikesh','Sushil','Patil','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1148.png',NULL),(149,'KL1149','Arnav','Niranjan','Rankhambe','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1149.png',NULL),(150,'KL1150','Ayush','Balasaheb','Sherkar','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1150.png',NULL),(151,'KL1151','Kartik','Rahul','Shinde','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1151.png',NULL),(152,'KL1152','Manwa','Mahesh','Shindikar','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1152.png',NULL),(153,'KL1153','Arnish','Nilesh','Shirole','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1153.png',NULL),(154,'KL1154','Devansh','Akhilesh','Singh','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1154.png',NULL),(155,'KL1155','Rudransh','Singh','','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1155.png',NULL),(156,'KL1156','Athang','Parmeshwar','Tekale','1990-01-01',3,4,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1156.png',NULL),(157,'KL1157','Kavya','Kedar','Vadgaonkar','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1157.png',NULL),(158,'KL1158','Devya','Ravindra','Waghode','1990-01-01',3,4,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1158.png',NULL),(159,'KL1159','Anushka','Bhushan','Wani','1990-01-01',3,4,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1159.png',NULL),(160,'KL1160','Nachiket','Jayateerth','Deshpande','1990-01-01',3,4,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1160.png',NULL),(161,'KL1161','Arav','Aniket','Bandal','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1161.png',NULL),(162,'KL1162','Hritvi','Umesh','Barkade','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1162.png',NULL),(163,'KL1163','Ketaki','Sameer','Bhale','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1163.png',NULL),(164,'KL1164','Harsh','Ashish','Bhopale','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1164.png',NULL),(165,'KL1165','Nevan','Vipul','Chauhan','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1165.png',NULL),(166,'KL1166','Paridhi','Pravin','Chendge','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1166.png',NULL),(167,'KL1167','Aarohi','Bhushan','Deshmukh','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1167.png',NULL),(168,'KL1168','Vihaan','Yogesh','Dhanave','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1168.png',NULL),(169,'KL1169','Swanand','Nilesh','Gade','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1169.png',NULL),(170,'KL1170','Reyansh','Parikshit','Ghodke','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1170.png',NULL),(171,'KL1171','Saanvi','Jha','','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1171.png',NULL),(172,'KL1172','Shardul','Rahul','Joshi','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1172.png',NULL),(173,'KL1173','Sharanya','Nitin','Kadlag','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1173.png',NULL),(174,'KL1174','Riddhima','Dilip','Kalamkar','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1174.png',NULL),(175,'KL1175','Saanvi','Rahul','Khade','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1175.png',NULL),(176,'KL1176','Advika','Priyank','Khandare','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1176.png',NULL),(177,'KL1177','Kimaya','Milind','Khire','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1177.png',NULL),(178,'KL1178','Deven','Nikhilkumar','Khose','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1178.png',NULL),(179,'KL1179','Siddhant','Rajkumar','Kumbhar','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1179.png',NULL),(180,'KL1180','Aryabrata','Mishra','','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1180.png',NULL),(181,'KL1181','Avani','Vinayak','Patil','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1181.png',NULL),(182,'KL1182','Vaishnavi','Dattatray','Patil','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1182.png',NULL),(183,'KL1183','Parth','Nitin','Pawar','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1183.png',NULL),(184,'KL1184','Arnav','Shekhar','Raghatwan','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1184.png',NULL),(185,'KL1185','Isha','Jayant','Rajwade','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1185.png',NULL),(186,'KL1186','Anavi','Ranjan','','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1186.png',NULL),(187,'KL1187','Sharva','Parag','Rege','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1187.png',NULL),(188,'KL1188','Aashirya','Pramod','Salunkhe','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1188.png',NULL),(189,'KL1189','Viaan','Tushar','Shewale','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1189.png',NULL),(190,'KL1190','Anishka','Nilesh','Shirke','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1190.png',NULL),(191,'KL1191','Shreyansh','Rahul','Shivtare','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1191.png',NULL),(192,'KL1192','Ishwari','Swapnil','Songade','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1192.png',NULL),(193,'KL1193','Anvit','Anil','Tambe','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1193.png',NULL),(194,'KL1194','Arnavi','Shyamsunder','Ugale','1990-01-01',3,5,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1194.png',NULL),(195,'KL1195','Namit','Manojkumar','Wadkar','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1195.png',NULL),(196,'KL1196','Shivansh','Vilas','Wadnere','1990-01-01',3,5,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1196.png',NULL),(197,'KL1197','Riddhi','Santosh','Wagh','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1197.png',NULL),(198,'KL1198','Parth','Rakesh','Waikar','1990-01-01',3,5,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1198.png',NULL),(199,'KL1199','Vaishnavi','Shekhar','Yadav','1990-01-01',3,5,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1199.png',NULL),(200,'KL1200','Sharvari','Sandesh','Bhavsar','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1200.png',NULL),(201,'KL1201','Aaradhy','Navnath','Botkule','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1201.png',NULL),(202,'KL1202','Roodhav','Manoj','Chavan','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1202.png',NULL),(203,'KL1203','Soumitesh','Prasanna','Dash','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1203.png',NULL),(204,'KL1204','Athang','Deshpande','','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1204.png',NULL),(205,'KL1205','Sanchit','Prashant','Dhavale','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1205.png',NULL),(206,'KL1206','Digvijay','Arjun','Doke','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1206.png',NULL),(207,'KL1207','Sahil','Lokesh','Dongare','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1207.png',NULL),(208,'KL1208','Swaraj','Gavkare','','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1208.png',NULL),(209,'KL1209','Aradhya','Amol','Gunjal','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1209.png',NULL),(210,'KL1210','Ananya','Niraj','Gupte','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1210.png',NULL),(211,'KL1211','Jeet','Jaideep','Jadhav','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1211.png',NULL),(212,'KL1212','Samar','Amit','Jadhav','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1212.png',NULL),(213,'KL1213','Janhavi','Jagtap','','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1213.png',NULL),(214,'KL1214','Prisha','Mohit','Kanwar','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1214.png',NULL),(215,'KL1215','Nakshatra','Ravi','Karjatkar','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1215.png',NULL),(216,'KL1216','Avaneesh','Ajit','Karpe','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1216.png',NULL),(217,'KL1217','Parth','Kiran','Kasrung','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1217.png',NULL),(218,'KL1218','Aaradhya','Kawitake','','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1218.png',NULL),(219,'KL1219','Jayshree','Praveen','Kohinkar','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1219.png',NULL),(220,'KL1220','Archit','Anil','Kulkarni','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1220.png',NULL),(221,'KL1221','Ashwin','Uday','Mahajan','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1221.png',NULL),(222,'KL1222','Shrot','Revanasidhappa','Mali','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1222.png',NULL),(223,'KL1223','Aarya','Anand','Mashalkar','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1223.png',NULL),(224,'KL1224','Gargee','Ashish','Mehetre','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1224.png',NULL),(225,'KL1225','Manas','Sudam','Murkute','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1225.png',NULL),(226,'KL1226','Aryan','Srinivas','Naik','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1226.png',NULL),(227,'KL1227','Chetaksh','Nilesh','Neve','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1227.png',NULL),(228,'KL1228','Sakshi','Sagar','Pangre','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1228.png',NULL),(229,'KL1229','Yashica','Prasanna','Paraye','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1229.png',NULL),(230,'KL1230','Shaurya','Pardesi','','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1230.png',NULL),(231,'KL1231','Srujan','Patil','','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1231.png',NULL),(232,'KL1232','Janhvi','Phadnis','','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1232.png',NULL),(233,'KL1233','Arnav','Prashant','Phatak','1990-01-01',3,7,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1233.png',NULL),(234,'KL1234','Disha','Amol','Raskar','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1234.png',NULL),(235,'KL1235','Ojasvi','Singh','','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1235.png',NULL),(236,'KL1236','Aaradhya','Nilesh','Yadav','1990-01-01',3,7,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1236.png',NULL),(237,'KL1237','Radharani','Rituraj','Yeotikar','1990-01-01',3,7,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1237.png',NULL),(238,'KL1238','Siya','Pankaj','Zambare','1990-01-01',3,7,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1238.png',NULL),(239,'KL1239','Jeni','Jayesh','Adhia','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1239.png',NULL),(240,'KL1240','Devanshi','Parag','Adhiya','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1240.png',NULL),(241,'KL1241','Anay','Prashant','Anaskure','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1241.png',NULL),(242,'KL1242','Advita','Awasare','','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1242.png',NULL),(243,'KL1243','Anvish','Awate','','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1243.png',NULL),(244,'KL1244','Siddharaj','Banerjee','','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1244.png',NULL),(245,'KL1245','Aaradhya','Mandar','Bargaje','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1245.png',NULL),(246,'KL1246','Siya','Atul','Baviskar','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1246.png',NULL),(247,'KL1247','Spruha','Niraj','Bawane','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1247.png',NULL),(248,'KL1248','Soham','Satish','Burkul','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1248.png',NULL),(249,'KL1249','Spruha','Abhishek','Chiplunar','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1249.png',NULL),(250,'KL1250','Vedant','Tilakchand','Chirmade','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1250.png',NULL),(251,'KL1251','Aaryaan','Nikhil','Dawkhare','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1251.png',NULL),(252,'KL1252','Shrisha','Deshpande','','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1252.png',NULL),(253,'KL1253','Ilisha','Tejas','Gaydhankar','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1253.png',NULL),(254,'KL1254','Sarthak','Gajanan','Ghaytade','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1254.png',NULL),(255,'KL1255','Palak','Parag','Gujarathi','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1255.png',NULL),(256,'KL1256','Aarush','Pradeep','Jagdale','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1256.png',NULL),(257,'KL1257','Aaradhy','Prakash','Jagtap','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1257.png',NULL),(258,'KL1258','Pradyumna','Prasad','Joshi','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1258.png',NULL),(259,'KL1259','Arnav','Pradeep','Khole','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1259.png',NULL),(260,'KL1260','Sanavi','Mahajan','','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1260.png',NULL),(261,'KL1261','Vatsal','Mehta','','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1261.png',NULL),(262,'KL1262','Tanvee','Chetan','More','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1262.png',NULL),(263,'KL1263','Shaurya','Abaso','Nagane','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1263.png',NULL),(264,'KL1264','Arnav','Nerpagar','','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1264.png',NULL),(265,'KL1265','Reyansh','Kamlesh','Pande','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1265.png',NULL),(266,'KL1266','Arneshsinh','Abhijitsingh','Parmar','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1266.png',NULL),(267,'KL1267','Akshobhya','Makarand','Pathak','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1267.png',NULL),(268,'KL1268','Anish','Prashant','Patil','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1268.png',NULL),(269,'KL1269','Vardhini','Manojkumar','Patil','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1269.png',NULL),(270,'KL1270','Aarushi','Amar','Shetty','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1270.png',NULL),(271,'KL1271','Swara','Satyam','Shinde','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1271.png',NULL),(272,'KL1272','Arnavi','Nitin','Tanpure','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1272.png',NULL),(273,'KL1273','Atharva','Abhijeet','Vadge','1990-01-01',3,8,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1273.png',NULL),(274,'KL1274','Manjiri','Santosh','Vaychal','1990-01-01',3,8,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1274.png',NULL),(275,'KL1275','Aarush','Brijesh','Yadav','1990-01-01',3,8,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1275.png',NULL),(276,'KL1276','Deekshitha','Shri','','1990-01-01',3,8,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1276.png',NULL),(277,'KL1277','Sachet','Barathe','','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1277.png',NULL),(278,'KL1278','Swarali','Chandan','Beloshe','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1278.png',NULL),(279,'KL1279','Anay','Bhopale','','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1279.png',NULL),(280,'KL1280','Swara','Uday','Bidwai','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1280.png',NULL),(281,'KL1281','Arnav','Borhade','','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1281.png',NULL),(282,'KL1282','Rajat','Swapnil','Chaudhari','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1282.png',NULL),(283,'KL1283','Reyansh','Hitesh','Chaudhari','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1283.png',NULL),(284,'KL1284','Siddhika','Chemate','','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1284.png',NULL),(285,'KL1285','Shriraj','Govind','Chormale','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1285.png',NULL),(286,'KL1286','Mihir','Datar','','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1286.png',NULL),(287,'KL1287','Arjjun','Ashwin','Deshpande','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1287.png',NULL),(288,'KL1288','Krishnaraj','Dhamale','','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1288.png',NULL),(289,'KL1289','Arush','Amol','Gunjal','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1289.png',NULL),(290,'KL1290','Anwita','Gupta','','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1290.png',NULL),(291,'KL1291','Jeeya','Jaideep','Jadhav','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1291.png',NULL),(292,'KL1292','Rachit','Rahul','Joshi','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1292.png',NULL),(293,'KL1293','Dhruv','Paresh','Khatu','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1293.png',NULL),(294,'KL1294','Prachet','Prakash','Koruche','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1294.png',NULL),(295,'KL1295','Arnav','Anil','Kulkarni','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1295.png',NULL),(296,'KL1296','Sohum','Tushar','Luktuke','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1296.png',NULL),(297,'KL1297','Mihir','Narendra','Madas','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1297.png',NULL),(298,'KL1298','Shreya','Vivek','Mutkule','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1298.png',NULL),(299,'KL1299','Khyati','Satish','Naphade','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1299.png',NULL),(300,'KL1300','Soham','Dnyandeo','Narkhede','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1300.png',NULL),(301,'KL1301','Aaradhya','Sachin','Nevare','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1301.png',NULL),(302,'KL1302','Bhargavi','Swanand','Palnitkar','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1302.png',NULL),(303,'KL1303','Ruchika','Patil','','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1303.png',NULL),(304,'KL1304','Sarakshi','Arjun','Pawar','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1304.png',NULL),(305,'KL1305','Swaroop','Sudip','Pukale','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1305.png',NULL),(306,'KL1306','Kasturi','Nikhil','Puranik','1990-01-01',3,9,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1306.png',NULL),(307,'KL1307','Sarisha','Shripad','Renapurkar','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1307.png',NULL),(308,'KL1308','Ravi','Amit','Samant','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1308.png',NULL),(309,'KL1309','Rushil','Shah','','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1309.png',NULL),(310,'KL1310','Sarthak','Shinde','','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1310.png',NULL),(311,'KL1311','Hridaan','Niteshkumar','Singh','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1311.png',NULL),(312,'KL1312','Ananya','Abhijit','Sukale','1990-01-01',3,9,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1312.png',NULL),(313,'KL1313','Saanvi','Santosh','Thorat','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1313.png',NULL),(314,'KL1314','Rishita','Walunj','','1990-01-01',3,9,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1314.png',NULL),(315,'KL1315','Ishwari','Tatyaso','Yewale','1990-01-01',3,9,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1315.png',NULL),(316,'KL1316','Varad','Sameer','Anagal','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1316.png',NULL),(317,'KL1317','Shlok','Premkishan','Baheti','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1317.png',NULL),(318,'KL1318','Shouryen','Sandip','Bhavar','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1318.png',NULL),(319,'KL1319','Samanata','Bodhi','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1319.png',NULL),(320,'KL1320','Shwetasree','Santosh','Dash','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1320.png',NULL),(321,'KL1321','Arya','Datir','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1321.png',NULL),(322,'KL1322','Shashank','Shreerang','Deshpande','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1322.png',NULL),(323,'KL1323','Anushka','Amol','Devkar','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1323.png',NULL),(324,'KL1324','Aayush','Gavali','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1324.png',NULL),(325,'KL1325','Jidnyasa','Godse','','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1325.png',NULL),(326,'KL1326','Tanishka','Shriprasad','Gurav','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1326.png',NULL),(327,'KL1327','Vedant','Mahavir','Jadhav','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1327.png',NULL),(328,'KL1328','Kavya','Sunil','Jagtap','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1328.png',NULL),(329,'KL1329','Ryan','Kamal','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1329.png',NULL),(330,'KL1330','Daksha','Katore','','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1330.png',NULL),(331,'KL1331','Soham','Ankur','Kolhatkar','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1331.png',NULL),(332,'KL1332','Parjanya','Roxy','Koll','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1332.png',NULL),(333,'KL1333','Mrunmayee','Swapnil','Kulkarni','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1333.png',NULL),(334,'KL1334','Aarush','Arun','Mante','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1334.png',NULL),(335,'KL1335','Narendra','Mantri','','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1335.png',NULL),(336,'KL1336','Riddhi','Mardhekar','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1336.png',NULL),(337,'KL1337','Rutuja','Medhekar','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1337.png',NULL),(338,'KL1338','Antara','Abhijeet','Moholkar','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1338.png',NULL),(339,'KL1339','Parnavi','Muzumdar','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1339.png',NULL),(340,'KL1340','Ashwin','Atin','Nagane','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1340.png',NULL),(341,'KL1341','Rudra','Panchal','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1341.png',NULL),(342,'KL1342','Neeraja','Pawar','','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1342.png',NULL),(343,'KL1343','Yash','Pimple','','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1343.png',NULL),(344,'KL1344','Tej','Pingale','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1344.png',NULL),(345,'KL1345','Riya','Kishor','Pujari','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1345.png',NULL),(346,'KL1346','Aadesh','Pulawale','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1346.png',NULL),(347,'KL1347','Vishvesh','Ramnath','','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1347.png',NULL),(348,'KL1348','Abhilasha','Ranawade','','1990-01-01',3,10,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1348.png',NULL),(349,'KL1349','Ansh','Ranawade','','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1349.png',NULL),(350,'KL1350','Anavi','Raskar','','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1350.png',NULL),(351,'KL1351','Shamika','Abhaysinh','Raut','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1351.png',NULL),(352,'KL1352','Pranil','Prashant','Shelar','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1352.png',NULL),(353,'KL1353','Sharad','Shettar','','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1353.png',NULL),(354,'KL1354','Arnavi','Yadav','','1990-01-01',3,10,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1354.png',NULL),(355,'KL1355','Sukrut','Bindumadhava','Yavagal','1990-01-01',3,10,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1355.png',NULL),(356,'KL1356','Anshita','Rajesh','Shukla','1990-01-01',3,10,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1356.png',NULL),(357,'KL1357','Shriya','Ajith','','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1357.png',NULL),(358,'KL1358','Riya','Yogesh','Andar','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1358.png',NULL),(359,'KL1359','Ovee','Attarde','','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1359.png',NULL),(360,'KL1360','Aarya','Sachin','Bagul','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1360.png',NULL),(361,'KL1361','Eshan','Bangar','','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1361.png',NULL),(362,'KL1362','Adheesh','Kedar','Bargaje','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1362.png',NULL),(363,'KL1363','Aditi','Bhandare','','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1363.png',NULL),(364,'KL1364','Shreyaa','Ashok','Bhimanpalli','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1364.png',NULL),(365,'KL1365','Tithi','Girshm','Choudhary','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1365.png',NULL),(366,'KL1366','Aabha','Ganesh','Dalvi','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1366.png',NULL),(367,'KL1367','Akshayni','Vishal','Deokar','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1367.png',NULL),(368,'KL1368','Avani','Deore','','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1368.png',NULL),(369,'KL1369','Samit','Sachin','Deshpande','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1369.png',NULL),(370,'KL1370','Devansh','Dhore','','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1370.png',NULL),(371,'KL1371','Aditi','Rahul','Dongare','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1371.png',NULL),(372,'KL1372','Inika','Dutta','','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1372.png',NULL),(373,'KL1373','Tanishi','Santanu','Ghosh','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1373.png',NULL),(374,'KL1374','Vishnu','Pramod','Goggi','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1374.png',NULL),(375,'KL1375','Pushkaraj','Gokhale','','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1375.png',NULL),(376,'KL1376','Kushal','Devendra','Gulve','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1376.png',NULL),(377,'KL1377','Vedangi','Jadhav','','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1377.png',NULL),(378,'KL1378','Advaita','Ashish','Kabadi','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1378.png',NULL),(379,'KL1379','Nivedita','Kalapure','','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1379.png',NULL),(380,'KL1380','Vivaan','Vrushabnath','Kavatage','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1380.png',NULL),(381,'KL1381','Sairaj','Rajendra','Padwal','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1381.png',NULL),(382,'KL1382','Atulya','Pai','','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1382.png',NULL),(383,'KL1383','Aditya','Amrut','Patil','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1383.png',NULL),(384,'KL1384','Aditya','Rajput','','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1384.png',NULL),(385,'KL1385','Shaurya','Rashinkar','','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1385.png',NULL),(386,'KL1386','Eshaan','Amey','Rathod','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1386.png',NULL),(387,'KL1387','Akshita','Sujit','Sadangi','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1387.png',NULL),(388,'KL1388','Darsh','Shetty','','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1388.png',NULL),(389,'KL1389','Bhumika','Swapnil','Shimpi','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1389.png',NULL),(390,'KL1390','Praneel','Soni','','1990-01-01',3,11,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1390.png',NULL),(391,'KL1391','Kavya','Thorat','','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1391.png',NULL),(392,'KL1392','Samar','Mandar','Vairagkar','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1392.png',NULL),(393,'KL1393','Raghav','Yogesh','Vaze','1990-01-01',3,11,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1393.png',NULL),(394,'KL1394','Purvi','Vohra','','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1394.png',NULL),(395,'KL1395','Soham','Zend','','1990-01-01',3,11,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1395.png',NULL),(396,'KL1396','Pratyush','Zope','','1990-01-01',3,11,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1396.png',NULL),(397,'KL1397','Sharayu','Nilesh','Barne','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1397.png',NULL),(398,'KL1398','Sahil','Santosh','Bendhari','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1398.png',NULL),(399,'KL1399','Pauravi','Sachin','Bhambure','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1399.png',NULL),(400,'KL1400','Adishri','Gajanan','Bodkhe','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1400.png',NULL),(401,'KL1401','Arnav','Sachin','Chakankar','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1401.png',NULL),(402,'KL1402','Adhira','Sushil','Chandanshive','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1402.png',NULL),(403,'KL1403','Sharvari','Tukaram','Chavan','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1403.png',NULL),(404,'KL1404','Parishi','Jigneshkumar','Dalal','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1404.png',NULL),(405,'KL1405','Yashodhan','Ganesh','Dhore','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1405.png',NULL),(406,'KL1406','Viraj','Sachin','Diwate','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1406.png',NULL),(407,'KL1407','Kartikee','Pramod','Doke','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1407.png',NULL),(408,'KL1408','Gurveer','Harinder','Garewal','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1408.png',NULL),(409,'KL1409','Aaradhya','Amol','Gatate','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1409.png',NULL),(410,'KL1410','Asmita','Rakesh','Jadhav','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1410.png',NULL),(411,'KL1411','Sanavi','Suhas','Jitkar','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1411.png',NULL),(412,'KL1412','Aaradhya','Atul','Kadam','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1412.png',NULL),(413,'KL1413','Vedant','Atul','Kakade','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1413.png',NULL),(414,'KL1414','Sanvi','Sachin','Kalaskar','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1414.png',NULL),(415,'KL1415','Saee','Avadhut','Kamble','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1415.png',NULL),(416,'KL1416','Rajveer','Vikas','Karpe','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1416.png',NULL),(417,'KL1417','Arpit','Tejas','Mahajan','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1417.png',NULL),(418,'KL1418','Srushti','Rajesh','Mardhekar','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1418.png',NULL),(419,'KL1419','Shreya','Pralobh','Mule','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1419.png',NULL),(420,'KL1420','Om','Lakhan','Nahak','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1420.png',NULL),(421,'KL1421','Ananya','Yogesh','Padwal','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1421.png',NULL),(422,'KL1422','Sanavi','Nitin','Pande','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1422.png',NULL),(423,'KL1423','Bhargav','Mahendra','Paranjpe','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1423.png',NULL),(424,'KL1424','Satvika','Pandurang','Pekamwar','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1424.png',NULL),(425,'KL1425','Sara','Swapnil','Pendhari','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1425.png',NULL),(426,'KL1426','Pranav','Shantanu','Pradhan','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1426.png',NULL),(427,'KL1427','Raashi','Amar','Shetty','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1427.png',NULL),(428,'KL1428','Darshana','Ritesh','Shinde','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1428.png',NULL),(429,'KL1429','Rijul','Pankaj','Sonawane','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1429.png',NULL),(430,'KL1430','Jeevantika','Avinash','Tapase','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1430.png',NULL),(431,'KL1431','Neilvardhan','Nandkumar','Tathawade','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1431.png',NULL),(432,'KL1432','Veersen','Ruturaj','Thorat','1990-01-01',3,13,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1432.png',NULL),(433,'KL1433','Swarup','Swapnil','Todmal','1990-01-01',3,13,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1433.png',NULL),(434,'KL1434','Shambhuraje','Shahaji','Udar','1990-01-01',3,13,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1434.png',NULL),(435,'KL1435','Shreya','Rahul','Vanarse','1990-01-01',3,13,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1435.png',NULL),(436,'KL1436','Aditya','Na','Ajith','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1436.png',NULL),(437,'KL1437','Swara','Prashant','Amritkar','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1437.png',NULL),(438,'KL1438','Kaavya','Mandar','Apte','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1438.png',NULL),(439,'KL1439','Shreya','Anand','Bal','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1439.png',NULL),(440,'KL1440','Kasturi','Amol','Bangale','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1440.png',NULL),(441,'KL1441','Tanushree','Shrikant','Bhagwat','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1441.png',NULL),(442,'KL1442','Sanskruti','Subhash','Bhosale','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1442.png',NULL),(443,'KL1443','Shree','Gajanan','Bodkhe','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1443.png',NULL),(444,'KL1444','Aarohi','Mangesh','Chondhe','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1444.png',NULL),(445,'KL1445','Swara','Raju','Dabhade','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1445.png',NULL),(446,'KL1446','Swaroop','Santosh','Daphale','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1446.png',NULL),(447,'KL1447','Lavanya','Shamkant','Deore','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1447.png',NULL),(448,'KL1448','Aryan','Rahul','Gaikwad','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1448.png',NULL),(449,'KL1449','Karan','Nitin','Gaikwad','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1449.png',NULL),(450,'KL1450','Krishay','Atul','Gaikwad','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1450.png',NULL),(451,'KL1451','Heramb','Nitin','Ghurye','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1451.png',NULL),(452,'KL1452','Shlok','Nandan','Gite','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1452.png',NULL),(453,'KL1453','Nishit','Amitav','Jha','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1453.png',NULL),(454,'KL1454','Aary','Vinayak','Joshi','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1454.png',NULL),(455,'KL1455','Mrunmayee','Ramdas','Khomane','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1455.png',NULL),(456,'KL1456','Anvi','Mukund','Kodkany','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1456.png',NULL),(457,'KL1457','Revaa','Nikhil','Kulkarni','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1457.png',NULL),(458,'KL1458','Arnav','Dipak','Lohar','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1458.png',NULL),(459,'KL1459','Arya','Tushar','Lonare','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1459.png',NULL),(460,'KL1460','Saee','Ashish','Mhabadi','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1460.png',NULL),(461,'KL1461','Mohneesh','Ashutosh','Padekar','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1461.png',NULL),(462,'KL1462','Aaditi','Ganesh','Pawar','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1462.png',NULL),(463,'KL1463','Ira','Prasanna','Puranik','1990-01-01',3,14,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1463.png',NULL),(464,'KL1464','Swarali','Santosh','Raghatwan','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1464.png',NULL),(465,'KL1465','Ajinkya','Vasudeo','Ranawade','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1465.png',NULL),(466,'KL1466','Vedant','Ashok','Sharma','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1466.png',NULL),(467,'KL1467','Swaraj','Laxman','Shinde','1990-01-01',3,14,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1467.png',NULL),(468,'KL1468','Reeva','Vikram','Singh','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1468.png',NULL),(469,'KL1469','Swara','Pranay','Tambe','1990-01-01',3,14,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1469.png',NULL),(470,'KL1470','Shruti','Rajesh','Vairat','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1470.png',NULL),(471,'KL1471','Siya','Sathish','Rao','1990-01-01',3,14,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1471.png',NULL),(472,'KL1472','Chehak','Kishor','Agarwal','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1472.png',NULL),(473,'KL1473','Arth','Sanjay','Ambekar','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1473.png',NULL),(474,'KL1474','Anwesha','Asati','','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1474.png',NULL),(475,'KL1475','Parnavi','Parag','Badgujar','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1475.png',NULL),(476,'KL1476','Prarthavi','Rupesh','Bhandare','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1476.png',NULL),(477,'KL1477','Adnya','Sanjay','Bhosale','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1477.png',NULL),(478,'KL1478','Vedant','Sanjay','Borekar','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1478.png',NULL),(479,'KL1479','Siddhi','Navanath','Deokar','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1479.png',NULL),(480,'KL1480','Tanish','Deepak','Gaikwad','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1480.png',NULL),(481,'KL1481','Gauri','Vijay','Jadhav','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1481.png',NULL),(482,'KL1482','Mrunmayee','Anil','Jadhav','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1482.png',NULL),(483,'KL1483','Rajveer','Shrikant','Jadhav','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1483.png',NULL),(484,'KL1484','Ketki','Shree','Kalaskar','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1484.png',NULL),(485,'KL1485','Ananya','Deepak','Kamat','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1485.png',NULL),(486,'KL1486','Yuvraj','Dinesh','Khadke','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1486.png',NULL),(487,'KL1487','Kartikee','Sameer','Khatal','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1487.png',NULL),(488,'KL1488','Kshitija','Nikhilkumar','Khose','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1488.png',NULL),(489,'KL1489','Tejasvi','Sudhir','Kirve','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1489.png',NULL),(490,'KL1490','Aarush','Prashant','Kodre','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1490.png',NULL),(491,'KL1491','Sarthak','Vijay','Kuldharan','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1491.png',NULL),(492,'KL1492','Atharva','Nandkumar','Lavhale','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1492.png',NULL),(493,'KL1493','Vedant','Ganesh','Lehane','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1493.png',NULL),(494,'KL1494','Advik','Vivek','Mane','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1494.png',NULL),(495,'KL1495','Mayuresh','Hulga','Mudgal','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1495.png',NULL),(496,'KL1496','Shantanu','Pankaj','Nagtilak','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1496.png',NULL),(497,'KL1497','Arush','Sandeep','Pagar','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1497.png',NULL),(498,'KL1498','Vaibhavi','Yogesh','Pandhare','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1498.png',NULL),(499,'KL1499','Aayush','Anand','Parekar','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1499.png',NULL),(500,'KL1500','Ojas','Mahesh','Patil','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1500.png',NULL),(501,'KL1501','Shreya','Deepesh','Pawar','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1501.png',NULL),(502,'KL1502','Atharva','Mahesh','Pethakar','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1502.png',NULL),(503,'KL1503','Shlok','Bhalchandra','Ranawade','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1503.png',NULL),(504,'KL1504','Shreevalli','Narasimha','Saraswati','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1504.png',NULL),(505,'KL1505','Kanishq','Kartarsingh','Sarwade','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1505.png',NULL),(506,'KL1506','Amey','Shashikant','Shinde','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1506.png',NULL),(507,'KL1507','Aryan','Anil','Sogam','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1507.png',NULL),(508,'KL1508','Mihir','Sunil','Talele','1990-01-01',3,16,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1508.png',NULL),(509,'KL1509','Aniket','Bhaskar','Tonapi','1990-01-01',3,16,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1509.png',NULL),(510,'KL1510','Sakshi','Ravindra','Waghode','1990-01-01',3,16,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1510.png',NULL),(511,'KL1511','Prarthana','Prabodhan','Yadav','1990-01-01',3,16,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1511.png',NULL),(512,'KL1512','Ayush','Abhilash','Abhilash','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1512.png',NULL),(513,'KL1513','Manjiri','Pradeep','Bothe','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1513.png',NULL),(514,'KL1514','Vedant','Vijay','Chidrawar','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1514.png',NULL),(515,'KL1515','Abhinav','Chetan','Deshmukh','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1515.png',NULL),(516,'KL1516','Sarthak','Sushil','Hadawale','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1516.png',NULL),(517,'KL1517','Samruddhi','Vishal','Hele','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1517.png',NULL),(518,'KL1518','Sruja','Rupesh','Helwade','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1518.png',NULL),(519,'KL1519','Sairaj','Sandeep','Ingawale','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1519.png',NULL),(520,'KL1520','Aryan','Anand','Jahagirdar','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1520.png',NULL),(521,'KL1521','Ovee','Sanket','Joshi','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1521.png',NULL),(522,'KL1522','Saumyaa','Sachin','Karnik','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1522.png',NULL),(523,'KL1523','Akhilesh','Anil','Khairnar','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1523.png',NULL),(524,'KL1524','Avani','Rajkumar','Kumbhar','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1524.png',NULL),(525,'KL1525','Aarush','Jalindar','Kute','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1525.png',NULL),(526,'KL1526','Vidya','Rahuldeo','More','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1526.png',NULL),(527,'KL1527','Shaurya','Pramod','Pagar','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1527.png',NULL),(528,'KL1528','Shanta','Makarand','Patankar','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1528.png',NULL),(529,'KL1529','Kritik','Tarang','Patel','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1529.png',NULL),(530,'KL1530','Abhiraj','Rahoul','Patiil','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1530.png',NULL),(531,'KL1531','Nickunj','Hemraj','Patil','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1531.png',NULL),(532,'KL1532','Shravani','Chandrakant','Patil','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1532.png',NULL),(533,'KL1533','Neev','Ratnakar','Pawar','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1533.png',NULL),(534,'KL1534','Aarush','Atul','Ranawade','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1534.png',NULL),(535,'KL1535','Siddharth','Sharanabasappa','Sajjan','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1535.png',NULL),(536,'KL1536','Ayushi','Shailesh','Satpute','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1536.png',NULL),(537,'KL1537','Amaan','Akil','Sayyed','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1537.png',NULL),(538,'KL1538','Shirish','Harish','Sharma','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1538.png',NULL),(539,'KL1539','Kshithij','Sadanand','Shetty','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1539.png',NULL),(540,'KL1540','Ankit','Prasad','Shirole','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1540.png',NULL),(541,'KL1541','Aarush','Ajit','Shivtare','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1541.png',NULL),(542,'KL1542','Kanak','Bhushan','Somani','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1542.png',NULL),(543,'KL1543','Aditi','Srihari',' ','1990-01-01',3,17,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1543.png',NULL),(544,'KL1544','Swarali','Hanumant','Sule','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1544.png',NULL),(545,'KL1545','Neel','Bharat','Tank','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1545.png',NULL),(546,'KL1546','Mankarnika','Avinash','Tapase','1990-01-01',3,17,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1546.png',NULL),(547,'KL1547','Siya','Mahesh','Tongare','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1547.png',NULL),(548,'KL1548','Atharv','Manojkumar','Wadkar','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1548.png',NULL),(549,'KL1549','Pallavi','Pankaj','Zambare','1990-01-01',3,17,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1549.png',NULL),(550,'KL1550','Manvith','Kumar','P','1990-01-01',3,17,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1550.png',NULL),(551,'KL1551','Anushka','Nitin','Baviskar','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1551.png',NULL),(552,'KL1552','Vedant','Mahesh','Beri','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1552.png',NULL),(553,'KL1553','Anshika','Amol','Bhagwat','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1553.png',NULL),(554,'KL1554','Prathamesh','Sameer','Bhale','1990-01-01',3,19,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1554.png',NULL),(555,'KL1555','Ihina','Biswanath','Chakraborty','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1555.png',NULL),(556,'KL1556','Rugved','Anant','Chandile','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1556.png',NULL),(557,'KL1557','Abhinav','krishna','Chitradurga','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1557.png',NULL),(558,'KL1558','Pranav','Basavaraj','Choudhari','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1558.png',NULL),(559,'KL1559','Shaunak','Pravin','Choudhary','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1559.png',NULL),(560,'KL1560','Sonali','Sanjay','Dahikamble','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1560.png',NULL),(561,'KL1561','Gargi','Jitendra','Deopurkar','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1561.png',NULL),(562,'KL1562','Sarvadnya','Rajendrasingh','Deore','1990-01-01',3,19,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1562.png',NULL),(563,'KL1563','Shriya','Kiran','Gadekar','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1563.png',NULL),(564,'KL1564','Kavya','Prashant','Godane','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1564.png',NULL),(565,'KL1565','Riva','Rahul','Jain','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1565.png',NULL),(566,'KL1566','Ojas','Mahesh','Joshi','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1566.png',NULL),(567,'KL1567','Aarin','Chandrabhushan','Junagade','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1567.png',NULL),(568,'KL1568','Akshath','Venkatesh','Karkera','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1568.png',NULL),(569,'KL1569','Owee','Kishore','Kirdat','1990-01-01',3,19,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1569.png',NULL),(570,'KL1570','Pratyahara','Roxy','Koll','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1570.png',NULL),(571,'KL1571','Aditya','Roshan','Mahadule','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1571.png',NULL),(572,'KL1572','Aneesh','Pooshan','Mahajani','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1572.png',NULL),(573,'KL1573','Prachita','Ganesh','Marathe','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1573.png',NULL),(574,'KL1574','Manthan','Ganesh','Markule','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1574.png',NULL),(575,'KL1575','Nidhi','Pareshkumar','Mistry','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1575.png',NULL),(576,'KL1576','Anushka','Mahesh','Mudkanna','1990-01-01',3,19,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1576.png',NULL),(577,'KL1577','Nitya','Nair',' ','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1577.png',NULL),(578,'KL1578','Pratyush','Satish','Narsapure','1990-01-01',3,19,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1578.png',NULL),(579,'KL1579','Aarya','Ganesh','Pasarkar','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1579.png',NULL),(580,'KL1580','Aaradhya','Pankaj','Potdukhe','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1580.png',NULL),(581,'KL1581','Dhriti','Vishwanath','Pujari','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1581.png',NULL),(582,'KL1582','Adhira','Mohit','Raje','1990-01-01',3,19,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1582.png',NULL),(583,'KL1583','Harshwardhan','Sunil','Takale','1990-01-01',3,19,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1583.png',NULL),(584,'KL1584','Ira','Chaitanya','Vengurlekar','1990-01-01',3,19,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1584.png',NULL),(585,'KL1585','Ameya','Premkishan','Baheti','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1585.png',NULL),(586,'KL1586','Aryaa','Anand','Bal','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1586.png',NULL),(587,'KL1587','Rutu','Nitin','Bhendarkar','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1587.png',NULL),(588,'KL1588','Ishwari','Girish','Bodhale','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1588.png',NULL),(589,'KL1589','Mahi','Hardik','Chandwania','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1589.png',NULL),(590,'KL1590','Sukhnamkaur','Manmohansingh','Chaudhari','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1590.png',NULL),(591,'KL1591','Avadhut','Avinash','Darwatkar','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1591.png',NULL),(592,'KL1592','Sanskriti','Amol','Dhumal','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1592.png',NULL),(593,'KL1593','Aditya','Sachin','Diwate','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1593.png',NULL),(594,'KL1594','Sharvil','Kiran','Dudhgaonkar','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1594.png',NULL),(595,'KL1595','Shreya','Anand','Golikere','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1595.png',NULL),(596,'KL1596','Arnav','Yogesh','Gosavi','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1596.png',NULL),(597,'KL1597','Kaivalya','Sagar','Gunjal','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1597.png',NULL),(598,'KL1598','Atharva','Santosh','Handal','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1598.png',NULL),(599,'KL1599','Tarinya','Sandeep','Hawaldar','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1599.png',NULL),(600,'KL1600','Anagha','Abhijeet','Jagdale','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1600.png',NULL),(601,'KL1601','Jay','Sushil','Jamma','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1601.png',NULL),(602,'KL1602','Raghav','Jeyan','prabu','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1602.png',NULL),(603,'KL1603','Mitali','Nitin','Kaling','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1603.png',NULL),(604,'KL1604','Ananya','Abhijeet','Katkar','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1604.png',NULL),(605,'KL1605','Sanika','Shankar','Kolekar','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1605.png',NULL),(606,'KL1606','Devaki','Jagdish','Mahajan','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1606.png',NULL),(607,'KL1607','Rewa','Abhay','Nawathey','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1607.png',NULL),(608,'KL1608','Arjun','Yogesh','Nirmalkar','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1608.png',NULL),(609,'KL1609','Aditya','Anil','Pabbawar','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1609.png',NULL),(610,'KL1610','Avaneesh','Prashant','Parab','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1610.png',NULL),(611,'KL1611','Sarvesh','Sandesh','Patil','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1611.png',NULL),(612,'KL1612','Tanishka','Amit','Pawar','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1612.png',NULL),(613,'KL1613','Suravee','Sunil','Prabhu','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1613.png',NULL),(614,'KL1614','Aditi','Shekhar','Raghatwan','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1614.png',NULL),(615,'KL1615','Shauryaraje','Satish','Ranawade','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1615.png',NULL),(616,'KL1616','Anushka','Sunil','Rathod','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1616.png',NULL),(617,'KL1617','Rishabh','Rohit','Shukla','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1617.png',NULL),(618,'KL1618','Shivraj','Krishnachandra','Takawale','1990-01-01',3,20,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1618.png',NULL),(619,'KL1619','Saishri','Pranay','Tambe','1990-01-01',3,20,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1619.png',NULL),(620,'KL1620','Vishwajeet','Vishwanath','Thosar','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1620.png',NULL),(621,'KL1621','Reeta','Novel','Waghmare','1990-01-01',3,20,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1621.png',NULL),(622,'KL1622','Samarth','Suden','Zunjurke','1990-01-01',3,20,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1622.png',NULL),(623,'KL1623','Prutha','Sachin','Bhambure','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1623.png',NULL),(624,'KL1624','Trushna','Tukaram','Bhegade','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1624.png',NULL),(625,'KL1625','Varad','Somanath','Bhorade','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1625.png',NULL),(626,'KL1626','Jihan','Biswanath','Chakraborty','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1626.png',NULL),(627,'KL1627','Arya','Babasaheb','Chavan','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1627.png',NULL),(628,'KL1628','Likhit','Kamlesh','Choudhary','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1628.png',NULL),(629,'KL1629','Omkar','Gajanan','Devale','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1629.png',NULL),(630,'KL1630','Rudra','Rahul','Gaikwad','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1630.png',NULL),(631,'KL1631','Aayush','Saurabh','Gupta','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1631.png',NULL),(632,'KL1632','Janhavi','Jitin','Ingawale','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1632.png',NULL),(633,'KL1633','Saee','Sandeep','Ingawale','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1633.png',NULL),(634,'KL1634','Tanmay','Santoshkumar','Jadhav','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1634.png',NULL),(635,'KL1635','Bhargav','Anil','Jahagirdar','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1635.png',NULL),(636,'KL1636','Mitali','Pramod','Kadam','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1636.png',NULL),(637,'KL1637','Rushikesh','Ganesh','Kale','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1637.png',NULL),(638,'KL1638','Anurag','Girish','Kapshikar','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1638.png',NULL),(639,'KL1639','Devang','Prashant','Kokane','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1639.png',NULL),(640,'KL1640','Aditya','Jayant','Kulkarni','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1640.png',NULL),(641,'KL1641','Anshu','Abhijit','Kulkarni','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1641.png',NULL),(642,'KL1642','Mihir','Shahshikant','Kulkarni','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1642.png',NULL),(643,'KL1643','Avani','Santosh','Mahajan','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1643.png',NULL),(644,'KL1644','Varuni','Ranganath','Mangalwedhe','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1644.png',NULL),(645,'KL1645','Gururaj','Veerbhadra','Maragutti','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1645.png',NULL),(646,'KL1646','Kashish','Amol','Mudholkar','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1646.png',NULL),(647,'KL1647','Tanishka','Hemant','Pate','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1647.png',NULL),(648,'KL1648','Anurag','Prashant','Patil','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1648.png',NULL),(649,'KL1649','Ayush','Vishal','Patil','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1649.png',NULL),(650,'KL1650','Armaan','Vivek','Rajoria','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1650.png',NULL),(651,'KL1651','Nithin','karthick','Ramanathan','1990-01-01',3,22,3,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1651.png',NULL),(652,'KL1652','Harshada','Sunil','Ranawade','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1652.png',NULL),(653,'KL1653','Kavya','Mayuresh','Rashinkar','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1653.png',NULL),(654,'KL1654','Jay','Devendra','Satoskar','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1654.png',NULL),(655,'KL1655','Sayee','Mukesh','Shirude','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1655.png',NULL),(656,'KL1656','Aditya','Deepak','Sonkamble','1990-01-01',3,22,4,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1656.png',NULL),(657,'KL1657','Devanshi','Rohit','Suratwala','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1657.png',NULL),(658,'KL1658','Amogh','Mahesh','Sutar','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1658.png',NULL),(659,'KL1659','Vatsal','Amin','Thakker','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1659.png',NULL),(660,'KL1660','Shreya','Mahendra','Walunj','1990-01-01',3,22,2,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1660.png',NULL),(661,'KL1661','Prathamesh','Shekhar','Yadav','1990-01-01',3,22,1,1,'12345',NULL,NULL,0,NULL,NULL,NULL,NULL,'../dist/img/KL1661.png',NULL);
/*!40000 ALTER TABLE `tstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvotedstudent`
--

DROP TABLE IF EXISTS `tvotedstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvotedstudent` (
  `Vst_Id` int NOT NULL AUTO_INCREMENT,
  `Vst_StudentKey` varchar(12) DEFAULT NULL,
  `Vst_IVFHouse` tinyint(1) DEFAULT '0',
  `Vst_IVFSenate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Vst_Id`),
  UNIQUE KEY `Vst_StudentKey_UNIQUE` (`Vst_StudentKey`),
  CONSTRAINT `FK__tVotedStu__Vst_S__619B8048` FOREIGN KEY (`Vst_StudentKey`) REFERENCES `tstudent` (`stud_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvotedstudent`
--

LOCK TABLES `tvotedstudent` WRITE;
/*!40000 ALTER TABLE `tvotedstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tvotedstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vlogin`
--

DROP TABLE IF EXISTS `vlogin`;
/*!50001 DROP VIEW IF EXISTS `vlogin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vlogin` AS SELECT 
 1 AS `Username`,
 1 AS `Password`,
 1 AS `UserType`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'votinglivedb'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_users_per_app` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_users_per_app`(id_list TEXT)
BEGIN
    SELECT
        stud_Id, GROUP_CONCAT(stud_Key)
    FROM
        tstudent
    WHERE
        FIND_IN_SET(stud_Key, id_list) > 0
    GROUP BY stud_Id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddDeleteSenateNominationDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddDeleteSenateNominationDetails`(
piSenateNominationId int,
piSenateDesignationId int,
piClassSectionId int,
piStudentKey nvarchar(30),
piPhotoURL nvarchar(200),
piAboutNominee longtext,
piElctionid int,
piActionChr varchar(2),
in piUserId int)
BEGIN
	if(piSenateNominationId=0 && piActionChr='A') then
		insert into tSenateNomination(
										snn_senatedesignationid, 
										snn_ClassSectionId,
                                        Snn_VoteCount,
										snn_StudKey,
                                        Snn_SenateElectionId,
										snn_Photo
									)
        values(
				piSenateDesignationId,
                piClassSectionId,
                0,
                piStudentKey,
                piElctionid,
                piPhotoURL
			  );
     
     elseif(piSenateNominationId > 0 && piActionChr='E') then
		Update tSenateNomination
		Set snn_AbouNominee = piAboutNominee,
        snn_LastUpdatedBy = piUserId,
        Snn_LastUpdatedDate = current_timestamp
        Where snn_id = piSenateNominationId;
     
     elseif(piSenateNominationId > 0 && piActionChr='D') then
		Update tSenateNomination
		Set snn_IsDeleted = 1,
        snn_DeletedBy = piUserId,
        Snn_DeletedDate = current_timestamp
        Where snn_id = piSenateNominationId;
     End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddDeleteUpdateSenateElection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddDeleteUpdateSenateElection`(
IN piElectionId int,
IN piStartDate DateTime,
In piEndDate DateTime,
In piDescription Longtext,
In piActionChr varchar(2) 
)
BEGIN
	
    if(piElectionId = 0 && piActionChr = 'A') then
		
        Insert into 
					tSenateElection(Sel_StartDate, 
                                    Sel_EndDate,
                                    Sel_Description)
		values
					(piStartDate,
                     piEndDate,
                     piDescription);
        
    ELSEIF(piElectionId > 0 && piActionChr = 'E') then
		
        Update 
				tSenateElection
		Set 
				Sel_EndDate = piEndDate,
                Sel_Description = piDescription
        WHERE
				Sel_ElectionId = piElectionId;
    
    ELSEIF(piElectionId > 0 && piActionChr = 'D') THEN
		
        Delete FROM
					tSenateElection
        Where 
					sel_electionid = piElectionId;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDeleteHouseElection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDeleteHouseElection`(
IN piElectionId int,
IN piStartDate DateTime,
In piEndDate DateTime,
In piDescription Longtext,
In piActionChr varchar(2) 
)
BEGIN
	
    if(piElectionId = 0 && piActionChr = 'A') then
		
        Insert into 
					tHouseElection( Hel_StartDate, 
                                    Hel_EndDate,
								   Hel_Description)
		values
					(piStartDate,
                     piEndDate,
                     piDescription);
        
    ELSEIF(piElectionId > 0 && piActionChr = 'E') then
		
        Update 
				tHouseElection
		Set 
				Hel_EndDate = piEndDate,
                Hel_Description = piDescription
        WHERE
				Hel_ElectionId = piElectionId;
    
    ELSEIF(piElectionId > 0 && piActionChr = 'D') THEN
		
        Delete FROM
					tHouseElection
        Where 
					Hel_electionid = piElectionId;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDelHouseDesignation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDelHouseDesignation`(
piHouseDesignationId int,
piHouseId int,
in piDesignationNmae nvarchar(30),
in piDesignationDescription nvarchar(200),
in piDesignationCode varchar(5),
in piGender int,
piAction varchar(2),
in piUserId int)
BEGIN

	IF(piHouseDesignationId=0 && piAction='A')THEN
		INSERT INTO thousedesignation(Hsd_HouseId,Hsd_Name,Hsd_Description,Hsd_DesCode,Hsd_Gender,Hsd_IsDeleted)
		VALUES(piHouseId,piDesignationNmae,piDesignationDescription,piDesignationCode,piGender,0);
        
	elseif(piHouseDesignationId!=0 && piAction='E')then
		Update thousedesignation set  Hsd_HouseId=piHouseId,
							Hsd_Name=piDesignationNmae,
                            Hsd_Description=piDesignationDescription,
                            Hsd_Gender=piGender,
                            Hsd_LastUpdatedBy=piUserId
		where  Hsd_Id=piHouseDesignationId;
        
	elseif(piHouseDesignationId!=0 && piAction='D')THEN
		Update thousedesignation set  Hsd_IsDeleted=1,
										Hsd_DeletedBy=piUserId
		where  Hsd_Id=piHouseDesignationId;
	End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDelHouseNominationDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDelHouseNominationDetails`(
houseNominationId int,
houseId int,
houseDesignationId int,
classSectionId int,
studentKey nvarchar(30),
photoURL nvarchar(200),
elctionid int,
actionChr varchar(2),
in userId int)
BEGIN
	if(houseNominationId=0 && actionChr='A')then
		
        insert into thousenomination
									(Hsn_HouseId,
									Hsn_HouseDesignationId,
									Hsn_ClassSectionId,
									Hsn_studKey,
									Hsn_Photo,
                                    Hsn_HouseElectionId,
									Hsn_IsDeleted)
		values
				(houseId,
				houseDesignationId,
				classSectionId,
				studentKey,
				photoURL,
                elctionid,
				0);
                
	elseif(houseNominationId!=0 && actionChr='E')then
		
        Update thousenomination 
        
        set Hsn_HouseId=houseId,
			Hsn_HouseDesignationId=houseDesignationId,							
			Hsn_ClassSectionId=classSectionId,
            Hsn_studKey=studentKey,
            Hsn_Photo=photoURL,
            Hsn_LastUpdatedBy=userId

		where Hsn_Id=houseNominationId;
        
	elseif(houseNominationId!=0 && actionChr='D')then
		
        Update thousenomination 
        
        set Hsn_IsDeleted=1,
			Hsn_DeletedBy=userId
		
        where Hsn_Id=houseNominationId;
	End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDelHouses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDelHouses`( piHouseId int,in piHouseNmae nvarchar(30),in piHouseDescription nvarchar(200),in piHouseCode varchar(5),
								  piAction varchar(2),in piUserId int)
BEGIN

	IF(piHouseId=0 && piAction='A')THEN
		INSERT INTO thouses(Hus_Name,Hus_Description,Hus_HouseCode,Hus_IsDeleted)
		VALUES(trim(piHouseNmae),trim(piHouseDescription),trim(piHouseCode),0);
	elseif(piHouseId!=0 && piAction='E')then
		Update thouses set  Hus_Name=trim(piHouseNmae),
                            Hus_Description=trim(piHouseDescription),
                            Hus_HouseCode=trim(piHouseCode),
                            Hus_LastUpdatedBy=piUserId
		where  Hus_Id=piHouseId;
	elseif(piHouseId!=0 && piAction='D')THEN
		Update thouses set  Hus_IsDeleted=1,
                            
                            Hus_DeletedBy=piUserId
		where  Hus_Id=piHouseId;
	End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDelSenateDesignation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDelSenateDesignation`(in piSenateId int,in piSenateDesignation nvarchar(30),
								in piSenateDescription nvarchar(200),in piSenateCode varchar(5),in piGender int,
								  piAction varchar(2),in piUserId int)
BEGIN

	IF(piSenateId=0 && piAction='A')THEN
		INSERT INTO tsenatedesignation(Sen_Name,Sen_Description,Sen_DesCode,Sen_Gender,Sen_IsDeleted)
		VALUES(piSenateDesignation,piSenateDescription,piSenateCode,piGender,0);
        
	elseif(piSenateId!=0 && piAction='E')then
		Update tsenatedesignation set  Sen_Name=piSenateDesignation,
                            Sen_Description=piSenateDescription,
                            Sen_Gender=piGender,
                            Sen_LastUpdatedBy=piUserId
		where  Sen_Id=piSenateId;
        
	elseif(piSenateId!=0 && piAction='D')THEN
		Update tsenatedesignation set  Sen_IsDeleted=1,
                            Sen_DeletedBy=piUserId
		where  Sen_Id=piSenateId;
	End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AddUpdateDelStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AddUpdateDelStudent`(in pistud_id int,in pistud_Key nvarchar(12),
								in pistud_FirstName nvarchar(200),in pistud_LastName nvarchar(200),in pistud_MiddleName nvarchar(200),
								  in pistud_DoB date,in pistud_GenderId int, pistud_ClassSectionId int, pistud_HouseId int, pistud_Password nvarchar(30),
                                  in piAction nvarchar(1), in piuser_id int)
BEGIN
	IF(UPPER(piAction) = 'A') THEN
		
		INSERT INTO 
						tstudent(stud_id,stud_Key,stud_FirstName,
								 stud_MiddleName,stud_LastName,stud_DoB,
								 stud_GenderId,stud_ClassSectionId,stud_HouseId,
								 stud_Password)
			VALUES
						(pistud_id,pistud_Key,pistud_FirstName,
						 pistud_MiddleName,pistud_LastName,pistud_DoB,
						 pistud_GenderId,pistud_ClassSectionId,pistud_HouseId,
						 pistud_Password);
                         
		INSERT INTO tvotedstudent
					(Vst_StudentKey,
					 Vst_IVFHouse,
					 Vst_IVFSenate)
		VALUES
					(pistud_Key, 0, 0);
    
    ELSEIF(UPPER(piAction) = 'E') THEN
		UPDATE 
					tstudent 
        SET 
					stud_FirstName = pistud_FirstName,
					stud_MiddleName = pistud_MiddleName,
					stud_LastName = pistud_LastName,
					stud_DoB = pistud_DoB,
					stud_GenderId = pistud_GenderId,
					stud_ClassSectionId = pistud_ClassSectionId,
					stud_HouseId = pistud_HouseId,
					stud_Password = pistud_Password,
                    stud_LastUpdatedDate = Current_TimeStamp(),
                    stud_LastUpdatedBy = piuser_id
		WHERE 
					Upper(stud_Key) = Upper(pistud_Key);
                
    ELSEIF(UPPER(piAction) = 'D') THEN 
		
        UPDATE 
					tstudent 
        SET 
					stud_IsDeleted = 1,
                    stud_DeletedDate = Current_Timestamp(),
                    stud_DeletedBy = piuser_id
		WHERE 
					Upper(stud_Key) = Upper(pistud_Key);
                    
		DELETE FROM 
					tvotedstudent
        WHERE 
					Upper(Vst_StudentKey) = Upper(pistud_Key);
	END if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DeleteStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DeleteStudent`(in pistude_key nvarchar(12), in piuser_id int)
BEGIN
	Update tStudent
    Set stud_IsDeleted = true,
    stud_DeletedBy = piuser_id,
    stud_DeletedDate = current_timestamp()
    where stud_Key = pistude_key;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllHouseDesignation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllHouseDesignation`()
BEGIN
		select 		(CASE 
						WHEN EXISTS(
									select * from thousenomination
									Where Hsn_HouseDesignationId = Hsd_Id
									and coalesce(HSN_IsDeleted, 0) = 0)
						THEN '#' 
						ELSE '' 
					END) as IsInUse,
					H.Hus_Id, 
					H.Hus_Name as HouseName, 
					HD.Hsd_Id,
					HD.Hsd_Name as HouseDesignation, 
					HD.Hsd_DesCode as HouseDesignationCode,
					HD.Hsd_Description as HouseDesignationDescription,
					G.Gen_Id,
					G.Gen_Text as Gender
        
        from 		thousedesignation HD
        
        inner join 	thouses H 
        on 			H.Hus_Id=HD.Hsd_HouseId 
        and 		H.Hus_IsDeleted=HD.Hsd_IsDeleted
        
        inner join 	tgender G 
        on 			G.Gen_Id=HD.Hsd_Gender
        
        where 
					coalesce(HD.Hsd_IsDeleted,False)=False;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllHouseNominationDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllHouseNominationDetails`()
BEGIN
	select 
				H.Hus_Id,
                H.Hus_Name,
                HD.Hsd_Id,
                HD.Hsd_Name,
                CS.Csc_Id,
                CS.Csc_DisplayName,
				S.stud_Id,
                S.stud_Key,
                S.stud_FirstName,
                S.stud_MiddleName,
                S.stud_LastName,
                G.Gen_Text,
                S.stud_Photo
	from 		
				thousenomination HN
	inner join 	
				thouses H 
	on 			
				H.Hus_Id=HN.Hsn_HouseId 
    and 		
				coalesce(H.Hus_IsDeleted,false)=false
	inner join 
				thousedesignation HD 
	on 			
				HD.Hsd_Id=HN.Hsn_HouseDesignationId and coalesce(HD.Hsd_IsDeleted,false)=false
	inner join 
				tclasssection CS 
	on 
				CS.Csc_Id=HN.Hsn_ClassSectionId 
	and 
				coalesce(CS.Csc_IsDeleted,false)=false
	inner join 
				tstudent S 
	on 
				S.stud_Key=HN.Hsn_studKey 
	and 		
				coalesce(S.stud_IsDeleted,false)=false
    
	inner join 
				tgender G 
	on 
				G.Gen_Id=S.stud_GenderId 
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllHouses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllHouses`()
BEGIN

	SELECT 	(CASE 
				WHEN EXISTS(select * from tStudent Where Hus_Id = stud_HouseId and coalesce(stud_IsDeleted, 0) = 0) OR
					 EXISTS(select * from thousedesignation Where Hsd_HouseId = Hus_Id and coalesce(Hsd_IsDeleted, 0) = 0)
				THEN '#' 
                ELSE '' 
			END) as IsInUse,
			Hus_Id, 
            Hus_Name as HouseName, 
			Hus_Description as HouseDescription, 
            Hus_HouseCode as HouseCode,
			Hus_IsDeleted 
	FROM 
			tHouses 
	Where 
			coalesce(Hus_IsDeleted, 0) = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllSenateDesignation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllSenateDesignation`()
BEGIN
		select 	(CASE 
					WHEN EXISTS(
							select * from tsenatenomination
							Where Snn_SenateDesignationId = Sen_Id
							and coalesce(Snn_IsDeleted, 0) = 0)
					THEN '#' 
					ELSE '' 
				END) as IsInUse,
				S.Sen_Id, 
                S.Sen_Name as SenateDesignation, 
                S.Sen_Description as SenateDescription,
                S.Sen_DesCode as SenateDesignationCode,
				G.Gen_Id,
                G.Gen_Text as Gender
        from 
				tsenatedesignation S
        inner join 
				tgender G on G.Gen_Id=S.Sen_Gender
        where 
				coalesce(S.Sen_IsDeleted,False)=False;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllSenateNominee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllSenateNominee`(piStudentId varchar(12))
BEGIN
	IF piStudentId = '' THEN
	Select 
			Snn_Id as NomineeId,
			Sen_DesCode as DesignationCode,
			stud_key as StudentID,
			CONCAT(stud_FirstName, ' ' ,stud_MiddleName, ' ' ,stud_LastName) as StudentName,
			Csc_DisplayName as ClassSection,
			Snn_Photo as PhotoURL,
			Snn_SenateDesignationId as DesignationID,
			Sen_Name as DesignationText,
			Snn_AboutNominee as AboutMe,
            Snn_SenateElectionId as ElectionId,
            Snn_VoteCount as TotalVote

	from 
			tSenateNomination
			JOIN tSenateDesignation on Snn_SenateDesignationId = Sen_Id
			JOIN tStudent on Snn_studKey = stud_Key
			JOIN tClassSection ON stud_ClassSectionId = Csc_Id
	where 
			coalesce(stud_IsDeleted,0) = 0 AND
            coalesce(snn_IsDeleted,0) = 0 ;
               
	ELSE
		Select 
			Snn_Id as NomineeId,
			Sen_DesCode as DesignationCode,
			stud_key as StudentID,
			CONCAT(stud_FirstName, ' ' ,stud_MiddleName, ' ' ,stud_LastName) as StudentName,
			Csc_DisplayName as ClassSection,
			Snn_Photo as PhotoURL,
			Snn_SenateDesignationId as DesignationID,
			Sen_Name as DesignationText,
			Snn_AboutNominee as AboutMe,
            Snn_SenateElectionId as ElectionId,
            Snn_VoteCount as TotalVote

		from 
				tSenateNomination
				JOIN tSenateDesignation on Snn_SenateDesignationId = Sen_Id
				JOIN tStudent on Snn_studKey = stud_Key
				JOIN tClassSection ON stud_ClassSectionId = Csc_Id
		where 
				coalesce(stud_IsDeleted, 0) = 0 AND
				coalesce(snn_IsDeleted, 0) = 0  AND
                LCASE(stud_key) = LCASE(piStudentId);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetAllStudents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetAllStudents`()
BEGIN
	
		SELECT 	(CASE 
					WHEN EXISTS(select * from tsenatenomination Where Snn_studKey = stud_Key and coalesce(Snn_IsDeleted, 0) = 0)
					OR	 EXISTS(select * from thousenomination Where Hsn_studKey = stud_Key and coalesce(Hsn_IsDeleted, 0) = 0)
					THEN '#' 
					ELSE '' 
				END) as IsInUse,
				stud_Id,
				stud_Key,
				CONCAT(stud_FirstName, ' ' , coalesce(stud_LastName,'')) as StudentName,
				stud_FirstName,
				stud_MiddleName,
				stud_LastName,
				stud_DoB,
				stud_GenderId,
				Gen_Text as stud_Gender,
				Gen_Code as stud_GenderCode,
				stud_ClassSectionId, 
				Cls_Id as stud_ClassId,
				Cls_DisplayName as stud_Class,
				Sec_Id as stud_SectionId,
				Sec_Name as stud_Section,
				Csc_DisplayName as stud_ClassSection,
				Hus_Id as stud_HouseId,
				Hus_Name as stud_HouseName,
				'C' AS stud_UserType,
				Hus_HouseCode as stud_HouseCode,
				stud_Photo,
				stud_Password 
		FROM	
				tStudent 
				JOIN tGender ON stud_GenderId = Gen_Id
				JOIN tClassSection ON stud_ClassSectionId = Csc_Id
				JOIN tHouses ON stud_HouseId = Hus_Id
				JOIN tClass ON Csc_ClassId = Cls_Id
				JOIN tSection ON Csc_SectionId = Sec_Id
		WHERE 
				coalesce(stud_IsDeleted,0) != 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetHouseElection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetHouseElection`()
BEGIN
	Select 	(CASE 
				WHEN EXISTS(
							select * from thousenomination 
                            Where HSN_HouseElectionId = Hel_ElectionId
                            and coalesce(HSN_IsDeleted, 0) = 0)
				THEN '#' 
                ELSE '' 
			END) as IsInUse,
			Hel_ElectionId as ElectionId,
			Hel_StartDate as StartDate,
			Hel_EndDate as EndDate,
            Hel_Description as Description
	from tHouseElection;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetHouseNominationsNameByHouseId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetHouseNominationsNameByHouseId`(piHouseId int)
BEGIN  
	If(piHouseId=0)  then
		Select 
			Hsn_Id  as NomineeId,
			Hsd_DesCode as DesignationCode,
			stud_Key  as StudentID,
			CONCAT(stud_FirstName, ' ' ,stud_MiddleName, ' ' ,stud_LastName) as StudentName,
			Csc_DisplayName  as ClassSection,
			Hus_Id as HouseId,
			Hus_Name as HouseName,
			Hsn_Photo  as PhotoURL,
			Hsn_HouseDesignationId  as DesignationID,
			Hsd_Name  as DesignationText, 
			Hsn_AboutNominee as AboutMe,
			Hsn_VoteCount as TotalVote,
            Hsn_HouseElectionId as ElectionId

		from 
				tHouseNomination
				JOIN tHouseDesignation ON Hsn_HouseDesignationId = Hsd_Id
                JOIN tHouses ON Hsn_HouseId = Hus_Id
				JOIN tStudent on Hsn_studKey = stud_Key
				Join tClassSection on stud_ClassSectionId = Csc_Id
		where 
				COALESCE(Hsn_IsDeleted,0) != 1;  
	ELSEIF(piHouseId>0)  then
	  Select 
				Hsn_Id  as NomineeId,
				Hsd_DesCode as DesignationCode,
				stud_Key  as StudentID,
				CONCAT(stud_FirstName, ' ' ,stud_MiddleName, ' ' ,stud_LastName) as StudentName,
				Csc_DisplayName  as ClassSection,
				Hus_Id as HouseId,
				Hus_Name as HouseName,
				Hsn_Photo  as PhotoURL,
				Hsn_HouseDesignationId  as DesignationID,
				Hsd_Name  as DesignationText, 
				Hsn_AboutNominee as AboutMe,
				Hsn_VoteCount as TotalVote,
                Hsn_HouseElectionId as ElectionId

		from 
				tHouseNomination
				JOIN tHouseDesignation ON Hsn_HouseDesignationId = Hsd_Id
                JOIN tHouses ON Hsn_HouseId = Hus_Id
				JOIN tStudent on Hsn_studKey = stud_Key
				Join tClassSection on stud_ClassSectionId = Csc_Id
		where 
				COALESCE(Hsn_IsDeleted,0) != 1  AND 
				Hus_Id=piHouseId  ;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetSenateElection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetSenateElection`()
BEGIN
	Select 	
			(CASE 
				WHEN EXISTS(
							select * from tSenateNomination 
                            Where Snn_SenateElectionId = Sel_ElectionId
                            and coalesce(Snn_IsDeleted, 0) = 0)		
				THEN '#' 
                ELSE '' 
			END) as IsInUse,
			Sel_ElectionId as ElectionId,
			Sel_StartDate as StartDate,
			Sel_EndDate as EndDate,
            Sel_Description as Description
	from 	
			tsenateelection;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetUserSession` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetUserSession`( in piUserName nvarchar(25),  in piUserType nvarchar (2))
BEGIN
	
	if LOWER(piUserType) = 'c' then
		
			SELECT 
					stud_Id,
					stud_Key,
                    stud_FirstName + ' '+ coalesce(stud_LastName,'') as StudentName,
					stud_FirstName,
					stud_MiddleName,
					stud_LastName,
					stud_DoB,
					stud_GenderId,
					Gen_Text as stud_Gender,
					Gen_Code as stud_GenderCode,
					stud_ClassSectionId, 
					Cls_Id as stud_ClassId,
					Cls_DisplayName as stud_Class,
					Sec_Id as stud_SectionId,
					Sec_Name as stud_Section,
					Csc_DisplayName as stud_ClassSection,
					Hus_Id as stud_HouseId,
					Hus_Name as stud_HouseName,
					'C' AS stud_UserType,
                    Hus_HouseCode as stud_HouseCode,
                    stud_Photo,
                    stud_Password  
			FROM	
					tStudent 
					JOIN tGender ON stud_GenderId = Gen_Id
					JOIN tClassSection ON stud_ClassSectionId = Csc_Id
					JOIN tHouses ON stud_HouseId = Hus_Id
					JOIN tClass ON Csc_ClassId = Cls_Id
					JOIN tSection ON Csc_SectionId = Sec_Id
			WHERE 
					LOWER(stud_Key) = LOWER(piUserName) AND 
					coalesce(stud_IsDeleted,0) != 1;

		
	
	elseif LOWER(piUserType) = 's' then
	
		
			SELECT *, 'S' AS UserType FROM tStaff WHERE LOWER(Stf_EmailId) = LOWER(piUserName) AND coalesce(Stf_IsDeleted,0) != 1;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetVoteStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetVoteStatus`(StudId nvarchar(12))
BEGIN
	if(StudId = '') Then
		Select 
			Vst_StudentKey,
			Vst_IVFHouse,
			Vst_IVFSenate
		From
				tVotedStudent;
	
    Else
    
		Select 
				Vst_StudentKey,
				Vst_IVFHouse,
				Vst_IVFSenate
		From
				tVotedStudent
		WHERE 
				Vst_StudentKey=StudId;	
            
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LoggError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LoggError`(piSeverityId int, piDescription text)
BEGIN
	Insert into tEWSMessage(Ews_SeverityId, Ews_Description, Ews_LoggedDate)
	Values(piSeverityId, piDescription, NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UpdateCandidateVote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UpdateCandidateVote`(piVoaterId nvarchar(12), piNomineeId text, piVoteType nvarchar(10), piColumnName text)
BEGIN
	/*DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    
    START TRANSACTION;
    BEGIN*/
		if Lower(piVoteType) = 's' then
			BEGIN
				SET @Command = CONCAT('Update tVotedStudent Set Vst_IVFSenate=1 where Vst_StudentKey = \'',piVoaterId,'\'');
				Prepare UpdateQuery From @Command;
				EXECUTE UpdateQuery;
                DEALLOCATE PREPARE UpdateQuery;
				
                Update tSenateNomination 
				Set Snn_VoteCount = Snn_VoteCount+1
				where FIND_IN_SET(Snn_studKey, piNomineeId) > 0;			
				END;
		END IF;
        
		if Lower(piVoteType) = 'h' then
			BEGIN
				SET @Command = CONCAT('Update tVotedStudent Set Vst_IVFHouse=1 where Vst_StudentKey = \'',piVoaterId,'\'');
				Prepare UpdateQuery From @Command;
				EXECUTE UpdateQuery;
				DEALLOCATE PREPARE UpdateQuery;
                        
				Update tHouseNomination 
				Set Hsn_VoteCount = Hsn_VoteCount+1
				where FIND_IN_SET(Hsn_studKey, piNomineeId) > 0;
			END;
		END IF;
    /*END;
    COMMIT;*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UpdateUserPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UpdateUserPassword`(piUserName nvarchar(25), piNewPassword nvarchar(20), piDoB Date)
BEGIN
	Update tStudent
	Set stud_Password = lower(piNewPassword)
	where lower(stud_Key) = lower(piUserName)
    and stud_DoB = piDoB;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VerifyUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VerifyUser`(piUserName nvarchar(25), piNewPassword nvarchar(20))
BEGIN
	Select 
			* 
	from 
			vLogin 
	Where 
			lower(Username) = lower(piUserName) and
			lower(Password) = lower(piNewPassword);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vlogin`
--

/*!50001 DROP VIEW IF EXISTS `vlogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vlogin` AS select `tstudent`.`stud_Key` AS `Username`,`tstudent`.`stud_Password` AS `Password`,'C' AS `UserType` from `tstudent` where (coalesce(`tstudent`.`stud_IsDeleted`,0) = 0) */;
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

-- Dump completed on 2023-06-16  5:54:26
