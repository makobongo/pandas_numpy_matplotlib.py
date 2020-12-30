-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: hoh
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_patient_id_foreign` (`patient_id`),
  CONSTRAINT `books_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,43,'130','2020-08-22 04:22:38','2020-08-22 04:22:38'),(2,44,'130','2020-08-22 04:22:42','2020-08-22 04:22:42');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_user`
--

DROP TABLE IF EXISTS `department_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `department_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_user`
--

LOCK TABLES `department_user` WRITE;
/*!40000 ALTER TABLE `department_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_visit`
--

DROP TABLE IF EXISTS `department_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_visit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visit_id` bigint(20) unsigned DEFAULT NULL,
  `department_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_visit_visit_id_foreign` (`visit_id`),
  KEY `department_visit_department_id_foreign` (`department_id`),
  CONSTRAINT `department_visit_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `department_visit_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_visit`
--

LOCK TABLES `department_visit` WRITE;
/*!40000 ALTER TABLE `department_visit` DISABLE KEYS */;
INSERT INTO `department_visit` VALUES (1,1,NULL,NULL,NULL),(2,1,NULL,NULL,NULL),(3,1,NULL,NULL,NULL),(4,1,NULL,NULL,NULL),(5,1,NULL,NULL,NULL),(6,1,NULL,NULL,NULL),(7,1,NULL,NULL,NULL),(8,1,NULL,NULL,NULL),(9,2,NULL,NULL,NULL),(10,2,NULL,NULL,NULL),(11,2,NULL,NULL,NULL),(12,2,NULL,NULL,NULL),(13,2,NULL,NULL,NULL),(14,2,NULL,NULL,NULL),(15,2,NULL,NULL,NULL),(16,3,NULL,NULL,NULL),(17,3,NULL,NULL,NULL),(18,3,NULL,NULL,NULL),(19,3,NULL,NULL,NULL),(20,3,NULL,NULL,NULL),(21,3,NULL,NULL,NULL),(22,4,NULL,NULL,NULL),(23,4,NULL,NULL,NULL),(24,5,NULL,NULL,NULL),(25,5,NULL,NULL,NULL),(26,5,NULL,NULL,NULL),(27,5,NULL,NULL,NULL),(28,5,NULL,NULL,NULL),(29,5,NULL,NULL,NULL),(30,5,NULL,NULL,NULL),(31,5,NULL,NULL,NULL),(32,6,NULL,NULL,NULL),(33,7,NULL,NULL,NULL),(34,7,NULL,NULL,NULL),(35,7,NULL,NULL,NULL),(36,7,NULL,NULL,NULL),(37,7,NULL,NULL,NULL),(38,7,NULL,NULL,NULL),(39,7,NULL,NULL,NULL),(40,8,NULL,NULL,NULL),(41,8,NULL,NULL,NULL),(42,8,NULL,NULL,NULL),(43,8,NULL,NULL,NULL),(44,8,NULL,NULL,NULL),(45,9,NULL,NULL,NULL),(46,9,NULL,NULL,NULL),(47,9,NULL,NULL,NULL),(48,9,NULL,NULL,NULL),(49,9,NULL,NULL,NULL),(50,9,NULL,NULL,NULL),(51,10,NULL,NULL,NULL),(52,10,NULL,NULL,NULL),(53,10,NULL,NULL,NULL),(54,10,NULL,NULL,NULL),(55,10,NULL,NULL,NULL),(56,11,NULL,NULL,NULL),(57,11,NULL,NULL,NULL),(58,12,NULL,NULL,NULL),(59,12,NULL,NULL,NULL),(60,13,NULL,NULL,NULL),(61,13,NULL,NULL,NULL),(62,13,NULL,NULL,NULL),(63,13,NULL,NULL,NULL),(64,13,NULL,NULL,NULL),(65,14,NULL,NULL,NULL),(66,14,NULL,NULL,NULL),(67,15,NULL,NULL,NULL),(68,15,NULL,NULL,NULL),(69,15,NULL,NULL,NULL),(70,16,NULL,NULL,NULL),(71,16,NULL,NULL,NULL),(72,16,NULL,NULL,NULL),(73,16,NULL,NULL,NULL),(74,16,NULL,NULL,NULL),(75,16,NULL,NULL,NULL),(76,16,NULL,NULL,NULL),(77,17,NULL,NULL,NULL),(78,17,NULL,NULL,NULL),(79,17,NULL,NULL,NULL),(80,17,NULL,NULL,NULL),(81,17,NULL,NULL,NULL),(82,18,NULL,NULL,NULL),(83,18,NULL,NULL,NULL),(84,18,NULL,NULL,NULL),(85,18,NULL,NULL,NULL),(86,19,NULL,NULL,NULL),(87,19,NULL,NULL,NULL),(88,19,NULL,NULL,NULL),(89,19,NULL,NULL,NULL),(90,19,NULL,NULL,NULL),(91,19,NULL,NULL,NULL),(92,19,NULL,NULL,NULL),(93,20,NULL,NULL,NULL),(94,21,NULL,NULL,NULL),(95,21,NULL,NULL,NULL),(98,22,NULL,NULL,NULL);
/*!40000 ALTER TABLE `department_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'doctor','dealing with treatment','2020-08-22 04:12:34','2020-08-22 04:12:34'),(2,'theatre','dealing with operational procedures','2020-08-22 04:12:35','2020-08-22 04:12:35'),(3,'dental','dealing with dental related issues','2020-08-22 04:12:35','2020-08-22 04:12:35'),(4,'nursing','dealing with nursing','2020-08-22 04:12:34','2020-08-22 04:12:34'),(5,'pharmacy','dealing with drugs sales e.tc.','2020-08-22 04:12:34','2020-08-22 04:12:34'),(6,'maternity','dealing with maternity','2020-08-22 04:12:35','2020-08-22 04:12:35'),(7,'laboratory','dealing with samples and testing e.t.c','2020-08-22 04:12:35','2020-08-22 04:12:35'),(8,'counselling','offering counselling services','2020-08-22 04:12:35','2020-08-22 04:12:35');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnostics`
--

DROP TABLE IF EXISTS `diagnostics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `diagnostics_visit_id_foreign` (`visit_id`),
  CONSTRAINT `diagnostics_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostics`
--

LOCK TABLES `diagnostics` WRITE;
/*!40000 ALTER TABLE `diagnostics` DISABLE KEYS */;
INSERT INTO `diagnostics` VALUES (1,'94','73','35','30','Aut consequatur amet sapiente omnis mollitia ea in. Est maxime ipsam totam voluptate eaque eius totam. Sunt et fugiat deleniti itaque eum eum.',2,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(2,'98','73','36','50','Ullam itaque ipsa iusto dolores optio. Quo quaerat voluptates iure.',3,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(3,'98','73','39','32','Eligendi et nobis dignissimos sed ipsa. Molestiae nesciunt vel non quas sapiente soluta adipisci.',4,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(4,'96','73','36','32','Soluta animi quia quia. Recusandae aut amet et praesentium. Sint facere quod illum rerum. Ad consectetur maiores modi voluptas nam delectus.',5,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(5,'91','72','38','36','Aliquid eaque cupiditate et enim. Aut nihil nulla minus accusantium saepe sint quis at. Atque iste rerum aperiam architecto voluptatem explicabo. Fuga magnam enim veniam perspiciatis recusandae.',6,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(6,'97','72','40','25','Officiis incidunt nam reiciendis excepturi voluptatem qui quisquam. Distinctio facilis velit quibusdam. Adipisci nisi laborum dolorem eaque enim et saepe.',7,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(7,'98','73','35','23','Sunt voluptatem libero nam. Aperiam est expedita molestiae et dolorum debitis aut. Eum totam necessitatibus odio incidunt eos doloribus.',8,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(8,'93','72','38','24','Natus dolor ipsam impedit nihil ut. Laudantium delectus ut facilis beatae. Odio libero deserunt ipsa aut eaque quas.',9,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(9,'92','73','40','31','Ipsa fuga iure sunt corporis. Deserunt saepe nostrum et est a nemo tenetur. Fugit ut sunt minima aut maxime quo voluptas voluptas. Voluptate qui quibusdam harum facere dolores.',10,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(10,'96','72','38','24','Ab et numquam tenetur non. Earum temporibus atque labore quia odit harum vel. Praesentium tempore facere ratione. Numquam iusto aut iusto nobis facere voluptatibus.',11,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(11,'99','72','37','23','Laboriosam dignissimos tenetur aut perspiciatis. Aut sed sapiente est. Assumenda reiciendis eligendi nobis est accusamus. Saepe nostrum quas voluptas ut architecto.',12,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(12,'100','73','40','35','Nihil facere aliquam aliquam dolorem neque. Sit ea velit culpa occaecati non fugit et corporis. Temporibus corrupti nihil sed.',13,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(13,'94','72','40','49','Numquam ut soluta quia dolorum sit. Dolorum vel voluptatem beatae rerum nesciunt quis eligendi a. Eum atque illo itaque ducimus est adipisci aperiam. Dolorem sunt natus molestiae est.',14,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(14,'95','73','38','25','Praesentium atque deleniti ut possimus nam est. Et voluptatibus possimus est pariatur. Nobis enim ipsam ea eligendi. Et nulla voluptas eligendi quisquam. Libero esse nobis id tempore similique earum.',15,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(15,'100','73','36','27','Neque ut mollitia et ea culpa voluptatem voluptatem. Adipisci rerum rerum quo sunt minus. Eum vel libero sequi dolorem nobis assumenda eos. Cumque officia qui voluptatem est.',16,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(16,'91','72','36','47','Aperiam et rerum qui id et est consequatur. Itaque atque non quae totam. Harum quis quisquam ut est iure. Doloribus et distinctio quia placeat molestias aliquid.',17,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(17,'100','73','37','29','Eveniet vel at iure iste. Sed ea dolor omnis minima. Vel amet corporis officiis. Commodi ea dicta nihil qui necessitatibus id recusandae sint.',18,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(18,'92','72','37','50','Sint distinctio et sed sapiente corrupti. Enim inventore tenetur aut quibusdam ad. Et quia mollitia amet perferendis eaque.',19,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(19,'98','72','40','22','Perspiciatis sunt porro non dolorem. Accusamus eaque mollitia quia consectetur voluptatum nihil quia. Id eos aliquid nemo.',20,'2020-08-22 04:12:47','2020-08-22 04:12:47'),(20,'97','72','35','20','Iusto et repellat excepturi voluptas. Nostrum minus voluptate eos tenetur repellendus dignissimos. Qui sit error blanditiis repellat eum accusantium repellendus.',21,'2020-08-22 04:12:47','2020-08-22 04:12:47');
/*!40000 ALTER TABLE `diagnostics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_covers`
--

DROP TABLE IF EXISTS `insurance_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_covers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `insurance_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insurance_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `insurance_covers_insurance_id_foreign` (`insurance_id`),
  CONSTRAINT `insurance_covers_insurance_id_foreign` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_covers`
--

LOCK TABLES `insurance_covers` WRITE;
/*!40000 ALTER TABLE `insurance_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `insurance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2020_05_13_083548_create_roles_table',1),(10,'2020_05_13_090655_role_user',1),(11,'2020_05_15_111758_create_departments_table',1),(12,'2020_05_15_112545_department_user',1),(13,'2020_06_27_130201_department_visit',1),(14,'2020_06_27_131419_create_patients_table',1),(15,'2020_06_27_132829_create_visits_table',1),(16,'2020_06_27_133134_create_books_table',1),(17,'2020_06_29_164722_create_diagnostics_table',1),(18,'2020_07_06_151915_create_insurances_table',1),(19,'2020_07_06_154721_create_insurance_covers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_chief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patients_user_id_foreign` (`user_id`),
  CONSTRAINT `patients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Rodolfo','Lockman','Stanton','Female','Married','29/12/1992','Elianshire','633 Meghan Field\nEdythshire, AL 19076','Janaeport','Prof. Xzavier Dicki PhD','East Julianne','wbailey@gmail.com','(847) 963-5558 x86936','3',21,'2020-08-22 04:12:39','2020-08-22 04:12:39'),(2,'Vivianne','Kunze','Watsica','Female','Married','15/10/2011','South Garthmouth','5852 Flavio Island\nEast Jeaniefurt, ID 30030','Reichertside','Oscar Ziemann','Brendonshire','gennaro83@gmail.com','508.213.4879 x808','812864',22,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(3,'Justus','Mann','Ondricka','Male','Married','20/01/1991','North Jessie','177 Noble Mills Apt. 662\nHerzogshire, UT 36027','North Cyruschester','Felipe Buckridge','Freidashire','mann.ansel@gmail.com','(768) 372-2130 x386','253274',23,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(4,'Jazmyne','O\'Kon','Spinka','Female','Single','25/05/2000','Lake Annabelleville','367 Stehr Estate Suite 661\nZoraberg, KY 60355-9667','Lake Emoryport','Dr. Tillman Auer','Jordonland','darrin82@yahoo.com','981.281.5389 x42456','433',24,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(5,'Magnolia','Blick','Beer','Male','Married','29/10/2011','Coreneland','8458 Goyette Mountain\nHayesmouth, FL 71953-0578','Lake Polly','Naomie Blick','East Dixie','ndenesik@schulist.net','1-334-823-9703','5',25,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(6,'Hassie','Durgan','Grimes','Female','Married','18/08/2010','Shyannemouth','89940 Johnson Union Apt. 550\nPort Shaniamouth, VA 28359-4523','Ignacioport','Milan Kling V','Terryville','maria.flatley@mclaughlin.com','+1.976.872.8918','51954518',26,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(7,'Jayne','Jones','Johnson','Female','Single','01/02/2005','Gorczanyfort','6528 Cory Canyon Suite 859\nPort Cullenport, OH 58192-1200','South Nakia','Tressie Wunsch','Lake Aniya','hjones@zemlak.biz','1-968-849-4396','677952450',27,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(8,'Kenton','Gleason','Osinski','Female','Married','22/11/2011','O\'Connellshire','5165 Adolph Orchard Apt. 360\nErnieville, AL 01908','New Cathrineborough','Adriel Predovic II','East Josianne','ashleigh.larson@gmail.com','+1.789.656.9190','960863',28,'2020-08-22 04:12:40','2020-08-22 04:12:40'),(9,'Ilene','Kshlerin','Predovic','Female','Single','09/08/2005','Robertsland','925 Floy Fields\nEast Maymie, NM 47160-6474','Port Fabian','Nia Nikolaus','East Madieview','domenica.kulas@brown.com','456-987-7355 x9363','223',29,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(10,'Ali','O\'Hara','Monahan','Male','Single','03/04/2011','North Crystal','6150 Ivy Flat\nWest Denisborough, MA 69811','South Monaton','Gregorio Torp','Alanisstad','curtis43@tromp.com','291-418-3211','3',30,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(11,'Kirstin','Gottlieb','West','Male','Married','14/09/2001','Kubstad','6025 Trisha Court Suite 526\nWest Warren, NY 29577','East Baby','Earnest Grady','Malvinaport','karl.kuhic@balistreri.info','+1.620.671.2554','5',31,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(12,'Connor','Lowe','Lemke','Male','Married','05/04/2011','Port Kaylah','36036 Welch Pass\nAngelinaland, WA 73991-3346','Lake Noble','Miss Margie Conn DDS','Felixtown','rey.greenfelder@hotmail.com','(813) 208-6605 x64886','620823',32,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(13,'Nick','Reichel','Considine','Male','Married','12/02/1999','East Claudiaton','760 Roberts Curve\nDarrylport, FL 33102-7918','Zackaryport','Madie Mann','Port Darianahaven','gregoria.blick@hotmail.com','+1 (312) 753-8220','87477',33,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(14,'Simone','Kuvalis','Rempel','Female','Single','15/06/2000','Olaffurt','44985 Maude Trail\nNew Lonnie, WA 78932','Beerville','Mr. Woodrow Ledner III','Lake Jonathan','orlo.thiel@yahoo.com','770-644-9860 x248','89147147',34,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(15,'Merl','Rempel','Terry','Male','Single','08/01/1995','Aileenborough','6673 Twila Cove Suite 880\nDickichester, ID 23764-1497','Darlenefort','Sarah Schowalter II','East Maia','dedrick34@gmail.com','824-465-4539 x5832','6728',35,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(16,'Anya','Larson','Altenwerth','Female','Married','10/07/2000','Rodrigueztown','6372 Grady Wells\nBeierton, WY 50972','Tinaburgh','Brandy Hegmann','Karliton','madelyn09@ritchie.com','667.223.4732','4722',36,'2020-08-22 04:12:41','2020-08-22 04:12:41'),(17,'Serena','Bayer','Prosacco','Female','Married','23/10/2007','Torphyland','948 Batz Rapids Apt. 874\nLake Doloresfort, OH 20572','New Kierantown','Alexa Hill','Markfurt','madaline22@koss.com','782.818.4339 x898','9977',37,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(18,'Cassandre','Grady','Abbott','Female','Single','24/03/1996','West Daphnee','3191 Daniel Light Apt. 335\nImastad, NE 06251-8393','Lake Nicolette','Nolan Kertzmann','Hillsfurt','prosacco.geovanni@haag.net','408-513-3845 x98322','8',38,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(19,'Alice','Jaskolski','Dooley','Male','Married','28/09/2006','Nyatown','8983 Rosamond Shoals\nNicolasshire, WY 97439-4790','Reichelmouth','Mr. Osbaldo Purdy Jr.','West Carlos','christiansen.cordie@gmail.com','+1.383.912.8958','786390362',39,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(20,'Rickey','Monahan','Hermann','Female','Single','10/06/2007','Bernhardville','308 Tillman Spurs Apt. 768\nSouth Thad, AR 56125-1368','New Henryhaven','Ms. Breanna Quitzon III','West Amber','vschimmel@yahoo.com','770-925-4942 x6006','929719',40,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(21,'Maureen','Barrows','Rosenbaum','Male','Single','25/02/1991','West Heaven','747 Armstrong Highway Suite 383\nWest Colin, SC 63715-5070','South Verdie','Kaylie Kilback Sr.','South Orland','caleb.boyer@bartoletti.org','813.241.8344 x50797','15',41,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(22,'Hershel','Moen','Crooks','Female','Single','12/06/1993','Ricoburgh','3907 Scotty Lake Suite 842\nKochhaven, DE 63376-7605','South Jaylen','Isadore Zemlak','Gregoriaville','johnny11@borer.com','(693) 928-4076 x92561','39734',42,'2020-08-22 04:12:42','2020-08-22 04:12:42'),(23,'Emilio','Bruen','Larkin','Male','Married','14/10/1999','North Rodolfomouth','779 Metz Ways\nNew Garricktown, AZ 94645','Nathenburgh','Arvel Kuhic I','East Enaberg','dimitri08@abernathy.info','473.399.9245','3500034',43,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(24,'Jamarcus','Reinger','Johns','Female','Married','22/01/2001','Hannamouth','828 Kattie Centers Apt. 019\nCamylleside, NH 90681','New Kailynbury','Prof. Gisselle Gaylord DVM','Port Emery','gheaney@keebler.net','(626) 339-1569 x44530','1067',44,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(25,'Jane','Hartmann','Hettinger','Female','Married','20/07/1997','West Napoleon','724 Hackett Ford Suite 179\nWest Bryonburgh, AR 14389','West Olga','Eleonore Bergstrom','Warrenstad','qhahn@streich.com','+12377005478','29735',45,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(26,'Damion','Weber','Wilderman','Male','Single','19/12/1992','Westleyborough','2780 Anderson Vista\nNew Trace, NJ 50740-7554','South Monicaside','Domenica Gulgowski','South Eli','beatrice13@hotmail.com','1-462-974-9499','9',46,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(27,'Linnea','Hills','Fisher','Male','Married','23/09/1990','Port Jazmin','91136 Norberto Garden\nPort Lauriefurt, WA 25285','Linnieshire','Kian Schuppe','Sadiebury','psimonis@gutmann.biz','298-978-9728 x95224','96',47,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(28,'Elmo','Wilkinson','Rowe','Male','Married','13/02/2012','Johanfurt','12129 Mertz Drives Suite 265\nLake Ana, NY 21819-0871','Port Amaliaborough','Candelario Welch','Lake Paxtonhaven','blair.kirlin@smith.com','1-731-473-8785','198759073',48,'2020-08-22 04:12:44','2020-08-22 04:12:44'),(29,'Irving','Koss','Emmerich','Female','Single','08/10/1992','Port Vellaland','66508 Alex Isle Apt. 531\nPinkhaven, MO 20395-6043','Connshire','Kenny Pfannerstill','New Marilynemouth','qbogan@moore.net','254-219-7986 x93982','64545',49,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(30,'Buck','McLaughlin','Upton','Female','Single','03/01/2004','Bayerfurt','854 Howell Inlet Apt. 508\nHarrisville, MO 32532-1409','Ankundingburgh','Dr. Kiera Conroy','Smithamhaven','zion.mclaughlin@gmail.com','518-792-0963','6',50,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(31,'Julio','Jacobi','Luettgen','Female','Married','25/11/1996','Goodwinborough','87203 Gage Station\nCyrusborough, ND 10577-4979','West Harvey','Karl Lueilwitz','Jaylinshire','fernando.towne@nienow.org','662.804.2228 x221','517804270',51,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(32,'Cali','Runolfsson','Pollich','Male','Single','02/12/1993','East Eunice','4790 Ryley Brook Apt. 925\nWest Jasper, MI 16794-7425','Erickstad','Olaf Trantow','Osvaldoport','schuster.treva@jacobs.org','(419) 972-1414 x478','0',52,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(33,'Estefania','Batz','Deckow','Male','Single','18/09/1992','Port Wilfred','3108 Kaya Forest Suite 280\nZulaufbury, NE 41365','Homenickton','Velda O\'Keefe','West Francoborough','hkirlin@hotmail.com','710-833-8782','309',53,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(34,'Reina','Gutkowski','Lubowitz','Male','Single','26/10/2009','Demarcohaven','2282 Rory Rapids Suite 749\nSouth Shana, NE 16114-6374','Hermanton','Dr. Alexandro Larkin MD','Muhammadborough','deshaun.hudson@rippin.info','+1-487-697-8793','3692732',54,'2020-08-22 04:12:45','2020-08-22 04:12:45'),(35,'Cathy','Schiller','Abernathy','Male','Single','24/09/2000','Williston','529 Gusikowski Centers Apt. 525\nDarionhaven, FL 14303','Lake Marjolaine','Jalon Steuber','Lake Alvischester','zhaag@okuneva.com','815-342-9217','54',55,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(36,'Emory','Stiedemann','Marvin','Female','Married','09/09/1994','West Berniecefort','35176 Shyanne Neck Suite 265\nFaymouth, SC 10737','Sylviafort','Kattie Labadie','Gunnerside','adonis.schimmel@gmail.com','575-548-4802','164563',56,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(37,'Dillan','Tillman','Schaden','Male','Single','22/10/1999','North Robb','47222 Bergstrom Prairie Apt. 296\nMcClureview, MO 60424-8806','Georgetteview','Kristofer Wehner III','Claudieside','judah.gulgowski@lockman.com','1-671-705-1070 x38671','23',57,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(38,'Pascale','Schowalter','Lang','Female','Married','08/08/1993','Port Celestino','309 Grant Manors Apt. 159\nBuckridgetown, OK 34264','Swaniawskiville','Frida Tromp','West Bridgettehaven','jade03@hotmail.com','834.382.2760','783',58,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(39,'Bella','Thompson','Jacobi','Female','Married','07/01/1994','North Jayce','6942 Beatty Tunnel\nPort Irmaview, TN 77431','Andersonview','Prof. Laverna Donnelly','South Sunny','janis56@yahoo.com','+1-685-647-4003','81',59,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(40,'Orin','Bergnaum','Zboncak','Male','Married','01/07/1992','North Lavonbury','988 Emerald Landing Suite 551\nHilpertview, ID 51245-8169','Kurtiston','Mrs. Colleen Shanahan Sr.','Mullerburgh','lesly.toy@hotmail.com','(604) 668-7711 x607','2',60,'2020-08-22 04:12:46','2020-08-22 04:12:46'),(41,'Breana','Stamm','Mohr','Male','Single','16/09/1996','West Tristonberg','947 Leslie Falls\nPaucekport, GA 32720-5577','Satterfieldberg','Tiara Streich','Bernhardchester','jackeline47@yahoo.com','(872) 273-1145','17100856',61,'2020-08-22 04:12:47','2020-08-22 04:12:47'),(42,'Faustino','Fadel','Waelchi','Male','Single','24/04/2010','Littleburgh','339 Harris Trace Suite 793\nEast Zeldaside, NV 49336','East Terrillchester','Madelynn Gutkowski','Gorczanyhaven','qrenner@yahoo.com','+15628257559','17086',62,'2020-08-22 04:12:47','2020-08-22 04:12:47'),(43,'Jimmy','Obongo','Odhiambo','Male','Single','1968-05-08','Kanyamkago','713-40100 Kisumu, Kenya','kandaria','Jarius Okungu','Kandaria-kojwang','jimmy@gmail.com','0774116941',NULL,2,'2020-08-22 04:22:38','2020-08-22 05:26:00'),(44,'Jimmy','Obongo','Odhiambo','Male','Single','1968-05-08','Kanyamkago','713-40100 Kisumu, Kenya',NULL,'Jarius Okungu','Kandaria-kojwang','jimmy@gmail.com','0774116941',NULL,2,'2020-08-22 04:22:41','2020-08-22 04:22:41');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,NULL,NULL),(2,2,1,NULL,NULL),(3,6,1,NULL,NULL),(4,1,2,NULL,NULL),(5,2,2,NULL,NULL),(6,3,2,NULL,NULL),(7,4,2,NULL,NULL),(8,5,2,NULL,NULL),(9,6,2,NULL,NULL),(10,7,2,NULL,NULL),(11,8,2,NULL,NULL),(12,9,2,NULL,NULL),(13,1,3,NULL,NULL),(14,2,3,NULL,NULL),(15,3,3,NULL,NULL),(16,4,3,NULL,NULL),(17,5,3,NULL,NULL),(18,6,3,NULL,NULL),(19,7,3,NULL,NULL),(20,8,3,NULL,NULL),(21,9,3,NULL,NULL),(22,1,4,NULL,NULL),(23,2,4,NULL,NULL),(24,3,4,NULL,NULL),(25,4,4,NULL,NULL),(26,7,4,NULL,NULL),(27,9,4,NULL,NULL),(28,6,5,NULL,NULL),(29,8,5,NULL,NULL),(30,1,6,NULL,NULL),(31,2,6,NULL,NULL),(32,3,6,NULL,NULL),(33,4,6,NULL,NULL),(34,5,6,NULL,NULL),(35,6,6,NULL,NULL),(36,7,6,NULL,NULL),(37,8,6,NULL,NULL),(38,9,6,NULL,NULL),(39,1,7,NULL,NULL),(40,2,7,NULL,NULL),(41,3,7,NULL,NULL),(42,4,7,NULL,NULL),(43,5,7,NULL,NULL),(44,6,7,NULL,NULL),(45,7,7,NULL,NULL),(46,8,7,NULL,NULL),(47,1,8,NULL,NULL),(48,2,8,NULL,NULL),(49,3,8,NULL,NULL),(50,5,8,NULL,NULL),(51,6,8,NULL,NULL),(52,7,8,NULL,NULL),(53,8,8,NULL,NULL),(54,9,8,NULL,NULL),(55,1,9,NULL,NULL),(56,2,9,NULL,NULL),(57,3,9,NULL,NULL),(58,4,9,NULL,NULL),(59,5,9,NULL,NULL),(60,6,9,NULL,NULL),(61,8,9,NULL,NULL),(62,9,9,NULL,NULL),(63,2,10,NULL,NULL),(64,5,10,NULL,NULL),(65,6,10,NULL,NULL),(66,7,10,NULL,NULL),(67,8,10,NULL,NULL),(68,1,11,NULL,NULL),(69,2,11,NULL,NULL),(70,3,11,NULL,NULL),(71,4,11,NULL,NULL),(72,5,11,NULL,NULL),(73,8,11,NULL,NULL),(74,9,11,NULL,NULL),(75,1,12,NULL,NULL),(76,4,12,NULL,NULL),(77,6,12,NULL,NULL),(78,7,12,NULL,NULL),(79,8,12,NULL,NULL),(80,2,13,NULL,NULL),(81,3,13,NULL,NULL),(82,4,13,NULL,NULL),(83,5,13,NULL,NULL),(84,6,13,NULL,NULL),(85,7,13,NULL,NULL),(86,8,13,NULL,NULL),(87,9,13,NULL,NULL),(88,1,14,NULL,NULL),(89,2,14,NULL,NULL),(90,3,14,NULL,NULL),(91,4,14,NULL,NULL),(92,5,14,NULL,NULL),(93,6,14,NULL,NULL),(94,7,14,NULL,NULL),(95,9,14,NULL,NULL),(96,2,15,NULL,NULL),(97,8,15,NULL,NULL),(98,1,16,NULL,NULL),(99,3,16,NULL,NULL),(100,4,16,NULL,NULL),(101,5,16,NULL,NULL),(102,6,16,NULL,NULL),(103,2,17,NULL,NULL),(104,4,17,NULL,NULL),(105,6,17,NULL,NULL),(106,7,17,NULL,NULL),(107,8,17,NULL,NULL),(108,9,17,NULL,NULL),(109,1,18,NULL,NULL),(110,4,18,NULL,NULL),(111,7,18,NULL,NULL),(112,9,18,NULL,NULL),(113,5,19,NULL,NULL),(114,1,20,NULL,NULL),(115,4,20,NULL,NULL),(116,5,20,NULL,NULL),(117,8,20,NULL,NULL),(118,9,20,NULL,NULL),(119,1,1,NULL,NULL),(120,2,1,NULL,NULL),(121,3,1,NULL,NULL),(122,4,1,NULL,NULL),(123,5,1,NULL,NULL),(124,6,1,NULL,NULL),(125,7,1,NULL,NULL),(126,8,1,NULL,NULL),(127,1,2,NULL,NULL),(128,4,2,NULL,NULL),(129,8,2,NULL,NULL),(130,3,3,NULL,NULL),(131,4,3,NULL,NULL),(132,8,3,NULL,NULL),(133,1,4,NULL,NULL),(134,2,4,NULL,NULL),(135,3,4,NULL,NULL),(136,5,4,NULL,NULL),(137,6,4,NULL,NULL),(138,7,4,NULL,NULL),(139,8,4,NULL,NULL),(140,4,5,NULL,NULL),(141,6,5,NULL,NULL),(142,7,5,NULL,NULL),(143,8,5,NULL,NULL),(144,4,6,NULL,NULL),(145,5,6,NULL,NULL),(146,7,6,NULL,NULL),(147,8,6,NULL,NULL),(148,2,7,NULL,NULL),(149,1,8,NULL,NULL),(150,5,8,NULL,NULL),(151,8,8,NULL,NULL),(152,1,9,NULL,NULL),(153,2,9,NULL,NULL),(154,6,9,NULL,NULL),(155,7,9,NULL,NULL),(156,3,10,NULL,NULL),(157,4,10,NULL,NULL),(158,5,10,NULL,NULL),(159,1,11,NULL,NULL),(160,2,11,NULL,NULL),(161,3,11,NULL,NULL),(162,4,11,NULL,NULL),(163,5,11,NULL,NULL),(164,6,11,NULL,NULL),(165,7,11,NULL,NULL),(166,8,11,NULL,NULL),(167,4,12,NULL,NULL),(168,5,12,NULL,NULL),(169,3,13,NULL,NULL),(170,8,13,NULL,NULL),(171,1,14,NULL,NULL),(172,2,14,NULL,NULL),(173,3,14,NULL,NULL),(174,4,14,NULL,NULL),(175,5,14,NULL,NULL),(176,6,14,NULL,NULL),(177,7,14,NULL,NULL),(178,8,14,NULL,NULL),(179,1,15,NULL,NULL),(180,3,15,NULL,NULL),(181,4,15,NULL,NULL),(182,6,15,NULL,NULL),(183,3,16,NULL,NULL),(184,5,16,NULL,NULL),(185,2,17,NULL,NULL),(186,5,17,NULL,NULL),(187,6,17,NULL,NULL),(188,1,18,NULL,NULL),(189,2,18,NULL,NULL),(190,3,18,NULL,NULL),(191,6,18,NULL,NULL),(192,8,18,NULL,NULL),(193,1,19,NULL,NULL),(194,3,19,NULL,NULL),(195,4,19,NULL,NULL),(196,5,19,NULL,NULL),(197,6,19,NULL,NULL),(198,8,19,NULL,NULL),(199,1,20,NULL,NULL),(200,2,20,NULL,NULL),(201,3,20,NULL,NULL),(202,4,20,NULL,NULL),(203,5,20,NULL,NULL),(204,7,20,NULL,NULL),(205,8,20,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'receptionist','2020-08-22 04:12:35','2020-08-22 04:12:35'),(2,'admin','2020-08-22 04:12:35','2020-08-22 04:12:35'),(3,'outpatient','2020-08-22 04:12:35','2020-08-22 04:12:35'),(4,'inpatient','2020-08-22 04:12:35','2020-08-22 04:12:35'),(5,'reports','2020-08-22 04:12:35','2020-08-22 04:12:35'),(6,'users','2020-08-22 04:12:35','2020-08-22 04:12:35'),(7,'finance','2020-08-22 04:12:35','2020-08-22 04:12:35'),(8,'inventory','2020-08-22 04:12:35','2020-08-22 04:12:35'),(9,'settings','2020-08-22 04:12:35','2020-08-22 04:12:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john osteve','user','rrice@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','keara58','+1.542.697.2389','vmAG0pdHyG','2020-08-22 04:12:36','2020-08-22 04:12:36'),(2,'osteve mac','admin','osteve@gmail.com','2020-08-22 04:12:36','$2y$10$xVDxSB/k2vUvdZP42LiMDez35.9zgd1umuCjkpyYNhscHaZTmtcrq','maryam.klocko','+1 (473) 319-9930','7t9vPeYA3tGRw51euTpTxwDQI3SVZ6PibQ1p92dBFLJRzfk97h4yI4XdoEwa','2020-08-22 04:12:36','2020-08-22 04:12:36'),(3,'Prof. Jude Nikolaus','user','jkoss@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','leta13','534-598-0560','NoGwRrYFj2','2020-08-22 04:12:36','2020-08-22 04:12:36'),(4,'Juanita Buckridge','user','bcasper@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mcclure.kaylah','(928) 416-3839','o9uWgoeVLn','2020-08-22 04:12:36','2020-08-22 04:12:36'),(5,'Maxwell Klein','user','danielle.ratke@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vita.corkery','(316) 718-6842 x910','owa4J9U4Q1','2020-08-22 04:12:36','2020-08-22 04:12:36'),(6,'Leatha Spencer','user','lucienne.goodwin@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','felix.frami','824.598.4990 x03664','krYe50wgYj','2020-08-22 04:12:36','2020-08-22 04:12:36'),(7,'Imelda Kshlerin','user','ernser.antonio@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','marilyne.reichert','1-361-744-0634','orjPz3szOl','2020-08-22 04:12:36','2020-08-22 04:12:36'),(8,'Ms. Yvonne Bernhard Jr.','user','eliezer04@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','schimmel.angus','+1-707-395-1121','daunDJlmHJ','2020-08-22 04:12:36','2020-08-22 04:12:36'),(9,'Prof. Pearlie Ward','user','uschuppe@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fmarvin','212-613-8461 x235','1cma3Vh36v','2020-08-22 04:12:36','2020-08-22 04:12:36'),(10,'Warren Simonis IV','user','hrohan@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ted64','+1.482.589.5522','JckYsKVkzi','2020-08-22 04:12:36','2020-08-22 04:12:36'),(11,'Amelia Morar','user','temard@example.com','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kuhlman.jamil','1-754-850-2565','ZMyWBmSWDL','2020-08-22 04:12:36','2020-08-22 04:12:36'),(12,'Marcos VonRueden','user','eloisa32@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','maybell78','1-418-907-4484 x828','ws0XfC6iaI','2020-08-22 04:12:36','2020-08-22 04:12:36'),(13,'Duane Parker','user','ebashirian@example.com','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fsteuber','765-987-7449 x50412','oiTuULZDsA','2020-08-22 04:12:36','2020-08-22 04:12:36'),(14,'Moshe Kunze','user','arielle27@example.com','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sammie.gutmann','(454) 805-8518 x0206','LxOagqRtu4','2020-08-22 04:12:37','2020-08-22 04:12:37'),(15,'Abdul Purdy Sr.','user','lukas41@example.com','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hoeger.melba','245.675.1658','zk8BwviePf','2020-08-22 04:12:37','2020-08-22 04:12:37'),(16,'Jermain Brakus','user','rippin.billie@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cali19','(598) 445-5978 x242','qWfmvPWdlA','2020-08-22 04:12:37','2020-08-22 04:12:37'),(17,'Moses Stokes DDS','user','lottie.hoppe@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','stokes.martin','+1-215-289-7828','yjPRUFNEKD','2020-08-22 04:12:37','2020-08-22 04:12:37'),(18,'Hattie Dooley','user','astanton@example.net','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','emmy77','1-687-878-3219','foDPPCUbDL','2020-08-22 04:12:37','2020-08-22 04:12:37'),(19,'Kathlyn Terry','user','sabina47@example.org','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kovacek.germaine','630.406.2297','vTitd9C123','2020-08-22 04:12:37','2020-08-22 04:12:37'),(20,'Kathleen Quigley','user','dreinger@example.com','2020-08-22 04:12:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','charles18','912.422.9152 x8364','rtR2GEBbvR','2020-08-22 04:12:37','2020-08-22 04:12:37'),(21,'Leora Auer PhD','user','chanelle.runolfsdottir@example.com','2020-08-22 04:12:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bahringer.krystina','(802) 736-1826 x1312','hHflW9FWjR','2020-08-22 04:12:39','2020-08-22 04:12:39'),(22,'Mrs. Addison Harris Sr.','user','beulah26@example.net','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','milan.koepp','974.964.8376','swabsV4oSZ','2020-08-22 04:12:40','2020-08-22 04:12:40'),(23,'Marcel Haley','user','raven.robel@example.com','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','russel.amber','838-461-8796 x118','HZcPab00ok','2020-08-22 04:12:40','2020-08-22 04:12:40'),(24,'Ali Robel I','user','maximo.upton@example.org','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','alba02','936-722-6600 x502','76fpPc1af3','2020-08-22 04:12:40','2020-08-22 04:12:40'),(25,'Antwon Volkman','user','reilly.ottis@example.org','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','maureen.fahey','240.289.2609 x86778','GUNSYYSD3t','2020-08-22 04:12:40','2020-08-22 04:12:40'),(26,'Lavina Kris PhD','user','teichmann@example.com','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ijohns','(909) 495-2197 x21765','8cuOgYvHKr','2020-08-22 04:12:40','2020-08-22 04:12:40'),(27,'Princess Little','user','leonora.wuckert@example.com','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cronin.jackson','+1.437.867.2055','bl5xbkEnHt','2020-08-22 04:12:40','2020-08-22 04:12:40'),(28,'Joshua Mohr','user','rex38@example.com','2020-08-22 04:12:40','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sigmund.willms','(415) 307-8399 x7515','7wM2amQgNe','2020-08-22 04:12:40','2020-08-22 04:12:40'),(29,'Dennis Leuschke','user','xkerluke@example.org','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hagenes.olen','502-810-2758 x00300','IGAeR6vbnv','2020-08-22 04:12:41','2020-08-22 04:12:41'),(30,'Mr. Christophe Welch','user','rosetta47@example.org','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','winfield25','537-469-9481 x3459','NRSqB0YcxE','2020-08-22 04:12:41','2020-08-22 04:12:41'),(31,'Thelma Roberts III','user','ryleigh77@example.org','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dreichel','887-925-3084 x89106','D2j3hTkQuS','2020-08-22 04:12:41','2020-08-22 04:12:41'),(32,'Jailyn Walsh','user','winnifred26@example.net','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lennie80','296-210-2110 x562','puTxon2ea9','2020-08-22 04:12:41','2020-08-22 04:12:41'),(33,'Larry Fahey','user','klocko.annalise@example.com','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vella83','446-476-2243','ay2Sx3bbHt','2020-08-22 04:12:41','2020-08-22 04:12:41'),(34,'Carmelo Jast','user','heller.robb@example.org','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eduardo.glover','+1-761-608-5344','n8esEOHJnF','2020-08-22 04:12:41','2020-08-22 04:12:41'),(35,'Raven Hammes','user','yrice@example.com','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','marcel04','1-337-916-9157','hK9AnNu4OW','2020-08-22 04:12:41','2020-08-22 04:12:41'),(36,'Edwin Yundt','user','angeline.bradtke@example.org','2020-08-22 04:12:41','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','clotilde54','1-423-347-3336','PEcoLyJlKT','2020-08-22 04:12:41','2020-08-22 04:12:41'),(37,'Madaline Quitzon','user','jolie.harvey@example.org','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kbraun','(352) 965-6721 x82087','LKdTkbuQgJ','2020-08-22 04:12:42','2020-08-22 04:12:42'),(38,'Prof. Adolph Gottlieb I','user','ilind@example.org','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','loyce.friesen','609-859-7016 x4430','T63Z0eKNaz','2020-08-22 04:12:42','2020-08-22 04:12:42'),(39,'Gunnar Lynch','user','zoila86@example.net','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','consuelo.crona','437.524.7758 x588','qEKLGZspkd','2020-08-22 04:12:42','2020-08-22 04:12:42'),(40,'osteve','user','hosea.purdy@example.com','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','morgan.mueller','(312) 875-9008','SAjC6oNyl1','2020-08-22 04:12:42','2020-08-22 04:12:42'),(41,'Glenda Kulas','user','kasey.eichmann@example.com','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','santos19','731.801.9933 x401','CBi07APyxp','2020-08-22 04:12:42','2020-08-22 04:12:42'),(42,'Jazmin Lynch','user','veronica08@example.com','2020-08-22 04:12:42','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','okon.horacio','+1-761-913-5920','JEgcnsHhZU','2020-08-22 04:12:42','2020-08-22 04:12:42'),(43,'Darian Hand MD','user','waelchi.keira@example.net','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','leonora.rogahn','+1-224-786-8238','yp9or7rVAU','2020-08-22 04:12:44','2020-08-22 04:12:44'),(44,'Dr. Chadrick Gutmann PhD','user','rsawayn@example.net','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tiara.bergnaum','793-995-5426','9kbRMW9pXf','2020-08-22 04:12:44','2020-08-22 04:12:44'),(45,'Della Nikolaus','user','kreiger.tiffany@example.com','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tfisher','219.204.2334 x6400','S5uECtZRwd','2020-08-22 04:12:44','2020-08-22 04:12:44'),(46,'Maegan O\'Connell','user','guadalupe.schuster@example.org','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eloisa31','1-201-250-7209','NlfHMixmau','2020-08-22 04:12:44','2020-08-22 04:12:44'),(47,'Elliott Bauch','user','vincenzo11@example.net','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pollich.ali','+13369802844','xVZldr90CR','2020-08-22 04:12:44','2020-08-22 04:12:44'),(48,'Dr. Kade Greenholt','user','lola.mraz@example.net','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pink.gulgowski','853-605-8978','W9ExxxHkKt','2020-08-22 04:12:44','2020-08-22 04:12:44'),(49,'Harmony Johns','user','mckenzie.rubye@example.com','2020-08-22 04:12:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fbruen','+1-596-252-1426','qwXW0ZIZqk','2020-08-22 04:12:44','2020-08-22 04:12:44'),(50,'Willa Torp III','user','zpagac@example.net','2020-08-22 04:12:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','erdman.cindy','(306) 319-6797 x870','qiVaHkOHu1','2020-08-22 04:12:45','2020-08-22 04:12:45'),(51,'Jaylen Kovacek','user','johnson.adrianna@example.net','2020-08-22 04:12:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','abartoletti','916.293.4743','cD4utMkeN1','2020-08-22 04:12:45','2020-08-22 04:12:45'),(52,'Tyler Nolan DVM','user','tkirlin@example.org','2020-08-22 04:12:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jany.nolan','551-419-3840 x63817','yy5zlabxiR','2020-08-22 04:12:45','2020-08-22 04:12:45'),(53,'Mr. Abelardo Braun Jr.','user','welch.pansy@example.com','2020-08-22 04:12:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bayer.sylvan','+1 (252) 623-5363','fCAtaEJVRI','2020-08-22 04:12:45','2020-08-22 04:12:45'),(54,'Dr. Demario Berge','user','erich71@example.com','2020-08-22 04:12:45','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dare.stacy','734.540.7138','J8ApAA73uF','2020-08-22 04:12:45','2020-08-22 04:12:45'),(55,'Luigi Waters','user','pinkie68@example.com','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','toney.goldner','(743) 505-6199 x248','TsXwQCI1XV','2020-08-22 04:12:46','2020-08-22 04:12:46'),(56,'Mrs. Blanche Feeney','user','ankunding.laurie@example.com','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jnienow','602-947-5753 x09292','w3ZLrSak0q','2020-08-22 04:12:46','2020-08-22 04:12:46'),(57,'Shannon Nicolas','user','turcotte.elda@example.net','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gustave.kiehn','+1.350.233.0067','efoFLMWOSG','2020-08-22 04:12:46','2020-08-22 04:12:46'),(58,'Marlene Frami IV','user','allan.oberbrunner@example.org','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iroob','441.305.1474','hcHh7gTON5','2020-08-22 04:12:46','2020-08-22 04:12:46'),(59,'Price Maggio','user','jerel.lynch@example.com','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','shaina.zulauf','371.923.0170','xMR7a3egPO','2020-08-22 04:12:46','2020-08-22 04:12:46'),(60,'Keshawn Rolfson','user','carley.gutmann@example.net','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jessika76','(346) 627-3110','kuTipgOsKY','2020-08-22 04:12:46','2020-08-22 04:12:46'),(61,'Mr. Lucious Denesik','user','corwin.cordelia@example.org','2020-08-22 04:12:46','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','malika.mayer','506-629-4817','2U0XNpvN0o','2020-08-22 04:12:46','2020-08-22 04:12:46'),(62,'Mr. Jamir Tillman III','user','emanuel.ondricka@example.net','2020-08-22 04:12:47','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mkub','703.388.2276 x3010','9z1z2YXq9g','2020-08-22 04:12:47','2020-08-22 04:12:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) unsigned NOT NULL,
  `checked` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visits_patient_id_foreign` (`patient_id`),
  CONSTRAINT `visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,1,'1','2020-08-22 04:12:40','2020-08-22 04:12:40'),(2,3,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(3,4,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(4,5,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(5,6,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(6,7,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(7,8,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(8,9,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(9,10,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(10,11,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(11,12,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(12,13,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(13,14,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(14,15,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(15,16,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(16,17,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(17,18,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(18,19,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(19,20,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(20,21,'1','2020-08-22 04:12:43','2020-08-22 04:12:43'),(21,22,'0','2020-08-22 04:12:43','2020-08-22 04:12:43'),(22,43,'0','2020-08-22 04:22:38','2020-08-22 04:22:38'),(23,44,'0','2020-08-22 04:22:41','2020-08-22 04:22:41');
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-30 12:22:28
