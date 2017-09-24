CREATE DATABASE  IF NOT EXISTS `capp_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `capp_db`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: capp_db
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `user_fk_idx` (`userId`),
  CONSTRAINT `user_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (101,11,'Contact101','88888888','contact101@ezeontech.com','Pune, India','College Friend'),(102,11,'Contact102','88888888','contact102@ezeontech.com','Mumbai, India','College Friend'),(103,11,'Contact103','88888888','contact103@ezeontech.com','Delhi, India','College Friend'),(104,11,'Contact104','88888888','contact104@ezeontech.com','Bhopal, India','College Friend'),(105,11,'Contact105','88888888','Contact105@ezeontech.com','Hyd, India','College Friend'),(106,11,'Contact106','88888888','Contact106@ezeontech.com','Bengaluru, India','College Friend'),(107,11,'Contact107','88888888','Contact107@ezeontech.com','Nagpur, India','College Friend'),(108,11,'Contact108','88888888','Contact108@ezeontech.com','Pune, India','College Friend'),(109,11,'Contact109','88888888','Contact109@ezeontech.com','Indore, India','College Friend'),(110,11,'Contact110','88888888','Contact110@ezeontech.com','Pune, India','School Friend'),(111,11,'Contact111','88888888','Contact111@ezeontech.com','Pune, India','College Friend'),(112,11,'Contact112','88888888','Contact112@ezeontech.com','Pune, India',''),(113,11,'Contact113','88888888','Contact113@ezeontech.com','Pune, India',''),(114,12,'Contact114','88888888','Contact114@ezeontech.com','Pune, India',''),(115,12,'Contact115','88888888','Contact115@ezeontech.com','Pune, India','College Friend');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `loginName` varchar(45) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(1) NOT NULL DEFAULT '2',
  `loginStatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `loginName_UNIQUE` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Vikram','9303580884','vikram@ezeon.net','Bhopal','v','v123',2,1),(3,'Amit','8955555555','amit@gmail.com','Pune','amit','amit123',1,1),(4,'Raj','5622222222','raj@ezeontech.com','Delhi','raj','raj',1,1),(6,'Nitin','55555555','nitin@ezeon.net','Mumbai','nitin','nitin123',1,1),(7,'Varun Sinha','8569856985','varun@ezeontech.com','Mumbai, MS','varun','varun123',2,1),(10,'Vivek','88888888','vivek@ezeontech.com','Pune','vivek','vivek123',2,1),(11,'User11','111111111','user11@ezeon.net','Pune','user11','user11',2,1),(12,'User12','111111111','user12@ezeon.net','Mumbai','user12','user12',2,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-24 21:32:48
