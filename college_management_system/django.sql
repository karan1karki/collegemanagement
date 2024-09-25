-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add attendance',7,'add_attendance'),(26,'Can change attendance',7,'change_attendance'),(27,'Can delete attendance',7,'delete_attendance'),(28,'Can view attendance',7,'view_attendance'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add staff',10,'add_staff'),(38,'Can change staff',10,'change_staff'),(39,'Can delete staff',10,'delete_staff'),(40,'Can view staff',10,'view_staff'),(41,'Can add student',11,'add_student'),(42,'Can change student',11,'change_student'),(43,'Can delete student',11,'delete_student'),(44,'Can view student',11,'view_student'),(45,'Can add subject',12,'add_subject'),(46,'Can change subject',12,'change_subject'),(47,'Can delete subject',12,'delete_subject'),(48,'Can view subject',12,'view_subject'),(49,'Can add student result',13,'add_studentresult'),(50,'Can change student result',13,'change_studentresult'),(51,'Can delete student result',13,'delete_studentresult'),(52,'Can view student result',13,'view_studentresult'),(53,'Can add notification student',14,'add_notificationstudent'),(54,'Can change notification student',14,'change_notificationstudent'),(55,'Can delete notification student',14,'delete_notificationstudent'),(56,'Can view notification student',14,'view_notificationstudent'),(57,'Can add notification staff',15,'add_notificationstaff'),(58,'Can change notification staff',15,'change_notificationstaff'),(59,'Can delete notification staff',15,'delete_notificationstaff'),(60,'Can view notification staff',15,'view_notificationstaff'),(61,'Can add leave report student',16,'add_leavereportstudent'),(62,'Can change leave report student',16,'change_leavereportstudent'),(63,'Can delete leave report student',16,'delete_leavereportstudent'),(64,'Can view leave report student',16,'view_leavereportstudent'),(65,'Can add leave report staff',17,'add_leavereportstaff'),(66,'Can change leave report staff',17,'change_leavereportstaff'),(67,'Can delete leave report staff',17,'delete_leavereportstaff'),(68,'Can view leave report staff',17,'view_leavereportstaff'),(69,'Can add feedback student',18,'add_feedbackstudent'),(70,'Can change feedback student',18,'change_feedbackstudent'),(71,'Can delete feedback student',18,'delete_feedbackstudent'),(72,'Can view feedback student',18,'view_feedbackstudent'),(73,'Can add feedback staff',19,'add_feedbackstaff'),(74,'Can change feedback staff',19,'change_feedbackstaff'),(75,'Can delete feedback staff',19,'delete_feedbackstaff'),(76,'Can view feedback staff',19,'view_feedbackstaff'),(77,'Can add attendance report',20,'add_attendancereport'),(78,'Can change attendance report',20,'change_attendancereport'),(79,'Can delete attendance report',20,'delete_attendancereport'),(80,'Can view attendance report',20,'view_attendancereport'),(81,'Can add admin',21,'add_admin'),(82,'Can change admin',21,'change_admin'),(83,'Can delete admin',21,'delete_admin'),(84,'Can view admin',21,'view_admin');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `main_app_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(21,'main_app','admin'),(7,'main_app','attendance'),(20,'main_app','attendancereport'),(8,'main_app','course'),(6,'main_app','customuser'),(19,'main_app','feedbackstaff'),(18,'main_app','feedbackstudent'),(17,'main_app','leavereportstaff'),(16,'main_app','leavereportstudent'),(15,'main_app','notificationstaff'),(14,'main_app','notificationstudent'),(9,'main_app','session'),(10,'main_app','staff'),(11,'main_app','student'),(13,'main_app','studentresult'),(12,'main_app','subject'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-09 12:58:29.213135'),(2,'contenttypes','0002_remove_content_type_name','2024-09-09 12:58:29.312151'),(3,'auth','0001_initial','2024-09-09 12:58:29.829996'),(4,'auth','0002_alter_permission_name_max_length','2024-09-09 12:58:29.923636'),(5,'auth','0003_alter_user_email_max_length','2024-09-09 12:58:29.930244'),(6,'auth','0004_alter_user_username_opts','2024-09-09 12:58:29.936626'),(7,'auth','0005_alter_user_last_login_null','2024-09-09 12:58:29.946308'),(8,'auth','0006_require_contenttypes_0002','2024-09-09 12:58:29.950380'),(9,'auth','0007_alter_validators_add_error_messages','2024-09-09 12:58:29.959272'),(10,'auth','0008_alter_user_username_max_length','2024-09-09 12:58:29.968456'),(11,'auth','0009_alter_user_last_name_max_length','2024-09-09 12:58:29.981601'),(12,'auth','0010_alter_group_name_max_length','2024-09-09 12:58:30.040116'),(13,'auth','0011_update_proxy_permissions','2024-09-09 12:58:30.051141'),(14,'auth','0012_alter_user_first_name_max_length','2024-09-09 12:58:30.061174'),(15,'main_app','0001_initial','2024-09-09 12:58:32.412823'),(16,'admin','0001_initial','2024-09-09 12:58:32.629176'),(17,'admin','0002_logentry_remove_auto_add','2024-09-09 12:58:32.638735'),(18,'admin','0003_logentry_add_action_flag_choices','2024-09-09 12:58:32.655848'),(19,'main_app','0002_alter_admin_id_alter_attendance_id_and_more','2024-09-09 12:58:38.258641'),(20,'sessions','0001_initial','2024-09-09 12:58:38.311435');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bp6dk3dnuoa2jzu0qxlfqhs5omt9d8oe','.eJxVi0EKwjAQRe-StQgzmUwSl4LnCJNkQopairUr8e62dGN3_7_H-5gky7unZdZXGqq5GDCnf5al3HXcxFOGMck0nW_relx3fjjHssvc14wagS1YfSnsMERykYUDUciSyVkQrlXRNqeQG4i3hF5zxMqCToP5_gAFIzTH:1soO5C:_AWH81YOZgzxfA8TkgOyFDpYNOXcq9CkgXNDCclPyY0','2024-09-25 14:12:34.574520');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_admin`
--

DROP TABLE IF EXISTS `main_app_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `main_app_admin_admin_id_677566c2_fk` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_admin`
--

LOCK TABLES `main_app_admin` WRITE;
/*!40000 ALTER TABLE `main_app_admin` DISABLE KEYS */;
INSERT INTO `main_app_admin` VALUES (1,1);
/*!40000 ALTER TABLE `main_app_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_attendance`
--

DROP TABLE IF EXISTS `main_app_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_attendance_session_id_b5e3071a_fk` (`session_id`),
  KEY `main_app_attendance_subject_id_4de67085_fk` (`subject_id`),
  CONSTRAINT `main_app_attendance_session_id_b5e3071a_fk` FOREIGN KEY (`session_id`) REFERENCES `main_app_session` (`id`),
  CONSTRAINT `main_app_attendance_subject_id_4de67085_fk` FOREIGN KEY (`subject_id`) REFERENCES `main_app_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_attendance`
--

LOCK TABLES `main_app_attendance` WRITE;
/*!40000 ALTER TABLE `main_app_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_attendancereport`
--

DROP TABLE IF EXISTS `main_app_attendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_attendancereport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_attendancereport_attendance_id_8102922e_fk` (`attendance_id`),
  KEY `main_app_attendancereport_student_id_0957b64c_fk` (`student_id`),
  CONSTRAINT `main_app_attendancereport_attendance_id_8102922e_fk` FOREIGN KEY (`attendance_id`) REFERENCES `main_app_attendance` (`id`),
  CONSTRAINT `main_app_attendancereport_student_id_0957b64c_fk` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_attendancereport`
--

LOCK TABLES `main_app_attendancereport` WRITE;
/*!40000 ALTER TABLE `main_app_attendancereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_attendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_course`
--

DROP TABLE IF EXISTS `main_app_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_course`
--

LOCK TABLES `main_app_course` WRITE;
/*!40000 ALTER TABLE `main_app_course` DISABLE KEYS */;
INSERT INTO `main_app_course` VALUES (1,'BCA','2024-09-09 13:05:59.137695','2024-09-11 14:13:05.649946'),(2,'BIT','2024-09-11 14:14:13.204503','2024-09-11 14:14:13.204503');
/*!40000 ALTER TABLE `main_app_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_customuser`
--

DROP TABLE IF EXISTS `main_app_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `fcm_token` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_customuser`
--

LOCK TABLES `main_app_customuser` WRITE;
/*!40000 ALTER TABLE `main_app_customuser` DISABLE KEYS */;
INSERT INTO `main_app_customuser` VALUES (1,'pbkdf2_sha256$870000$5QhIOJpS1CDR9lWXDha3lk$fpxhNBNlJ7IiN1JHMOtor4Y0aAz6CJoO2Wf0DFq6cls=','2024-09-11 14:12:34.568871',1,'','',1,1,'2024-09-09 13:03:02.378157','admin@gmail.com','1','','','','','2024-09-09 13:03:02.859442','2024-09-09 13:03:02.859442'),(2,'pbkdf2_sha256$870000$IoSz7FfjGiVYWuOD4mMpOw$oH3WlJYDFfebEcVokVKjWx6/AUuVb8jM9FkeangKCk8=','2024-09-11 14:08:26.507417',0,'Bibek','Gautam',0,1,'2024-09-09 13:08:22.240188','bibek@gmail.com','2','M','/media/images.jpeg','Kathmandu,Nepal','','2024-09-09 13:08:23.480467','2024-09-09 13:08:23.494440'),(3,'pbkdf2_sha256$870000$naqLB7BJJXQFYRY7jCXoFR$JcizNNUKqHjE+A0EungCjv7LO2bpJatHaouGmgLdIvk=','2024-09-11 14:05:18.589377',0,'Karan','Karki',0,1,'2024-09-09 13:09:37.641361','kk@gmail.com','3','M','/media/introduction_to_management_2.jpg','Kathmandu,Nepal','','2024-09-09 13:09:38.946780','2024-09-09 13:09:38.959319');
/*!40000 ALTER TABLE `main_app_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_customuser_groups`
--

DROP TABLE IF EXISTS `main_app_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_app_customuser_groups_customuser_id_group_id_6dd2b9a7_uniq` (`customuser_id`,`group_id`),
  KEY `main_app_customuser_groups_group_id_9ee498f4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `main_app_customuser_groups_customuser_id_9d75aa94_fk` FOREIGN KEY (`customuser_id`) REFERENCES `main_app_customuser` (`id`),
  CONSTRAINT `main_app_customuser_groups_group_id_9ee498f4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_customuser_groups`
--

LOCK TABLES `main_app_customuser_groups` WRITE;
/*!40000 ALTER TABLE `main_app_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_customuser_user_permissions`
--

DROP TABLE IF EXISTS `main_app_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_app_customuser_user_customuser_id_permission_0bd2d638_uniq` (`customuser_id`,`permission_id`),
  KEY `main_app_customuser__permission_id_595e7ce3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `main_app_customuser__permission_id_595e7ce3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `main_app_customuser_user_permissions_customuser_id_b28fdeb1_fk` FOREIGN KEY (`customuser_id`) REFERENCES `main_app_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_customuser_user_permissions`
--

LOCK TABLES `main_app_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `main_app_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_feedbackstaff`
--

DROP TABLE IF EXISTS `main_app_feedbackstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_feedbackstaff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_feedbackstaff_staff_id_b20848bb_fk` (`staff_id`),
  CONSTRAINT `main_app_feedbackstaff_staff_id_b20848bb_fk` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_feedbackstaff`
--

LOCK TABLES `main_app_feedbackstaff` WRITE;
/*!40000 ALTER TABLE `main_app_feedbackstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_feedbackstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_feedbackstudent`
--

DROP TABLE IF EXISTS `main_app_feedbackstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_feedbackstudent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_feedbackstudent_student_id_7509652e_fk` (`student_id`),
  CONSTRAINT `main_app_feedbackstudent_student_id_7509652e_fk` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_feedbackstudent`
--

LOCK TABLES `main_app_feedbackstudent` WRITE;
/*!40000 ALTER TABLE `main_app_feedbackstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_feedbackstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_leavereportstaff`
--

DROP TABLE IF EXISTS `main_app_leavereportstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_leavereportstaff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` varchar(60) NOT NULL,
  `message` longtext NOT NULL,
  `status` smallint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_leavereportstaff_staff_id_9c69ba31_fk` (`staff_id`),
  CONSTRAINT `main_app_leavereportstaff_staff_id_9c69ba31_fk` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_leavereportstaff`
--

LOCK TABLES `main_app_leavereportstaff` WRITE;
/*!40000 ALTER TABLE `main_app_leavereportstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_leavereportstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_leavereportstudent`
--

DROP TABLE IF EXISTS `main_app_leavereportstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_leavereportstudent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` varchar(60) NOT NULL,
  `message` longtext NOT NULL,
  `status` smallint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_leavereportstudent_student_id_2d19cc01_fk` (`student_id`),
  CONSTRAINT `main_app_leavereportstudent_student_id_2d19cc01_fk` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_leavereportstudent`
--

LOCK TABLES `main_app_leavereportstudent` WRITE;
/*!40000 ALTER TABLE `main_app_leavereportstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_leavereportstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_notificationstaff`
--

DROP TABLE IF EXISTS `main_app_notificationstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_notificationstaff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_notificationstaff_staff_id_4170f50c_fk` (`staff_id`),
  CONSTRAINT `main_app_notificationstaff_staff_id_4170f50c_fk` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_notificationstaff`
--

LOCK TABLES `main_app_notificationstaff` WRITE;
/*!40000 ALTER TABLE `main_app_notificationstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_notificationstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_notificationstudent`
--

DROP TABLE IF EXISTS `main_app_notificationstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_notificationstudent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_notificationstudent_student_id_dcbe1f25_fk` (`student_id`),
  CONSTRAINT `main_app_notificationstudent_student_id_dcbe1f25_fk` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_notificationstudent`
--

LOCK TABLES `main_app_notificationstudent` WRITE;
/*!40000 ALTER TABLE `main_app_notificationstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_notificationstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_session`
--

DROP TABLE IF EXISTS `main_app_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_session` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_session`
--

LOCK TABLES `main_app_session` WRITE;
/*!40000 ALTER TABLE `main_app_session` DISABLE KEYS */;
INSERT INTO `main_app_session` VALUES (1,'2024-09-09','2024-09-11');
/*!40000 ALTER TABLE `main_app_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_staff`
--

DROP TABLE IF EXISTS `main_app_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NOT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  KEY `main_app_staff_course_id_b4d19096_fk` (`course_id`),
  CONSTRAINT `main_app_staff_admin_id_831efa54_fk` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`),
  CONSTRAINT `main_app_staff_course_id_b4d19096_fk` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_staff`
--

LOCK TABLES `main_app_staff` WRITE;
/*!40000 ALTER TABLE `main_app_staff` DISABLE KEYS */;
INSERT INTO `main_app_staff` VALUES (1,2,1);
/*!40000 ALTER TABLE `main_app_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_student`
--

DROP TABLE IF EXISTS `main_app_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_id` bigint NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `session_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  KEY `main_app_student_course_id_8a4c712f_fk` (`course_id`),
  KEY `main_app_student_session_id_8f220969_fk` (`session_id`),
  CONSTRAINT `main_app_student_admin_id_c8e987bb_fk` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`),
  CONSTRAINT `main_app_student_course_id_8a4c712f_fk` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`),
  CONSTRAINT `main_app_student_session_id_8f220969_fk` FOREIGN KEY (`session_id`) REFERENCES `main_app_session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_student`
--

LOCK TABLES `main_app_student` WRITE;
/*!40000 ALTER TABLE `main_app_student` DISABLE KEYS */;
INSERT INTO `main_app_student` VALUES (1,3,1,1);
/*!40000 ALTER TABLE `main_app_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_studentresult`
--

DROP TABLE IF EXISTS `main_app_studentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_studentresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `test` double NOT NULL,
  `exam` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_studentresult_student_id_e57bb0c5_fk` (`student_id`),
  KEY `main_app_studentresult_subject_id_6abff4dc_fk` (`subject_id`),
  CONSTRAINT `main_app_studentresult_student_id_e57bb0c5_fk` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`),
  CONSTRAINT `main_app_studentresult_subject_id_6abff4dc_fk` FOREIGN KEY (`subject_id`) REFERENCES `main_app_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_studentresult`
--

LOCK TABLES `main_app_studentresult` WRITE;
/*!40000 ALTER TABLE `main_app_studentresult` DISABLE KEYS */;
INSERT INTO `main_app_studentresult` VALUES (1,40,60,'2024-09-09 13:10:51.323827','2024-09-09 13:10:51.323827',1,1),(2,10,20,'2024-09-11 14:01:47.607979','2024-09-11 14:01:47.607979',1,2),(3,18,22,'2024-09-11 14:04:59.714086','2024-09-11 14:04:59.714086',1,3);
/*!40000 ALTER TABLE `main_app_studentresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_subject`
--

DROP TABLE IF EXISTS `main_app_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `course_id` bigint NOT NULL,
  `staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_subject_course_id_e94ba4e3_fk` (`course_id`),
  KEY `main_app_subject_staff_id_f1d6d399_fk` (`staff_id`),
  CONSTRAINT `main_app_subject_course_id_e94ba4e3_fk` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`),
  CONSTRAINT `main_app_subject_staff_id_f1d6d399_fk` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_subject`
--

LOCK TABLES `main_app_subject` WRITE;
/*!40000 ALTER TABLE `main_app_subject` DISABLE KEYS */;
INSERT INTO `main_app_subject` VALUES (1,'python','2024-09-11 14:13:19.511873','2024-09-09 13:08:36.767172',1,1),(2,'DSA','2024-09-11 14:00:39.885675','2024-09-11 14:00:39.885675',1,1),(3,'Java','2024-09-11 14:00:59.138017','2024-09-11 14:00:59.138017',1,1);
/*!40000 ALTER TABLE `main_app_subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 20:31:51
