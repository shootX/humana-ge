-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: humana
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint unsigned NOT NULL,
  `log_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,1,'App\\Models\\User',1,'Create Milestone','{\"title\":\"proces\"}','2025-05-01 18:11:27','2025-05-01 18:11:27'),(2,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10d3\\u10d4\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d8\"}','2025-05-01 18:12:20','2025-05-01 18:12:20'),(3,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10d3\\u10d4\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d8\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2025-05-01 18:12:24','2025-05-01 18:12:24'),(4,1,'App\\Models\\User',1,'Upload File','{\"file_name\":\"download.jpeg\"}','2025-05-01 18:14:03','2025-05-01 18:14:03'),(5,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10d3\\u10d4\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d8\",\"old_status\":\"In Progress\",\"new_status\":\"Done\"}','2025-05-01 18:30:41','2025-05-01 18:30:41'),(6,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10e8\\u10d4\\u10e6\\u10d4\\u10d1\\u10d5\\u10d0\"}','2025-05-01 18:32:50','2025-05-01 18:32:50'),(7,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10da\\u10e3\\u10e5\\u10d8\"}','2025-05-01 18:33:47','2025-05-01 18:33:47'),(8,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10d4\\u10da.\\u10d2\\u10d0\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10dd\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d0\"}','2025-05-01 18:34:11','2025-05-01 18:34:11'),(9,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10d9\\u10d0\\u10db\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e0\\u10e9\\u10d4\\u10d5\\u10d0\\/\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\"}','2025-05-01 18:34:57','2025-05-01 18:34:57'),(10,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10d3\\u10d0\\u10ea\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d4\\u10d1\\u10d0\"}','2025-05-01 18:35:54','2025-05-01 18:35:54'),(11,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10d0\\u10d5\\u10d4\\u10ef\\u10d8\"}','2025-05-01 18:37:52','2025-05-01 18:37:52'),(12,1,'App\\Models\\User',1,'Create Task','{\"title\":\"\\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd \\u10d0\\u10de\\u10d0\\u10e0\\u10d0\\u10e2\\u10d8\"}','2025-05-01 18:39:41','2025-05-01 18:39:41'),(13,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd \\u10d0\\u10de\\u10d0\\u10e0\\u10d0\\u10e2\\u10d8\",\"old_status\":\"Todo\",\"new_status\":\"Review\"}','2025-05-01 18:39:48','2025-05-01 18:39:48'),(14,1,'App\\Models\\User',1,'Share with Client','{\"client_id\":1}','2025-05-01 19:36:26','2025-05-01 19:36:26'),(15,1,'App\\Models\\User',3,'Create Task','{\"title\":\"\\u10da\\u10dd\\u10e5\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d9\\u10d4\\u10e2\\u10d4\\u10d1\\u10d8\"}','2025-05-02 05:15:28','2025-05-02 05:15:28'),(16,1,'App\\Models\\User',3,'Create Task','{\"title\":\"\\u10d9\\u10dd\\u10dc\\u10d3\\u10d8\\u10ea\\u10d8\\u10dd\\u10dc\\u10d4\\u10e0\\u10d8 \\u10ec\\u10db\\u10d4\\u10dc\\u10d3\\u10d0\"}','2025-05-02 05:17:58','2025-05-02 05:17:58'),(17,1,'App\\Models\\User',3,'Create Task','{\"title\":\"\\u10db\\u10e0\\u10d2\\u10d5\\u10d0\\u10da\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10d7\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\"}','2025-05-02 05:19:37','2025-05-02 05:19:37'),(18,1,'App\\Models\\User',3,'Create Task','{\"title\":\"\\u10e1\\u10d0\\u10db\\u10e0\\u10d4\\u10d1\\u10e0\\u10dd \\u10e1\\u10d0\\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d4\\u10d1\\u10d8\"}','2025-05-02 05:20:17','2025-05-02 05:20:17'),(19,1,'App\\Models\\User',3,'Create Task','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\"}','2025-05-02 05:21:11','2025-05-02 05:21:11'),(20,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10da\\u10dd\\u10e5\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d9\\u10d4\\u10e2\\u10d4\\u10d1\\u10d8\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2025-05-02 05:21:26','2025-05-02 05:21:26'),(21,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10db\\u10e0\\u10d2\\u10d5\\u10d0\\u10da\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10d7\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2025-05-02 05:21:29','2025-05-02 05:21:29'),(22,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2025-05-02 05:21:32','2025-05-02 05:21:32'),(23,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10da\\u10dd\\u10e5\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d9\\u10d4\\u10e2\\u10d4\\u10d1\\u10d8\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2025-05-02 06:48:39','2025-05-02 06:48:39'),(24,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10db\\u10e0\\u10d2\\u10d5\\u10d0\\u10da\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10d7\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2025-05-02 06:48:41','2025-05-02 06:48:41'),(25,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2025-05-02 06:48:42','2025-05-02 06:48:42'),(26,1,'App\\Models\\User',3,'Share with Client','{\"client_id\":2}','2025-05-02 07:09:33','2025-05-02 07:09:33'),(27,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"old_status\":\"Review\",\"new_status\":\"Done\"}','2025-05-02 08:00:31','2025-05-02 08:00:31'),(28,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"old_status\":\"Done\",\"new_status\":\"Review\"}','2025-05-02 08:00:44','2025-05-02 08:00:44'),(29,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10d9\\u10dd\\u10dc\\u10d3\\u10d8\\u10ea\\u10d8\\u10dd\\u10dc\\u10d4\\u10e0\\u10d8 \\u10ec\\u10db\\u10d4\\u10dc\\u10d3\\u10d0\",\"old_status\":\"Todo\",\"new_status\":\"Review\"}','2025-05-03 05:14:44','2025-05-03 05:14:44'),(30,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"old_status\":\"Review\",\"new_status\":\"Done\"}','2025-05-03 05:15:35','2025-05-03 05:15:35'),(31,1,'App\\Models\\User',3,'Move','{\"title\":\"\\u10db\\u10e0\\u10d2\\u10d5\\u10d0\\u10da\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10d7\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"old_status\":\"Review\",\"new_status\":\"Done\"}','2025-05-03 05:15:40','2025-05-03 05:15:40'),(32,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd \\u10d0\\u10de\\u10d0\\u10e0\\u10d0\\u10e2\\u10d8\",\"old_status\":\"Review\",\"new_status\":\"Todo\"}','2025-05-12 18:30:47','2025-05-12 18:30:47'),(33,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10e8\\u10d4\\u10e6\\u10d4\\u10d1\\u10d5\\u10d0\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2025-05-12 18:30:51','2025-05-12 18:30:51'),(34,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10da\\u10e3\\u10e5\\u10d8\",\"old_status\":\"Todo\",\"new_status\":\"Done\"}','2025-05-12 18:30:58','2025-05-12 18:30:58'),(35,1,'App\\Models\\User',1,'Move','{\"title\":\"\\u10d4\\u10da.\\u10d2\\u10d0\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10dd\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d0\",\"old_status\":\"Todo\",\"new_status\":\"Done\"}','2025-05-12 18:31:02','2025-05-12 18:31:02');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_comments`
--

DROP TABLE IF EXISTS `bug_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bug_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_comments`
--

LOCK TABLES `bug_comments` WRITE;
/*!40000 ALTER TABLE `bug_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_files`
--

DROP TABLE IF EXISTS `bug_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bug_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_files`
--

LOCK TABLES `bug_files` WRITE;
/*!40000 ALTER TABLE `bug_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_reports`
--

DROP TABLE IF EXISTS `bug_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bug_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_to` int NOT NULL,
  `project_id` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unconfirmed',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_reports`
--

LOCK TABLES `bug_reports` WRITE;
/*!40000 ALTER TABLE `bug_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_stages`
--

DROP TABLE IF EXISTS `bug_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bug_stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#051c4b',
  `complete` tinyint(1) NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_stages`
--

LOCK TABLES `bug_stages` WRITE;
/*!40000 ALTER TABLE `bug_stages` DISABLE KEYS */;
INSERT INTO `bug_stages` VALUES (1,'Unconfirmed','#77b6ea',0,1,0,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(2,'Confirmed','#6e00ff',0,1,1,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(3,'In Progress','#3cb8d9',0,1,2,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(4,'Resolved','#37b37e',0,1,3,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(5,'Verified','#545454',1,1,4,'2025-05-01 17:09:58','2025-05-01 17:09:58');
/*!40000 ALTER TABLE `bug_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `className` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_favorites`
--

DROP TABLE IF EXISTS `ch_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ch_favorites` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_favorites`
--

LOCK TABLES `ch_favorites` WRITE;
/*!40000 ALTER TABLE `ch_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_messages`
--

DROP TABLE IF EXISTS `ch_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ch_messages` (
  `id` bigint NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_messages`
--

LOCK TABLES `ch_messages` WRITE;
/*!40000 ALTER TABLE `ch_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_projects`
--

DROP TABLE IF EXISTS `client_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `project_id` int NOT NULL,
  `permission` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `workspace_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_projects`
--

LOCK TABLES `client_projects` WRITE;
/*!40000 ALTER TABLE `client_projects` DISABLE KEYS */;
INSERT INTO `client_projects` VALUES (1,1,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\",\"show expenses\"]','1',1,'2025-05-01 19:36:26','2025-05-01 19:36:26'),(2,2,3,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\",\"show expenses\"]','1',1,'2025-05-02 07:09:33','2025-05-02 07:09:33');
/*!40000 ALTER TABLE `client_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_workspaces`
--

DROP TABLE IF EXISTS `client_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_workspaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `workspace_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_workspaces`
--

LOCK TABLES `client_workspaces` WRITE;
/*!40000 ALTER TABLE `client_workspaces` DISABLE KEYS */;
INSERT INTO `client_workspaces` VALUES (1,1,1,1,'2025-05-01 18:43:03','2025-05-01 18:43:03'),(2,2,1,1,'2025-05-02 06:46:09','2025-05-02 06:46:09');
/*!40000 ALTER TABLE `client_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currant_workspace` int DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enable_login` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'მარიამი ქავთარაძე','demokav@demo.ge',NULL,'$2y$10$EPKckpGWIvc/9VMSjCrBF.NKEQsMaXbuzv6Uh9IZqD4rcuY6qbglq','en',NULL,1,NULL,'გლდანი, ვეკუას 17 ა','tbilisi','iereti','09012','georgia','+991571206769',1,'2025-05-01 18:43:03','2025-05-01 18:50:20'),(2,'Fati Abutidze','humanavarketili@gmail.com',NULL,'$2y$10$onXqYi77qVg9qRCveiKtMuL8/YEHyuab4iGTuRutJHHiP/s7lxAVu','en',NULL,1,NULL,'Javakheti 41','Tbilisi','Varketili','09111','Georgia','+9911111111',1,'2025-05-02 06:46:08','2025-05-02 07:05:36');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int DEFAULT NULL,
  `type` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `client_signature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_signature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `workspace_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'1','ა','2',1500,1,'2025-05-01','2025-05-08','pending','ისა და ესა რა',NULL,NULL,NULL,1,NULL,'2025-05-01 18:44:15','2025-05-01 18:44:15');
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_attachments`
--

DROP TABLE IF EXISTS `contracts_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `files` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_attachments`
--

LOCK TABLES `contracts_attachments` WRITE;
/*!40000 ALTER TABLE `contracts_attachments` DISABLE KEYS */;
INSERT INTO `contracts_attachments` VALUES (2,1,1,NULL,'download (3).jpeg',1,'2025-05-01 18:45:39','2025-05-01 18:45:39');
/*!40000 ALTER TABLE `contracts_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_comments`
--

DROP TABLE IF EXISTS `contracts_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint unsigned NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_comments`
--

LOCK TABLES `contracts_comments` WRITE;
/*!40000 ALTER TABLE `contracts_comments` DISABLE KEYS */;
INSERT INTO `contracts_comments` VALUES (1,1,'1',NULL,'აბ ფე',1,'2025-05-01 18:45:19','2025-05-01 18:45:19'),(2,1,'1',NULL,'ეგგ',1,'2025-05-01 18:45:29','2025-05-01 18:45:29');
/*!40000 ALTER TABLE `contracts_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_notes`
--

DROP TABLE IF EXISTS `contracts_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint unsigned NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int DEFAULT NULL,
  `notes` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_notes`
--

LOCK TABLES `contracts_notes` WRITE;
/*!40000 ALTER TABLE `contracts_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_types`
--

DROP TABLE IF EXISTS `contracts_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_types`
--

LOCK TABLES `contracts_types` WRITE;
/*!40000 ALTER TABLE `contracts_types` DISABLE KEYS */;
INSERT INTO `contracts_types` VALUES (1,'anovo.ge',1,'2025-05-01 18:41:49','2025-05-01 18:41:49');
/*!40000 ALTER TABLE `contracts_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template_langs`
--

DROP TABLE IF EXISTS `email_template_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_template_langs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_langs`
--

LOCK TABLES `email_template_langs` WRITE;
/*!40000 ALTER TABLE `email_template_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `className` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_items`
--

DROP TABLE IF EXISTS `expense_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_items`
--

LOCK TABLES `expense_items` WRITE;
/*!40000 ALTER TABLE `expense_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `workspace_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(12,3) NOT NULL DEFAULT '0.000',
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `purchase_invoice_id` bigint unsigned DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_categories`
--

DROP TABLE IF EXISTS `inventory_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_categories_workspace_id_foreign` (`workspace_id`),
  KEY `inventory_categories_created_by_foreign` (`created_by`),
  CONSTRAINT `inventory_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_categories_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_categories`
--

LOCK TABLES `inventory_categories` WRITE;
/*!40000 ALTER TABLE `inventory_categories` DISABLE KEYS */;
INSERT INTO `inventory_categories` VALUES (1,'Tools','Equipment and tools',1,1,'2025-05-10 21:07:35','2025-05-10 21:07:35'),(2,'Supplies','Consumable materials',1,1,'2025-05-10 21:07:35','2025-05-10 21:07:35');
/*!40000 ALTER TABLE `inventory_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_items`
--

DROP TABLE IF EXISTS `inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint unsigned DEFAULT NULL,
  `supplier_id` bigint unsigned DEFAULT NULL,
  `barcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'piece',
  `unit_price` decimal(15,2) DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `workspace_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `warehouse_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_items_barcode_workspace_unique` (`barcode`,`workspace_id`),
  KEY `inventory_items_workspace_id_foreign` (`workspace_id`),
  KEY `inventory_items_created_by_foreign` (`created_by`),
  KEY `inventory_items_category_id_foreign` (`category_id`),
  KEY `inventory_items_warehouse_id_foreign` (`warehouse_id`),
  KEY `inventory_items_supplier_id_foreign` (`supplier_id`),
  CONSTRAINT `inventory_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `inventory_categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_items_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_items_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_items_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_items`
--

LOCK TABLES `inventory_items` WRITE;
/*!40000 ALTER TABLE `inventory_items` DISABLE KEYS */;
INSERT INTO `inventory_items` VALUES (2,'Shotoo Chkhvirkia','l',2,1,'22004021',1,'piece',88.00,'in_stock',1,1,'2025-05-10 21:18:06','2025-05-12 18:23:20',1),(3,'anovo.ge','q1',2,1,'12234123231',12,'liter',1188.00,'in_stock',1,1,'2025-05-12 18:23:07','2025-05-12 18:23:44',1);
/*!40000 ALTER TABLE `inventory_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_task`
--

DROP TABLE IF EXISTS `inventory_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_task` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_task`
--

LOCK TABLES `inventory_task` WRITE;
/*!40000 ALTER TABLE `inventory_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint unsigned NOT NULL,
  `price` double DEFAULT '0',
  `qty` int NOT NULL,
  `invoice_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_items_item_type_item_id_index` (`item_type`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
INSERT INTO `invoice_items` VALUES (1,'App\\Models\\Task',9,80,1,1,'2025-05-02 06:47:08','2025-05-02 06:47:08'),(2,'App\\Models\\Task',10,800,1,1,'2025-05-02 06:47:18','2025-05-02 06:47:18'),(3,'App\\Models\\Task',11,230,1,1,'2025-05-02 06:47:30','2025-05-02 06:47:30'),(4,'App\\Models\\Task',13,150,1,1,'2025-05-02 06:47:41','2025-05-02 06:47:41'),(6,'App\\Models\\Task',11,800,1,2,'2025-05-02 06:59:12','2025-05-02 06:59:12');
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint unsigned NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double DEFAULT '0',
  `txn_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payments`
--

LOCK TABLES `invoice_payments` WRITE;
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
INSERT INTO `invoice_payments` VALUES (1,'681486CD611B6763281807',1,'USD',1260,'','Manual','succeeded','',1,'2025-05-02 06:48:13','2025-05-02 06:48:13'),(2,'6814897CC3A12918044576',2,'GEL',800,'','Manual','succeeded','',1,'2025-05-02 06:59:40','2025-05-02 06:59:40');
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `project_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tax_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'exclusive',
  `client_id` bigint unsigned DEFAULT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,3,'paid','2025-05-02','2025-05-03',0,'1','inclusive',2,1,'2025-05-02 06:46:39','2025-05-09 17:31:19');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_us`
--

DROP TABLE IF EXISTS `join_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `join_us_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_us`
--

LOCK TABLES `join_us` WRITE;
/*!40000 ALTER TABLE `join_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_settings`
--

DROP TABLE IF EXISTS `landing_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_page_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `landing_page_settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_settings`
--

LOCK TABLES `landing_page_settings` WRITE;
/*!40000 ALTER TABLE `landing_page_settings` DISABLE KEYS */;
INSERT INTO `landing_page_settings` VALUES (1,'topbar_status','on','2025-05-01 16:46:45','2025-05-01 16:46:45'),(2,'topbar_notification_msg','70% Special Offer. Don’t Miss it. The offer ends in 72 hours.','2025-05-01 16:46:45','2025-05-01 16:46:45'),(3,'menubar_status','on','2025-05-01 16:46:45','2025-05-01 16:46:45'),(4,'menubar_page','[{\"menubar_page_name\":\"About Us\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\":\"<div>\\r\\n<div>Welcome to Taskly, your trusted partner in the world of technology. We are an innovative IT company dedicated to providing cutting-edge solutions and services to help businesses thrive in the digital age. With a team of highly skilled professionals and a passion for technology, we strive to deliver exceptional results that drive growth and transform businesses.<\\/div>\\r\\n<br>\\r\\n<div>At Taskly , we believe that technology should be an enabler, not a barrier. We work closely with our clients to understand their unique needs and challenges, and then tailor our solutions to meet their specific requirements. Whether you are a small startup or a large enterprise, we have the expertise and experience to deliver scalable and cost-effective IT solutions that align with your business goals.<\\/div>\\r\\n<br>\\r\\n<div>Our comprehensive range of services includes software development, web and mobile app development, cloud computing, cybersecurity, IT consulting, and more. We leverage the latest technologies and industry best practices to ensure that our clients stay ahead of the competition and achieve long-term success.<\\/div>\\r\\n<br>\\r\\n<div>With a customer-centric approach, we prioritize communication, collaboration, and transparency throughout every project. We believe in building strong and lasting relationships with our clients, and we go the extra mile to exceed their expectations. Your success is our success, and we are committed to helping you unlock your full potential through technology.<\\/div>\\r\\n<br>\\r\\n<div>Choose Taskly as your technology partner and experience the power of innovation, reliability, and expertise. Contact us today to discuss your IT needs and let us embark on a journey towards digital transformation together.<\\/div>\\r\\n<\\/div>\",\"page_slug\":\"about_us\",\"header\":\"on\",\"footer\":\"on\",\"login\":\"on\"},{\"menubar_page_name\":\"Terms and Conditions\",\"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\":\"<div>\\r\\n<div>Welcome to the Taskly website. By accessing this website, you agree to comply with and be bound by the following terms and conditions of use. If you disagree with any part of these terms, please do not use our website.<\\/div>\\r\\n<br>\\r\\n<div>The content of the pages of this website is for your general information and use only. It is subject to change without notice.<\\/div>\\r\\n<br>\\r\\n<div>This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, personal information may be stored by us for use by third parties.<\\/div>\\r\\n<br>\\r\\n<div>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.<\\/div>\\r\\n<br>\\r\\n<div>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.<\\/div>\\r\\n<br>\\r\\n<div>This website contains material that is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.<\\/div>\\r\\n<br>\\r\\n<div>Unauthorized use of this website may give rise to a claim for damages and\\/or be a criminal offense.<\\/div>\\r\\n<br>\\r\\n<div>From time to time, this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).<\\/div>\\r\\n<\\/div>\",\"page_slug\":\"terms_and_conditions\",\"header\":\"off\",\"footer\":\"on\",\"login\":\"on\"},{\"menubar_page_name\":\"Privacy Policy\", \"template_name\": \"page_content\",\"page_url\": \"\",\"menubar_page_contant\":\"<div>\\r\\n<div><strong>Introduction:<\\/strong> An overview of the privacy policy, including the purpose and scope of the policy.<\\/div>\\r\\n<br>\\r\\n<div><strong>Information Collection:<\\/strong> Details about the types of information collected from users\\/customers, such as personal information (name, address, email), device information, usage data, and any other relevant data.<\\/div>\\r\\n<br>\\r\\n<div><strong>Data Usage: <\\/strong>An explanation of how the collected data will be used, including providing services, improving products, personalization, analytics, and any other legitimate business purposes.<\\/div>\\r\\n<br>\\r\\n<div><strong>Data Sharing:<\\/strong> Information about whether and how the company shares user data with third parties, such as partners, service providers, or affiliates, along with the purposes of such sharing.<\\/div>\\r\\n<br>\\r\\n<div><strong>Data Security: <\\/strong>Details about the measures taken to protect user data from unauthorized access, loss, or misuse, including encryption, secure protocols, access controls, and data breach notification procedures.<\\/div>\\r\\n<br>\\r\\n<div><strong>User Choices:<\\/strong> Information on the choices available to users regarding the collection, use, and sharing of their personal data, including opt-out mechanisms and account settings.<\\/div>\\r\\n<br>\\r\\n<div><strong>Cookies and Tracking Technologies:<\\/strong> Explanation of the use of cookies, web beacons, and similar technologies for tracking user activity and collecting information for analytics and advertising purposes.<\\/div>\\r\\n<br>\\r\\n<div><strong>Third-Party Links:<\\/strong> Clarification that the companys website or services may contain links to third-party websites or services and that the privacy policy does not extend to those external sites.<\\/div>\\r\\n<br>\\r\\n<div><strong>Data Retention:<\\/strong> Details about the retention period for user data and how long it will be stored by the company.<\\/div>\\r\\n<br>\\r\\n<div><strong>Legal Basis and Compliance:<\\/strong> Information about the legal basis for processing personal data, compliance with applicable data protection laws, and the rights of users under relevant privacy regulations (e.g., GDPR, CCPA).<\\/div>\\r\\n<br>\\r\\n<div><strong>Updates to the Privacy Policy:<\\/strong> Notification that the privacy policy may be updated from time to time, and how users will be informed of any material changes.<\\/div>\\r\\n<br>\\r\\n<div><strong>Contact Information:<\\/strong> How users can contact the company regarding privacy-related concerns or inquiries.<\\/div>\\r\\n<\\/div>\",\"page_slug\":\"privacy_policy\",\"header\":\"off\",\"footer\":\"on\",\"login\":\"on\"}]','2025-05-01 16:46:45','2025-05-01 16:46:45'),(5,'site_logo','site_logo.png','2025-05-01 16:46:45','2025-05-01 16:46:45'),(6,'site_description','We build modern web tools to help you jump-start your daily business work.','2025-05-01 16:46:45','2025-05-01 16:46:45'),(7,'home_status','on','2025-05-01 16:46:45','2025-05-01 16:46:45'),(8,'home_offer_text',NULL,'2025-05-01 16:46:45','2025-05-01 17:54:25'),(9,'home_title','Home','2025-05-01 16:46:45','2025-05-01 16:46:45'),(10,'home_heading','Hmana Project Management Tool','2025-05-01 16:46:45','2025-05-01 17:54:25'),(11,'home_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:45','2025-05-01 16:46:45'),(12,'home_trusted_by',NULL,'2025-05-01 16:46:45','2025-05-01 17:54:25'),(13,'home_live_demo_link','#','2025-05-01 16:46:45','2025-05-01 17:54:25'),(14,'home_buy_now_link','#','2025-05-01 16:46:45','2025-05-01 17:54:25'),(15,'home_banner','home_banner.png','2025-05-01 16:46:45','2025-05-01 16:46:45'),(16,'home_logo','home_logo.png,home_logo.png,home_logo.png,home_logo.png,home_logo.png,home_logo.png','2025-05-01 16:46:45','2025-05-01 16:46:45'),(17,'feature_status','on','2025-05-01 16:46:45','2025-05-01 16:46:45'),(18,'feature_title','Features','2025-05-01 16:46:45','2025-05-01 16:46:45'),(19,'feature_heading','Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(20,'feature_description','Use these awesome forms to login or create new account in your project for free. Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(21,'feature_buy_now_link','https://codecanyon.net/item/taskly-project-management-tool/24264721','2025-05-01 16:46:46','2025-05-01 16:46:46'),(22,'feature_of_features','[{\"feature_logo\":\"1688101752-feature_logo.png\",\"feature_heading\":\"Feature\",\"feature_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"feature_logo\":\"1688101716-feature_logo.png\",\"feature_heading\":\"Support\",\"feature_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"feature_logo\":\"1688101773-feature_logo.png\",\"feature_heading\":\"Integration\",\"feature_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(23,'highlight_feature_heading','Taskly Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(24,'highlight_feature_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(25,'highlight_feature_image','highlight_feature_image.png','2025-05-01 16:46:46','2025-05-01 16:46:46'),(26,'other_features','[{\"other_features_image\":\"1688097205-other_features_image.png\",\"other_features_heading\":\"Taskly Project Management Tool\",\"other_featured_description\":\"<p>Use these awesome forms to login or create new account in your project for free.<\\/p>\",\"other_feature_buy_now_link\":\"https:\\/\\/codecanyon.net\\/item\\/taskly-project-management-tool\\/24264721\"},{\"other_features_image\":\"1688037806-other_features_image.png\",\"other_features_heading\":\"Taskly Project Management Tool\",\"other_featured_description\":\"Use these awesome forms to login or create new account in your project for free.\",\"other_feature_buy_now_link\":\"https:\\/\\/codecanyon.net\\/item\\/taskly-project-management-tool\\/24264721\"},{\"other_features_image\":\"1688037731-other_features_image.png\",\"other_features_heading\":\"Taskly Project Management Tool\",\"other_featured_description\":\"Use these awesome forms to login or create new account in your project for free.\",\"other_feature_buy_now_link\":\"https:\\/\\/codecanyon.net\\/item\\/taskly-project-management-tool\\/24264721\"},{\"other_features_image\":\"1688037742-other_features_image.png\",\"other_features_heading\":\"Taskly Project Management Tool\",\"other_featured_description\":\"Use these awesome forms to login or create new account in your project for free.\",\"other_feature_buy_now_link\":\"https:\\/\\/codecanyon.net\\/item\\/taskly-project-management-tool\\/24264721\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(27,'discover_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(28,'discover_heading','Taskly Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(29,'discover_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(30,'discover_live_demo_link','https://demo.workdo.io/taskly/login','2025-05-01 16:46:46','2025-05-01 16:46:46'),(31,'discover_buy_now_link','https://codecanyon.net/item/taskly-project-management-tool/24264721','2025-05-01 16:46:46','2025-05-01 16:46:46'),(32,'discover_of_features','[{\"discover_logo\":\"1688101886-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"<p>Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.<\\/p>\"},{\"discover_logo\":\"1688102060-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688101957-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688101963-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688101979-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688102029-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688101992-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"},{\"discover_logo\":\"1688102001-discover_logo.png\",\"discover_heading\":\"Feature\",\"discover_description\":\"Use these awesome forms to login or create new account in your project for free.Use these awesome forms to login or create new account in your project for free.\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(33,'screenshots_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(34,'screenshots_heading','Taskly Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(35,'screenshots_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(36,'screenshots','[{\"screenshots\":\"1688038244-screenshots.png\",\"screenshots_heading\":\"Dashboard\"},{\"screenshots\":\"1688038256-screenshots.png\",\"screenshots_heading\":\"Users\"},{\"screenshots\":\"1688038271-screenshots.png\",\"screenshots_heading\":\"Projects\"},{\"screenshots\":\"1688038286-screenshots.png\",\"screenshots_heading\":\"Tasks\"},{\"screenshots\":\"1688384689-screenshots.png\",\"screenshots_heading\":\"Invoice\"},{\"screenshots\":\"1688038322-screenshots.png\",\"screenshots_heading\":\"Projects View\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(37,'plan_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(38,'plan_title','Plan','2025-05-01 16:46:46','2025-05-01 16:46:46'),(39,'plan_heading','Taskly Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(40,'plan_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(41,'faq_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(42,'faq_title','Faq','2025-05-01 16:46:46','2025-05-01 16:46:46'),(43,'faq_heading','Taskly Project Management Tool','2025-05-01 16:46:46','2025-05-01 16:46:46'),(44,'faq_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(45,'faqs','[{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Theme\\/Package Installation\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"#What does \\\"Lifetime updates\\\" mean?\",\"faq_answer\":\"For an easy-to-install theme\\/package, we have included step-by-step detailed documentation (in English). However, if it is not done perfectly, please feel free to contact the support team at support@workdo.io\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"},{\"faq_questions\":\"# What does \\\"6 months of support\\\" mean?\",\"faq_answer\":\"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa\\r\\n                                    nesciunt\\r\\n                                    laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt\\r\\n                                    sapiente ea\\r\\n                                    proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven heard of them accusamus labore sustainable VHS.\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(46,'testimonials_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(47,'testimonials_heading','From our Clients','2025-05-01 16:46:46','2025-05-01 16:46:46'),(48,'testimonials_description','Use these awesome forms to login or create new account in your project for free.','2025-05-01 16:46:46','2025-05-01 16:46:46'),(49,'testimonials_long_description','WorkDo E-Commerce package offers you a “sales-ready.”secure online store. The package puts all the key pieces together, from design to payment processing. This gives you a headstart in your eCommerce venture. Every store is built using a reliable PHP framework -laravel. Thisspeeds up the development process while increasing the store’s security and performance.Additionally, thanks to the accompanying mobile app, you and your team can manage the store on the go. What’s more, because the app works both for you and your customers, you can use it to reach a wider audience.And, unlike popular eCommerce platforms, it doesn’t bind you to any terms and conditions or recurring fees. You get to choose where you host it or which payment gateway you use. Lastly, you getcomplete control over the looks of the store. And if it lacks any functionalities that you need, just reach out, and let’s discuss customization possibilities','2025-05-01 16:46:46','2025-05-01 16:46:46'),(50,'testimonials','[{\"testimonials_user_avtar\":\"1686634418-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"4\"},{\"testimonials_user_avtar\":\"1686634425-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"4\"},{\"testimonials_user_avtar\":\"1686634432-testimonials_user_avtar.jpg\",\"testimonials_title\":\"Tbistone\",\"testimonials_description\":\"Very quick customer support, installing this application on my machine locally, within 5 minutes of creating a ticket, the developer was able to fix the issue I had within 10 minutes. EXCELLENT! Thank you very much\",\"testimonials_user\":\"Chordsnstrings\",\"testimonials_designation\":\"from codecanyon\",\"testimonials_star\":\"5\"}]','2025-05-01 16:46:46','2025-05-01 16:46:46'),(51,'footer_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(52,'joinus_status','on','2025-05-01 16:46:46','2025-05-01 16:46:46'),(53,'joinus_heading','Join Our Community','2025-05-01 16:46:46','2025-05-01 16:46:46'),(54,'joinus_description','We build modern web tools to help you jump-start your daily business work.','2025-05-01 16:46:46','2025-05-01 16:46:46');
/*!40000 ALTER TABLE `landing_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_fullname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'en','English','2025-05-01 17:08:56','2025-05-01 17:08:56'),(2,'ar','Arabic','2025-05-07 20:16:12','2025-05-07 20:16:12'),(3,'da','Danish','2025-05-07 20:16:12','2025-05-07 20:16:12'),(4,'de','German','2025-05-07 20:16:12','2025-05-07 20:16:12'),(5,'es','Spanish','2025-05-07 20:16:12','2025-05-07 20:16:12'),(6,'fr','French','2025-05-07 20:16:12','2025-05-07 20:16:12'),(7,'it','Italian','2025-05-07 20:16:12','2025-05-07 20:16:12'),(8,'ja','Japanese','2025-05-07 20:16:12','2025-05-07 20:16:12'),(9,'ka','Georgian','2025-05-07 20:16:12','2025-05-07 20:16:12'),(10,'nl','Dutch','2025-05-07 20:16:12','2025-05-07 20:16:12'),(11,'pl','Polish','2025-05-07 20:16:12','2025-05-07 20:16:12'),(12,'ru','Russian','2025-05-07 20:16:12','2025-05-07 20:16:12'),(13,'pt','Portuguese','2025-05-07 20:16:12','2025-05-07 20:16:12'),(14,'tr','Turkish','2025-05-07 20:16:12','2025-05-07 20:16:12'),(15,'zh','Chinese','2025-05-07 20:16:12','2025-05-07 20:16:12'),(16,'he','Hebrew','2025-05-07 20:16:12','2025-05-07 20:16:12'),(17,'pt-br','Portuguese(BR)','2025-05-07 20:16:12','2025-05-07 20:16:12');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_details`
--

LOCK TABLES `login_details` WRITE;
/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (1,1,'49.36.83.154','2025-05-02 02:20:33','{\"status\":\"success\",\"country\":\"India\",\"countryCode\":\"IN\",\"region\":\"GJ\",\"regionName\":\"Gujarat\",\"city\":\"Surat\",\"zip\":\"395007\",\"lat\":21.1981,\"lon\":72.8298,\"timezone\":\"Asia\\/Kolkata\",\"isp\":\"Reliance Jio Infocomm Limited\",\"org\":\"Reliance Jio Infocomm Limited\",\"as\":\"AS55836 Reliance Jio Infocomm Limited\",\"query\":\"49.36.83.154\",\"browser_name\":\"Chrome\",\"os_name\":\"OS X\",\"browser_language\":\"en\",\"device_type\":\"desktop\",\"referrer_host\":true,\"referrer_path\":true}','client',1,'2025-05-02 00:20:33','2025-05-02 00:20:33'),(2,1,'49.36.83.154','2025-05-02 02:38:37','{\"status\":\"success\",\"country\":\"India\",\"countryCode\":\"IN\",\"region\":\"GJ\",\"regionName\":\"Gujarat\",\"city\":\"Surat\",\"zip\":\"395007\",\"lat\":21.1981,\"lon\":72.8298,\"timezone\":\"Asia\\/Kolkata\",\"isp\":\"Reliance Jio Infocomm Limited\",\"org\":\"Reliance Jio Infocomm Limited\",\"as\":\"AS55836 Reliance Jio Infocomm Limited\",\"query\":\"49.36.83.154\",\"browser_name\":\"Chrome\",\"os_name\":\"OS X\",\"browser_language\":\"en\",\"device_type\":\"desktop\",\"referrer_host\":true,\"referrer_path\":true}','client',1,'2025-05-02 00:38:37','2025-05-02 00:38:37'),(3,2,'49.36.83.154','2025-05-02 14:36:05','{\"status\":\"success\",\"country\":\"India\",\"countryCode\":\"IN\",\"region\":\"GJ\",\"regionName\":\"Gujarat\",\"city\":\"Surat\",\"zip\":\"395007\",\"lat\":21.1981,\"lon\":72.8298,\"timezone\":\"Asia\\/Kolkata\",\"isp\":\"Reliance Jio Infocomm Limited\",\"org\":\"Reliance Jio Infocomm Limited\",\"as\":\"AS55836 Reliance Jio Infocomm Limited\",\"query\":\"49.36.83.154\",\"browser_name\":\"Chrome\",\"os_name\":\"OS X\",\"browser_language\":\"en\",\"device_type\":\"desktop\",\"referrer_host\":true,\"referrer_path\":true}','client',1,'2025-05-02 12:36:05','2025-05-02 12:36:05'),(4,1,'49.36.83.154','2025-05-03 13:49:31','{\"status\":\"success\",\"country\":\"India\",\"countryCode\":\"IN\",\"region\":\"GJ\",\"regionName\":\"Gujarat\",\"city\":\"Surat\",\"zip\":\"395007\",\"lat\":21.1981,\"lon\":72.8298,\"timezone\":\"Asia\\/Kolkata\",\"isp\":\"Reliance Jio Infocomm Limited\",\"org\":\"Reliance Jio Infocomm Limited\",\"as\":\"AS55836 Reliance Jio Infocomm Limited\",\"query\":\"49.36.83.154\",\"browser_name\":\"Chrome\",\"os_name\":\"OS X\",\"browser_language\":\"en\",\"device_type\":\"desktop\",\"referrer_host\":true,\"referrer_path\":true}','client',1,'2025-05-03 11:49:31','2025-05-03 11:49:31');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_05_06_041033_create_workspaces_table',1),(4,'2019_05_06_084210_create_user_workspaces_table',1),(5,'2019_05_07_055821_create_projects_table',1),(6,'2019_05_08_094315_create_user_projects_table',1),(7,'2019_05_10_114541_create_todos_table',1),(8,'2019_05_11_062147_create_notes_table',1),(9,'2019_05_13_061456_create_tasks_table',1),(10,'2019_05_14_115634_create_comments_table',1),(11,'2019_05_15_054812_create_task_files_table',1),(12,'2019_05_15_115847_create_events_table',1),(13,'2019_05_15_122901_create_calendars_table',1),(14,'2019_05_31_135941_create_clients_table',1),(15,'2019_05_31_140658_create_clients_workspaces_table',1),(16,'2019_05_31_152045_create_client_projects_table',1),(17,'2019_09_22_192348_create_messages_table',1),(18,'2019_10_14_220244_create_milestones_table',1),(19,'2019_10_14_233948_create_sub_tasks_table',1),(20,'2019_10_15_054657_create_project_files_table',1),(21,'2019_10_16_211433_create_favorites_table',1),(22,'2019_10_18_114133_create_activity_logs_table',1),(23,'2019_12_11_152947_create_timesheets_table',1),(24,'2019_12_31_102929_create_bug_reports_table',1),(25,'2019_12_31_114041_create_bug_comments_table',1),(26,'2019_12_31_114359_create_bug_files_table',1),(27,'2020_03_13_140919_create_invoices_table',1),(28,'2020_03_13_140956_create_taxes_table',1),(29,'2020_03_13_143721_create_invoice_items_table',1),(30,'2020_03_18_130330_create_notifications_table',1),(31,'2020_03_23_153638_create_stages_table',1),(32,'2020_03_24_153638_create_bug_stages_table',1),(33,'2020_04_27_095629_create_invoice_payments_table',1),(34,'2021_07_16_061738_create_payment_settings',1),(35,'2021_12_22_032655_create_time_trackers_table',1),(36,'2021_12_22_032854_create_track_photos_table',1),(37,'2021_12_27_103327_create_zoom_meetings_table',1),(38,'2022_04_27_065814_create_settings_table',1),(39,'2022_07_19_031233_create_email_templates_table',1),(40,'2022_07_19_031305_create_email_template_langs_table',1),(41,'2022_07_19_031326_create_user_email_templates_table',1),(42,'2022_08_04_033946_create_contracts_types_table',1),(43,'2022_08_04_034016_create_contracts_table',1),(44,'2022_08_04_034033_create_contracts_attachments_table',1),(45,'2022_08_04_034046_create_contracts_notes_table',1),(46,'2022_08_04_034100_create_contracts_comments_table',1),(47,'2023_04_20_102814_create_notification_templates_table',1),(48,'2023_04_20_121414_create_notification_template_langs_table',1),(49,'2023_04_25_094143_create_login_details_table',1),(50,'2023_04_26_045144_create_webhooks_table',1),(51,'2023_06_05_043450_create_landing_page_settings_table',1),(52,'2023_06_08_092556_create_templates_table',1),(53,'2023_06_10_114031_create_join_us_table',1),(54,'2023_06_27_124708_create_languages_table',1),(55,'2023_12_22_043449_create_expenses_table',1),(56,'2024_02_05_113138_add_new_columns_table',1),(57,'2024_10_08_063245_create_personal_access_tokens_table',1),(58,'2024_10_11_111626_add_qr_display_to_workspaces_table',1),(59,'2024_11_27_071753_add_google2fa_enable_to_users_table',1),(60,'2025_03_18_140833_modify_value_column_in_payment_settings',1),(61,'2025_05_02_094826_create_inventories_table',2),(62,'2025_05_02_095140_create_inventory_task_table',3),(66,'2025_05_03_100516_add_inventory_item_id_to_invoice_items_table',6),(67,'2025_05_09_161256_create_suppliers_table',7),(68,'2025_05_09_191819_drop_zoom_meetings_table',8),(69,'2025_05_03_080159_create_inventory_categories_table',9),(70,'2025_05_03_065259_create_inventory_items_table',10),(71,'2025_05_11_111330_create_warehouses_table',11),(72,'2025_05_11_111335_create_warehouse_items_table',12),(73,'2025_05_11_111341_add_warehouse_id_to_inventory_items_table',13),(74,'2025_05_12_202140_add_supplier_id_and_unit_to_inventory_items_table',14),(75,'2025_05_12_165104_create_task_categories_table',15),(76,'2025_05_10_234211_add_unique_index_to_barcode_in_inventory_items',16),(77,'2025_05_12_165115_add_category_id_to_tasks_table',17),(78,'2025_05_03_200940_create_expense_items_table',17),(79,'2025_05_07_192655_add_tax_type_to_invoices',17),(80,'2025_05_10_232505_add_unit_to_inventory_items_table',17),(81,'2025_05_10_233715_add_supplier_id_to_inventory_items_table',17),(82,'create_files_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` double DEFAULT '0',
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,1,'proces','incomplete',NULL,0,NULL,NULL,'working proces','2025-05-01 18:11:27','2025-05-01 18:11:27');
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'personal',
  `assign_to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'ინვოისი','<p>ინვოისი ამბავი მოვაგვარო და ფილი ატვირთვის</p>','bg-primary','personal','1',1,1,'2025-05-01 19:40:02','2025-05-01 19:40:02');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_template_langs`
--

DROP TABLE IF EXISTS `notification_template_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_template_langs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variables` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_template_langs`
--

LOCK TABLES `notification_template_langs` WRITE;
/*!40000 ALTER TABLE `notification_template_langs` DISABLE KEYS */;
INSERT INTO `notification_template_langs` VALUES (1,1,'ar','{project_name} تم إنشاء المشروع بواسطة {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(2,1,'da','{project_name} Projekt er oprettet af {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(3,1,'de','{project_name} Projekt wird erstellt von {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(4,1,'en','{project_name} Project is Created By {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(5,1,'es','{project_name} El proyecto se crea mediante {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(6,1,'fr','{project_name} Le projet est créé par {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(7,1,'it','{project_name} Il progetto è Creato By {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(8,1,'ja','{project_name} プロジェクトの作成者 {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(9,1,'nl','{project_name} Project is gemaakt door {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(10,1,'pl','{project_name} Projekt został utworzony przez {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(11,1,'ru','{project_name} Проект создан {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(12,1,'pt','{project_name} Projeto é Criado Por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(13,1,'tr','{ project_name } Projesi, { user_name } Tarafından Oluşturuldu','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(14,1,'zh','{project_name} 项目由 {user_name} 创建','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(15,1,'he','{project_name} הפרויקט נוצר על ידי {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(16,1,'pt-br','{project_name} O projeto é criado por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(17,2,'ar','{task_title} تم تكوين المهمة بواسطة {user_name} من {project_name} المشروع','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(18,2,'da','{task_title} Opgave er oprettet af {user_name} af {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(19,2,'de','{task_title} Task wird erstellt von {user_name} von {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(20,2,'en','გამარჯობა&nbsp;<span style=\"color: rgb(20, 83, 136);\">{user_name} , ფილიალში&nbsp;</span><span style=\"color: rgb(20, 83, 136);\">{project_name}&nbsp; გვაქვს ახალი დამვალება :&nbsp;</span><span style=\"color: rgb(20, 83, 136);\">{task_title}</span>','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-09 14:15:41'),(21,2,'es','{task_title} La tarea se crea mediante {user_name} de {project_name} Proyecto','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(22,2,'fr','{task_title} La tâche est créée par {user_name} De {project_name} Projet','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(23,2,'it','{task_title} Attività è creata da {user_name} di {project_name} Progetto','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(24,2,'ja','{task_title} タスクの作成者 {user_name} の {project_name} プロジェクト','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(25,2,'nl','{task_title} Taak is gemaakt door {user_name} van {project_name} Project','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(26,2,'pl','{task_title} Zadanie zostało utworzone przez {user_name} z {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(27,2,'ru','{task_title} Задача создана {user_name} из {project_name} Проект','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(28,2,'pt','{task_title} Tarefa é Criada Por {user_name} de {project_name} Projeto','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(29,2,'tr','{ task_title } Görevi, { user_name } Tarafından { project_name } Projesiyle Oluşturuldu','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(30,2,'zh','{task_title } 任务由 {project_name} 项目创建','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(31,2,'he','{task_title} משימה נוצרה על ידי {user_name} של פרויקט {project_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(32,2,'pt-br','{task_title} A tarefa é criada por {user_name} do projeto {project_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(33,3,'ar','مرحلة المهمة من {task_title} تحديث من {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(34,3,'da','Opgavetrin for {task_title} opdateret fra {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(35,3,'de','Taskstufe von {task_title} Aktualisiert von {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(36,3,'en','Task stage of {task_title} updated from {old_stage} to {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(37,3,'es','Fase de tarea de {task_title} actualizado de {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(38,3,'fr','Etape de tâche de {task_title} Mis à jour depuis {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(39,3,'it','Fase di attività di {task_title} aggiornato da {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(40,3,'ja','タスク・ステージ {task_title} 更新元 {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(41,3,'nl','Taakstadium van {task_title} bijgewerkt van {old_stage} to {new_stage} ','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(42,3,'pl','Etap zadania {task_title} zaktualizowane od {old_stage} to {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(43,3,'ru','Этап задачи {task_title} обновлено из {old_stage} to {new_stage} Проект','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(44,3,'pt','Estágio de tarefa de {task_title} atualizado de {old_stage} to {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(45,3,'tr','{ task_title } görevinin { old_stage } olan görev aşaması { new_stage } olarak güncellendi','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(46,3,'zh','{ task_title} 的任务阶段已从 {old_stage} 更新为 {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(47,3,'he','שלב המשימה של {task_title} עודכן מ - {old_השלב} עד {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(48,3,'pt-br','Estágio de tarefa de {task_title} atualizado de {old_stage} para {new_stage}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"Old Stage\": \"old_stage\",\n                    \"New Stage\": \"new_stage\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(49,4,'ar','{milestone_title} تم تكوين الحدث الهام بواسطة {user_name} من {project_name} المشروع','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(50,4,'da','{milestone_title} Milepæl er oprettet af {user_name} af {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(51,4,'de','{milestone_title} Meilenstein wird erstellt von {user_name} von {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(52,4,'en','{milestone_title} Milestone is Created By {user_name} of {project_name} Project','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(53,4,'es','{milestone_title} El hito se crea por {user_name} de {project_name} Proyecto','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(54,4,'fr','{milestone_title} Le jalon est créé par {user_name} De {project_name} Projet','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(55,4,'it','{milestone_title} Milestone è Creato By {user_name} di {project_name} Progetto','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(56,4,'ja','{milestone_title} マイルストーンの作成者 {user_name} の {project_name} プロジェクト','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(57,4,'nl','{milestone_title} Mijlpaal wordt gemaakt door {user_name} van {project_name} Project','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(58,4,'pl','{milestone_title} Kamień milowy jest tworzony przez {user_name} z {project_name} Projekt','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(59,4,'ru','{milestone_title} Этап создан {user_name} из {project_name} Проект','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(60,4,'pt','{milestone_title} O Marco é Criado Por {user_name} de {project_name} Projeto','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(61,4,'tr','{milestone_title} Kilometretaşı, { user_name } Tarafından { project_name } Projesiyle Oluşturuldu','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(62,4,'zh','{mileestone_title } 里程碑由 {project_name} 项目创建','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(63,4,'he','{המייל} אבן דרך נוצר על ידי {user_name} של פרויקט {project_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(64,4,'pt-br','{milestone_title} O marco é criado por {user_name} do projeto {project_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(65,5,'ar','بواسطةحالة بالحالة {milestone_title} تحديث بواسطة {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(66,5,'da','Milepæl status på {milestone_title} opdateret af {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(67,5,'de','Meilenstein Status von {milestone_title} aktualisiert von {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(68,5,'en','Milestone status of {milestone_title} updated by {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(69,5,'es','El hito se estado de {milestone_title} actualizado por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(70,5,'fr','Le jalon Statut de {milestone_title} Mis à jour par {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:46','2025-05-01 16:46:46'),(71,5,'it','Milestone stato di {milestone_title} aggiornato da {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(72,5,'ja','マイルストーン の状況 {milestone_title} 更新者 {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(73,5,'nl','Mijlpaal status van {milestone_title} bijgewerkt door {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(74,5,'pl','kamień milowy status {milestone_title} zaktualizowane przez {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(75,5,'ru','веха состояние {milestone_title} обновлено пользователем {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(76,5,'pt','marco status de {milestone_title} atualizado por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(77,5,'tr','{ user_name } tarafından güncelleştirilen { mileonone_title } aşama durumu','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(78,5,'zh','{user_name} 已更新 {milestone_title} 的里程碑状态','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(79,5,'he','מצב אבן דרך של {המייל stone_title} עודכן על ידי {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(80,5,'pt-br','Status do marco de {milestone_title} atualizado por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Milestone Title\": \"milestone_title\",\n                    \"Milestone Status\": \"milestone_status\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(81,6,'ar','تم اضافة التعقيب في {task_title} بواسطة {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(82,6,'da','Kommentar tilføjet {task_title} af {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(83,6,'de','Kommentar hinzugefügt in {task_title} von {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(84,6,'en','Comment Added in {task_title} by {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(85,6,'es','Comentario añadido en {task_title} por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(86,6,'fr','Commentaire ajouté dans {task_title} Par {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(87,6,'it','Commento Aggiunto in {task_title} di {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(88,6,'ja','追加されたコメント {task_title} による {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(89,6,'nl','Commentaar toegevoegd in {task_title} door {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(90,6,'pl','Dodano komentarz do {task_title} przez {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(91,6,'ru','Комментарий добавлен в {task_title} по {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(92,6,'pt','Comentário Incluído em {task_title} por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(93,6,'tr','{ task_title } içinde { user_name } tarafından eklenen yorum','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(94,6,'zh','{user_name} 在 {task_title } 中添加了注释','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(95,6,'he','ההערה נוספה בתוך {task_title} על ידי {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(96,6,'pt-br','Comentário adicionado em {task_title} por {user_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Task Title\": \"task_title\",\n                    \"User Name\": \"user_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(97,7,'ar','فاتورة جديدة {invoice_id} تكوين بواسطة {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(98,7,'da','Ny faktura {invoice_id} oprettet af {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(99,7,'de','Neue Rechnung {invoice_id} erstellt von {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(100,7,'en','New Invoice {invoice_id} created by {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(101,7,'es','Nueva factura {invoice_id} creado por {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(102,7,'fr','Nouvelle facture {invoice_id} Créé par {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(103,7,'it','Nuova Fattura {invoice_id} creato da {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(104,7,'ja','新規請求書 {invoice_id} 作成者 {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(105,7,'nl','Nieuwe factuur {invoice_id} gemaakt door {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(106,7,'pl','Nowa faktura {invoice_id} utworzone przez {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(107,7,'ru','Новая накладная {invoice_id} кем создано {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(108,7,'pt','Nova Fatura {invoice_id} criado por {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(109,7,'tr','{ company_name } tarafından oluşturulan yeni Fatura { invoice_id }','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(110,7,'zh','{company_name} 创建的新发票 {invoice_id}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(111,7,'he','חשבונית חדשה {invoice_id} נוצרה על-ידי {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(112,7,'pt-br','Nova fatura {invoice_id} criada por {company_name}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(113,8,'ar','{invoice_id}: تم دفع {pay_amount} بنجاح بواسطة {client_name} المبلغ الإجمالي: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(114,8,'da','{invoice_id}: Betalt {paid_amount} med succes af {client_name} Samlet beløb: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(115,8,'de','{invoice_id}: {paid_amount} erfolgreich bezahlt von {client_name} Gesamtbetrag: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(116,8,'en','{invoice_id}:  Paid {paid_amount} Successfully By {client_name}  Total amount :  {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(117,8,'es','{invoice_id}: {paid_amount} pagado con éxito por {client_name} Monto total: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(118,8,'fr','{invoice_id}: Payé {paid_amount} avec succès par {client_name} Montant total: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(119,8,'it','{invoice_id}: {paid_amount} pagato con successo da {client_name} Importo totale: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(120,8,'ja','{invoice_id}: {client_name} によって {paid_amount} が正常に支払われました合計金額: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(121,8,'nl','{invoice_id}: {paid_amount} succesvol betaald door {client_name} Totaalbedrag: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(122,8,'pl','{invoice_id}: Pomyślnie zapłacono {paid_amount} przez {client_name} Łączna kwota: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(123,8,'ru','{invoice_id}: {paid_amount} успешно выплачен {client_name} Общая сумма: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(124,8,'pt','{invoice_id}: Pago {paid_amount} com sucesso por {client_name} Valor total: {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(125,8,'tr','{ invoice_id }: Paid { paid_amount } Başarıyla { client_name } Toplam Tutarı Ile Başarıyla: { total_amount }','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(126,8,'zh','{invoice_id}: 已成功 { paid_金额} 按 {client_name} 总金额 : {total_金额}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(127,8,'he','{invoice_id}: שולם {paid_סכום} בהצלחה על-ידי {client_name} סכום כולל: {total_בסכום}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47'),(128,8,'pt-br','{invoice_id}: Pago {paid_amount} com êxito por {client_name} Valor total : {total_amount}','{\n                    \"Project Name\": \"project_name\",\n                    \"Invoice Id\": \"invoice_id\",\n                    \"Invoice Status\": \"invoice_status\",\n                    \"Company Name\": \"company_name\",\n                    \"Client Name\": \"client_name\",\n                    \"App Name\": \"app_name\",\n                    \"App Url\": \"app_url\",\n                    \"Paid Amount\": \"paid_amount\",\n                    \"Total Amount\": \"total_amount\"\n                    }',1,'2025-05-01 16:46:47','2025-05-01 16:46:47');
/*!40000 ALTER TABLE `notification_template_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_templates`
--

DROP TABLE IF EXISTS `notification_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_templates`
--

LOCK TABLES `notification_templates` WRITE;
/*!40000 ALTER TABLE `notification_templates` DISABLE KEYS */;
INSERT INTO `notification_templates` VALUES (1,'New Project','new_project','2025-05-01 16:46:46','2025-05-01 16:46:46'),(2,'New Task','new_task','2025-05-01 16:46:46','2025-05-01 16:46:46'),(3,'Task Stage Updated','task_stage_updated','2025-05-01 16:46:46','2025-05-01 16:46:46'),(4,'New Milestone','new_milestone','2025-05-01 16:46:46','2025-05-01 16:46:46'),(5,'Milestone Status Updated','milestone_status_updated','2025-05-01 16:46:46','2025-05-01 16:46:46'),(6,'New Task Comment','new_task_comment','2025-05-01 16:46:47','2025-05-01 16:46:47'),(7,'New Invoice','new_invoice','2025-05-01 16:46:47','2025-05-01 16:46:47'),(8,'Invoice Status Updated','invoice_status_updated','2025-05-01 16:46:47','2025-05-01 16:46:47');
/*!40000 ALTER TABLE `notification_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `project_id` bigint NOT NULL,
  `related_id` bigint NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,1,1,1,'task_assign','{\"project_id\":\"1\",\"milestone_id\":\"1\",\"title\":\"\\u10d3\\u10d4\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d8\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-04-28 00:00:00\",\"due_date\":\"2025-05-01 00:00:00\",\"description\":\"\\u10d9\\u10d4\\u10d3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10d4\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-01T20:12:20.000000Z\",\"created_at\":\"2025-05-01T20:12:20.000000Z\",\"id\":1}',0,'2025-05-01 18:12:20','2025-05-01 18:12:20'),(2,1,1,1,2,'task_assign','{\"project_id\":\"1\",\"milestone_id\":\"1\",\"title\":\"\\u10e8\\u10d4\\u10e6\\u10d4\\u10d1\\u10d5\\u10d0\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-03 00:00:00\",\"due_date\":\"2025-05-07 00:00:00\",\"description\":\"\\u10e8\\u10d4\\u10dc\\u10dd\\u10d1\\u10d8\\u10e1 \\u10e1\\u10e0\\u10e3\\u10da\\u10d8 \\u10e8\\u10d4\\u10e6\\u10d4\\u10d1\\u10d5\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-01T20:32:50.000000Z\",\"created_at\":\"2025-05-01T20:32:50.000000Z\",\"id\":2}',0,'2025-05-01 18:32:50','2025-05-01 18:32:50'),(3,1,1,1,3,'task_assign','{\"project_id\":\"1\",\"milestone_id\":\"1\",\"title\":\"\\u10da\\u10e3\\u10e5\\u10d8\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-01 00:00:00\",\"description\":\"\\u10e8\\u10d4\\u10dc\\u10dd\\u10d1\\u10d0\\u10e8\\u10d8 \\u10d0\\u10e0\\u10e1\\u10d4\\u10d1\\u10e3\\u10da\\u10d8 \\u10e1\\u10d0\\u10dc\\u10e2\\u10d4\\u10e5\\u10dc\\u10d8\\u10d9\\u10d8\\u10e1 \\u10db\\u10d8\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d3\\u10d0\\u10da\\u10e3\\u10e5\\u10d5\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-01T20:33:47.000000Z\",\"created_at\":\"2025-05-01T20:33:47.000000Z\",\"id\":3}',0,'2025-05-01 18:33:47','2025-05-01 18:33:47'),(4,1,1,1,4,'task_assign','{\"project_id\":\"1\",\"milestone_id\":\"1\",\"title\":\"\\u10d4\\u10da.\\u10d2\\u10d0\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10dd\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d0\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-01 00:00:00\",\"description\":\"\\u10d4\\u10da.\\u10d2\\u10d0\\u10e7\\u10d5\\u10d0\\u10dc\\u10d8\\u10da\\u10dd\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10db\\u10dd\\u10ec\\u10db\\u10d4\\u10d1\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-01T20:34:11.000000Z\",\"created_at\":\"2025-05-01T20:34:11.000000Z\",\"id\":4}',0,'2025-05-01 18:34:11','2025-05-01 18:34:11'),(5,1,1,1,5,'task_assign','{\"project_id\":\"1\",\"milestone_id\":\"1\",\"title\":\"\\u10d9\\u10d0\\u10db\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e0\\u10e9\\u10d4\\u10d5\\u10d0\\/\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-20 00:00:00\",\"description\":\"\\u10d9\\u10d0\\u10db\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e0\\u10e9\\u10d4\\u10d5\\u10d0 \\u10d3\\u10d0 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-01T20:34:57.000000Z\",\"created_at\":\"2025-05-01T20:34:57.000000Z\",\"id\":5}',0,'2025-05-01 18:34:57','2025-05-01 18:34:57'),(6,1,1,1,6,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"\\u10d3\\u10d0\\u10ea\\u10d5\\u10d8\\u10e1 \\u10d3\\u10d0\\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10ef\\u10d4\\u10d1\\u10d0\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-20 00:00:00\",\"description\":\"\\u10d0\\u10da\\u10d2\\u10d0\\u10dc\\u10d8\\u10e1 \\u10de\\u10e3\\u10da\\u10e2\\u10d8\\u10e1\\u10d0 \\u10d3\\u10d0 \\u10d3\\u10d0\\u10ea\\u10d5\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-01T20:35:54.000000Z\",\"created_at\":\"2025-05-01T20:35:54.000000Z\",\"id\":6}',0,'2025-05-01 18:35:54','2025-05-01 18:35:54'),(7,1,1,1,7,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"\\u10db\\u10d0\\u10e6\\u10d0\\u10d6\\u10d8\\u10d8\\u10e1 \\u10d0\\u10d5\\u10d4\\u10ef\\u10d8\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-15 00:00:00\",\"description\":\"\\u10d1\\u10d4\\u10dc\\u10dd\\u10e1\\u10d7\\u10d0\\u10dc \\u10e8\\u10d4\\u10d5\\u10d0\\u10e0\\u10e9\\u10d8\\u10dd \\u10d0\\u10d5\\u10d4\\u10ef\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-01T20:37:52.000000Z\",\"created_at\":\"2025-05-01T20:37:52.000000Z\",\"id\":7}',0,'2025-05-01 18:37:52','2025-05-01 18:37:52'),(8,1,1,1,8,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"\\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd \\u10d0\\u10de\\u10d0\\u10e0\\u10d0\\u10e2\\u10d8\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-10 00:00:00\",\"description\":\"\\u10e1\\u10d0\\u10da\\u10d0\\u10e0\\u10dd \\u10d0\\u10de\\u10d0\\u10e0\\u10d0\\u10e2\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8 \\u10d3\\u10d0 \\u10db\\u10d8\\u10e1\\u10d0\\u10db\\u10d0\\u10e0\\u10d7\\u10d8\\u10e1 \\u10ea\\u10d5\\u10da\\u10d8\\u10da\\u10d4\\u10d1\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-01T20:39:41.000000Z\",\"created_at\":\"2025-05-01T20:39:41.000000Z\",\"id\":8}',0,'2025-05-01 18:39:41','2025-05-01 18:39:41'),(9,1,1,3,9,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"\\u10da\\u10dd\\u10e5\\u10d4\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e1\\u10d0\\u10d9\\u10d4\\u10e2\\u10d4\\u10d1\\u10d8\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-01 00:00:00\",\"due_date\":\"2025-05-03 00:00:00\",\"description\":\"\\u10e1\\u10d0\\u10d9\\u10d4\\u10e2\\u10d8 8 \\u10ea\\u10d0\\u10da\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-02T07:15:28.000000Z\",\"created_at\":\"2025-05-02T07:15:28.000000Z\",\"id\":9}',0,'2025-05-02 05:15:28','2025-05-02 05:15:28'),(10,1,1,3,10,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"\\u10d9\\u10dd\\u10dc\\u10d3\\u10d8\\u10ea\\u10d8\\u10dd\\u10dc\\u10d4\\u10e0\\u10d8 \\u10ec\\u10db\\u10d4\\u10dc\\u10d3\\u10d0\",\"priority\":\"High\",\"assign_to\":\"1\",\"start_date\":\"2025-05-03 00:00:00\",\"due_date\":\"2025-05-10 00:00:00\",\"description\":\"8 \\u10d9\\u10dd\\u10dc\\u10d3\\u10d8\\u10ea\\u10d8\\u10dd\\u10dc\\u10d4\\u10e0\\u10d8\\u10e1 \\u10ec\\u10db\\u10d4\\u10dc\\u10d3\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-02T07:17:58.000000Z\",\"created_at\":\"2025-05-02T07:17:58.000000Z\",\"id\":10}',0,'2025-05-02 05:17:58','2025-05-02 05:17:58'),(11,1,1,3,11,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"\\u10db\\u10e0\\u10d2\\u10d5\\u10d0\\u10da\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10d7\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-05-02 00:00:00\",\"due_date\":\"2025-05-02 00:00:00\",\"description\":\"24 \\u10e1\\u10d0\\u10dc\\u10e2\\u10d8\\u10db\\u10d4\\u10e2\\u10e0\\u10d8\\u10d0\\u10dc\\u10d8 \\u10d2\\u10d0\\u10dc\\u10d0\\u10e2\\u10d4\\u10d1\\u10d4\\u10d1\\u10d8\\u10e1 \\u10db\\u10dd\\u10dc\\u10e2\\u10d0\\u10df\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-02T07:19:37.000000Z\",\"created_at\":\"2025-05-02T07:19:37.000000Z\",\"id\":11}',0,'2025-05-02 05:19:37','2025-05-02 05:19:37'),(12,1,1,3,12,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"\\u10e1\\u10d0\\u10db\\u10e0\\u10d4\\u10d1\\u10e0\\u10dd \\u10e1\\u10d0\\u10db\\u10e3\\u10e8\\u10d0\\u10dd\\u10d4\\u10d1\\u10d8\",\"priority\":\"Medium\",\"assign_to\":\"1\",\"start_date\":\"2025-05-05 00:00:00\",\"due_date\":\"2025-06-10 00:00:00\",\"description\":\"\\u10d9\\u10d4\\u10d3\\u10da\\u10d4\\u10d1\\u10d8\\u10e1 \\u10e8\\u10d4\\u10e6\\u10d4\\u10d1\\u10d5\\u10d0\",\"status\":1,\"updated_at\":\"2025-05-02T07:20:17.000000Z\",\"created_at\":\"2025-05-02T07:20:17.000000Z\",\"id\":12}',0,'2025-05-02 05:20:17','2025-05-02 05:20:17'),(13,1,1,3,13,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10e0\\u10dd\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0\",\"priority\":\"Low\",\"assign_to\":\"1\",\"start_date\":\"2025-05-02 00:00:00\",\"due_date\":\"2025-05-10 00:00:00\",\"description\":\"\\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10da\\u10d8\\u10e1 \\u10d7\\u10d0\\u10dd\\u10e0\\u10d4\\u10d1\\u10d8\\u10e1 \\u10d0\\u10ec\\u10e7\\u10dd\\u10d1\\u10d0 \\u10e4\\u10d4\\u10ee\\u10e1\\u10d0\\u10ea\\u10db\\u10db\\u10da\\u10d8\\u10e1 \\u10dd\\u10d7\\u10d0\\u10ee\\u10e8\\u10d8\",\"status\":1,\"updated_at\":\"2025-05-02T07:21:11.000000Z\",\"created_at\":\"2025-05-02T07:21:11.000000Z\",\"id\":13}',0,'2025-05-02 05:21:11','2025-05-02 05:21:11');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,'is_bank_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(2,'is_paystack_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(3,'is_flutterwave_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(4,'is_razorpay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(5,'is_mercado_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(6,'is_paytm_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(7,'is_mollie_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(8,'is_skrill_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(9,'is_coingate_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(10,'is_paymentwall_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(11,'is_toyyibpay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(12,'is_payfast_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(13,'is_iyzipay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(14,'is_sspay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(15,'is_paytab_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(16,'is_benefit_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(17,'is_cashfree_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(18,'is_aamarpay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(19,'is_paytr_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(20,'is_midtrans_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(21,'is_xendit_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(22,'is_yookassa_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(23,'is_paiementpro_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(24,'is_nepalste_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(25,'is_cinetpay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(26,'is_fedapay_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(27,'is_payhere_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(28,'is_powertranz_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56'),(29,'is_payu_enabled','off',1,'2025-05-02 06:50:56','2025-05-02 06:50:56');
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_files`
--

DROP TABLE IF EXISTS `project_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint unsigned NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_files`
--

LOCK TABLES `project_files` WRITE;
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Ongoing','Finished','OnHold') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ongoing',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budget` double DEFAULT '0',
  `workspace` int NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copylinksetting` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'აღმაშენებლის ქუჩა','Ongoing','ფართის მოსამზადებელი რემონტი','2025-05-01','2025-05-30',88000,1,'','{\"basic_details\":\"on\",\"member\":\"on\",\"milestone\":\"off\",\"client\":\"on\",\"progress\":\"on\",\"activity\":\"off\",\"attachment\":\"on\",\"bug_report\":\"on\",\"task\":\"on\",\"tracker_details\":\"off\",\"timesheet\":\"off\",\"password_protected\":\"off\"}',1,1,'2025-05-01 17:34:17','2025-05-01 19:40:41'),(3,'ვარკეთილი','Ongoing','ვარკეთილის ფილიალის მენეჯმენტი','2025-05-02','2025-12-31',0,1,'','{\"basic_details\":\"on\",\"member\":\"on\",\"client\":\"on\",\"attachment\":\"on\",\"bug_report\":\"on\",\"task\":\"on\",\"password_protected\":\"off\"}',1,1,'2025-05-02 05:12:05','2025-05-02 05:12:35');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stages`
--

DROP TABLE IF EXISTS `stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#051c4b',
  `complete` tinyint(1) NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stages`
--

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` VALUES (1,'Todo','#77b6ea',0,1,0,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(2,'In Progress','#545454',0,1,1,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(3,'Review','#3cb8d9',0,1,2,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(4,'Done','#37b37e',1,1,3,'2025-05-01 17:09:58','2025-05-01 17:09:58');
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_tasks`
--

DROP TABLE IF EXISTS `sub_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_tasks`
--

LOCK TABLES `sub_tasks` WRITE;
/*!40000 ALTER TABLE `sub_tasks` DISABLE KEYS */;
INSERT INTO `sub_tasks` VALUES (1,'ნაგვის გატანა','2025-05-05',1,'User',1,1,'2025-05-01 18:31:03','2025-05-01 18:31:05'),(2,'გასახდელები','2025-05-15',7,'User',1,0,'2025-05-01 18:38:17','2025-05-01 18:38:25'),(3,'სალარო','2025-05-15',7,'User',1,0,'2025-05-01 18:38:38','2025-05-01 18:38:38'),(4,'პოდიუმი','2025-05-15',7,'User',1,0,'2025-05-01 18:38:48','2025-05-01 18:38:48');
/*!40000 ALTER TABLE `sub_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `workspace_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'დომინო','ვესტ ისტ ტერმინალი','11221231231','გლდანი, ვეკუას 17 ა ლ','571206769','shota@humana-georgia.ge',1,1,'2025-05-09 14:18:10','2025-05-09 14:20:37');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_categories`
--

DROP TABLE IF EXISTS `task_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#3498db',
  `workspace_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_categories_workspace_id_foreign` (`workspace_id`),
  CONSTRAINT `task_categories_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_categories`
--

LOCK TABLES `task_categories` WRITE;
/*!40000 ALTER TABLE `task_categories` DISABLE KEYS */;
INSERT INTO `task_categories` VALUES (1,'repiar','#FF5252',1,'2025-05-12 18:27:02','2025-05-12 18:27:02'),(2,'Delivery','#FFC107',1,'2025-05-12 18:27:02','2025-05-12 18:27:02'),(3,'IT support','#4CAF50',1,'2025-05-12 18:27:02','2025-05-12 18:27:02'),(4,'plumber','#9E9E9E',1,'2025-05-12 18:27:02','2025-05-12 18:27:02'),(5,'CarProblem','#3498db',1,'2025-05-12 18:58:52','2025-05-12 18:58:52');
/*!40000 ALTER TABLE `task_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_files`
--

DROP TABLE IF EXISTS `task_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_files`
--

LOCK TABLES `task_files` WRITE;
/*!40000 ALTER TABLE `task_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `assign_to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `milestone_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'todo',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_category_id_foreign` (`category_id`),
  CONSTRAINT `tasks_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `task_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'დემონტაჟი','Medium','კედლების დემონტაჟი','2025-04-28 00:00:00','2025-05-01 00:00:00','1',1,'1',NULL,'4',2,'2025-05-01 18:12:20','2025-05-12 18:31:02'),(2,'შეღებვა','Low','შენობის სრული შეღებვა','2025-05-03 00:00:00','2025-05-07 00:00:00','1',1,'1',NULL,'2',0,'2025-05-01 18:32:50','2025-05-12 18:30:51'),(3,'ლუქი','Medium','შენობაში არსებული სანტექნიკის მილების დალუქვა','2025-05-01 00:00:00','2025-05-01 00:00:00','1',1,'1',NULL,'4',0,'2025-05-01 18:33:47','2025-05-12 18:30:58'),(4,'ელ.გაყვანილობის შემოწმება','Medium','ელ.გაყვანილობის შემოწმება','2025-05-01 00:00:00','2025-05-10 00:00:00','1',1,'1',NULL,'4',1,'2025-05-01 18:34:11','2025-05-12 18:31:02'),(5,'კამერების შერჩევა/მონტაჟი','Low','კამერების შერჩევა და მონტაჟი','2025-05-01 00:00:00','2025-05-20 00:00:00','1',1,'1',NULL,'1',4,'2025-05-01 18:34:57','2025-05-12 18:30:47'),(6,'დაცვის დამონტაჟება','Low','ალგანის პულტისა და დაცვის მონტაჟი','2025-05-01 00:00:00','2025-05-20 00:00:00','1',1,NULL,NULL,'1',5,'2025-05-01 18:35:54','2025-05-12 18:30:47'),(7,'მაღაზიის ავეჯი','Low','ბენოსთან შევარჩიო ავეჯი','2025-05-01 00:00:00','2025-05-15 00:00:00','1',1,'0',NULL,'1',6,'2025-05-01 18:37:52','2025-05-12 18:30:47'),(8,'სალარო აპარატი','Medium','სალარო აპარატის მონტაჟი და მისამართის ცვლილება','2025-05-01 00:00:00','2025-05-10 00:00:00','1',1,'0',NULL,'1',0,'2025-05-01 18:39:41','2025-05-12 18:30:47'),(9,'ლოქერების საკეტები','Low','საკეტი 8 ცალი','2025-05-01 00:00:00','2025-05-03 00:00:00','1',3,'0',NULL,'3',3,'2025-05-02 05:15:28','2025-05-03 05:14:44'),(10,'კონდიციონერი წმენდა','High','8 კონდიციონერის წმენდა','2025-05-03 00:00:00','2025-05-10 00:00:00','1',3,'0',NULL,'3',0,'2025-05-02 05:17:58','2025-05-03 05:14:44'),(11,'მრგვალი განათებების მონტაჟი','Medium','24 სანტიმეტრიანი განატებების მონტაჟი','2025-05-02 00:00:00','2025-05-02 00:00:00','1',3,'0',NULL,'4',1,'2025-05-02 05:19:37','2025-05-03 05:15:40'),(12,'სამრებრო სამუშაოები','Medium','კედლების შეღებვა','2025-05-05 00:00:00','2025-06-10 00:00:00','1',3,'0',NULL,'1',0,'2025-05-02 05:20:17','2025-05-02 05:20:17'),(13,'ფეხსაცმლის თაროების აწყობა','Low','ფეხსაცმლის თაორების აწყობა ფეხსაცმმლის ოთახში','2025-05-02 00:00:00','2025-05-10 00:00:00','1',3,'0',NULL,'4',0,'2025-05-02 05:21:11','2025-05-03 05:15:35');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'დ.ღ.გ',18,1,'2025-05-03 06:25:44','2025-05-03 06:25:44'),(2,'საშემოსავლო გადასახადი',20,1,'2025-05-07 20:12:58','2025-05-07 20:12:58');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prompt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_tone` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_trackers`
--

DROP TABLE IF EXISTS `time_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_trackers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `workspace_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_trackers`
--

LOCK TABLES `time_trackers` WRITE;
/*!40000 ALTER TABLE `time_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheets`
--

DROP TABLE IF EXISTS `timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheets`
--

LOCK TABLES `timesheets` WRITE;
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` int NOT NULL,
  `workspace` int NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_photos`
--

DROP TABLE IF EXISTS `track_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `track_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `img_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `workspace_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_photos`
--

LOCK TABLES `track_photos` WRITE;
/*!40000 ALTER TABLE `track_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_email_templates`
--

DROP TABLE IF EXISTS `user_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int NOT NULL,
  `user_id` int NOT NULL,
  `workspace_id` int DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_email_templates`
--

LOCK TABLES `user_email_templates` WRITE;
/*!40000 ALTER TABLE `user_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_projects`
--

DROP TABLE IF EXISTS `user_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `project_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `permission` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_projects`
--

LOCK TABLES `user_projects` WRITE;
/*!40000 ALTER TABLE `user_projects` DISABLE KEYS */;
INSERT INTO `user_projects` VALUES (1,1,1,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\",\"create expenses\",\"edit expenses\",\"delete expenses\",\"show expenses\"]','2025-05-01 17:34:18','2025-05-01 17:34:18'),(3,1,3,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\",\"create expenses\",\"edit expenses\",\"delete expenses\",\"show expenses\"]','2025-05-02 05:12:05','2025-05-02 05:12:05');
/*!40000 ALTER TABLE `user_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_workspaces`
--

DROP TABLE IF EXISTS `user_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_workspaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `workspace_id` int NOT NULL,
  `permission` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_workspaces`
--

LOCK TABLES `user_workspaces` WRITE;
/*!40000 ALTER TABLE `user_workspaces` DISABLE KEYS */;
INSERT INTO `user_workspaces` VALUES (1,1,1,'Owner',1,'2025-05-01 17:09:58','2025-05-01 17:09:58'),(2,4,1,'Member',1,'2025-05-09 17:05:30','2025-05-09 17:05:30');
/*!40000 ALTER TABLE `user_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google2fa_enable` int NOT NULL DEFAULT '0',
  `google2fa_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currant_workspace` int DEFAULT NULL,
  `lang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `is_enable_login` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shotoo Chkhvirkia','sh.chkhvirkia@gmail.com','2025-05-01 05:09:58','$2y$10$o5O2uNsxX5SMpoSupsA4MO03n.tCShqx0Md5ckKcRAlkVoh7GTAa6',0,NULL,NULL,1,'en','681e5cc6627c9.png','user',1,'2025-05-01 17:09:58','2025-05-09 17:51:34','#2180f3',0,0),(2,'Demo Admin','demo@demo.ge','2025-05-01 17:51:48','$2y$10$MjZ0IYbErlExLZud1sHiGu1ObxSFj6CH78Vs0ePOKo3lyyIXOLztu',0,NULL,NULL,NULL,'en',NULL,'admin',1,'2025-05-01 17:51:48','2025-05-01 17:51:48','#2180f3',0,0),(4,'davit didebashvili','davit.didebashvili@gmail.com','2025-05-09 17:05:30','$2y$10$cExQcYbplUYTAOTBxu3gz.a8TJGpMol/UoTnupSWRi4AVjM93/Ox2',0,NULL,NULL,1,'ka',NULL,'user',1,'2025-05-09 17:05:30','2025-05-09 17:05:30','#2180f3',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_items`
--

DROP TABLE IF EXISTS `warehouse_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` bigint unsigned NOT NULL,
  `inventory_item_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `workspace_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_item_unique` (`warehouse_id`,`inventory_item_id`,`workspace_id`),
  KEY `warehouse_items_inventory_item_id_foreign` (`inventory_item_id`),
  KEY `warehouse_items_workspace_id_foreign` (`workspace_id`),
  KEY `warehouse_items_created_by_foreign` (`created_by`),
  CONSTRAINT `warehouse_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_items_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_items_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_items_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_items`
--

LOCK TABLES `warehouse_items` WRITE;
/*!40000 ALTER TABLE `warehouse_items` DISABLE KEYS */;
INSERT INTO `warehouse_items` VALUES (1,1,3,12,NULL,1,1,'2025-05-12 18:23:07','2025-05-12 18:23:07'),(2,1,2,1,NULL,1,1,'2025-05-12 18:23:20','2025-05-12 18:23:20');
/*!40000 ALTER TABLE `warehouse_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `workspace_id` bigint unsigned NOT NULL,
  `created_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouses_workspace_id_foreign` (`workspace_id`),
  KEY `warehouses_created_by_foreign` (`created_by`),
  CONSTRAINT `warehouses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouses_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Grand Werehouse','HU001','50 Agmashenebeli Ave',NULL,'active',1,1,'2025-05-12 18:17:06','2025-05-12 18:17:06');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspaces`
--

DROP TABLE IF EXISTS `workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workspaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `lang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `interval_time` int NOT NULL DEFAULT '10',
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_white` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_rtl` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_theme_bg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_darklayout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_flag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_stripe_enabled` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_paypal_enabled` int NOT NULL DEFAULT '0',
  `paypal_mode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paypal_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paypal_secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice_template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_footer_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice_footer_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `zoom_api_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_api_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_googlecalendar_enabled` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_calender_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_calender_json_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qr_display` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,'humana','humana',1,'ka','₾',10,'GEL','Humana','Gldani, Vekua 17a','Tbilisi','Gldani','01771','Georgia','+995571206769','1_logo-light.png','1_favicon.png','1_logo-dark.png','off','off','off','theme-4','false',0,NULL,NULL,0,'sandbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',1,'2025-05-01 17:09:58','2025-05-07 20:37:31',NULL);
/*!40000 ALTER TABLE `workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-12 23:01:16
