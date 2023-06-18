-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: votinglivedb
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tacademicyear` (
  `Acy_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Acy_AcademicYear` varchar(30) DEFAULT NULL,
  `Acy_StartDate` datetime(6) NOT NULL,
  `Acy_EndDate` datetime(6) NOT NULL,
  `Acy_IsActive` tinyint(1) NOT NULL,
  `Acy_IsDeleted` tinyint(1) DEFAULT '0',
  `Acy_DeletedDate` datetime(6) DEFAULT NULL,
  `Acy_DeletedBy` int(11) DEFAULT NULL,
  `Acy_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Acy_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Acy_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclass` (
  `Cls_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cls_Name` varchar(25) DEFAULT NULL,
  `Cls_DisplayName` varchar(25) DEFAULT NULL,
  `Cls_IsDeleted` tinyint(1) DEFAULT '0',
  `Cls_DeletedDate` datetime(6) DEFAULT NULL,
  `Cls_DeletedBy` int(11) DEFAULT NULL,
  `Cls_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Cls_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cls_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclass`
--

LOCK TABLES `tclass` WRITE;
/*!40000 ALTER TABLE `tclass` DISABLE KEYS */;
INSERT INTO `tclass` VALUES (1,'4','IV',0,NULL,NULL,NULL,NULL),(2,'5','V',0,NULL,NULL,NULL,NULL),(3,'6','VI',0,NULL,NULL,NULL,NULL),(4,'7','VII',0,NULL,NULL,NULL,NULL),(5,'8','VIII',0,NULL,NULL,NULL,NULL),(6,'9','IX',0,NULL,NULL,NULL,NULL),(7,'10','X',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tclasssection`
--

DROP TABLE IF EXISTS `tclasssection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclasssection` (
  `Csc_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Csc_ClassId` int(11) DEFAULT NULL,
  `Csc_SectionId` int(11) DEFAULT NULL,
  `Csc_DisplayName` varchar(30) DEFAULT NULL,
  `Csc_IsDeleted` tinyint(1) DEFAULT '0',
  `Csc_DeletedDate` datetime(6) DEFAULT NULL,
  `Csc_DeletedBy` int(11) DEFAULT NULL,
  `Csc_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Csc_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Csc_Id`),
  KEY `FK__tClassSec__Csc_C__22AA2996` (`Csc_ClassId`),
  KEY `FK__tClassSec__Csc_S__239E4DCF` (`Csc_SectionId`),
  CONSTRAINT `FK__tClassSec__Csc_C__22AA2996` FOREIGN KEY (`Csc_ClassId`) REFERENCES `tclass` (`Cls_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tClassSec__Csc_S__239E4DCF` FOREIGN KEY (`Csc_SectionId`) REFERENCES `tsection` (`Sec_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclasssection`
--

LOCK TABLES `tclasssection` WRITE;
/*!40000 ALTER TABLE `tclasssection` DISABLE KEYS */;
INSERT INTO `tclasssection` VALUES (1,1,1,'IV-A',0,NULL,NULL,NULL,NULL),(2,2,1,'V-A',0,NULL,NULL,NULL,NULL),(3,3,1,'VI-A',0,NULL,NULL,NULL,NULL),(4,4,1,'VII-A',0,NULL,NULL,NULL,NULL),(5,5,1,'VIII-A',0,NULL,NULL,NULL,NULL),(6,6,1,'IX-A',0,NULL,NULL,NULL,NULL),(7,7,1,'X-A',0,NULL,NULL,NULL,NULL),(8,2,2,'V-B',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tclasssection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcolumncodes`
--

DROP TABLE IF EXISTS `tcolumncodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcolumncodes` (
  `cc_id` int(11) NOT NULL,
  `cc_code` varchar(5) DEFAULT NULL,
  UNIQUE KEY `UQ__tColumnC__D6777C4DA58BC047` (`cc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tewsmessage` (
  `Ews_Id` int(11) NOT NULL,
  `Ews_ReportId` varchar(30) DEFAULT NULL,
  `Ews_SeverityId` int(11) DEFAULT NULL,
  `Ews_Description` longtext,
  `Ews_LoggedDate` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tewsmessage`
--

LOCK TABLES `tewsmessage` WRITE;
/*!40000 ALTER TABLE `tewsmessage` DISABLE KEYS */;
INSERT INTO `tewsmessage` VALUES (1,NULL,1,'System.IndexOutOfRangeException: Index was outside the bounds of the array.\r\n   at System.Data.SqlClient.SqlDataReader.CheckDataIsReady(Int32 columnIndex, Boolean allowPartiallyReadColumn, Boolean permitAsync, String methodName)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadColumn(Int32 i, Boolean setTimeout, Boolean allowPartiallyReadColumn)\r\n   at System.Data.SqlClient.SqlDataReader.GetString(Int32 i)\r\n   at VoatingSystem.Business.Authentication.CheckStudentExist(String UserName, String Password) in e:\\DotNet\\Repository\\VoatingSystem.Business\\Authentication.cs:line 135','2015-06-22 01:54:15.587000'),(2,NULL,1,'System.IndexOutOfRangeException: Index was outside the bounds of the array.\r\n   at System.Data.SqlClient.SqlDataReader.CheckDataIsReady(Int32 columnIndex, Boolean allowPartiallyReadColumn, Boolean permitAsync, String methodName)\r\n   at System.Data.SqlClient.SqlDataReader.TryReadColumn(Int32 i, Boolean setTimeout, Boolean allowPartiallyReadColumn)\r\n   at System.Data.SqlClient.SqlDataReader.GetString(Int32 i)\r\n   at VoatingSystem.Business.Authentication.CheckStudentExist(String UserName, String Password) in e:\\DotNet\\Repository\\VoatingSystem.Business\\Authentication.cs:line 135','2015-06-22 01:54:53.443000');
/*!40000 ALTER TABLE `tewsmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tewsmessageseverity`
--

DROP TABLE IF EXISTS `tewsmessageseverity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tewsmessageseverity` (
  `Ems_SeverityId` int(11) NOT NULL,
  `Ems_Severity` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tgender` (
  `Gen_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Gen_Code` varchar(1) DEFAULT NULL,
  `Gen_Text` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Gen_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thousedesignation` (
  `Hsd_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hsd_HouseId` int(11) DEFAULT NULL,
  `Hsd_Name` varchar(30) DEFAULT NULL,
  `Hsd_Description` varchar(200) DEFAULT NULL,
  `Hsd_DesCode` varchar(5) DEFAULT NULL,
  `Hsd_Gender` int(11) DEFAULT NULL,
  `Hsd_IsDeleted` tinyint(1) DEFAULT '0',
  `Hsd_DeletedDate` datetime(6) DEFAULT NULL,
  `Hsd_DeletedBy` int(11) DEFAULT NULL,
  `Hsd_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hsd_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Hsd_Id`),
  KEY `FK__tHouseDes__Hsd_H__2A4B4B5E` (`Hsd_HouseId`),
  KEY `FK__tHouseDes__Hsd_G__2B3F6F97` (`Hsd_Gender`),
  CONSTRAINT `FK__tHouseDes__Hsd_G__2B3F6F97` FOREIGN KEY (`Hsd_Gender`) REFERENCES `tgender` (`Gen_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tHouseDes__Hsd_H__2A4B4B5E` FOREIGN KEY (`Hsd_HouseId`) REFERENCES `thouses` (`Hus_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thouseelection` (
  `Hel_ElectionId` int(11) NOT NULL AUTO_INCREMENT,
  `Hel_StartDate` datetime NOT NULL,
  `Hel_EndDate` datetime NOT NULL,
  `Hel_Description` longtext,
  PRIMARY KEY (`Hel_ElectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Hold information about scheduled House Elections';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thouseelection`
--

LOCK TABLES `thouseelection` WRITE;
/*!40000 ALTER TABLE `thouseelection` DISABLE KEYS */;
INSERT INTO `thouseelection` VALUES (1,'2019-06-21 00:00:00','2019-06-21 23:59:00','Election 2019-20');
/*!40000 ALTER TABLE `thouseelection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thousenomination`
--

DROP TABLE IF EXISTS `thousenomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thousenomination` (
  `Hsn_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hsn_HouseId` int(11) DEFAULT NULL,
  `Hsn_HouseDesignationId` int(11) DEFAULT NULL,
  `Hsn_ClassSectionId` int(11) DEFAULT NULL,
  `Hsn_studKey` varchar(12) DEFAULT NULL,
  `Hsn_VoteCount` int(11) DEFAULT '0',
  `Hsn_Photo` longtext,
  `Hsn_AboutNominee` longtext,
  `Hsn_IsDeleted` tinyint(1) DEFAULT '0',
  `Hsn_DeletedDate` datetime(6) DEFAULT NULL,
  `Hsn_DeletedBy` int(11) DEFAULT NULL,
  `Hsn_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hsn_LastUpdatedBy` int(11) DEFAULT NULL,
  `Hsn_HouseElectionId` int(11) NOT NULL,
  PRIMARY KEY (`Hsn_Id`),
  UNIQUE KEY `Hsn_studKey_UNIQUE` (`Hsn_studKey`),
  KEY `FK__tHouseNom__Hsn_H__45F365D3` (`Hsn_HouseId`),
  KEY `FK__tHouseNom__Hsn_H__46E78A0C` (`Hsn_HouseDesignationId`),
  KEY `FK__tHouseNom__Hsn_C__47DBAE45` (`Hsn_ClassSectionId`),
  KEY `FK__tHouseNom__Hsn_s__48CFD27E` (`Hsn_studKey`),
  KEY `FK_ElectionId_tHouseNom_Hsn_ElectionId_idx` (`Hsn_HouseElectionId`),
  CONSTRAINT `FK_ElectionId_tHouseNom_Hsn_ElectionId` FOREIGN KEY (`Hsn_HouseElectionId`) REFERENCES `thouseelection` (`Hel_ElectionId`) ON UPDATE NO ACTION,
  CONSTRAINT `FK__tHouseNom__Hsn_C__47DBAE45` FOREIGN KEY (`Hsn_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tHouseNom__Hsn_H__45F365D3` FOREIGN KEY (`Hsn_HouseId`) REFERENCES `thouses` (`Hus_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tHouseNom__Hsn_H__46E78A0C` FOREIGN KEY (`Hsn_HouseDesignationId`) REFERENCES `thousedesignation` (`Hsd_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tHouseNom__Hsn_s__48CFD27E` FOREIGN KEY (`Hsn_studKey`) REFERENCES `tstudent` (`stud_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thousenomination`
--

LOCK TABLES `thousenomination` WRITE;
/*!40000 ALTER TABLE `thousenomination` DISABLE KEYS */;
INSERT INTO `thousenomination` VALUES (1,1,1,5,'KL1025',26,'../dist/img/nominees/Neeraj Kore.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(2,1,1,5,'KL1022',20,'../dist/img/nominees/Kamran Kazi.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(3,1,1,6,'KL1055',13,'../dist/img/nominees/Isha Baviskar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(4,1,1,6,'KL1070',10,'../dist/img/nominees/Adwait Kamble.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(5,3,7,5,'KL1016',18,'../dist/img/nominees/Vedant Jadhav.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(6,3,7,5,'KL1030',7,'../dist/img/nominees/Pracheta Mankar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(7,3,7,6,'KL1056',30,'../dist/img/nominees/Aastha Bhayani.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(8,3,7,6,'KL1086',15,'../dist/img/nominees/Pawan Pawar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(9,4,10,5,'KL1021',19,'../dist/img/nominees/Aarohi Kate.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(10,4,10,5,'KL1010',4,'../dist/img/nominees/Nupur Deore.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(11,4,10,6,'KL1081',41,'../dist/img/nominees/Tejas Nakhate.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(12,4,10,6,'KL1092',5,'../dist/img/nominees/Kashmira Talele.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(13,2,4,5,'KL1028',37,'../dist/img/nominees/Apoorva Landge.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(14,2,4,5,'KL1044',10,'../dist/img/nominees/Shreya Ranawade.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(15,2,4,6,'KL1054',19,'../dist/img/nominees/Sarth Barathe.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(16,2,4,6,'KL1091',14,'../dist/img/nominees/Shravani Sonigra.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(18,1,2,8,'KL1387',27,'../dist/img/nominees/Manthan Markule.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(19,1,2,3,'KL1279',23,'../dist/img/nominees/Rishan Shetty.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(20,1,2,4,'KL1428',10,'../dist/img/nominees/Atharva Shirke.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(21,3,8,2,'KL1406',4,'../dist/img/nominees/Mitali Kaling.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(22,3,8,8,'KL1378',16,'../dist/img/nominees/Amey Doifode.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(23,3,8,3,'KL1259',19,'../dist/img/nominees/Ayush Gupta.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(24,3,8,4,'KL1348',31,'../dist/img/nominees/Saee Nikhal.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(25,4,11,2,'KL1389',24,'../dist/img/nominees/Sarvesh Patil.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(26,4,11,8,'KL1397',3,'../dist/img/nominees/Anushka Baviskar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(27,4,11,3,'KL1299',24,'../dist/img/nominees/Saee Shirude.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(28,4,11,4,'KL1334',18,'../dist/img/nominees/Soham wagh.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(29,2,5,2,'KL1419',1,'../dist/img/nominees/Tarinya Hawaldar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(30,2,5,8,'KL1404',22,'../dist/img/nominees/Shriya Gadekar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(31,2,5,3,'KL1294',21,'../dist/img/nominees/Kashish Mudholkar.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(32,2,5,4,'KL1319',36,'../dist/img/nominees/Shubhankar Kulkarni.jpg',NULL,0,NULL,NULL,NULL,NULL,1),(33,1,2,2,'KL1402',9,'../dist/img/nominees/Sukhnam Chaudhary.jpg',NULL,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `thousenomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thouses`
--

DROP TABLE IF EXISTS `thouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thouses` (
  `Hus_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hus_Name` varchar(30) DEFAULT NULL,
  `Hus_Description` varchar(200) DEFAULT NULL,
  `Hus_HouseCode` varchar(3) DEFAULT NULL,
  `Hus_IsDeleted` tinyint(1) DEFAULT '0',
  `Hus_DeletedDate` datetime(6) DEFAULT NULL,
  `Hus_DeletedBy` int(11) DEFAULT NULL,
  `Hus_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Hus_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Hus_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `troles` (
  `Rol_RoleId` int(11) NOT NULL AUTO_INCREMENT,
  `Rol_CanAdd` tinyint(1) DEFAULT NULL,
  `Rol_CanEdit` tinyint(1) DEFAULT NULL,
  `Rol_CanDelete` tinyint(1) DEFAULT NULL,
  `Rol_CanView` tinyint(1) DEFAULT '1',
  `Rol_IsDeleted` tinyint(1) DEFAULT '0',
  `Rol_DeletedDate` datetime(6) DEFAULT NULL,
  `Rol_DeletedBy` int(11) DEFAULT NULL,
  `Rol_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Rol_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Rol_RoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsection` (
  `Sec_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sec_Name` varchar(25) DEFAULT NULL,
  `Sec_DisplayName` varchar(25) DEFAULT NULL,
  `Sec_IsDeleted` tinyint(1) DEFAULT '0',
  `Sec_DeletedDate` datetime(6) DEFAULT NULL,
  `Sec_DeletedBy` int(11) DEFAULT NULL,
  `Sec_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Sec_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sec_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsection`
--

LOCK TABLES `tsection` WRITE;
/*!40000 ALTER TABLE `tsection` DISABLE KEYS */;
INSERT INTO `tsection` VALUES (1,'A','Division A',0,NULL,NULL,NULL,NULL),(2,'B','Division B',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsenatedesignation`
--

DROP TABLE IF EXISTS `tsenatedesignation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsenatedesignation` (
  `Sen_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sen_Name` varchar(30) DEFAULT NULL,
  `Sen_Description` varchar(200) DEFAULT NULL,
  `Sen_DesCode` varchar(5) DEFAULT NULL,
  `Sen_Gender` int(11) DEFAULT NULL,
  `Sen_IsDeleted` tinyint(1) DEFAULT '0',
  `Sen_DeletedDate` datetime(6) DEFAULT NULL,
  `Sen_DeletedBy` int(11) DEFAULT NULL,
  `Sen_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Sen_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sen_Id`),
  KEY `FK__tSenateDe__Sen_G__2F10007B` (`Sen_Gender`),
  CONSTRAINT `FK__tSenateDe__Sen_G__2F10007B` FOREIGN KEY (`Sen_Gender`) REFERENCES `tgender` (`Gen_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsenateelection` (
  `Sel_ElectionId` int(11) NOT NULL AUTO_INCREMENT,
  `Sel_StartDate` datetime NOT NULL,
  `Sel_EndDate` datetime NOT NULL,
  `Sel_Description` longtext,
  PRIMARY KEY (`Sel_ElectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsenatenomination` (
  `Snn_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Snn_SenateDesignationId` int(11) DEFAULT NULL,
  `Snn_ClassSectionId` int(11) DEFAULT NULL,
  `Snn_studKey` varchar(12) DEFAULT NULL,
  `Snn_VoteCount` int(11) DEFAULT '0',
  `Snn_Photo` longtext,
  `Snn_AboutNominee` longtext,
  `Snn_IsDeleted` tinyint(1) DEFAULT '0',
  `Snn_DeletedDate` datetime(6) DEFAULT NULL,
  `Snn_DeletedBy` int(11) DEFAULT NULL,
  `Snn_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Snn_LastUpdatedBy` int(11) DEFAULT NULL,
  `Snn_SenateElectionId` int(11) NOT NULL,
  PRIMARY KEY (`Snn_Id`),
  UNIQUE KEY `Snn_studKey_UNIQUE` (`Snn_studKey`),
  KEY `FK__tSenateNo__Snn_S__3A81B327` (`Snn_SenateDesignationId`),
  KEY `FK__tSenateNo__Snn_C__3B75D760` (`Snn_ClassSectionId`),
  KEY `FK__tSenateNo__Snn_s__3C69FB99` (`Snn_studKey`),
  KEY `FK__tSenateNo__Snn_ElectionId_idx` (`Snn_SenateElectionId`),
  CONSTRAINT `FK__ElectionId` FOREIGN KEY (`Snn_SenateElectionId`) REFERENCES `tsenateelection` (`Sel_ElectionId`) ON UPDATE NO ACTION,
  CONSTRAINT `FK__tSenateNo__Snn_C__3B75D760` FOREIGN KEY (`Snn_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tSenateNo__Snn_S__3A81B327` FOREIGN KEY (`Snn_SenateDesignationId`) REFERENCES `tsenatedesignation` (`Sen_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tSenateNo__Snn_s__3C69FB99` FOREIGN KEY (`Snn_studKey`) REFERENCES `tstudent` (`stud_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tstaff` (
  `Stf_UserId` int(11) NOT NULL AUTO_INCREMENT,
  `Stf_FirstName` varchar(50) DEFAULT NULL,
  `Stf_MiddleName` varchar(50) DEFAULT NULL,
  `Stf_LastName` varchar(50) DEFAULT NULL,
  `Stf_DoB` datetime DEFAULT NULL,
  `Stf_EmailId` varchar(250) DEFAULT NULL,
  `Stf_ContactNo` varchar(25) DEFAULT NULL,
  `Stf_GenderId` int(11) DEFAULT NULL,
  `Stf_AddressId` int(11) DEFAULT NULL,
  `Stf_IsCandidate` bit(1) DEFAULT NULL,
  `Stf_RoleId` int(11) DEFAULT NULL,
  `Stf_Password` varchar(10) DEFAULT NULL,
  `Stf_CreatedDate` datetime(6) DEFAULT NULL,
  `Stf_CreatedBy` int(11) DEFAULT NULL,
  `Stf_IsDeleted` bit(1) DEFAULT b'0',
  `Stf_DeletedDate` datetime(6) DEFAULT NULL,
  `Stf_Usr_DeletedBy` int(11) DEFAULT NULL,
  `Stf_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `Stf_LastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`Stf_UserId`),
  KEY `FK_tStaff_tRoles` (`Stf_RoleId`),
  CONSTRAINT `FK_tStaff_tRoles` FOREIGN KEY (`Stf_RoleId`) REFERENCES `troles` (`Rol_RoleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tstudent` (
  `stud_Id` int(11) NOT NULL,
  `stud_Key` varchar(12) NOT NULL,
  `stud_FirstName` varchar(50) DEFAULT NULL,
  `stud_MiddleName` varchar(50) DEFAULT NULL,
  `stud_LastName` varchar(50) DEFAULT NULL,
  `stud_DoB` date DEFAULT NULL,
  `stud_GenderId` int(11) DEFAULT NULL,
  `stud_ClassSectionId` int(11) DEFAULT NULL,
  `stud_HouseId` int(11) DEFAULT NULL,
  `stud_IsActive` tinyint(1) DEFAULT '1',
  `stud_Password` varchar(25) DEFAULT NULL,
  `stud_CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `stud_CreatedBy` int(11) DEFAULT NULL,
  `stud_IsDeleted` tinyint(1) DEFAULT '0',
  `stud_DeletedDate` datetime(6) DEFAULT NULL,
  `stud_DeletedBy` int(11) DEFAULT NULL,
  `stud_LastUpdatedDate` datetime(6) DEFAULT NULL,
  `stud_LastUpdatedBy` int(11) DEFAULT NULL,
  `stud_Photo` longtext,
  `tstudentcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stud_Key`),
  KEY `FK__tStudent__stud_G__32E0915F` (`stud_GenderId`),
  KEY `FK__tStudent__stud_C__33D4B598` (`stud_ClassSectionId`),
  KEY `FK__tStudent__stud_H__34C8D9D1` (`stud_HouseId`),
  CONSTRAINT `FK__tStudent__stud_C__33D4B598` FOREIGN KEY (`stud_ClassSectionId`) REFERENCES `tclasssection` (`Csc_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tStudent__stud_G__32E0915F` FOREIGN KEY (`stud_GenderId`) REFERENCES `tgender` (`Gen_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__tStudent__stud_H__34C8D9D1` FOREIGN KEY (`stud_HouseId`) REFERENCES `thouses` (`Hus_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstudent`
--

LOCK TABLES `tstudent` WRITE;
/*!40000 ALTER TABLE `tstudent` DISABLE KEYS */;
INSERT INTO `tstudent` VALUES (1001,'KL1001','Varad','Mandar','Apte','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,'2015-08-09 01:33:13.000000',1,'2019-06-17 17:55:56.000000',1,'../dist/img/boy.png',NULL),(1002,'KL1002','Pradeep','Surendrapal','Bahenwal','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,'2015-08-09 01:34:16.000000',1,'2018-06-14 18:22:53.000000',1,'../dist/img/boy.png',NULL),(1003,'KL1003','Yash','Amit','Bahirat','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1004,'KL1004','Praneet','Abhijit','Batwal','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1005,'KL1005','Aarya','Sanjay','Bhujad','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1006,'KL1006','Aditya','Girish','Bodhale','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1007,'KL1007','Ved','Uday','Bute','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1008,'KL1008','Mansavi','Ramesh','Chavan','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2017-06-22 10:28:48.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1009,'KL1009','Sanika','Umesh','Chowdhary','2015-06-22',2,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1010,'KL1010','Nupur','Kubersing','Deore','2015-06-22',2,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1011,'KL1011','Adwaiy','Ajit','Deshpande','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1012,'KL1012','Rucha','Vinay','Gadgil','2015-06-22',2,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1013,'KL1013','Shravan','Santosh','Gadhave','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1014,'KL1014','Janhavi','Nitin','Gaikwad','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1015,'KL1015','Manasvi','Machhindra','Jadhav','2015-06-22',2,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1016,'KL1016','Vedant','Santosh','Jadhav','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1017,'KL1017','Parth','Prashanta','Jedhe','2015-06-22',1,5,1,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1018,'KL1018','Shlok','Chandrakant','Kadam','2015-06-22',1,5,4,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1019,'KL1019','Dhananjay','Sanjay','Kamble','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1020,'KL1020','Aditya','Suhesh','Karmalkar','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1021,'KL1021','Aarohee','Amol','Kate','2015-06-22',2,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1022,'KL1022','Kamran','Nissarahmad','Kazi','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1023,'KL1023','Vedika','Dattatray','Kendale','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1024,'KL1024','Harshad','Maruti','Konurkar','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1025,'KL1025','Neeraj','Sudhir','Kore','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1026,'KL1026','Swayam','Yogesh','Kulkarni','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1027,'KL1027','Rahee','Ashish','Laigude','2015-06-22',2,5,2,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1028,'KL1028','Apoorva','Sudhir','Landge','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1029,'KL1029','Raj','Ashish','Mahabadi','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1030,'KL1030','Pracheta','Prashant','Mankar','2015-06-22',2,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1031,'KL1031','Paras','Prashant','Marulkar','2015-06-22',1,5,3,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1032,'KL1032','Rutujeet','Rakesh','Medhekar','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1033,'KL1033','Tanishqa','Pravin','Mhaske','2015-06-22',2,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1034,'KL1034','Om','Honaji','Murkute','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1035,'KL1035','Shreyas','Parshuram','Nalavade','2015-06-22',1,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1036,'KL1036','Swanandi','Nitin','Pande','2015-06-22',2,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2018-06-18 22:37:51.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1037,'KL1037','Vedanti','Ganesh','Papat','2015-06-22',2,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2018-06-18 22:38:48.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1038,'KL1038','Kanishka','Dattatray','Patil','2015-06-22',2,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1039,'KL1039','Vishruth','Abhijit','Patki','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1040,'KL1040','Neha','Vishwanath','Phad','2015-06-22',2,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1041,'KL1041','Shravani','Anil','Pingale','2015-06-22',2,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1042,'KL1042','Yogesh','Mahendra','Rajput','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1043,'KL1043','Nakshatra','Satish','Ranawade','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1044,'KL1044','Shreya','Sachin','Ranawade','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1045,'KL1045','Yash','Vinodkumar','Sambare','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1046,'KL1046','Tanvi','Amol','Sathe','2015-06-22',2,5,1,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1047,'KL1047','Saba','Adid - ur - rehman','Sayyed','2015-06-22',2,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1048,'KL1048','Ananya','Chandrashekhar','Sista','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1049,'KL1049','Vaishnavi','Uttam','Tarale','2015-06-22',2,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1050,'KL1050','Veena','Vinayak','Thorat','2015-06-22',2,5,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1051,'KL1051','Pradyumna','Dattatray','Waghmode','2015-06-22',1,5,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1052,'KL1052','Raj','Naresh','Pingale','2015-06-22',1,5,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1053,'KL1053','Aryan','Pravin','Karekar','2015-06-22',1,5,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1054,'KL1054','Saarth','Avinash','Barathe','2015-06-22',1,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1055,'KL1055','Isha','Nitin','Baviskar','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1056,'KL1056','Aastha','Parag','Bhayani','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1057,'KL1057','Sarthak','Deepak','Bhujbal','2015-06-22',1,6,1,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1058,'KL1058','Simran','Subhash','Chaudhari','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1059,'KL1059','Manisha','Vagtaram','Chaudhari','2015-06-22',2,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1060,'KL1060','Tamanna','Ganeshsingh','Chauhan','2015-06-22',2,6,4,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1061,'KL1061','Shrushti','Ajit','Gaikwad','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1062,'KL1062','Yash','Ajay','Ghabade','2015-06-22',1,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1063,'KL1063','Shrushti','Santosh','Handal','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1064,'KL1064','Parth','Shankar','Harpude','2015-06-22',1,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1065,'KL1065','Soha','Zuber','Inamdar','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1066,'KL1066','Shravan','Sunil','Ingawale','2015-06-22',1,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1067,'KL1067','Keertana','Kartik','Iyer','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1068,'KL1068','Sanskruti','Jeevan','Junawane','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1069,'KL1069','Kalpakshi','Promod','Kadam','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1070,'KL1070','Advait','Avadhut','Kamble','2015-06-22',1,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2017-06-22 08:54:50.000000',1,'../dist/img/boy.png',NULL),(1071,'KL1071','Eeshan','Hrishikesh','Khambete','2015-06-22',1,6,2,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1072,'KL1072','Mayank','Makarand','Khedkar','2015-06-22',1,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1073,'KL1073','Neha','Sunil','Kirve','2015-06-22',2,6,2,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1074,'KL1074','Karan','Navalsiddha','Mane','2015-06-22',1,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1075,'KL1075','Punitkaur','Ashmit','Mann','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1076,'KL1076','Dishita','Ganesh','Marathe','2015-06-22',2,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1077,'KL1077','Kavya','Ganesh','Markule','2015-06-22',2,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1078,'KL1078','Karan','Mohan','Mathare','2015-06-22',1,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1079,'KL1079','Het','Alkesh','Mehta','2015-06-22',1,6,3,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1080,'KL1080','Archita','Vikram','Naik','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1081,'KL1081','Tejas','Sakharam','Nakhate','2015-06-22',2,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1082,'KL1082','Apoorva','Rajendra','Padwal','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1083,'KL1083','Siddhesh','Shivaji','Patil','2015-06-22',1,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1084,'KL1084','Tanvi','Girish','Patil','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2017-06-22 08:50:41.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1085,'KL1085','Utkarsh','Vishal','Patil','2015-06-22',1,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1086,'KL1086','Pawan','Dattatraya','Pawar','2015-06-22',1,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2017-06-22 08:56:14.000000',1,'../dist/img/boy.png',NULL),(1087,'KL1087','Vaishnav','Mahendra','Pawar','2015-06-22',1,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1088,'KL1088','Raj','Ravindra','Rajput','2015-06-22',1,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1089,'KL1089','Pranav','Amar','Rokade','2015-06-22',1,6,1,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1090,'KL1090','Karishma','Sharad','Sharma','2015-06-22',2,6,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1091,'KL1091','Shravani','Niteen','Songira','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1092,'KL1092','Kashmira','Sunil','Talele','2015-06-22',2,6,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1093,'KL1093','Prasanna','Kumar','U.B Aniruddh','2015-06-22',1,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1094,'KL1094','Anirudh','Vijay','Vijay','2015-06-22',1,6,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2017-06-22 08:55:42.000000',1,'../dist/img/boy.png',NULL),(1095,'KL1095','Rugved','Prasad','Gokule','2015-06-22',1,6,4,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1096,'KL1096','Vanshika','','Dhore','2015-06-22',2,6,1,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1097,'KL1097','Pranjali','Pravin','Ingale','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1098,'KL1098','Rutuja','','Adhav','2015-06-22',2,6,4,0,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1099,'KL1099','Amita','Pramod','Patki','2015-06-22',2,6,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1100,'KL1100','Aarya','Sandeep','Admane','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,'2019-06-17 18:39:23.000000',1,'../dist/img/boy.png',NULL),(1101,'KL1101','Nahush','Nilesh','Awaghan','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1102,'KL1102','Om','Nitin','Bahirat','2015-06-22',1,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1103,'KL1103','Astha','Vijay','Bawiskar','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1104,'KL1104','Anuja','Pravin','Bhadane','2015-06-22',2,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1105,'KL1105','Vishesh','Rupesh','Bhandare','2015-06-22',1,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1106,'KL1106','Ishita','Mangesh','Bhumkar','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1107,'KL1107','Janhvi','Somanath','Bhorade','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1108,'KL1108','Manish','Vaktaram','Chaudhary','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1109,'KL1109','Janahvi','Virendra','Dande','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1110,'KL1110','Arjun','Gopal','Deshmukh','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1111,'KL1111','Abhinandan','Amol','Gaikwad','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1112,'KL1112','Isha','Rajesh','Ghewade','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1113,'KL1113','Riya','Pravin','Gore','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1114,'KL1114','Aditya','Nitin','Jalihal','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1115,'KL1115','Gargi','Vinayak','Joshi','2015-06-22',2,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1116,'KL1116','Chinmay','Ganesh','Kakade','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1117,'KL1117','Prashansa','Nitin','Kale','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1118,'KL1118','Yash','Navnath','Karanjule','2015-06-22',1,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1119,'KL1119','Shruti','Sandeep','Kodre','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1120,'KL1120','Shreetej','Vijay','Kumbhar','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1121,'KL1121','Sujal','Nandkumar','Magar','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1122,'KL1122','Sai','Honaji','Murkute','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1123,'KL1123','Vivek','Rajendra','Murkute','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1124,'KL1124','Sakshi','Vijay','Nandgude','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1125,'KL1125','Harsh','Amarendra','Panditrao','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1126,'KL1126','Devashree','Hemant','Pate','2015-06-22',2,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1127,'KL1127','Alisha','Pravin','Patil','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1128,'KL1128','Mrudula','Avinash','Patil','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1129,'KL1129','Sarvesh','Baban','Pawar','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1130,'KL1130','Sara','Anil','Powar','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1131,'KL1131','Sujay','Shrikant','Punekar','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1132,'KL1132','Siddhesh','Bharat','Ranawade','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1133,'KL1133','Soham','Bharat','Ranawade','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1134,'KL1134','Pranav','Mahesh','Raskar','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1135,'KL1135','Shruti','Anand','Rebinal','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1136,'KL1136','Sanket','Rajesh','Sawant','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1137,'KL1137','Dev','Jay','Sharma','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1138,'KL1138','Diya','Jayakara','Shetty','2015-06-22',2,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1139,'KL1139','Sai','Vikas','Shewale','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1140,'KL1140','Shreya','Mahesh','Sutar','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1141,'KL1141','Arnav','Namdev','Talape','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1142,'KL1142','Kshitij','Sunil','Takale','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1143,'KL1143','Harshit','Amin','Thakker','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1144,'KL1144','Apoorv','Ajay','Thite','2015-06-22',1,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1145,'KL1145','Gayatri','Ravindra','Walture','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1146,'KL1146','Shravani','Hemant','Yadav','2015-06-22',2,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1147,'KL1147','Soham','Vitthal','Ingale','2015-06-22',1,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1148,'KL1148','Sarah','Sagar','Gunjal','2015-06-22',2,7,4,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1149,'KL1149','Deep','Dyaneshawar','Shinde','2015-06-22',1,7,1,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1150,'KL1150','Siddhi','Hemant','Khadke','2015-06-22',2,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1151,'KL1151','Abhay','','Ingle','2015-06-22',1,7,3,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1152,'KL1152','Gargi','Kundan','Sangar','2015-06-22',2,7,2,1,'12345','2015-06-21 20:11:36',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1153,'KL1153','Anand','Manoj','Bafana','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1154,'KL1154','Anurag','Kishor','Bhosale','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1155,'KL1155','Sakshi','Sanjay','Bhosale','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1156,'KL1156','Anushka','Ravindra','Chaudhari','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1157,'KL1157','Riya','Ganeshsing','Chauhan','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1158,'KL1158','Kanishka','Omprakash','Chavan','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1159,'KL1159','Parth','Ashok','Deshmukh','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1160,'KL1160','Ojas','Dhananjay','Deshpande','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1161,'KL1161','Sarthak','Prajakta','Donkar','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1162,'KL1162','Reva','Ninay','Gadgil','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1163,'KL1163','Aboli','Satish','Gaikwad','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1164,'KL1164','Heramb','Shivaram','Gavankar','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1165,'KL1165','Tanishq','Vikram','Jadhav','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1166,'KL1166','Avanti','Pravin','Jagtap','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1167,'KL1167','Anish','Prashant','Joshi','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1168,'KL1168','Anish','Milind','Joshirao','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1169,'KL1169','Shamal','Santosh','Kadam','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1170,'KL1170','Siddhi','Vikas','Kadam','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1171,'KL1171','Madhura','Girish','Kapshikar','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1172,'KL1172','Sukhada','Rajendra','Karve','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1173,'KL1173','Aneesh','Atul','Katkar','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1174,'KL1174','Vaishnavi','Mahadev','Khandagale','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1175,'KL1175','Pratham','Tipanna','Kshirsagar','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1176,'KL1176','Shweta','Rahul','Mahajan','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1177,'KL1177','Pooja','Nitin','Medhekar','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1178,'KL1178','Sanika','Vilas','Najan','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1179,'KL1179','Yogada','Anil','Nimbalkar','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1180,'KL1180','Abhishek','Ashok','Patil','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1181,'KL1181','Yashraj','Sachin','Ranawade','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1182,'KL1182','Amogh','Sunil','Rathod','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1183,'KL1183','Saraswati','','Shreevallabha','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1184,'KL1184','Pranav','Bhushan','Shelke','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1185,'KL1185','Amey','Sachin','Shembade','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1186,'KL1186','Arya','Mahendra','Shewale','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1187,'KL1187','Ankita','Ramchandra','Shinde','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1188,'KL1188','Amulya','Chandrashekhar','Sista','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1189,'KL1189','Jay','Rohit','Suratwala','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1190,'KL1190','Narmada','Shrikant','Temkar','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1191,'KL1191','Ashish','Sandesh','Tiwade','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1192,'KL1192','Vaibhava','Dattatraya','Waghmode','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1193,'KL1193','Kaanan','Vinayak','Wagle','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1194,'KL1194','Nupur','','Adhav','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1195,'KL1195','Priyadarshani','Yashodhan','Kher','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,'2017-06-22 08:33:47.000000',1,'../dist/img/boy.png',NULL),(1196,'KL1196','Sampada','','Kokane','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1197,'KL1197','Atharva','','Pandhare','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1198,'KL1198','Soham','','Mail','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1199,'KL1199','Sanaya','','Sah','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1200,'KL1200','Atharva','','Jagtap','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1201,'KL1201','Hrudaya','','Pawar','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2019-06-17 18:43:10.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1202,'KL1202','Reva','Jatant','Atre','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1203,'KL1203','Anish','Shekhar','Aundhkar','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1204,'KL1204','Sejal','Nitin','Bahirat','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1205,'KL1205','Aaditya','Satish','Bhagwat','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1206,'KL1206','Anusha','Atul','Bhanap','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1207,'KL1207','Dheeral','Parag','Bhayani','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1208,'KL1208','Shrushti','Sharad','Borikar','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1209,'KL1209','Prutha','Vishwas','Chinchore','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1210,'KL1210','Sharvari','Prashant','Dawkhare','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1211,'KL1211','Pratik','Jaideep','Deshpande','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1212,'KL1212','Gayatri','Nishikant','Dharmadhikari','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1213,'KL1213','Om','Ashish','Dhere','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1214,'KL1214','Satyam','Sharad','Dhore','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1215,'KL1215','Ishan','Milind','Gujarathi','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1216,'KL1216','Pratham','Shankar','Harpude','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1217,'KL1217','Shubhada','Niranjan','Jadhav','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1218,'KL1218','Avanti','Parag','Jathar','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1219,'KL1219','Shruti','Amod','Kalgi','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1220,'KL1220','Sahil','Nitin','Kaling','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1221,'KL1221','Siddhi','Diwakar','Keskar','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1222,'KL1222','Prathamesh','Ashok','Khamkar','2015-06-22',1,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1223,'KL1223','Shantanu','Nandu','Kokate','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1224,'KL1224','Aditi','Balasaheb','Machale','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1225,'KL1225','Mrunmayee','Shrikant','Marane','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1226,'KL1226','Harsh','Abhijeet','Mohite','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1227,'KL1227','Sarthak','Vishal','Nakhate','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1228,'KL1228','Shravani','Parshuram','Nalavade','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1229,'KL1229','Rashmi','Yamanappa','Ogennavar','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1230,'KL1230','Sejal','Yogesh','Oswal','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1231,'KL1231','Tanvi','Milind','Paturkar','2015-06-22',2,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1232,'KL1232','Saniya','Swapnil','Pendhari','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1233,'KL1233','Bhaskar','Vasanth','Rao','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1234,'KL1234','Sumer','Mandar','Raravikar','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1235,'KL1235','Pragati','Mahesh','Raskar','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1236,'KL1236','Gauri','Kedar','Salunkhe','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1237,'KL1237','Sneha','Jayakar','Shetty','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1238,'KL1238','Rutvij','Kiran','Surve','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1239,'KL1239','Indrayani','Krishnachandra','Takawale','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1240,'KL1240','Priyanti','Sarang','Todkar','2015-06-22',2,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1241,'KL1241','Shruti','Abhijit','Tatake','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1242,'KL1242','Ananya','Prasannakumar','U.B ','2015-06-22',2,7,3,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1243,'KL1243','Kunal','Nandkumar','Uttekar','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1244,'KL1244','Mohit','Santosh','Walke','2015-06-22',1,7,2,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1245,'KL1245','Atharva','Arun','Lokhande','2015-06-22',1,7,1,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1246,'KL1246','Tejas','','Khadke','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1247,'KL1247','Avanti','','Ingle','2015-06-22',2,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1248,'KL1248','Niranjan','','Dhore','2015-06-22',1,7,4,0,'12345','2015-06-21 20:11:36',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,'../dist/img/boy.png',NULL),(1249,'KL1249','Atharva','Sunil','Adsule','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1250,'KL1250','Mayank','Mahesh','Awake','2015-06-22',1,3,4,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:04:32.000000',1,'../dist/img/boy.png',NULL),(1251,'KL1251','Varad','Somnath','Bhorade','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:09:32.000000',1,'../dist/img/boy.png',NULL),(1252,'KL1252','Pranav','Sunil','Borhade','2015-06-22',1,3,1,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1253,'KL1253','Jihan','Biswanath','Chakraborty','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:56:49.000000',1,'../dist/img/boy.png',NULL),(1254,'KL1254','Aditya','Santosh','Chavan','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:09:51.000000',1,'../dist/img/boy.png',NULL),(1255,'KL1255','Arya','Babasaheb','Chavan','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:05:06.000000',1,'../dist/img/boy.png',NULL),(1256,'KL1256','Likhit','Kamlesh','Choudhary','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:10:06.000000',1,'../dist/img/boy.png',NULL),(1257,'KL1257','Omkar','Gajanan','Devale','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:05:28.000000',1,'../dist/img/boy.png',NULL),(1258,'KL1258','Rudra','Rahul','Gaikwad','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:10:25.000000',1,'../dist/img/boy.png',NULL),(1259,'KL1259','Aayush','Saurabh','Gupta','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:57:11.000000',1,'../dist/img/boy.png',NULL),(1260,'KL1260','Chinmay','Sandeep','Ingole','2015-06-22',1,3,3,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:57:40.000000',1,'../dist/img/boy.png',NULL),(1261,'KL1261','Tanmay','Santoshkumar','Jadhav','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:05:44.000000',1,'../dist/img/boy.png',NULL),(1262,'KL1262','Bhargav','Anil','Jahagirdar','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:57:54.000000',1,'../dist/img/boy.png',NULL),(1263,'KL1263','Amey','Pankaj','Joshi','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:10:40.000000',1,'../dist/img/boy.png',NULL),(1264,'KL1264','Rushikesh','Ganesh','Kale','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:11:06.000000',1,'../dist/img/boy.png',NULL),(1265,'KL1265','Shreeraj','Pravin','Kamle','2015-06-22',1,3,4,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:06:06.000000',1,'../dist/img/boy.png',NULL),(1266,'KL1266','Anurag','Girish','Kapshikar','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2018-06-16 09:51:04.000000',1,'../dist/img/boy.png',NULL),(1267,'KL1267','Devang','Prashant','Kokate','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1268,'KL1268','Aditya','Jayant','Kulkarni','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:06:30.000000',1,'../dist/img/boy.png',NULL),(1269,'KL1269','Aniruddha','Jagdish','Mahajan','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1270,'KL1270','Gururaj','Veerbhadra','Margutti','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:58:09.000000',1,'../dist/img/boy.png',NULL),(1271,'KL1271','Krut','Alkesh','Mehta','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1272,'KL1272','Ishan','Shailesh','Nakhate','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:58:34.000000',1,'../dist/img/boy.png',NULL),(1273,'KL1273','Anurag','Prashant','Patil','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:58:51.000000',1,'../dist/img/boy.png',NULL),(1274,'KL1274','Ayush','Vishal','Patil','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1275,'KL1275','Aditya','Maruti','Phatak','2015-06-22',1,3,2,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:11:25.000000',1,'../dist/img/boy.png',NULL),(1276,'KL1276','Gaurav','Kapil','Paudyal','2015-06-22',1,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:59:06.000000',1,'../dist/img/boy.png',NULL),(1277,'KL1277','Arman','Ra','Rajoria','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:07:03.000000',1,'../dist/img/boy.png',NULL),(1278,'KL1278','Jay','sa','Satoskar','2015-06-22',1,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:07:27.000000',1,'../dist/img/boy.png',NULL),(1279,'KL1279','Rishan','Kushal','Shetty','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1280,'KL1280','Amogh','Mahesh','Sutar','2015-06-22',1,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:11:43.000000',1,'../dist/img/boy.png',NULL),(1281,'KL1281','Vatsal','Amin','Thakker','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1282,'KL1282','Prathamesh','Shekhar','Yadav','2015-06-22',1,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1283,'KL1283','Prutha','Sachin','Bhambure','2015-06-22',2,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:08:54.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1284,'KL1284','Trushna','Tukaram','Bhegade','2015-06-22',2,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:07:43.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1285,'KL1285','Devyani','Randhir','Dhamdhere','2015-06-22',2,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:11:57.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1286,'KL1286','Shreeya','Yogendra','Gaware','2015-06-22',2,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:59:24.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1287,'KL1287','Janhavi','Jitin','Ingawale','2015-06-22',2,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 00:59:47.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1288,'KL1288','Saee','Sandeep','Ingawale','2015-06-22',2,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1289,'KL1289','Mitali','Pramod','Kadam','2015-06-22',2,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1290,'KL1290','Anshu','Abhijit','Kulkarni','2015-06-22',2,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:12:15.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1291,'KL1291','Avani','Santosh','Mahajan','2015-06-22',2,3,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:00:07.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1292,'KL1292','Varuni','Ranganath','Mangalwedhe','2015-06-22',2,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:12:30.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1293,'KL1293','Aditi','Ajey','Mohatkar','2015-06-22',2,3,4,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:07:58.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1294,'KL1294','Kashish','Amol','Mudholkar','2015-06-22',2,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:12:45.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1295,'KL1295','Tanishka','Hemant','Pate','2015-06-22',2,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2018-06-19 11:04:26.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1296,'KL1296','Tanishka','Amit','Pawar','2015-06-22',2,3,4,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:08:17.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1297,'KL1297','Harshada','Sunil','Ranawade','2015-06-22',2,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1298,'KL1298','Kavya','Mayuresh','Rashinkar','2015-06-22',2,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1299,'KL1299','Sayee','Mukesh','Shirude','2015-06-22',2,3,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:08:32.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1300,'KL1300','Devanshi','Rohit','Suratwala','2015-06-22',2,3,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1301,'KL1301','Shreya','Mahendra','Walunj','2015-06-22',2,3,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:13:27.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1302,'KL1302','Arnav','Ashutosh','Abhyankar','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:14:03.000000',1,'../dist/img/boy.png',NULL),(1303,'KL1303','Dhruv','An','Andar','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:14:35.000000',1,'../dist/img/boy.png',NULL),(1304,'KL1304','Om','Ganesh','Bhokare','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:15:07.000000',1,'../dist/img/boy.png',NULL),(1305,'KL1305','Parth','Prag','Bhopale','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:15:30.000000',1,'../dist/img/boy.png',NULL),(1306,'KL1306','Kaustubh','','Chauhan','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1307,'KL1307','Bhupendar','Omparakash','Chavan','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-22 09:48:23.000000',1,'../dist/img/boy.png',NULL),(1308,'KL1308','Gandharv','Ch','Chavan','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:16:37.000000',1,'../dist/img/boy.png',NULL),(1309,'KL1309','Piyush','Namdeo','Dhake','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1310,'KL1310','Vijay','Dn','Dnyamote','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:17:28.000000',1,'../dist/img/boy.png',NULL),(1311,'KL1311','Krishna','Sunil','Giridhar','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:17:51.000000',1,'../dist/img/boy.png',NULL),(1312,'KL1312','Rohit','Jitendra','Gorane','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:18:10.000000',1,'../dist/img/boy.png',NULL),(1313,'KL1313','Akshat','Milind','Gujarathi','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:18:36.000000',1,'../dist/img/boy.png',NULL),(1314,'KL1314','Aditya','Pankaj','Ingawale','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:19:01.000000',1,'../dist/img/boy.png',NULL),(1315,'KL1315','Prathmesh','Nitin','Jadhav','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1316,'KL1316','Amey','Prashant','Joshi','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:19:52.000000',1,'../dist/img/boy.png',NULL),(1317,'KL1317','Tanush','Abhijit','Joshi','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:20:14.000000',1,'../dist/img/boy.png',NULL),(1318,'KL1318','Siddhant','Vikas','Kadam','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1319,'KL1319','Shubhankar','Madhav','Kulkarni','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:21:07.000000',1,'../dist/img/boy.png',NULL),(1320,'KL1320','Hardik','Jitendra','Mangtani','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:21:36.000000',1,'../dist/img/boy.png',NULL),(1321,'KL1321','Dhruv','Rajesh','Mardhekar','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1322,'KL1322','Samarjeet','Abhijeet','Mohite','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:22:32.000000',1,'../dist/img/boy.png',NULL),(1323,'KL1323','Aryan','Hukumchand','Padwal','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:22:59.000000',1,'../dist/img/boy.png',NULL),(1324,'KL1324','Adwaait','Swanand','Palnitkar','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-22 09:53:11.000000',1,'../dist/img/boy.png',NULL),(1325,'KL1325','Shreyas','','Patil','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1326,'KL1326','Siddhesh','Dattaraj','Pendse','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:23:33.000000',1,'../dist/img/boy.png',NULL),(1327,'KL1327','Vedant','Santosh','Raghatwan','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:24:00.000000',1,'../dist/img/boy.png',NULL),(1328,'KL1328','Hrishikesh','Ashwin','Shah','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:24:40.000000',1,'../dist/img/boy.png',NULL),(1329,'KL1329','Premraj','Laxmikant','Sherkhane','2015-06-22',1,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:25:09.000000',1,'../dist/img/boy.png',NULL),(1330,'KL1330','Darshan','Dinesh','Shinde','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:25:45.000000',1,'../dist/img/boy.png',NULL),(1331,'KL1331','Paarth','','Surve','2015-06-22',1,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1332,'KL1332','Arin','Nitin','Takle','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:26:23.000000',1,'../dist/img/boy.png',NULL),(1333,'KL1333','Aditya','Surendra','Varma','2015-06-22',1,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:26:50.000000',1,'../dist/img/boy.png',NULL),(1334,'KL1334','Soham','Dashrath','Wagh','2015-06-22',1,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:27:17.000000',1,'../dist/img/boy.png',NULL),(1335,'KL1335','Tanvi','Amit','Bahirat','2015-06-22',2,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:27:41.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1336,'KL1336','Saee','Saurabh','Bapat','2015-06-22',2,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1337,'KL1337','Sukhada','Atul','Bhanap','2015-06-22',2,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:28:10.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1338,'KL1338','Rudrani','sanjay','Borekar','2015-06-22',2,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:28:36.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1339,'KL1339','Radhika','Jitendra','Borle','2015-06-22',2,4,1,0,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1340,'KL1340','Sharvari','Shailesh','Choudhari','2015-06-22',2,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:29:20.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1341,'KL1341','Gauri','Nishikant','Dharmadhikari','2015-06-22',2,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:29:47.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1342,'KL1342','Janhavi','Nandkishor','Dhore','2015-06-22',2,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:30:11.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1343,'KL1343','Aditi','Amol','Gatate','2015-06-22',2,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:30:30.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1344,'KL1344','Mitali','Sagar','Gholap','2015-06-22',2,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1345,'KL1345','Pradnya','Pravin','Ingale','2015-06-22',2,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:31:07.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1346,'KL1346','Sanjana','Sachin','Jadhav','2015-06-22',2,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:31:26.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1347,'KL1347','Tanvi','Milind','Joshirao','2015-06-22',2,4,2,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:32:01.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1348,'KL1348','Saee','Savin','Nikhal','2015-06-22',2,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:32:41.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1349,'KL1349','Purva','Pradip','Pabale','2015-06-22',2,4,3,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:33:00.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1350,'KL1350','Tanisha','Prashant','Pachupate','2015-06-22',2,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:33:31.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1351,'KL1351','Shraddha','Bhushan','Shelke','2015-06-22',2,4,4,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,'2017-06-21 01:33:57.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1352,'KL1352','Shristi','Ganesh','Shetty','2015-06-22',2,4,1,1,'12345','2015-06-21 18:30:00',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1354,'KL1354','Deepti','Kishor','Emmi','2015-06-23',2,6,4,1,'12345','2015-06-22 18:30:00',NULL,0,NULL,NULL,'2017-06-22 08:54:22.000000',1,NULL,NULL),(1355,'KL1355','Umesh','Ramanathan','R','2015-06-24',1,7,3,1,'12345','2015-06-23 18:30:00',NULL,0,NULL,NULL,'2018-06-19 12:21:34.000000',1,NULL,NULL),(1356,'KL1356','Sampada','','Kokane','2015-06-25',2,7,1,0,'12345','2015-06-24 18:30:00',NULL,1,'2018-06-16 09:48:40.000000',1,NULL,NULL,NULL,NULL),(1357,'KL1357','Siddhi','Devdatta','Rokade','2015-06-26',2,7,2,0,'12345','2015-06-25 18:30:00',NULL,1,NULL,NULL,'2017-06-22 08:29:56.000000',1,NULL,NULL),(1358,'KL1358','Gauri','Bharat','Vaidya','2015-06-27',2,7,2,0,'123456','2015-06-26 18:30:00',NULL,1,NULL,NULL,'2018-06-19 12:49:57.000000',1,NULL,NULL),(1359,'KL1359','Anushree','Ku','Kulkarni','2017-06-01',2,3,3,0,'12345','2017-06-20 19:33:44',NULL,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1360,'KL1360','Vamshika','Ac','Acharya','2017-06-01',2,7,4,1,'12345','2017-06-20 20:16:16',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1361,'KL1361','Yukta','Anil','Adya','2017-06-01',2,5,4,1,'12345','2017-06-20 20:25:44',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1362,'KL1362','Aneesh','Mandar','Bhalerao','2017-06-01',1,6,4,1,'12345','2017-06-20 20:28:36',NULL,0,NULL,NULL,'2017-06-22 08:49:30.000000',1,NULL,NULL),(1363,'KL1363','Jatin','Devendra','Satoskar','2017-06-01',1,7,3,0,'12345','2017-06-22 02:32:49',NULL,1,'2018-06-14 14:08:00.000000',1,NULL,NULL,NULL,NULL),(1364,'KL1364','Shreya','Vijay','Jadhav','2017-06-01',2,7,4,0,'12345','2017-06-22 02:56:03',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(1365,'KL1365','Tanishq','Jeetendra','Chavan','2017-06-01',1,6,4,1,'12345','2017-06-22 03:18:28',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1366,'KL1366','Kanak','Avinash','Kamble','2017-06-01',2,5,1,0,'12345','2017-06-22 03:31:57',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1367,'KL1367','Adee','Devendra','Lingojwar','2017-06-01',1,5,4,1,'12345','2017-06-22 03:40:51',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1368,'KL1368','Yash','Anand','Jahagirdar','2017-06-01',1,7,1,1,'12345','2017-06-22 04:07:52',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1369,'KL1369','Srushti','Somnath','Dhore','2017-06-01',2,7,2,1,'12345','2017-06-22 04:11:20',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1370,'KL1370','Kunal','Anandkumar','Phadtare','2017-06-01',1,5,2,1,'12345','2017-06-22 05:01:13',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1371,'KL1371','Yashraj','Laxmikant','Sherkhane','2017-06-01',1,5,3,1,'12345','2017-06-22 05:03:00',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1372,'KL1372','Dheeraj','Sanjay','Sonawane','2017-06-01',1,5,4,1,'12345','2017-06-22 05:04:35',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1373,'KL1373','Roshan','Tushar','Barhate','2015-06-22',1,2,3,1,'12345','2018-06-14 09:51:34',1,0,'2019-06-17 19:12:15.000000',0,'2018-06-18 22:15:19.000000',1,'../dist/img/boy.png',NULL),(1374,'KL1374','Shaunak','Pravin','Choudhary','2015-06-22',1,8,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:32:23.000000',1,'../dist/img/boy.png',NULL),(1375,'KL1375','Avadhut','Avinash','Darwatkar','2015-06-22',1,2,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-14 19:33:24.000000',1,'../dist/img/boy.png',NULL),(1376,'KL1376','Sarvadnya','Rajendrasingh','Deore','2015-06-22',1,8,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:21:17.000000',1,'../dist/img/boy.png',NULL),(1377,'KL1377','Aditya','','Diwate','2015-06-22',1,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1378,'KL1378','Ameya','Santosh','Doifode','2015-06-22',1,8,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-14 19:36:20.000000',1,'../dist/img/boy.png',NULL),(1379,'KL1379','Kaustubh','Hanumant','Gawade','2015-06-22',1,2,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:33:00.000000',1,'../dist/img/boy.png',NULL),(1380,'KL1380','Arnav','Yogesh','Gosavi','2015-06-22',1,2,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:33:19.000000',1,'../dist/img/boy.png',NULL),(1381,'KL1381','Kaivalya','Sagar','Gunjal','2015-06-22',1,2,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1382,'KL1382','Vedant','Manoj','Jadhav','2015-06-22',1,2,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:25:37.000000',1,'../dist/img/boy.png',NULL),(1383,'KL1383','Ojas','Mahesh','Joshi','2015-06-22',1,8,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:33:45.000000',1,'../dist/img/boy.png',NULL),(1384,'KL1384','Ayush','Mukund','Kokane','2015-06-22',1,2,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:26:37.000000',1,'../dist/img/boy.png',NULL),(1385,'KL1385','Yuvraj','Jitendra','Mangtani','2015-06-22',1,8,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:27:35.000000',1,'../dist/img/boy.png',NULL),(1386,'KL1386','Inderjit','Amarjit','Mann','2015-06-22',1,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1387,'KL1387','Manthan','Ganesh','Markule','2015-06-22',1,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1388,'KL1388','Pratyush','Satish','Narsapure','2015-06-22',1,2,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:22:11.000000',1,'../dist/img/boy.png',NULL),(1389,'KL1389','Sarvesh','Sandesh','Patil','2015-06-22',1,2,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-14 19:35:28.000000',1,'../dist/img/boy.png',NULL),(1390,'KL1390','Shauryaraje','Satish','Ranawade','2015-06-22',1,2,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:29:04.000000',1,'../dist/img/boy.png',NULL),(1391,'KL1391','Rishabh','Rohit','Shukla','2015-06-22',1,8,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:29:23.000000',1,'../dist/img/boy.png',NULL),(1392,'KL1392','Harshwardhan','Sunil','Takale','2015-06-22',1,8,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:34:12.000000',1,'../dist/img/boy.png',NULL),(1393,'KL1393','Shivraj','Krishnachandra','Takawale','2015-06-22',1,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1394,'KL1394','Vishwajeet','Vishwanath','Thosar','2015-06-22',1,8,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:22:40.000000',1,'../dist/img/boy.png',NULL),(1395,'KL1395','Samarth','Suden','Zunjurke','2015-06-22',1,2,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:23:15.000000',1,'../dist/img/boy.png',NULL),(1396,'KL1396','Avantika','Aa','Bagul','2015-06-22',2,2,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:35:18.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1397,'KL1397','Anushka','Nitin','Baviskar','2015-06-22',2,8,4,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:29:45.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1398,'KL1398','Anshika','Amol','Bhagwat','2015-06-22',2,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1399,'KL1399','Ishwari','Girish','Bodhale','2015-06-22',2,8,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1400,'KL1400','Mahi','Hardik','Chandwania','2015-06-22',2,8,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:23:34.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1401,'KL1401','Ihina','Biswanath','Chakraborty','2015-06-22',2,2,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1402,'KL1402','Sukhnamkaor','Manmohansingh','Chaudhari','2015-06-22',2,2,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1403,'KL1403','Sonali','Sanjay','Dahikamble','2015-06-22',2,8,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:35:43.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1404,'KL1404','Shriya','Kiran','Gadekar','2015-06-22',2,8,2,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-14 19:37:45.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1405,'KL1405','Aarya','Rahul','Gavhankar','2015-06-22',2,1,1,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1406,'KL1406','Mitali','Nitin','Kaling','2015-06-22',2,2,3,1,'12345','2018-06-14 09:51:34',1,0,NULL,NULL,'2018-06-18 22:23:53.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1407,'KL1407','Sanika','Shankar','Kolekar','2015-06-22',2,8,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:30:05.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1408,'KL1408','Devaki','Jagdish','Mahajan','2015-06-22',2,2,3,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:24:18.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1409,'KL1409','Prachita','Ganesh','Marathe','2015-06-22',2,2,2,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:36:15.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1410,'KL1410','Anushka','Mahesh','Mudkanna','2015-06-22',2,8,3,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-14 19:37:18.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1411,'KL1411','Sana','Anwar','Mulla','2015-06-22',2,2,1,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1412,'KL1412','Dhriti','Vishwanath','Pujari','2015-06-22',2,2,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-14 19:38:20.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1413,'KL1413','Aditi','','Raghatwan','2015-06-22',2,2,1,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL),(1414,'KL1414','Adhira','Mohit','Raje','2015-06-22',2,8,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:30:36.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1415,'KL1415','Anushka','Sunil','Rathod','2015-06-22',2,2,3,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:24:52.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1416,'KL1416','Poorvaja','Pradeep','Sarode','2015-06-22',2,2,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:30:59.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1417,'KL1417','Saishri','Pranay','Tambe','2015-06-22',2,2,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:31:29.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1418,'KL1418','Reeta','Novel','Waghmare','2015-06-22',2,8,2,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:36:33.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1419,'KL1419','Tarinya','Sandeep','Hawaldar','2015-06-22',2,2,2,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:36:53.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1420,'KL1420','Pranav','','Choudhary','2015-06-22',1,2,1,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,NULL,NULL,'../dist/img/boy.png',NULL),(1421,'KL1421','Ganesh','Kumar','Sasha','2015-06-22',2,8,3,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:25:14.000000',1,'../dist/img/dT7eM7rac.png',NULL),(1422,'KL1422','Atharva','Santosh','Handal','2015-06-22',1,8,4,1,'12345','2018-06-14 09:51:35',1,0,NULL,NULL,'2018-06-18 22:31:56.000000',1,'../dist/img/boy.png',NULL),(1423,'KL1423','Srushti','Somnath','Dhore','2015-06-22',2,7,2,1,'12345','2018-06-14 13:28:20',NULL,0,NULL,NULL,'2018-06-16 09:46:30.000000',1,NULL,NULL),(1424,'KL1424','Devang','xx','Kokate','2000-06-01',1,3,1,0,'12345','2018-06-16 04:00:35',NULL,1,'2018-06-16 09:31:07.000000',1,NULL,NULL,NULL,NULL),(1425,'KL1425','Aditya','Deepak','Sonkamble','2000-06-01',1,3,4,1,'12345','2018-06-16 04:03:15',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1426,'KL1426','Kamlesh','Kaustubh','Chauhan','2000-06-01',1,4,4,0,'12345','2018-06-16 04:06:39',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1427,'KL1427','Neha','Sunil','Kirve','2000-06-01',2,5,2,1,'12345','2018-06-19 06:25:59',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1428,'KL1428','Atharva','Nilesh','Shirke','2000-06-01',1,4,1,1,'12345','2018-06-19 06:38:25',NULL,0,NULL,NULL,'2019-06-17 15:13:05.000000',1,NULL,NULL),(1429,'KL1429','Vedant','','Beri','2000-06-01',1,2,2,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1430,'KL1430','Abhinav','','Chitradurga','2000-06-01',1,2,1,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1431,'KL1431','Avaneesh',NULL,'Parab','2000-06-01',1,2,1,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1432,'KL1432','Anagha',NULL,'Jagdale','2000-06-01',2,2,4,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1433,'KL1433','Ananya',NULL,'Katkar','2000-06-01',2,2,3,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1434,'KL1434','Tanishka',NULL,'Pawar','2000-06-01',2,2,2,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1435,'KL1435','Prathamesh','Sameer','Bhale','2000-06-01',1,8,3,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1436,'KL1436','Rugved','Anant','Chandile','2000-06-01',1,8,4,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1437,'KL1437','Aditya','Anil','Pabbawar','2000-06-01',1,8,2,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1438,'KL1438','Nidhi','Pareshkumar','Mistry','2000-06-01',2,8,1,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1439,'KL1439','Aarya','Ganesh','Pasarkar','2000-06-01',2,8,2,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1440,'KL1440','Mihir','Shahshikant','Kulkarni','2000-06-01',1,3,2,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1441,'KL1441','Aarushi',NULL,'Sudhakar','2000-06-01',2,4,1,1,'12345','2019-06-17 06:38:25',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),(1442,'KL1442','Vedant','Kishor','Pujari','2000-06-01',1,4,2,1,'12345','2019-06-20 06:38:25',1,0,NULL,NULL,NULL,NULL,'../dist/img/dT7eM7rac.png',NULL);
/*!40000 ALTER TABLE `tstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvotedstudent`
--

DROP TABLE IF EXISTS `tvotedstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvotedstudent` (
  `Vst_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Vst_StudentKey` varchar(12) DEFAULT NULL,
  `Vst_IVFHouse` tinyint(1) DEFAULT '0',
  `Vst_IVFSenate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Vst_Id`),
  UNIQUE KEY `Vst_StudentKey_UNIQUE` (`Vst_StudentKey`),
  CONSTRAINT `FK__tVotedStu__Vst_S__619B8048` FOREIGN KEY (`Vst_StudentKey`) REFERENCES `tstudent` (`stud_Key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvotedstudent`
--

LOCK TABLES `tvotedstudent` WRITE;
/*!40000 ALTER TABLE `tvotedstudent` DISABLE KEYS */;
INSERT INTO `tvotedstudent` VALUES (1,'KL1001',0,0),(2,'KL1002',1,0),(3,'KL1003',0,0),(4,'KL1004',1,0),(5,'KL1005',0,0),(6,'KL1006',1,0),(7,'KL1007',0,0),(8,'KL1008',0,0),(9,'KL1009',0,0),(10,'KL1010',1,0),(11,'KL1011',1,0),(12,'KL1012',0,0),(13,'KL1013',0,0),(14,'KL1014',1,0),(15,'KL1015',1,0),(16,'KL1016',1,0),(17,'KL1017',0,0),(18,'KL1018',0,0),(19,'KL1019',0,0),(20,'KL1020',0,0),(21,'KL1021',0,0),(22,'KL1022',1,0),(23,'KL1023',1,0),(24,'KL1024',0,0),(25,'KL1025',0,0),(26,'KL1026',0,0),(27,'KL1027',0,0),(28,'KL1028',0,0),(29,'KL1029',1,0),(30,'KL1030',1,0),(31,'KL1031',0,0),(32,'KL1032',0,0),(33,'KL1033',1,0),(34,'KL1034',1,0),(35,'KL1035',0,0),(36,'KL1036',0,0),(37,'KL1037',0,0),(38,'KL1038',1,0),(39,'KL1039',0,0),(40,'KL1040',0,0),(41,'KL1041',0,0),(42,'KL1042',0,0),(43,'KL1043',0,0),(44,'KL1044',1,0),(45,'KL1045',1,0),(46,'KL1046',0,0),(47,'KL1047',1,0),(48,'KL1048',0,0),(49,'KL1049',0,0),(50,'KL1050',1,0),(51,'KL1051',1,0),(52,'KL1052',1,0),(53,'KL1053',1,0),(54,'KL1054',1,0),(55,'KL1055',0,0),(56,'KL1056',0,0),(57,'KL1057',0,0),(58,'KL1058',0,0),(59,'KL1059',1,0),(60,'KL1060',0,0),(61,'KL1061',0,0),(62,'KL1062',0,0),(63,'KL1063',0,0),(64,'KL1064',1,0),(65,'KL1065',0,0),(66,'KL1066',0,0),(67,'KL1067',0,0),(68,'KL1068',0,0),(69,'KL1069',0,0),(70,'KL1070',1,0),(71,'KL1071',0,0),(72,'KL1072',0,0),(73,'KL1073',0,0),(74,'KL1074',1,0),(75,'KL1075',1,0),(76,'KL1076',0,0),(77,'KL1077',1,0),(78,'KL1078',0,0),(79,'KL1079',0,0),(80,'KL1080',0,0),(81,'KL1081',0,0),(82,'KL1082',1,0),(83,'KL1083',1,0),(84,'KL1084',0,0),(85,'KL1085',1,0),(86,'KL1086',0,0),(87,'KL1087',0,0),(88,'KL1088',0,0),(89,'KL1089',0,0),(90,'KL1090',0,0),(91,'KL1091',0,0),(92,'KL1092',0,0),(93,'KL1093',0,0),(94,'KL1094',0,0),(95,'KL1095',0,0),(96,'KL1096',0,0),(97,'KL1097',0,0),(98,'KL1098',0,0),(99,'KL1099',0,0),(100,'KL1100',0,0),(101,'KL1101',0,0),(102,'KL1102',1,0),(103,'KL1103',0,0),(104,'KL1104',0,0),(105,'KL1105',0,0),(106,'KL1106',0,0),(107,'KL1107',0,0),(108,'KL1108',1,0),(109,'KL1109',0,0),(110,'KL1110',1,0),(111,'KL1111',1,0),(112,'KL1112',0,0),(113,'KL1113',1,0),(114,'KL1114',1,0),(115,'KL1115',0,0),(116,'KL1116',0,0),(117,'KL1117',1,0),(118,'KL1118',1,0),(119,'KL1119',0,0),(120,'KL1120',0,0),(121,'KL1121',0,0),(122,'KL1122',0,0),(123,'KL1123',0,0),(124,'KL1124',0,0),(125,'KL1125',0,0),(126,'KL1126',0,0),(127,'KL1127',0,0),(128,'KL1128',0,0),(129,'KL1129',0,0),(130,'KL1130',1,0),(131,'KL1131',0,0),(132,'KL1132',1,1),(133,'KL1133',1,0),(134,'KL1134',0,0),(135,'KL1135',0,0),(136,'KL1136',0,0),(137,'KL1137',0,0),(138,'KL1138',1,0),(139,'KL1139',0,0),(140,'KL1140',0,0),(141,'KL1141',0,0),(142,'KL1142',1,0),(143,'KL1143',0,0),(144,'KL1144',0,0),(145,'KL1145',0,0),(146,'KL1146',1,0),(147,'KL1147',0,0),(148,'KL1148',0,0),(149,'KL1149',0,0),(150,'KL1150',0,0),(151,'KL1151',0,0),(152,'KL1152',1,0),(153,'KL1153',0,0),(154,'KL1154',0,0),(155,'KL1155',0,0),(156,'KL1156',0,0),(157,'KL1157',0,0),(158,'KL1158',0,0),(159,'KL1159',0,0),(160,'KL1160',0,0),(161,'KL1161',0,0),(162,'KL1162',0,0),(163,'KL1163',0,0),(164,'KL1164',0,0),(165,'KL1165',0,0),(166,'KL1166',0,0),(167,'KL1167',0,0),(168,'KL1168',0,0),(169,'KL1169',0,0),(170,'KL1170',0,0),(171,'KL1171',0,0),(172,'KL1172',0,0),(173,'KL1173',0,0),(174,'KL1174',0,0),(175,'KL1175',0,0),(176,'KL1176',0,0),(177,'KL1177',0,0),(178,'KL1178',0,0),(179,'KL1179',0,0),(180,'KL1180',0,0),(181,'KL1181',0,0),(182,'KL1182',0,0),(183,'KL1183',0,0),(184,'KL1184',0,0),(185,'KL1185',0,0),(186,'KL1186',0,0),(187,'KL1187',0,0),(188,'KL1188',0,0),(189,'KL1189',0,0),(190,'KL1190',0,0),(191,'KL1191',0,0),(192,'KL1192',0,0),(193,'KL1193',0,0),(194,'KL1194',0,0),(195,'KL1195',0,0),(196,'KL1196',0,0),(197,'KL1197',0,0),(198,'KL1198',0,0),(199,'KL1199',0,0),(200,'KL1200',0,0),(201,'KL1201',0,0),(202,'KL1202',0,0),(203,'KL1203',0,0),(204,'KL1204',0,0),(205,'KL1205',0,0),(206,'KL1206',0,0),(207,'KL1207',0,0),(208,'KL1208',0,0),(209,'KL1209',0,0),(210,'KL1210',0,0),(211,'KL1211',0,0),(212,'KL1212',0,0),(213,'KL1213',0,0),(214,'KL1214',0,0),(215,'KL1215',0,0),(216,'KL1216',0,0),(217,'KL1217',0,0),(218,'KL1218',0,0),(219,'KL1219',0,0),(220,'KL1220',0,0),(221,'KL1221',0,0),(222,'KL1222',0,0),(223,'KL1223',0,0),(224,'KL1224',0,0),(225,'KL1225',0,0),(226,'KL1226',0,0),(227,'KL1227',0,0),(228,'KL1228',0,0),(229,'KL1229',0,0),(230,'KL1230',0,0),(231,'KL1231',0,0),(232,'KL1232',0,0),(233,'KL1233',0,0),(234,'KL1234',0,0),(235,'KL1235',0,0),(236,'KL1236',0,0),(237,'KL1237',0,0),(238,'KL1238',0,0),(239,'KL1239',0,0),(240,'KL1240',0,0),(241,'KL1241',0,0),(242,'KL1242',0,0),(243,'KL1243',0,0),(244,'KL1244',0,0),(245,'KL1245',0,0),(246,'KL1246',0,0),(247,'KL1247',0,0),(248,'KL1248',0,0),(249,'KL1249',0,0),(250,'KL1250',0,0),(251,'KL1251',0,0),(252,'KL1252',0,0),(253,'KL1253',0,0),(254,'KL1254',0,0),(255,'KL1255',1,0),(256,'KL1256',1,0),(257,'KL1257',1,0),(258,'KL1258',1,0),(259,'KL1259',0,0),(260,'KL1260',0,0),(261,'KL1261',1,0),(262,'KL1262',1,0),(263,'KL1263',1,0),(264,'KL1264',1,0),(265,'KL1265',0,0),(266,'KL1266',1,0),(267,'KL1267',1,0),(268,'KL1268',0,0),(269,'KL1269',1,0),(270,'KL1270',0,0),(271,'KL1271',0,0),(272,'KL1272',1,0),(273,'KL1273',1,0),(274,'KL1274',1,0),(275,'KL1275',0,0),(276,'KL1276',0,0),(277,'KL1277',0,0),(278,'KL1278',0,0),(279,'KL1279',1,0),(280,'KL1280',1,0),(281,'KL1281',1,0),(282,'KL1282',0,0),(283,'KL1283',0,0),(284,'KL1284',1,0),(285,'KL1285',0,0),(286,'KL1286',1,0),(287,'KL1287',0,0),(288,'KL1288',0,0),(289,'KL1289',0,0),(290,'KL1290',1,0),(291,'KL1291',1,0),(292,'KL1292',1,0),(293,'KL1293',0,0),(294,'KL1294',1,0),(295,'KL1295',1,0),(296,'KL1296',0,0),(297,'KL1297',1,0),(298,'KL1298',1,0),(299,'KL1299',0,0),(300,'KL1300',0,0),(301,'KL1301',0,0),(302,'KL1302',0,0),(303,'KL1303',0,0),(304,'KL1304',0,0),(305,'KL1305',1,0),(306,'KL1306',0,0),(307,'KL1307',1,0),(308,'KL1308',1,0),(309,'KL1309',0,0),(310,'KL1310',0,0),(311,'KL1311',0,0),(312,'KL1312',0,0),(313,'KL1313',0,0),(314,'KL1314',0,0),(315,'KL1315',0,0),(316,'KL1316',0,0),(317,'KL1317',0,0),(318,'KL1318',0,0),(319,'KL1319',0,0),(320,'KL1320',1,0),(321,'KL1321',0,0),(322,'KL1322',1,0),(323,'KL1323',1,0),(324,'KL1324',1,0),(325,'KL1325',1,0),(326,'KL1326',0,0),(327,'KL1327',0,0),(328,'KL1328',1,0),(329,'KL1329',0,0),(330,'KL1330',1,0),(331,'KL1331',1,0),(332,'KL1332',1,0),(333,'KL1333',1,0),(334,'KL1334',1,0),(335,'KL1335',0,0),(336,'KL1336',1,0),(337,'KL1337',0,0),(338,'KL1338',0,0),(339,'KL1339',0,0),(340,'KL1340',0,0),(341,'KL1341',1,0),(342,'KL1342',0,0),(343,'KL1343',0,0),(344,'KL1344',0,0),(345,'KL1345',0,0),(346,'KL1346',0,0),(347,'KL1347',0,0),(348,'KL1348',1,0),(349,'KL1349',1,0),(350,'KL1350',0,0),(351,'KL1351',0,0),(352,'KL1352',1,0),(354,'KL1355',1,0),(355,'KL1356',0,0),(356,'KL1357',0,0),(357,'KL1358',0,0),(358,'KL1359',0,0),(359,'KL1360',0,0),(360,'KL1361',0,0),(361,'KL1362',0,0),(362,'KL1363',0,0),(363,'KL1364',0,0),(364,'KL1365',0,0),(365,'KL1366',0,0),(366,'KL1367',0,0),(367,'KL1368',0,0),(368,'KL1369',1,0),(369,'KL1370',1,0),(370,'KL1371',0,0),(371,'KL1372',0,0),(372,'KL1373',0,0),(373,'KL1374',1,0),(374,'KL1375',0,0),(375,'KL1376',0,0),(376,'KL1377',0,0),(377,'KL1378',0,0),(378,'KL1379',1,0),(379,'KL1380',0,0),(380,'KL1381',1,0),(381,'KL1382',0,0),(382,'KL1383',0,0),(383,'KL1384',0,0),(384,'KL1385',0,0),(385,'KL1386',0,0),(386,'KL1387',1,0),(387,'KL1388',0,0),(388,'KL1389',1,0),(389,'KL1390',1,0),(390,'KL1391',0,0),(391,'KL1392',0,0),(392,'KL1393',0,0),(393,'KL1394',0,0),(394,'KL1395',0,0),(395,'KL1420',0,0),(396,'KL1422',1,0),(397,'KL1396',0,0),(398,'KL1397',1,0),(399,'KL1398',0,0),(400,'KL1399',1,0),(401,'KL1400',0,0),(402,'KL1401',1,0),(403,'KL1402',0,0),(404,'KL1403',1,0),(405,'KL1404',1,0),(406,'KL1405',0,0),(407,'KL1406',0,0),(408,'KL1407',1,0),(409,'KL1408',0,0),(410,'KL1409',0,0),(411,'KL1410',1,0),(412,'KL1411',0,0),(413,'KL1412',0,0),(414,'KL1413',1,0),(415,'KL1414',1,0),(416,'KL1415',0,0),(417,'KL1416',0,0),(418,'KL1417',1,0),(419,'KL1418',1,0),(420,'KL1419',1,0),(421,'KL1421',0,0),(435,'KL1423',0,0),(440,'KL1424',0,0),(441,'KL1425',1,0),(442,'KL1426',0,0),(443,'KL1427',0,0),(444,'KL1428',1,0),(445,'KL1429',0,0),(446,'KL1430',0,0),(447,'KL1431',0,0),(448,'KL1432',0,0),(449,'KL1433',0,0),(450,'KL1434',1,0),(451,'KL1435',0,0),(452,'KL1436',0,0),(453,'KL1437',1,0),(454,'KL1438',1,0),(455,'KL1439',1,0),(456,'KL1440',0,0),(457,'KL1441',1,0),(458,'KL1442',0,0);
/*!40000 ALTER TABLE `tvotedstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vlogin`
--

DROP TABLE IF EXISTS `vlogin`;
/*!50001 DROP VIEW IF EXISTS `vlogin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vlogin` AS SELECT 
 1 AS `Username`,
 1 AS `Password`,
 1 AS `UserType`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'votinglivedb'
--

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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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

-- Dump completed on 2019-06-22 17:26:41
