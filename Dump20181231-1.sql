CREATE DATABASE  IF NOT EXISTS `tiendabnn` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `tiendabnn`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: tiendabnn
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `thownship_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_country_id_foreign` (`country_id`),
  KEY `addresses_thownship_id_foreign` (`thownship_id`),
  KEY `addresses_state_id_foreign` (`state_id`),
  CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `addresses_thownship_id_foreign` FOREIGN KEY (`thownship_id`) REFERENCES `thownships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (11,'Rosaleda','43',11,11,11,'2019-01-01 06:08:46','2019-01-01 06:08:46',NULL),(14,'Rosaleda','43',14,14,14,'2019-01-01 06:08:55','2019-01-01 06:08:55',NULL),(15,'CALLE PUT','NUMERO PUT',15,15,15,'2019-01-01 06:08:57','2019-01-01 07:00:57',NULL),(16,'Rosaleda','43',16,16,16,'2019-01-01 06:09:00','2019-01-01 06:09:00',NULL),(18,'Rosaleda','43',18,18,18,'2019-01-01 06:09:05','2019-01-01 06:09:05',NULL),(19,'Rosaleda','43',19,19,19,'2019-01-01 06:09:07','2019-01-01 06:09:07',NULL),(20,'Rosaleda','43',20,20,20,'2019-01-01 06:09:09','2019-01-01 06:09:09',NULL),(21,'POST CALLE','POST NUMERO',21,21,21,'2019-01-01 07:09:30','2019-01-01 07:09:30',NULL),(22,'POST CALLE','POST NUMERO',22,22,22,'2019-01-01 07:17:18','2019-01-01 07:17:18',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (11,'Mexico','2019-01-01 06:08:46','2019-01-01 06:08:46',NULL),(14,'Mexico','2019-01-01 06:08:55','2019-01-01 06:08:55',NULL),(15,'PAIS PUT','2019-01-01 06:08:57','2019-01-01 07:00:20',NULL),(16,'Mexico','2019-01-01 06:09:00','2019-01-01 06:09:00',NULL),(18,'Mexico','2019-01-01 06:09:05','2019-01-01 06:09:05',NULL),(19,'Mexico','2019-01-01 06:09:07','2019-01-01 06:09:07',NULL),(20,'Mexico','2019-01-01 06:09:09','2019-01-01 06:09:09',NULL),(21,'POST PAIS','2019-01-01 07:09:30','2019-01-01 07:09:30',NULL),(22,'POST PAIS','2019-01-01 07:17:18','2019-01-01 07:17:18',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (50,'2014_10_12_000000_create_users_table',1),(51,'2014_10_12_100000_create_password_resets_table',1),(52,'2018_12_31_070540_create_countries_table',1),(53,'2018_12_31_070554_create_states_table',1),(54,'2018_12_31_070611_create_thownships_table',1),(55,'2018_12_31_070629_create_addresses_table',1),(56,'2018_12_31_070647_create_stores_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (11,'CDMX','2019-01-01 06:08:46','2019-01-01 06:08:46',NULL),(14,'CDMX','2019-01-01 06:08:55','2019-01-01 06:08:55',NULL),(15,'ENTIDAD PUT','2019-01-01 06:08:57','2019-01-01 07:00:20',NULL),(16,'CDMX','2019-01-01 06:09:00','2019-01-01 06:09:00',NULL),(18,'CDMX','2019-01-01 06:09:05','2019-01-01 06:09:05',NULL),(19,'CDMX','2019-01-01 06:09:07','2019-01-01 06:09:07',NULL),(20,'CDMX','2019-01-01 06:09:09','2019-01-01 06:09:09',NULL),(21,'POST ENTIDAD','2019-01-01 07:09:30','2019-01-01 07:09:30',NULL),(22,'POST ENTIDAD','2019-01-01 07:17:18','2019-01-01 07:17:18',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stores_address_id_foreign` (`address_id`),
  CONSTRAINT `stores_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (11,'Canes','C:\\xampp\\tmp\\php1C8E.tmp',11,'2019-01-01 06:08:46','2019-01-01 06:08:46',NULL),(14,'Canes','C:\\xampp\\tmp\\php3FF7.tmp',14,'2019-01-01 06:08:55','2019-01-01 06:08:55',NULL),(15,'TIENDA NAME PUT','LOGO PUT',15,'2019-01-01 06:08:57','2019-01-01 07:00:57',NULL),(16,'Canes','C:\\xampp\\tmp\\php544C.tmp',16,'2019-01-01 06:09:00','2019-01-01 06:09:00',NULL),(18,'Canes','C:\\xampp\\tmp\\php66AD.tmp',18,'2019-01-01 06:09:05','2019-01-01 06:09:05',NULL),(19,'Canes','C:\\xampp\\tmp\\php6F69.tmp',19,'2019-01-01 06:09:07','2019-01-01 06:09:07',NULL),(20,'Canes','C:\\xampp\\tmp\\php7843.tmp',20,'2019-01-01 06:09:09','2019-01-01 06:09:09',NULL),(21,'POST TIENDA','C:\\xampp\\tmp\\phpB91C.tmp',21,'2019-01-01 07:09:30','2019-01-01 07:09:30',NULL),(22,'POST TIENDA','C:\\xampp\\tmp\\phpDC72.tmp',22,'2019-01-01 07:17:18','2019-01-01 07:17:18',NULL);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thownships`
--

DROP TABLE IF EXISTS `thownships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thownships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thownships`
--

LOCK TABLES `thownships` WRITE;
/*!40000 ALTER TABLE `thownships` DISABLE KEYS */;
INSERT INTO `thownships` VALUES (11,'Miguel Hidalgo',11950,'2019-01-01 06:08:46','2019-01-01 06:08:46',NULL),(14,'Miguel Hidalgo',11950,'2019-01-01 06:08:55','2019-01-01 06:08:55',NULL),(15,'ALCALDIA PUT',99999,'2019-01-01 06:08:57','2019-01-01 07:00:57',NULL),(16,'Miguel Hidalgo',11950,'2019-01-01 06:09:00','2019-01-01 06:09:00',NULL),(18,'Miguel Hidalgo',11950,'2019-01-01 06:09:05','2019-01-01 06:09:05',NULL),(19,'Miguel Hidalgo',11950,'2019-01-01 06:09:07','2019-01-01 06:09:07',NULL),(20,'Miguel Hidalgo',11950,'2019-01-01 06:09:09','2019-01-01 06:09:09',NULL),(21,'POST ALCALDIA',55555,'2019-01-01 07:09:30','2019-01-01 07:09:30',NULL),(22,'POST ALCALDIA',55555,'2019-01-01 07:17:18','2019-01-01 07:17:18',NULL);
/*!40000 ALTER TABLE `thownships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-31 20:14:08
