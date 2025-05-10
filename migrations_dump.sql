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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_05_06_041033_create_workspaces_table',1),(4,'2019_05_06_084210_create_user_workspaces_table',1),(5,'2019_05_07_055821_create_projects_table',1),(6,'2019_05_08_094315_create_user_projects_table',1),(7,'2019_05_10_114541_create_todos_table',1),(8,'2019_05_11_062147_create_notes_table',1),(9,'2019_05_13_061456_create_tasks_table',1),(10,'2019_05_14_115634_create_comments_table',1),(11,'2019_05_15_054812_create_task_files_table',1),(12,'2019_05_15_115847_create_events_table',1),(13,'2019_05_15_122901_create_calendars_table',1),(14,'2019_05_31_135941_create_clients_table',1),(15,'2019_05_31_140658_create_clients_workspaces_table',1),(16,'2019_05_31_152045_create_client_projects_table',1),(17,'2019_09_22_192348_create_messages_table',1),(18,'2019_10_14_220244_create_milestones_table',1),(19,'2019_10_14_233948_create_sub_tasks_table',1),(20,'2019_10_15_054657_create_project_files_table',1),(21,'2019_10_16_211433_create_favorites_table',1),(22,'2019_10_18_114133_create_activity_logs_table',1),(23,'2019_12_11_152947_create_timesheets_table',1),(24,'2019_12_31_102929_create_bug_reports_table',1),(25,'2019_12_31_114041_create_bug_comments_table',1),(26,'2019_12_31_114359_create_bug_files_table',1),(27,'2020_03_13_140919_create_invoices_table',1),(28,'2020_03_13_140956_create_taxes_table',1),(29,'2020_03_13_143721_create_invoice_items_table',1),(30,'2020_03_18_130330_create_notifications_table',1),(31,'2020_03_23_153638_create_stages_table',1),(32,'2020_03_24_153638_create_bug_stages_table',1),(33,'2020_04_27_095629_create_invoice_payments_table',1),(34,'2021_07_16_061738_create_payment_settings',1),(35,'2021_12_22_032655_create_time_trackers_table',1),(36,'2021_12_22_032854_create_track_photos_table',1),(37,'2021_12_27_103327_create_zoom_meetings_table',1),(38,'2022_04_27_065814_create_settings_table',1),(39,'2022_07_19_031233_create_email_templates_table',1),(40,'2022_07_19_031305_create_email_template_langs_table',1),(41,'2022_07_19_031326_create_user_email_templates_table',1),(42,'2022_08_04_033946_create_contracts_types_table',1),(43,'2022_08_04_034016_create_contracts_table',1),(44,'2022_08_04_034033_create_contracts_attachments_table',1),(45,'2022_08_04_034046_create_contracts_notes_table',1),(46,'2022_08_04_034100_create_contracts_comments_table',1),(47,'2023_04_20_102814_create_notification_templates_table',1),(48,'2023_04_20_121414_create_notification_template_langs_table',1),(49,'2023_04_25_094143_create_login_details_table',1),(50,'2023_04_26_045144_create_webhooks_table',1),(51,'2023_06_05_043450_create_landing_page_settings_table',1),(52,'2023_06_08_092556_create_templates_table',1),(53,'2023_06_10_114031_create_join_us_table',1),(54,'2023_06_27_124708_create_languages_table',1),(55,'2023_12_22_043449_create_expenses_table',1),(56,'2024_02_05_113138_add_new_columns_table',1),(57,'2024_10_08_063245_create_personal_access_tokens_table',1),(58,'2024_10_11_111626_add_qr_display_to_workspaces_table',1),(59,'2024_11_27_071753_add_google2fa_enable_to_users_table',1),(60,'2025_03_18_140833_modify_value_column_in_payment_settings',1),(61,'2025_05_02_094826_create_inventories_table',1),(62,'2025_05_02_095140_create_inventory_task_table',1),(63,'2025_05_03_065259_create_inventory_items_table',1),(64,'2025_05_03_080159_create_inventory_categories_table',1),(65,'2025_05_03_100516_add_inventory_item_id_to_invoice_items_table',1),(66,'2025_05_07_205502_create_suppliers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 17:10:15
