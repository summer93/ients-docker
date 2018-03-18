-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ients
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add message',6,'add_message'),(17,'Can change message',6,'change_message'),(18,'Can delete message',6,'delete_message'),(19,'Can add 模块',7,'add_module'),(20,'Can change 模块',7,'change_module'),(21,'Can delete 模块',7,'delete_module'),(22,'Can add 模块权限',8,'add_moduleauthority'),(23,'Can change 模块权限',8,'change_moduleauthority'),(24,'Can delete 模块权限',8,'delete_moduleauthority'),(25,'Can add 模块接口',9,'add_moduleinterface'),(26,'Can change 模块接口',9,'change_moduleinterface'),(27,'Can delete 模块接口',9,'delete_moduleinterface'),(28,'Can add 模块菜单',10,'add_modulemenu'),(29,'Can change 模块菜单',10,'change_modulemenu'),(30,'Can delete 模块菜单',10,'delete_modulemenu'),(31,'Can add node',11,'add_node'),(32,'Can change node',11,'change_node'),(33,'Can delete node',11,'delete_node'),(34,'Can add user',12,'add_user'),(35,'Can change user',12,'change_user'),(36,'Can delete user',12,'delete_user'),(37,'Can add account_ type',13,'add_account_type'),(38,'Can change account_ type',13,'change_account_type'),(39,'Can delete account_ type',13,'delete_account_type'),(40,'Can add authority company',14,'add_authoritycompany'),(41,'Can change authority company',14,'change_authoritycompany'),(42,'Can delete authority company',14,'delete_authoritycompany'),(43,'Can add authority department',15,'add_authoritydepartment'),(44,'Can change authority department',15,'change_authoritydepartment'),(45,'Can delete authority department',15,'delete_authoritydepartment'),(46,'Can add authority role',16,'add_authorityrole'),(47,'Can change authority role',16,'change_authorityrole'),(48,'Can delete authority role',16,'delete_authorityrole'),(49,'Can add authority user',17,'add_authorityuser'),(50,'Can change authority user',17,'change_authorityuser'),(51,'Can delete authority user',17,'delete_authorityuser'),(52,'Can add 公司',18,'add_company'),(53,'Can change 公司',18,'change_company'),(54,'Can delete 公司',18,'delete_company'),(55,'Can add 部门',19,'add_department'),(56,'Can change 部门',19,'change_department'),(57,'Can delete 部门',19,'delete_department'),(58,'Can add 组织架构',20,'add_department_con'),(59,'Can change 组织架构',20,'change_department_con'),(60,'Can delete 组织架构',20,'delete_department_con'),(61,'Can add role',21,'add_role'),(62,'Can change role',21,'change_role'),(63,'Can delete role',21,'delete_role'),(64,'Can add role_ con_ department',22,'add_role_con_department'),(65,'Can change role_ con_ department',22,'change_role_con_department'),(66,'Can delete role_ con_ department',22,'delete_role_con_department'),(67,'Can add user_ con_ company',23,'add_user_con_company'),(68,'Can change user_ con_ company',23,'change_user_con_company'),(69,'Can delete user_ con_ company',23,'delete_user_con_company'),(70,'Can add user_ con_ department',24,'add_user_con_department'),(71,'Can change user_ con_ department',24,'change_user_con_department'),(72,'Can delete user_ con_ department',24,'delete_user_con_department'),(73,'Can add user_ con_ role',25,'add_user_con_role'),(74,'Can change user_ con_ role',25,'change_user_con_role'),(75,'Can delete user_ con_ role',25,'delete_user_con_role'),(76,'Can add 图纸',26,'add_drawing'),(77,'Can change 图纸',26,'change_drawing'),(78,'Can delete 图纸',26,'delete_drawing'),(79,'Can add 图幅',27,'add_drawingsize'),(80,'Can change 图幅',27,'change_drawingsize'),(81,'Can delete 图幅',27,'delete_drawingsize'),(82,'Can add 材料',28,'add_materials'),(83,'Can change 材料',28,'change_materials'),(84,'Can delete 材料',28,'delete_materials'),(85,'Can add 产品',29,'add_part'),(86,'Can change 产品',29,'change_part'),(87,'Can delete 产品',29,'delete_part'),(88,'Can add 状态',30,'add_pdm_status'),(89,'Can change 状态',30,'change_pdm_status'),(90,'Can delete 状态',30,'delete_pdm_status'),(91,'Can add 单位',31,'add_units'),(92,'Can change 单位',31,'change_units'),(93,'Can delete 单位',31,'delete_units'),(94,'Can add 类型',32,'add_form_status'),(95,'Can change 类型',32,'change_form_status'),(96,'Can delete 类型',32,'delete_form_status'),(97,'Can add part live',33,'add_partlive'),(98,'Can change part live',33,'change_partlive'),(99,'Can delete part live',33,'delete_partlive'),(100,'Can add store',34,'add_store'),(101,'Can change store',34,'change_store'),(102,'Can delete store',34,'delete_store'),(103,'Can add 类型',35,'add_store_status'),(104,'Can change 类型',35,'change_store_status'),(105,'Can delete 类型',35,'delete_store_status'),(106,'Can add store con',36,'add_storecon'),(107,'Can change store con',36,'change_storecon'),(108,'Can delete store con',36,'delete_storecon'),(109,'Can add store con part live',37,'add_storeconpartlive'),(110,'Can change store con part live',37,'change_storeconpartlive'),(111,'Can delete store con part live',37,'delete_storeconpartlive'),(112,'Can add store form',38,'add_storeform'),(113,'Can change store form',38,'change_storeform'),(114,'Can delete store form',38,'delete_storeform'),(115,'Can add store form con part live',39,'add_storeformconpartlive'),(116,'Can change store form con part live',39,'change_storeformconpartlive'),(117,'Can delete store form con part live',39,'delete_storeformconpartlive');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_org_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_org_user_id` FOREIGN KEY (`user_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(11,'flow','node'),(6,'general','message'),(7,'general','module'),(8,'general','moduleauthority'),(9,'general','moduleinterface'),(10,'general','modulemenu'),(13,'org','account_type'),(14,'org','authoritycompany'),(15,'org','authoritydepartment'),(16,'org','authorityrole'),(17,'org','authorityuser'),(18,'org','company'),(19,'org','department'),(20,'org','department_con'),(21,'org','role'),(22,'org','role_con_department'),(12,'org','user'),(23,'org','user_con_company'),(24,'org','user_con_department'),(25,'org','user_con_role'),(26,'pdm','drawing'),(27,'pdm','drawingsize'),(28,'pdm','materials'),(29,'pdm','part'),(30,'pdm','pdm_status'),(31,'pdm','units'),(5,'sessions','session'),(32,'store','form_status'),(33,'store','partlive'),(34,'store','store'),(36,'store','storecon'),(37,'store','storeconpartlive'),(38,'store','storeform'),(39,'store','storeformconpartlive'),(35,'store','store_status');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'general','0001_initial','2018-03-13 08:49:22.737838'),(2,'contenttypes','0001_initial','2018-03-13 08:49:22.891139'),(3,'contenttypes','0002_remove_content_type_name','2018-03-13 08:49:23.211837'),(4,'auth','0001_initial','2018-03-13 08:49:24.326727'),(5,'auth','0002_alter_permission_name_max_length','2018-03-13 08:49:24.535380'),(6,'auth','0003_alter_user_email_max_length','2018-03-13 08:49:24.556231'),(7,'auth','0004_alter_user_username_opts','2018-03-13 08:49:24.570987'),(8,'auth','0005_alter_user_last_login_null','2018-03-13 08:49:24.587812'),(9,'auth','0006_require_contenttypes_0002','2018-03-13 08:49:24.600719'),(10,'auth','0007_alter_validators_add_error_messages','2018-03-13 08:49:24.616081'),(11,'auth','0008_alter_user_username_max_length','2018-03-13 08:49:24.631281'),(12,'auth','0009_alter_user_last_name_max_length','2018-03-13 08:49:24.647516'),(13,'org','0001_initial','2018-03-13 08:49:32.525055'),(14,'admin','0001_initial','2018-03-13 08:49:33.176671'),(15,'admin','0002_logentry_remove_auto_add','2018-03-13 08:49:33.199505'),(16,'flow','0001_initial','2018-03-13 08:49:33.341347'),(17,'pdm','0001_initial','2018-03-13 08:49:36.840835'),(18,'sessions','0001_initial','2018-03-13 08:49:37.026902'),(19,'store','0001_initial','2018-03-13 08:49:40.748095');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('006ztiydqt35gkq5hojnchfsnaq44ie3','NmIzNjFmZmQwMDY5NWJjNGJmZGE4MGNjZTUwNGZiNzhlOGJhMWU4ODp7ImNvZGUiOiJLUUxBTiIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL1pHX0YvWkctRi0wMS0wMy8iLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LyIsIi9vcmcvWkdfRi9aRy1GLTA3LTA0LyIsIi9vcmcvWkdfRi9aRy1GLTAxLTA0LyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAxLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLyIsIi9nZW5lcmFsL2ludGVyZmFjZS8iLCIvb3JnL29iamVjdHMvUm9sZS8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8iLCIvc3RvcmUvQ0dfUi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8iLCIvb3JnL09yZ19DUlVEX0ludGVyZmFjZS8iLCIvb3JnL29iamVjdHMvQ29tcGFueS8iLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlTWVudS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMS8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wNC8iLCIvc3RvcmUvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvIiwiL29yZy9aR19GL1pHLUYtMDUtMDMvIiwiL2dlbmVyYWwvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA0T3JkZXIvIiwiL29yZy9PcmdfSW50ZXJmYWNlLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTA0LyIsIi9nZW5lcmFsL29iamVjdHMvTWVzc2FnZS8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMS8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8iLCIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMi8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8iLCIvb3JnL29iamVjdHMvIiwiL29yZy9aR19GL1pHLUYtMDItMDQvIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMS8iLCIvc3RvcmUvQ0dfRi8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvb3JnL29iamVjdHMvVXNlci8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDdPcmRlci8iLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8iLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOE9yZGVyLyIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8iLCIvZ2VuZXJhbC9vYmplY3RzLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlX1N0YXR1cy8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci8iLCIvb3JnLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMk9yZGVyLyIsIi9vcmcvWkdfUi8iLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fUm9sZS8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAzLyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLyIsIi9zdG9yZS9DR19ULyIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50LyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9EZXBhcnRtZW50LyIsIi9zdG9yZS9vYmplY3RzLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uUGFydExpdmUvIiwiL2dlbmVyYWwvbWVudS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm0vIiwiL29yZy9aR19GLyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNk9yZGVyLyIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvc3RvcmUvU3RvcmVfSW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAyLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uLyIsIi9zdG9yZS9vYmplY3RzL1BhcnRMaXZlLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlDb21wYW55LyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvb3JnLzAiLCIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvNyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDItMDQvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLzciLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLzciLCIvb3JnL29iamVjdHMvQ29tcGFueS83IiwiL29yZy9aR19SLzAiLCIvc3RvcmUvQ0dfUi8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAxT3JkZXIvNyIsIi9nZW5lcmFsLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvNyIsIi9vcmcvb2JqZWN0cy9Vc2VyLzciLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDMvMCIsIi9zdG9yZS9DR19GLzAiLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAzLzAiLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS83IiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wMi8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDItMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLzAiLCIvb3JnL29iamVjdHMvMCIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvNyIsIi9vcmcvT3JnX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMS8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8wIiwiL29yZy9aR19SL1pHLVItMDQtMDEvMCIsIi9vcmcvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LzAiLCIvZ2VuZXJhbC9pbnRlcmZhY2UvMCIsIi9zdG9yZS9DR19SL0NHLVItMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTA0LzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDEtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS83IiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLzciLCIvb3JnL1pHX0YvWkctRi0wNS0wMS8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLzciLCIvc3RvcmUvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8wIiwiL2dlbmVyYWwvbWVudS8wIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA3LTA0LzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8wIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8wIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvNyIsIi9vcmcvb2JqZWN0cy9Sb2xlLzciLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudF9Db24vNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS83IiwiL29yZy9aR19GLzAiLCIvb3JnL1pHX0YvWkctRi0wOC0wMi8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLzciLCIvb3JnL1pHX0YvWkctRi0wOC0wMS8wIiwiL29yZy9aR19SL1pHLVItMDQtMDIvMCIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvMCIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDItMDMvMCIsIi9nZW5lcmFsL29iamVjdHMvMCIsIi9vcmcvWkdfRi9aRy1GLTA2LTAyLzAiLCIvc3RvcmUvMCIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50LzciLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8wIiwiL3N0b3JlL29iamVjdHMvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8wIiwiL29yZy9aR19SL1pHLVItMDQtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmVfU3RhdHVzLzciLCIvb3JnL09yZ19DUlVEX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTA0LzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvbi83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVVzZXIvNyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LzciLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUF1dGhvcml0eS83IiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-27 02:34:03.392003'),('3vmq1uiav5jdzpbn8z6i7ah6x0rke4ab','N2E2MmMyNDdhNjk1MzNiOWJiNWY2NjU1ZGUwNDRmMGUyNGNmMjZiYTp7ImNvZGUiOiJTSVZXVCIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL29iamVjdHMvVXNlci8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5RGVwYXJ0bWVudC8iLCIvZ2VuZXJhbC9vYmplY3RzL01lc3NhZ2UvIiwiL29yZy9aR19GL1pHLUYtMDctMDEvIiwiL29yZy9aR19GL1pHLUYtMDYtMDIvIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAxLyIsIi9zdG9yZS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLyIsIi9nZW5lcmFsL21lbnUvIiwiL29yZy9aR19GL1pHLUYtMDUtMDMvIiwiL3N0b3JlL0NHX1IvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvIiwiL29yZy9aR19SL1pHLVItMDQtMDIvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAzT3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvIiwiL29yZy9aR19GL1pHLUYtMDctMDIvIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL29yZy9aR19GL1pHLUYtMDMtMDEvIiwiL29yZy9aR19GL1pHLUYtMDItMDEvIiwiL29yZy9vYmplY3RzL0FjY291bnRfVHlwZS8iLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVNZW51LyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLyIsIi9zdG9yZS9DR19SL0NHLVItMDEvIiwiL29yZy9aR19GL1pHLUYtMDItMDMvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Q29tcGFueS8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDdPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMi8iLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8iLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvb3JnL1pHX0YvIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvIiwiL3N0b3JlL1N0b3JlX0NSVURfSW50ZXJmYWNlLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLyIsIi9zdG9yZS9TdG9yZV9JbnRlcmZhY2UvIiwiL3N0b3JlL29iamVjdHMvIiwiL29yZy9aR19SL1pHLVItMDQtMDQvIiwiL29yZy9aR19GL1pHLUYtMDEtMDMvIiwiL29yZy9aR19GL1pHLUYtMDYtMDMvIiwiL29yZy9aR19GL1pHLUYtMDQtMDMvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAyT3JkZXIvIiwiL29yZy9vYmplY3RzL0NvbXBhbnkvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMi8iLCIvb3JnL29iamVjdHMvUm9sZS8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC8iLCIvc3RvcmUvQ0dfRi8iLCIvc3RvcmUvQ0dfVC8iLCIvZ2VuZXJhbC8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci8iLCIvb3JnL29iamVjdHMvIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGUvIiwiL29yZy9aR19SL1pHLVItMDItMDEvIiwiL29yZy9aR19GL1pHLUYtMDUtMDQvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVGb3JtLyIsIi9vcmcvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL2dlbmVyYWwvb2JqZWN0cy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAxLTA0LyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LyIsIi9vcmcvWkdfUi9aRy1SLTAyLTA0LyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLyIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLyIsIi9vcmcvIiwiL2dlbmVyYWwvaW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9Sb2xlX0Nvbl9EZXBhcnRtZW50LyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOE9yZGVyLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLyIsIi9vcmcvWkdfUi8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvb3JnL1pHX1IvWkctUi0wMi0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvb2JqZWN0cy9Sb2xlLzciLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8wIiwiL29yZy9aR19SL1pHLVItMDItMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAxLTAzLzAiLCIvb3JnLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDhPcmRlci83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8wIiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LzciLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8wIiwiL3N0b3JlL29iamVjdHMvRm9ybV9TdGF0dXMvNyIsIi9vcmcvWkdfRi8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9zdG9yZS9DR19SLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wNC8wIiwiL2dlbmVyYWwvb2JqZWN0cy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLzciLCIvb3JnL1pHX0YvWkctRi0wMi0wMS8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvNyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvZ2VuZXJhbC9tZW51LzAiLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvNyIsIi9vcmcvb2JqZWN0cy8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9vYmplY3RzL0FjY291bnRfVHlwZS83IiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8wIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL09yZ19JbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnQvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciLCIvc3RvcmUvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX1JvbGUvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uUGFydExpdmUvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wMi8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vNyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlTWVudS83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA0T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAzLzAiLCIvc3RvcmUvU3RvcmVfQ1JVRF9JbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC83IiwiL29yZy9aR19GL1pHLUYtMDctMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8wIiwiL29yZy9vYmplY3RzL0NvbXBhbnkvNyIsIi9nZW5lcmFsLzAiLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvNyIsIi9zdG9yZS9vYmplY3RzLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8wIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTAxLzAiLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL29iamVjdHMvVXNlci83IiwiL29yZy9aR19GL1pHLUYtMDYtMDEvMCIsIi9zdG9yZS9DR19SL0NHLVItMDIvMCIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8wIiwiL3N0b3JlL0NHX0YvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvb3JnL1pHX1IvMCIsIi9nZW5lcmFsL2ludGVyZmFjZS8wIiwiL29yZy9aR19SL1pHLVItMDQtMDIvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS83IiwiL29yZy9aR19GL1pHLUYtMDgtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLzAiLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAzLzAiXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-28 08:56:06.683661'),('79fosr31mrpmyrrh2buxyck7n7m6uhf9','ZGVjNzdmOTJkODA3ZmI3YjIxYWI3Zjk1ZDhhMTk1NmRlMmY5ZDdiODp7ImNvZGUiOiJHV0dOQSIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvc3RvcmUvQ0dfVC9TdG9yZV8wMDRPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZS8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDhPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMy8iLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8iLCIvc3RvcmUvQ0dfRi8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZS8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlSb2xlLyIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMy8iLCIvZ2VuZXJhbC9vYmplY3RzLyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAxLyIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8iLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLyIsIi9vcmcvb2JqZWN0cy9Vc2VyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAyLyIsIi9vcmcvb2JqZWN0cy8iLCIvc3RvcmUvQ0dfUi8iLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyIsIi9vcmcvWkdfRi8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUF1dGhvcml0eS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvc3RvcmUvQ0dfVC8iLCIvb3JnL09yZ19DUlVEX0ludGVyZmFjZS8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL2dlbmVyYWwvbWVudS8iLCIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci8iLCIvb3JnL29iamVjdHMvUm9sZS8iLCIvb3JnLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LyIsIi9vcmcvb2JqZWN0cy9Db21wYW55LyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTA2LTA0LyIsIi9zdG9yZS9vYmplY3RzL1BhcnRMaXZlLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTA0LyIsIi9nZW5lcmFsLyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAzLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLyIsIi9zdG9yZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm0vIiwiL29yZy9aR19SL1pHLVItMDItMDIvIiwiL29yZy9aR19GL1pHLUYtMDMtMDEvIiwiL29yZy9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wNC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAxT3JkZXIvIiwiL29yZy9aR19SL1pHLVItMDQtMDIvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVGb3JtQ29uUGFydExpdmUvIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvIiwiL29yZy9aR19GL1pHLUYtMDYtMDIvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMS8iLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLyIsIi9zdG9yZS9TdG9yZV9JbnRlcmZhY2UvIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLyIsIi9zdG9yZS9vYmplY3RzLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlDb21wYW55LyIsIi9vcmcvWkdfUi9aRy1SLTAxLTAzLyIsIi9nZW5lcmFsL2ludGVyZmFjZS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvIiwiL29yZy9aR19GL1pHLUYtMDItMDIvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMi8iLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMi8iLCIvb3JnL1pHX0YvWkctRi0wNy0wMi8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fUm9sZS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudF9Db24vIiwiL29yZy9aR19SLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTA0LyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAxLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvc3RvcmUvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTA0LzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fUm9sZS83IiwiL29yZy9aR19SL1pHLVItMDItMDMvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLzciLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL09yZ19JbnRlcmZhY2UvMCIsIi9nZW5lcmFsLzAiLCIvb3JnL1pHX1IvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDItMDMvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOE9yZGVyLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDIvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDIvMCIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLzciLCIvb3JnL1pHX0YvWkctRi0wNC0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8wIiwiL29yZy9vYmplY3RzL1JvbGUvNyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LzciLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDgtMDIvMCIsIi9zdG9yZS9DR19ULzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fQ29tcGFueS83IiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvb3JnL29iamVjdHMvMCIsIi9zdG9yZS8wIiwiL29yZy9aR19SL1pHLVItMDMtMDEvMCIsIi9vcmcvb2JqZWN0cy9Db21wYW55LzciLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8wIiwiL29yZy8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlDb21wYW55LzciLCIvc3RvcmUvb2JqZWN0cy9QYXJ0TGl2ZS83IiwiL29yZy9PcmdfQ1JVRF9JbnRlcmZhY2UvMCIsIi9zdG9yZS9TdG9yZV9JbnRlcmZhY2UvMCIsIi9nZW5lcmFsL29iamVjdHMvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL29yZy9aR19GL1pHLUYtMDctMDEvMCIsIi9nZW5lcmFsL29iamVjdHMvTWVzc2FnZS83IiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTA0LzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC83IiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVNZW51LzciLCIvc3RvcmUvb2JqZWN0cy8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDMvMCIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50LzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDUtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZS83IiwiL29yZy9aR19GLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci83IiwiL29yZy9aR19SL1pHLVItMDItMDEvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci83IiwiL29yZy9aR19SL1pHLVItMDQtMDEvMCIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZS83IiwiL29yZy9aR19GL1pHLUYtMDItMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LzAiLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS83IiwiL29yZy9aR19GL1pHLUYtMDEtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlX1N0YXR1cy83IiwiL29yZy9aR19GL1pHLUYtMDItMDIvMCIsIi9zdG9yZS9DR19GLzAiLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LzAiLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvc3RvcmUvb2JqZWN0cy9Gb3JtX1N0YXR1cy83IiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb25QYXJ0TGl2ZS83IiwiL2dlbmVyYWwvaW50ZXJmYWNlLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMi8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvNyIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDctMDQvMCIsIi9vcmcvWkdfUi9aRy1SLTAxLTAzLzAiLCIvb3JnL29iamVjdHMvVXNlci83IiwiL2dlbmVyYWwvbWVudS8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9zdG9yZS9DR19SL0NHLVItMDIvMCIsIi9zdG9yZS9DR19SLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm0vNyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJfc2Vzc2lvbl9leHBpcnkiOjI1OTIwMDAsIndlYnNpdGVfdGl0bGUiOiJFbnRlcnByaXNlIEVjb3N5c3RlbSJ9','2018-04-13 08:04:24.227192'),('8zbt3sua9nkc3xyu8ag15h3argr9zne2','NjY3OGJiMDA5MWY4ZTJiMTUwOTE2MWEwZDJmMDY1MGNlNDUyYzcwZTp7ImNvZGUiOiJYTENYSCIsIl9hdXRoX3VzZXJfaWQiOiI3M2NiZTRmOS1jMDI4LTQ5MjktYWRkMS0xZGU4MGQ0NTIyYjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNhMDU0OWRhOGFlYmE5M2Y5Y2QwN2FlOTQ1NDM1NmNhNWY1N2JhN2IiLCJVc2VyX3VzZXJuYW1lIjoiQWRtaW5fMDEiLCJVc2VyX2lkIjoiNzNjYmU0ZjktYzAyOC00OTI5LWFkZDEtMWRlODBkNDUyMmI0IiwiVXNlcl9BdmF0YXIiOiIvaW1hZ2VzL2F2YXRhci9BZG1pbl8wMS5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL29iamVjdHMvVXNlcl9Db25fUm9sZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDdPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMy8iLCIvb3JnL1pHX0YvWkctRi0wNy0wMi8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX0YvWkctRi0wNy0wMS8iLCIvZ2VuZXJhbC9vYmplY3RzLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNk9yZGVyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8iLCIvb3JnL1pHX0YvWkctRi0wMy0wNC8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvbi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMS8iLCIvc3RvcmUvb2JqZWN0cy9QYXJ0TGl2ZS8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC8iLCIvc3RvcmUvQ0dfUi8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMy8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDhPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDNPcmRlci8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvIiwiL29yZy9aR19SL1pHLVItMDQtMDMvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvIiwiL29yZy9aR19SL1pHLVItMDItMDMvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAzLyIsIi9vcmcvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA5T3JkZXIvIiwiL3N0b3JlLyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAxLyIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL29yZy9aR19GL1pHLUYtMDMtMDIvIiwiL29yZy9aR19GL1pHLUYtMDItMDQvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvIiwiL29yZy9aR19GL1pHLUYtMDUtMDEvIiwiL29yZy9aR19SLyIsIi9vcmcvb2JqZWN0cy9Vc2VyLyIsIi9vcmcvWkdfRi9aRy1GLTA4LTA0LyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLyIsIi9zdG9yZS9DR19SL0NHLVItMDIvIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvIiwiL29yZy9aR19SL1pHLVItMDEtMDMvIiwiL29yZy9aR19GL1pHLUYtMDYtMDEvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL29yZy9aR19GL1pHLUYtMDQtMDQvIiwiL29yZy9aR19SL1pHLVItMDItMDQvIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8iLCIvc3RvcmUvQ0dfVC8iLCIvb3JnL29iamVjdHMvUm9sZS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMS8iLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Q29tcGFueS8iLCIvc3RvcmUvQ0dfRi8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci8iLCIvZ2VuZXJhbC9tZW51LyIsIi9nZW5lcmFsLyIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMi8iLCIvb3JnL29iamVjdHMvQ29tcGFueS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LyIsIi9nZW5lcmFsL2ludGVyZmFjZS8iLCIvc3RvcmUvb2JqZWN0cy9Gb3JtX1N0YXR1cy8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC8iLCIvc3RvcmUvb2JqZWN0cy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUF1dGhvcml0eS8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fQ29tcGFueS8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LyIsIi9vcmcvWkdfUi9aRy1SLTA0LTA0LyIsIi9vcmcvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL29yZy9aR19GL1pHLUYtMDYtMDIvIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLyIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci8iLCIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvIiwiL29yZy9aR19GLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLyIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLyIsIi9zdG9yZS9DR19SL0NHLVItMDEvIiwiL29yZy9aR19GL1pHLUYtMDEtMDIvIiwiL29yZy9vYmplY3RzLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvc3RvcmUvMCIsIi9vcmcvWkdfRi9aRy1GLTA4LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wMy0wMi8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL3N0b3JlL0NHX0YvMCIsIi9nZW5lcmFsL2ludGVyZmFjZS8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVVzZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLzAiLCIvc3RvcmUvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLzAiLCIvb3JnL1pHX1IvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLzciLCIvb3JnL29iamVjdHMvUm9sZS83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS83IiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vNyIsIi9zdG9yZS9DR19SL0NHLVItMDEvMCIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMS8wIiwiL3N0b3JlL0NHX1IvMCIsIi9vcmcvWkdfRi9aRy1GLTAxLTA0LzAiLCIvZ2VuZXJhbC9tZW51LzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wOC0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAzT3JkZXIvNyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9EZXBhcnRtZW50LzciLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wMi8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVBdXRob3JpdHkvNyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLzAiLCIvc3RvcmUvb2JqZWN0cy8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGUvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLzAiLCIvZ2VuZXJhbC8wIiwiL29yZy8wIiwiL29yZy9vYmplY3RzLzAiLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LzAiLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8wIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0NvbXBhbnkvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLzciLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8wIiwiL29yZy9aR19SL1pHLVItMDEtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvNyIsIi9nZW5lcmFsL29iamVjdHMvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wNi0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvNyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LzciLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8wIiwiL29yZy9PcmdfSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8wIiwiL29yZy9aR19SL1pHLVItMDItMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8wIiwiL29yZy9aR19SL1pHLVItMDItMDIvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlSb2xlLzciLCIvb3JnL29iamVjdHMvQ29tcGFueS83IiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDEtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAyLzAiLCIvc3RvcmUvQ0dfUi9DRy1SLTAyLzAiLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLzciLCIvc3RvcmUvb2JqZWN0cy9QYXJ0TGl2ZS83IiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAyLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAyT3JkZXIvNyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlTWVudS83IiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvc3RvcmUvU3RvcmVfSW50ZXJmYWNlLzAiLCIvc3RvcmUvb2JqZWN0cy9Gb3JtX1N0YXR1cy83IiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNC0wMy8wIiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9nZW5lcmFsL29iamVjdHMvTWVzc2FnZS83IiwiL29yZy9aR19GL1pHLUYtMDYtMDMvMCIsIi9zdG9yZS9TdG9yZV9DUlVEX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDctMDEvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwN09yZGVyLzciLCIvb3JnL29iamVjdHMvVXNlcl9Db25fUm9sZS83IiwiL29yZy9vYmplY3RzL1VzZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAyLzAiLCIvb3JnL1pHX0YvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-27 08:55:41.606357'),('enzmkqwzewo96xddlx2wnxxzvucwx8u3','YmQ1MDgwY2E2ZDJjMTlmMzQyZWMwMTAzMTVjZjM5NjY1ZTExZTc5Mzp7ImNvZGUiOiJFV0JCTyIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6W10sIkF1dGhvcml0eV9OT19saXN0IjpbXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-27 09:24:01.206819'),('iblmwrhm6j084mac4neq294yl5ugauqn','NmU5ZWQ5NGEzOTQyYWQzZTBmNDFkZmIxMjE0MDU0Njc2MTIwN2QxMjp7ImNvZGUiOiJWTUlETyJ9','2018-03-26 11:04:58.589825'),('j33zblw8i3ije9qtc11vytio402zrfan','ZTZlZGVmY2VjMTVkMTcxNDgzMjU2NjliMDc2NjIyOWQ4NDJmODBhNDp7ImNvZGUiOiJYRlhSRCIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudF9Db24vIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDUtMDIvIiwiL29yZy9aR19GL1pHLUYtMDMtMDIvIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0NvbXBhbnkvIiwiL29yZy9aR19GL1pHLUYtMDUtMDEvIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDRPcmRlci8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAxLyIsIi9zdG9yZS9vYmplY3RzL1BhcnRMaXZlLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlDb21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAzLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTA0LyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMk9yZGVyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9EZXBhcnRtZW50LyIsIi9zdG9yZS9DR19SLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNU9yZGVyLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLyIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvIiwiL2dlbmVyYWwvaW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9Sb2xlLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLyIsIi9zdG9yZS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvIiwiL29yZy8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9zdG9yZS9DR19ULyIsIi9nZW5lcmFsL21lbnUvIiwiL29yZy9aR19SL1pHLVItMDItMDEvIiwiL29yZy9aR19GL1pHLUYtMDEtMDQvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8iLCIvb3JnL1pHX0YvIiwiL3N0b3JlL29iamVjdHMvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA5T3JkZXIvIiwiL29yZy9aR19SLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTA0LyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAxLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLyIsIi9vcmcvb2JqZWN0cy9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAzLyIsIi9nZW5lcmFsL29iamVjdHMvIiwiL29yZy9aR19SL1pHLVItMDEtMDMvIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvIiwiL29yZy9aR19GL1pHLUYtMDgtMDQvIiwiL29yZy9aR19GL1pHLUYtMDEtMDEvIiwiL29yZy9vYmplY3RzL1VzZXIvIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvIiwiL3N0b3JlL0NHX0YvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnQvIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwN09yZGVyLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTA0LyIsIi9vcmcvb2JqZWN0cy8iLCIvZ2VuZXJhbC8iLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMi8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8iLCIvc3RvcmUvU3RvcmVfQ1JVRF9JbnRlcmZhY2UvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVfU3RhdHVzLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLyIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvb3JnL1pHX0YvWkctRi0wNC0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLzciLCIvb3JnL1pHX0YvWkctRi0wNy0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLzAiLCIvb3JnL1pHX0YvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8wIiwiL29yZy9PcmdfQ1JVRF9JbnRlcmZhY2UvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMi8wIiwiL3N0b3JlL29iamVjdHMvMCIsIi9zdG9yZS9DR19SL0NHLVItMDEvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvb3JnL1pHX0YvWkctRi0wMy0wMi8wIiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9nZW5lcmFsL2ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvMCIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLzAiLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLzciLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL3N0b3JlL1N0b3JlX0NSVURfSW50ZXJmYWNlLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci83IiwiL29yZy9aR19SL1pHLVItMDQtMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmUvNyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8wIiwiL29yZy9vYmplY3RzLzAiLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8wIiwiL29yZy9aR19SL1pHLVItMDItMDQvMCIsIi9nZW5lcmFsL21lbnUvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01lc3NhZ2UvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvZ2VuZXJhbC8wIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvc3RvcmUvMCIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvbi83IiwiL29yZy9aR19SL1pHLVItMDItMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLzAiLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC83IiwiL3N0b3JlL29iamVjdHMvU3RvcmVGb3JtLzciLCIvb3JnL29iamVjdHMvVXNlci83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOU9yZGVyLzciLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8wIiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvb2JqZWN0cy9Db21wYW55LzciLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8wIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8wIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0RlcGFydG1lbnQvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciLCIvc3RvcmUvQ0dfUi8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDNPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNU9yZGVyLzciLCIvb3JnL1pHX1IvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDItMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLzAiLCIvb3JnLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvT3JnX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDMvMCIsIi9vcmcvb2JqZWN0cy9Sb2xlLzciLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvNyIsIi9zdG9yZS9DR19SL0NHLVItMDMvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlX1N0YXR1cy83IiwiL3N0b3JlL29iamVjdHMvRm9ybV9TdGF0dXMvNyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLzciLCIvc3RvcmUvb2JqZWN0cy9QYXJ0TGl2ZS83IiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVBdXRob3JpdHkvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wMi8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wMy8wIiwiL3N0b3JlL0NHX0YvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgifQ==','2018-03-26 11:44:21.512587'),('ja9tgxit26q7igpxjjt3dkc1uhhj5mks','ZTNjMzA0MGM0ZmQwY2YxODJiN2RiNDM4ODgyY2E5NDI1NDA4ODM2ODp7ImNvZGUiOiJPSURDQyIsIl9hdXRoX3VzZXJfaWQiOiI1Y2QzMWQ1Ny1jZTk0LTQ4ZTItOWU0Ni1mOWZkODk0ZDdmNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdhOTkxZDRlMWE0Y2E1MTZmOTRkYTExYjhiZTRiNDlhOGQ3NTIyZDAiLCJVc2VyX3VzZXJuYW1lIjoic3VtbWVyIiwiVXNlcl9pZCI6IjVjZDMxZDU3LWNlOTQtNDhlMi05ZTQ2LWY5ZmQ4OTRkN2Y1OCIsIlVzZXJfQXZhdGFyIjoiL2ltYWdlcy9hdmF0YXIvc3VtbWVyLXN1bW1lci5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudF9Db24vIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDUtMDIvIiwiL29yZy9aR19GL1pHLUYtMDMtMDIvIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0NvbXBhbnkvIiwiL29yZy9aR19GL1pHLUYtMDUtMDEvIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDRPcmRlci8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAxLyIsIi9zdG9yZS9vYmplY3RzL1BhcnRMaXZlLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlDb21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAzLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTA0LyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAzLyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMk9yZGVyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9EZXBhcnRtZW50LyIsIi9zdG9yZS9DR19SLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNU9yZGVyLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLyIsIi9vcmcvb2JqZWN0cy9BY2NvdW50X1R5cGUvIiwiL2dlbmVyYWwvaW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9Sb2xlLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLyIsIi9zdG9yZS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvIiwiL29yZy8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9zdG9yZS9DR19ULyIsIi9nZW5lcmFsL21lbnUvIiwiL29yZy9aR19SL1pHLVItMDItMDEvIiwiL29yZy9aR19GL1pHLUYtMDEtMDQvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8iLCIvb3JnL1pHX0YvIiwiL3N0b3JlL29iamVjdHMvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA5T3JkZXIvIiwiL29yZy9aR19SLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTA0LyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAxLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLyIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLyIsIi9vcmcvb2JqZWN0cy9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAzLyIsIi9nZW5lcmFsL29iamVjdHMvIiwiL29yZy9aR19SL1pHLVItMDEtMDMvIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvIiwiL29yZy9aR19GL1pHLUYtMDgtMDQvIiwiL29yZy9aR19GL1pHLUYtMDEtMDEvIiwiL29yZy9vYmplY3RzL1VzZXIvIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvIiwiL3N0b3JlL0NHX0YvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnQvIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwN09yZGVyLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTA0LyIsIi9vcmcvb2JqZWN0cy8iLCIvZ2VuZXJhbC8iLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMi8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMS8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8iLCIvc3RvcmUvU3RvcmVfQ1JVRF9JbnRlcmZhY2UvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVfU3RhdHVzLyIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLyIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvb3JnL1pHX0YvWkctRi0wNC0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLzciLCIvb3JnL1pHX0YvWkctRi0wNy0wMS8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLzAiLCIvb3JnL1pHX0YvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8wIiwiL29yZy9PcmdfQ1JVRF9JbnRlcmZhY2UvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMi8wIiwiL3N0b3JlL29iamVjdHMvMCIsIi9zdG9yZS9DR19SL0NHLVItMDEvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvb3JnL1pHX0YvWkctRi0wMy0wMi8wIiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9nZW5lcmFsL2ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDEtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvMCIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLzAiLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLzciLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL3N0b3JlL1N0b3JlX0NSVURfSW50ZXJmYWNlLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci83IiwiL29yZy9aR19SL1pHLVItMDQtMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmUvNyIsIi9vcmcvWkdfRi9aRy1GLTA2LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZU1lbnUvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8wIiwiL29yZy9vYmplY3RzLzAiLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8wIiwiL29yZy9aR19SL1pHLVItMDItMDQvMCIsIi9nZW5lcmFsL21lbnUvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01lc3NhZ2UvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvZ2VuZXJhbC8wIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvc3RvcmUvMCIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvbi83IiwiL29yZy9aR19SL1pHLVItMDItMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA2LTAxLzAiLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC83IiwiL3N0b3JlL29iamVjdHMvU3RvcmVGb3JtLzciLCIvb3JnL29iamVjdHMvVXNlci83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOU9yZGVyLzciLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8wIiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvb2JqZWN0cy9Db21wYW55LzciLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8wIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8wIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX0RlcGFydG1lbnQvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciLCIvc3RvcmUvQ0dfUi8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eURlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDNPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNU9yZGVyLzciLCIvb3JnL1pHX1IvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDItMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLzAiLCIvb3JnLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvT3JnX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDMvMCIsIi9vcmcvb2JqZWN0cy9Sb2xlLzciLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvNyIsIi9zdG9yZS9DR19SL0NHLVItMDMvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlX1N0YXR1cy83IiwiL3N0b3JlL29iamVjdHMvRm9ybV9TdGF0dXMvNyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLzciLCIvc3RvcmUvb2JqZWN0cy9QYXJ0TGl2ZS83IiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVBdXRob3JpdHkvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTA0LzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wMi8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wMy8wIiwiL3N0b3JlL0NHX0YvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-26 11:43:36.267637'),('o6o3jro2sz2bxu71duqf8ciduwe4r4da','NGI1NzFlMDE5YzM2MTlmOTAzNDUwYTJhMWJlNTBmMDQ0MTRkNGI1OTp7ImNvZGUiOiJYT0NHVyIsIl9hdXRoX3VzZXJfaWQiOiI3M2NiZTRmOS1jMDI4LTQ5MjktYWRkMS0xZGU4MGQ0NTIyYjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNhMDU0OWRhOGFlYmE5M2Y5Y2QwN2FlOTQ1NDM1NmNhNWY1N2JhN2IiLCJVc2VyX3VzZXJuYW1lIjoiQWRtaW5fMDEiLCJVc2VyX2lkIjoiNzNjYmU0ZjktYzAyOC00OTI5LWFkZDEtMWRlODBkNDUyMmI0IiwiVXNlcl9BdmF0YXIiOiIvaW1hZ2VzL2F2YXRhci9BZG1pbl8wMS5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL1pHX1IvWkctUi0wNC0wMS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMy8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMy8iLCIvb3JnL29iamVjdHMvIiwiL3N0b3JlL29iamVjdHMvU3RvcmUvIiwiL2dlbmVyYWwvbWVudS8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMy8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5RGVwYXJ0bWVudC8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlTWVudS8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LyIsIi9zdG9yZS9DR19SL0NHLVItMDIvIiwiL29yZy9aR19SL1pHLVItMDItMDMvIiwiL29yZy9aR19GL1pHLUYtMDMtMDIvIiwiL29yZy9aR19GL1pHLUYtMDItMDIvIiwiL29yZy9aR19GL1pHLUYtMDgtMDQvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL29yZy9aR19GL1pHLUYtMDItMDQvIiwiL29yZy9aR19SL1pHLVItMDItMDEvIiwiL29yZy9aR19GL1pHLUYtMDEtMDEvIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX1JvbGUvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDItMDMvIiwiL29yZy9aR19GL1pHLUYtMDItMDEvIiwiL2dlbmVyYWwvb2JqZWN0cy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDdPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Um9sZS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8iLCIvZ2VuZXJhbC8iLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci8iLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8iLCIvc3RvcmUvQ0dfRi8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDRPcmRlci8iLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUF1dGhvcml0eS8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA4T3JkZXIvIiwiL29yZy9aR19SL1pHLVItMDQtMDQvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVfU3RhdHVzLyIsIi9zdG9yZS9DR19SLyIsIi9vcmcvb2JqZWN0cy9Vc2VyLyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLyIsIi9vcmcvWkdfRi8iLCIvb3JnL29iamVjdHMvQ29tcGFueS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci8iLCIvb3JnL29iamVjdHMvUm9sZV9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Q29tcGFueS8iLCIvc3RvcmUvb2JqZWN0cy8iLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9nZW5lcmFsL2ludGVyZmFjZS8iLCIvc3RvcmUvIiwiL29yZy9aR19GL1pHLUYtMDYtMDMvIiwiL29yZy9aR19SL1pHLVItMDItMDQvIiwiL3N0b3JlL29iamVjdHMvRm9ybV9TdGF0dXMvIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvIiwiL29yZy9aR19GL1pHLUYtMDEtMDIvIiwiL29yZy9aR19GL1pHLUYtMDYtMDIvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLyIsIi9vcmcvWkdfUi9aRy1SLTAxLTAzLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTA0LyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLyIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50LyIsIi9zdG9yZS9DR19SL0NHLVItMDEvIiwiL29yZy9aR19GL1pHLUYtMDctMDEvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVVzZXIvIiwiL3N0b3JlL1N0b3JlX0NSVURfSW50ZXJmYWNlLyIsIi9nZW5lcmFsL29iamVjdHMvTWVzc2FnZS8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLyIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50X0Nvbi8iLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLyIsIi9vcmcvIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvIiwiL29yZy9aR19GL1pHLUYtMDMtMDMvIiwiL29yZy9PcmdfQ1JVRF9JbnRlcmZhY2UvIiwiL29yZy9aR19GL1pHLUYtMDQtMDMvIiwiL29yZy9aR19GL1pHLUYtMDUtMDIvIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvIiwiL29yZy9aR19GL1pHLUYtMDctMDIvIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAzT3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDYtMDEvIiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8iLCIvb3JnL1pHX1IvWkctUi0wNC0wMi8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm0vIiwiL29yZy9aR19SLyIsIi9vcmcvb2JqZWN0cy9Sb2xlLyIsIi9zdG9yZS9DR19ULyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAyLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvc3RvcmUvQ0dfVC9TdG9yZV8wMDhPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDctMDEvMCIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLzciLCIvb3JnL29iamVjdHMvQWNjb3VudF9UeXBlLzciLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb25QYXJ0TGl2ZS83IiwiL29yZy9aR19GL1pHLUYtMDEtMDMvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDYtMDEvMCIsIi9nZW5lcmFsL29iamVjdHMvTWVzc2FnZS83IiwiL29yZy9aR19GL1pHLUYtMDUtMDEvMCIsIi9vcmcvWkdfUi9aRy1SLTA0LTAyLzAiLCIvZ2VuZXJhbC8wIiwiL29yZy9aR19SL1pHLVItMDMtMDEvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8wIiwiL3N0b3JlL0NHX1QvMCIsIi9zdG9yZS9vYmplY3RzL1BhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDUtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm0vNyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LzciLCIvc3RvcmUvQ0dfRi8wIiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX1JvbGUvNyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVNZW51LzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTA4LTAzLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUludGVyZmFjZS83IiwiL2dlbmVyYWwvaW50ZXJmYWNlLzAiLCIvc3RvcmUvQ0dfUi9DRy1SLTA0LzAiLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Q29tcGFueS83IiwiL29yZy9aR19GL1pHLUYtMDItMDMvMCIsIi9vcmcvWkdfUi9aRy1SLTAxLTAzLzAiLCIvb3JnL1pHX1IvWkctUi0wMi0wMS8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvMCIsIi9vcmcvWkdfUi8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvNyIsIi9vcmcvWkdfRi9aRy1GLTAxLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmVfU3RhdHVzLzciLCIvb3JnLzAiLCIvb3JnL29iamVjdHMvQ29tcGFueS83IiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfRi9aRy1GLTA2LTA0LzAiLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wMS8wIiwiL29yZy9aR19GLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDRPcmRlci83IiwiL2dlbmVyYWwvb2JqZWN0cy8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDQvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwN09yZGVyLzciLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8wIiwiL29yZy9aR19SL1pHLVItMDQtMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA3LTAyLzAiLCIvb3JnL29iamVjdHMvUm9sZS83IiwiL29yZy9vYmplY3RzLzAiLCIvc3RvcmUvU3RvcmVfSW50ZXJmYWNlLzAiLCIvb3JnL1pHX1IvWkctUi0wMi0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvWkdfRi9aRy1GLTA1LTAyLzAiLCIvb3JnL09yZ19DUlVEX0ludGVyZmFjZS8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLzAiLCIvZ2VuZXJhbC9vYmplY3RzL01vZHVsZUF1dGhvcml0eS83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvNyIsIi9vcmcvb2JqZWN0cy9EZXBhcnRtZW50X0Nvbi83IiwiL3N0b3JlLzAiLCIvc3RvcmUvQ0dfUi9DRy1SLTAyLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci83IiwiL29yZy9aR19GL1pHLUYtMDEtMDQvMCIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvb3JnL29iamVjdHMvVXNlci83IiwiL29yZy9aR19GL1pHLUYtMDMtMDEvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMk9yZGVyLzciLCIvZ2VuZXJhbC9tZW51LzAiLCIvc3RvcmUvU3RvcmVfQ1JVRF9JbnRlcmZhY2UvMCIsIi9vcmcvWkdfUi9aRy1SLTA0LTAxLzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC83IiwiL29yZy9aR19GL1pHLUYtMDItMDEvMCIsIi9zdG9yZS9vYmplY3RzL01vZHVsZUludGVyZmFjZS8wIiwiL29yZy9aR19SL1pHLVItMDQtMDMvMCIsIi9vcmcvT3JnX0ludGVyZmFjZS8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmUvNyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAxLzAiLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8wIiwiL3N0b3JlL29iamVjdHMvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL3N0b3JlL0NHX1IvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLzciXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiIxIiwid2Vic2l0ZV90aXRsZSI6IkVudGVycHJpc2UgRWNvc3lzdGVtIn0=','2018-03-29 00:36:45.967312'),('phvgn7lonovikicccpjfz83z8qcwjkcg','MWVjNmI2ZTQxNWEyMGNmYzZmYzYwYTkyM2M5MzJhOWIzZDUwN2Q3Yjp7ImNvZGUiOiJTVFdDVCIsIl9hdXRoX3VzZXJfaWQiOiI3M2NiZTRmOS1jMDI4LTQ5MjktYWRkMS0xZGU4MGQ0NTIyYjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNhMDU0OWRhOGFlYmE5M2Y5Y2QwN2FlOTQ1NDM1NmNhNWY1N2JhN2IiLCJVc2VyX3VzZXJuYW1lIjoiQWRtaW5fMDEiLCJVc2VyX2lkIjoiNzNjYmU0ZjktYzAyOC00OTI5LWFkZDEtMWRlODBkNDUyMmI0IiwiVXNlcl9BdmF0YXIiOiIvaW1hZ2VzL2F2YXRhci9BZG1pbl8wMS5qcGciLCJBdXRob3JpdHlfbGlzdCI6WyIvb3JnL29iamVjdHMvVXNlci8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5RGVwYXJ0bWVudC8iLCIvZ2VuZXJhbC9vYmplY3RzL01lc3NhZ2UvIiwiL29yZy9aR19GL1pHLUYtMDctMDEvIiwiL29yZy9aR19GL1pHLUYtMDYtMDIvIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLyIsIi9zdG9yZS9vYmplY3RzL0Zvcm1fU3RhdHVzLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAxLyIsIi9zdG9yZS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wMS8iLCIvb3JnL09yZ19JbnRlcmZhY2UvIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLyIsIi9nZW5lcmFsL21lbnUvIiwiL29yZy9aR19GL1pHLUYtMDUtMDMvIiwiL3N0b3JlL0NHX1IvIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvIiwiL29yZy9aR19SL1pHLVItMDQtMDIvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAzT3JkZXIvIiwiL29yZy9aR19GL1pHLUYtMDYtMDQvIiwiL29yZy9aR19GL1pHLUYtMDctMDIvIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL29yZy9aR19GL1pHLUYtMDMtMDEvIiwiL29yZy9aR19GL1pHLUYtMDItMDEvIiwiL29yZy9vYmplY3RzL0FjY291bnRfVHlwZS8iLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8iLCIvb3JnL1pHX0YvWkctRi0wNi0wMS8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDVPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVNZW51LyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Sb2xlLyIsIi9zdG9yZS9DR19SL0NHLVItMDEvIiwiL29yZy9aR19GL1pHLUYtMDItMDMvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8iLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5Q29tcGFueS8iLCIvb3JnL1pHX0YvWkctRi0wNS0wMS8iLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8iLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC8iLCIvb3JnL1pHX0YvWkctRi0wMi0wMi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wNC8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDdPcmRlci8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUZvcm1Db25QYXJ0TGl2ZS8iLCIvb3JnL1pHX0YvWkctRi0wMS0wMi8iLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8iLCIvb3JnL1pHX1IvWkctUi0wMy0wMS8iLCIvb3JnL1pHX0YvWkctRi0wMy0wMy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDFPcmRlci8iLCIvb3JnL1pHX0YvIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvIiwiL3N0b3JlL1N0b3JlX0NSVURfSW50ZXJmYWNlLyIsIi9vcmcvWkdfRi9aRy1GLTA0LTAyLyIsIi9zdG9yZS9TdG9yZV9JbnRlcmZhY2UvIiwiL3N0b3JlL29iamVjdHMvIiwiL29yZy9aR19SL1pHLVItMDQtMDQvIiwiL29yZy9aR19GL1pHLUYtMDEtMDMvIiwiL29yZy9aR19GL1pHLUYtMDYtMDMvIiwiL29yZy9aR19GL1pHLUYtMDQtMDMvIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDAyT3JkZXIvIiwiL29yZy9vYmplY3RzL0NvbXBhbnkvIiwiL3N0b3JlL0NHX1IvQ0ctUi0wMi8iLCIvb3JnL29iamVjdHMvUm9sZS8iLCIvb3JnL29iamVjdHMvRGVwYXJ0bWVudC8iLCIvc3RvcmUvQ0dfRi8iLCIvc3RvcmUvQ0dfVC8iLCIvZ2VuZXJhbC8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMy8iLCIvb3JnL1pHX1IvWkctUi0wMi0wMi8iLCIvb3JnL1pHX0YvWkctRi0wOC0wMy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci8iLCIvb3JnL29iamVjdHMvIiwiL29yZy9aR19GL1pHLUYtMDctMDQvIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGUvIiwiL29yZy9aR19SL1pHLVItMDItMDEvIiwiL29yZy9aR19GL1pHLUYtMDUtMDQvIiwiL3N0b3JlL29iamVjdHMvU3RvcmVGb3JtLyIsIi9vcmcvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvIiwiL2dlbmVyYWwvb2JqZWN0cy8iLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDZPcmRlci8iLCIvc3RvcmUvQ0dfUi9DRy1SLTAzLyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwNE9yZGVyLyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uLyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LyIsIi9vcmcvWkdfRi9aRy1GLTAxLTA0LyIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LyIsIi9vcmcvWkdfUi9aRy1SLTAyLTA0LyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLyIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLyIsIi9vcmcvIiwiL2dlbmVyYWwvaW50ZXJmYWNlLyIsIi9vcmcvb2JqZWN0cy9Sb2xlX0Nvbl9EZXBhcnRtZW50LyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwOE9yZGVyLyIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlVc2VyLyIsIi9vcmcvWkdfUi8iLCIvc3RvcmUvb2JqZWN0cy9TdG9yZUNvblBhcnRMaXZlLyJdLCJBdXRob3JpdHlfTk9fbGlzdCI6WyIvb3JnL1pHX1IvWkctUi0wMi0wNC8wIiwiL29yZy9aR19GL1pHLUYtMDMtMDQvMCIsIi9vcmcvb2JqZWN0cy9Sb2xlLzciLCIvb3JnL1pHX1IvWkctUi0wNC0wMS8wIiwiL29yZy9aR19SL1pHLVItMDItMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAxLTAzLzAiLCIvb3JnLzAiLCIvc3RvcmUvb2JqZWN0cy9TdG9yZV9TdGF0dXMvNyIsIi9vcmcvWkdfRi9aRy1GLTA4LTAyLzAiLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDhPcmRlci83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wMy8wIiwiL3N0b3JlL0NHX1QvMCIsIi9vcmcvb2JqZWN0cy9BdXRob3JpdHlEZXBhcnRtZW50LzciLCIvb3JnL1pHX0YvWkctRi0wNi0wNC8wIiwiL3N0b3JlL29iamVjdHMvRm9ybV9TdGF0dXMvNyIsIi9vcmcvWkdfRi8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDEvMCIsIi9zdG9yZS9DR19SLzAiLCIvb3JnL1pHX1IvWkctUi0wNC0wNC8wIiwiL2dlbmVyYWwvb2JqZWN0cy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA2T3JkZXIvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlLzciLCIvb3JnL1pHX0YvWkctRi0wMi0wMS8wIiwiL2dlbmVyYWwvb2JqZWN0cy9Nb2R1bGVJbnRlcmZhY2UvNyIsIi9vcmcvb2JqZWN0cy9Vc2VyX0Nvbl9Db21wYW55LzciLCIvZ2VuZXJhbC9tZW51LzAiLCIvb3JnL29iamVjdHMvQXV0aG9yaXR5VXNlci83IiwiL3N0b3JlL0NHX1IvQ0ctUi0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eVJvbGUvNyIsIi9vcmcvb2JqZWN0cy8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDIvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlQXV0aG9yaXR5LzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDJPcmRlci83IiwiL29yZy9vYmplY3RzL0FjY291bnRfVHlwZS83IiwiL3N0b3JlL1N0b3JlX0ludGVyZmFjZS8wIiwiL3N0b3JlL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL09yZ19JbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTAyLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wMi8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnQvNyIsIi9zdG9yZS9DR19UL1N0b3JlXzAwMU9yZGVyLzciLCIvc3RvcmUvMCIsIi9zdG9yZS9DR19UL1N0b3JlXzAwM09yZGVyLzciLCIvc3RvcmUvQ0dfVC9TdG9yZV8wMDlPcmRlci83IiwiL29yZy9vYmplY3RzL1VzZXJfQ29uX1JvbGUvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlQ29uUGFydExpdmUvNyIsIi9vcmcvWkdfRi9aRy1GLTA1LTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMi8wIiwiL3N0b3JlL29iamVjdHMvUGFydExpdmUvNyIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybUNvblBhcnRMaXZlLzciLCIvb3JnL1pHX0YvWkctRi0wMS0wMi8wIiwiL3N0b3JlL29iamVjdHMvU3RvcmVDb24vNyIsIi9vcmcvWkdfUi9aRy1SLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNi0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDgtMDQvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlTWVudS83IiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA0T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAzLzAiLCIvc3RvcmUvU3RvcmVfQ1JVRF9JbnRlcmZhY2UvMCIsIi9vcmcvWkdfRi9aRy1GLTA3LTAxLzAiLCIvb3JnL29iamVjdHMvVXNlcl9Db25fRGVwYXJ0bWVudC83IiwiL29yZy9aR19GL1pHLUYtMDctMDIvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAyLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wNC8wIiwiL29yZy9vYmplY3RzL0RlcGFydG1lbnRfQ29uLzciLCIvb3JnL1pHX0YvWkctRi0wNy0wNC8wIiwiL29yZy9vYmplY3RzL1JvbGVfQ29uX0RlcGFydG1lbnQvNyIsIi9vcmcvWkdfUi9aRy1SLTAyLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wMS8wIiwiL29yZy9vYmplY3RzL0NvbXBhbnkvNyIsIi9nZW5lcmFsLzAiLCIvb3JnL1pHX0YvWkctRi0wNC0wNC8wIiwiL29yZy9vYmplY3RzL0F1dGhvcml0eUNvbXBhbnkvNyIsIi9vcmcvWkdfRi9aRy1GLTAzLTAxLzAiLCIvb3JnL1pHX0YvWkctRi0wNS0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA1T3JkZXIvNyIsIi9zdG9yZS9vYmplY3RzLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wNC8wIiwiL2dlbmVyYWwvb2JqZWN0cy9NZXNzYWdlLzciLCIvc3RvcmUvQ0dfUi9DRy1SLTAxLzAiLCIvb3JnL29iamVjdHMvTW9kdWxlSW50ZXJmYWNlLzAiLCIvb3JnL29iamVjdHMvVXNlci83IiwiL29yZy9aR19GL1pHLUYtMDYtMDEvMCIsIi9zdG9yZS9DR19SL0NHLVItMDIvMCIsIi9vcmcvT3JnX0NSVURfSW50ZXJmYWNlLzAiLCIvb3JnL1pHX0YvWkctRi0wMi0wMy8wIiwiL3N0b3JlL0NHX1QvU3RvcmVfMDA3T3JkZXIvNyIsIi9vcmcvWkdfUi9aRy1SLTA0LTAzLzAiLCIvb3JnL1pHX0YvWkctRi0wMS0wNC8wIiwiL3N0b3JlL0NHX0YvMCIsIi9nZW5lcmFsL29iamVjdHMvTW9kdWxlLzciLCIvb3JnL1pHX1IvMCIsIi9nZW5lcmFsL2ludGVyZmFjZS8wIiwiL29yZy9aR19SL1pHLVItMDQtMDIvMCIsIi9zdG9yZS9vYmplY3RzL1N0b3JlRm9ybS83IiwiL29yZy9aR19GL1pHLUYtMDgtMDMvMCIsIi9vcmcvWkdfRi9aRy1GLTA0LTAzLzAiLCIvb3JnL1pHX1IvWkctUi0wMS0wMy8wIiwiL29yZy9aR19GL1pHLUYtMDQtMDEvMCIsIi9vcmcvWkdfRi9aRy1GLTAzLTAzLzAiXSwiQ29tcGFueV9pZCI6IjNhMjgyZjkyLTA5Y2QtNGVlMi1iMWMwLTRhNGE3ZWIyOGRhMiIsIkNvbXBhbnlfTmFtZSI6Ilx1OGZjOFx1OGZlYVx1NGZlMVx1NjA2Zlx1NjI4MFx1NjcyZlx1NjcwOVx1OTY1MFx1NTE2Y1x1NTNmOCggXHU3YWQ5XHU3MGI5XHU3YmExXHU3NDA2ICkiLCJBY2NvdW50X1R5cGUiOiJcdTdhZDlcdTcwYjlcdTdiYTFcdTc0MDZcdTU0NTgiLCJ3ZWJzaXRlX3RpdGxlIjoiRW50ZXJwcmlzZSBFY29zeXN0ZW0ifQ==','2018-03-28 08:25:01.137355');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flow_node`
--

DROP TABLE IF EXISTS `flow_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flow_node` (
  `id` char(32) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flow_node`
--

LOCK TABLES `flow_node` WRITE;
/*!40000 ALTER TABLE `flow_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `flow_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_message`
--

DROP TABLE IF EXISTS `general_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_message` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_message`
--

LOCK TABLES `general_message` WRITE;
/*!40000 ALTER TABLE `general_message` DISABLE KEYS */;
INSERT INTO `general_message` VALUES ('0cd476c588a442eead33e9d8644f8a60','005','该用户没有权限!'),('22cab46f8fde417b8f836a85adc881ce','006','未知错误!'),('3ee25a1ab1fe497eaf9021c6b9affe18','004','查询数据错误!'),('608039d956b24ffb9b52d6b9fa7b76c0','003','修改数据错误!'),('6b41917c74a64c8a86295205d5233822','001','添加数据错误!'),('a43c32d3e03143bc9a48dd30301b042b','002','删除数据错误!');
/*!40000 ALTER TABLE `general_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_module`
--

DROP TABLE IF EXISTS `general_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_module` (
  `id` char(32) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `APPName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_module`
--

LOCK TABLES `general_module` WRITE;
/*!40000 ALTER TABLE `general_module` DISABLE KEYS */;
INSERT INTO `general_module` VALUES ('0bdbb194df574d2fa6e15694285d863d','检验模块','checkout'),('114c915d2bab417a83a73f0850e007b4','制造模块','manufacture'),('1fd8304b236c4e0c95e012ad2c27062b','权限设置','permissions'),('334c3d9f5ae2408b8ff8821bfaeac52d','模块管理','module_manage'),('4bae57855762437d9bc652e26d5825eb','组织机构','org'),('4c18ba0ecff1412798f650ae70200310','ients','ients'),('7864ae87f3174977819af102e4893715','日常模块','daily'),('91304130bff24d06af0e4992ab7531bf','采购模块','procurement'),('a0345971750c48f9b3938df74094b9b5','仓管模块','store'),('b41a29669b93417da4aad3c2cbb47aeb','通用模块','general'),('b9d8387c028b4fe980f0160bd4929b5f','人资模块','hr'),('c8053af551b542fca212f73aa46974e0','外协模块','outsource'),('cdab02daceec415ba0ed557876d0b781','计划模块','plan');
/*!40000 ALTER TABLE `general_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_moduleauthority`
--

DROP TABLE IF EXISTS `general_moduleauthority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_moduleauthority` (
  `id` char(32) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mark` varchar(255) NOT NULL,
  `Note` varchar(255) NOT NULL,
  `Module_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `general_moduleauthority_Module_id_fe55d215_fk_general_module_id` (`Module_id`),
  CONSTRAINT `general_moduleauthority_Module_id_fe55d215_fk_general_module_id` FOREIGN KEY (`Module_id`) REFERENCES `general_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_moduleauthority`
--

LOCK TABLES `general_moduleauthority` WRITE;
/*!40000 ALTER TABLE `general_moduleauthority` DISABLE KEYS */;
INSERT INTO `general_moduleauthority` VALUES ('e406398a5a4b425a8af06cbd18945ba1','权限02','代号02','说明02','b41a29669b93417da4aad3c2cbb47aeb');
/*!40000 ALTER TABLE `general_moduleauthority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_moduleinterface`
--

DROP TABLE IF EXISTS `general_moduleinterface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_moduleinterface` (
  `id` char(32) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Json_Request` varchar(255) NOT NULL,
  `Json_Success` varchar(255) NOT NULL,
  `Note` varchar(255) NOT NULL,
  `Module_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `general_moduleinterface_Module_id_9004c0ab_fk_general_module_id` (`Module_id`),
  CONSTRAINT `general_moduleinterface_Module_id_9004c0ab_fk_general_module_id` FOREIGN KEY (`Module_id`) REFERENCES `general_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_moduleinterface`
--

LOCK TABLES `general_moduleinterface` WRITE;
/*!40000 ALTER TABLE `general_moduleinterface` DISABLE KEYS */;
INSERT INTO `general_moduleinterface` VALUES ('027dbd9e4e07449d914f37296403ba14','删除某单据','/store/CG_T_Json/','{\'action\': \'CG-T-01-02\',\'content\': {\'uuid\': uuid}}','{\"status\":true,\"message\":\"删除数据StoreForm\",\"errors\":null,\"content\":{}}','删除某单据','a0345971750c48f9b3938df74094b9b5'),('0f840e74fe6c4f82848d1d29823b058c','添加store_PartLive物料','/store/action_store_json/','{\"table\": \"PartLive\", \"action\": 1000, \"content\": {\"QR_Code\":QR_Code,\"Part_id\":Part_id}}','{\"status\":true,\"message\":\"添加数据PartLive\",\"errors\":null,\"content\":{}}','添加一条数据','a0345971750c48f9b3938df74094b9b5'),('184f793a0df74630a306f8ffc1620cf3','获取store_PartLive物料','/store/action_store_json/','{\"table\": \"PartLive\", \"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取Store\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取所有PartLive表数据','a0345971750c48f9b3938df74094b9b5'),('272b1260f21a4bb9a5a36571fb8b274c','修改单据中某条物料','/store/CG_T_Json/','{\'action\': \'CG-T-02-03\',\'content\': {\'uuid\': uuid,\'Number\': Number,\'StoreForm_id\': StoreForm_id,\'PartLive_id\': PartLive_id}}','{\"status\":true,\"message\":\"修改数据StoreFormConPartLive\",\"errors\":null,\"content\":{}}','修改单据中某条物料','a0345971750c48f9b3938df74094b9b5'),('33059908aff44c8eac4f1ab1e7a75f07','获取store_Store_Status状态','/store/action_store_json/','{\"table\": \"Store_Status\", \"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取Store_Status\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取所有Store_Status表数据','a0345971750c48f9b3938df74094b9b5'),('3a144d460ba5492990842b5cb2b73216','删除store_Store_Status状态','/store/action_store_json/','{\"table\": \"Store_Status\", \"action\": 2000, \"content\": {\"uuid\":uuid}}','{\"status\":true,\"message\":\"删除数据Store_Status\",\"errors\":null,\"content\":{}}','删除某条数据','a0345971750c48f9b3938df74094b9b5'),('3a6515159fbb4bc8b574c4ce985c5dd5','删除store_StoreConPartLive','/store/action_store_json/','{\"table\": \"StoreConPartLive\", \"action\": 2000, \"content\": {\"uuid\":uuid}}','{\"status\":true,\"message\":\"删除数据StoreConPartLive\",\"errors\":null,\"content\":{}}','删除某条数据','a0345971750c48f9b3938df74094b9b5'),('3f63ecd85b124b148c1e816b0f79bc44','添加store_StoreConPartLive','/store/action_store_json/','{\"table\": \"Store\", \"action\": 1000, \"content\": {\"Number\":Number,\"PartLive_id\":PartLive_id}}','{\"status\":true,\"message\":\"添加数据StoreConPartLive\",\"errors\":null,\"content\":{}}','添加一条数据','a0345971750c48f9b3938df74094b9b5'),('40187b16d53841a2ba5d81f09590b657','添加单据','/store/CG_T_Json/','{\'action\': \'CG-T-01-01\',\'content\': {\'Name\': Name,\'Status__NO\': \'001\',\'OriginStore_id\': OriginStore_id,\'TargetStore_id\': TargetStore_id}}','{\"status\":true,\"message\":\"添加数据StoreForm\",\"errors\":null,\"content\":{}}','添加单据','a0345971750c48f9b3938df74094b9b5'),('42772e5ceef3498a8a1d7dd25db60921','查看某条单据具体物料','/store/CG_T_Json/','{\'action\': \'CG-T-02-04\',\'content\': {\'StoreForm_id\': StoreForm_id}}','{\"status\":true,\"message\":\"获取StoreFormConPartLive\",\"errors\":null,\"content\":{\"title\":[\"id\",\"StoreForm_id\",\"表单名称\",\"表单类型\",\"所属仓库\",\"PartLive_id\",\"二维码\",\"物料\",\"数量\"],\"value\":[ [ ],[ ],...]}}','查看某条单据具体物料','a0345971750c48f9b3938df74094b9b5'),('467eb851646243a2866a454f526d719e','入临时库操作(单个)','/store/CG_F_Json/','{\'action\': \'CG-F-02-01\',\'Store_id\':Store_id,\'content\': {\'PartLive_id\': PartLive_id,\'Number\': Number}}','{\"status\":true,\"message\":0,\"errors\":null,\"content\":{}}','0:成功;1:不为数字;','a0345971750c48f9b3938df74094b9b5'),('4b2e4ebba2024c86be2b772f891cf667','收货操作','/store/CG_R_Json/','{\'action\':\'CG_R_01\',\'Store_id\':Store_id,\'content\':{\'StoreForm_id\':StoreForm_id}}','{\"status\":true,\"message\":[0,0,0,......],\"errors\":null,\"content\":{}}','0:成功;1:不为数字;','a0345971750c48f9b3938df74094b9b5'),('52b08407ce5a4e1ab5c7681d01dedd42','获取store_StoreConPartLive','/store/action_store_json/','{\"table\": \"StoreConPartLive\", \"store_type\":store_type,\"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取StoreConPartLive\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','(\"node\",\"all\",\"all_leaf_node\")','a0345971750c48f9b3938df74094b9b5'),('576cffbc819d46168ea0772c2a9bb884','出库操作(单个)','/store/CG_F_Json/','{\'action\': \'CG-F-01-02\',\'Store_id\':Store_id,\'content\': {\'PartLive_id\': PartLive_id,\'Number\': Number}}','{\"status\":true,\"message\":0,\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('5a25e316d96e46d3a87863f9b18d0052','获取store_StoreCon仓库关系','/store/action_store_json/','{\"table\": \"StoreCon\", \"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取StoreCon\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取所有StoreCon表数据','a0345971750c48f9b3938df74094b9b5'),('5aecad2806834b03af5df9956cb8caf1','出货操作','/store/CG_R_Json/','{\'action\':\'CG_R_04\',\'Store_id\':Store_id,\'content\':{\'StoreForm_id\':StoreForm_id}}','{\"status\":true,\"message\":[0,0,0,......],\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('5d83cd7936e84e649ae8d2ab6d469e1d','获取Company公司','/org/action_org_json/','{\"table\": \"Company\", \"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取Company\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取所有Company表数据','4bae57855762437d9bc652e26d5825eb'),('6862574d90be4709bca9768ef729c1f7','获取临时库存数据','/store/CG_F_Json/','{\'action\': \'CG-F-02-03\',\'Store_id\':Store_id,\'content\': {\'store_type\':\'node_store\'}}','{\"status\":true,\"message\":\"获取StoreConPartLive\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取某仓库所有临时库存数据','a0345971750c48f9b3938df74094b9b5'),('7bde0ce460454d4ab30e7c56625867d9','添加store_Store仓库','/store/action_store_json/','{\"table\": \"Store\", \"action\": 1000, \"content\": {\"Name\":Name,\"Tell\":Tell,\"Address\":Address,\"Company_id\":Company_id,\"Status_id\":Status_id}}','{\"status\":true,\"message\":\"添加数据Store\",\"errors\":null,\"content\":{}}','添加一条数据','a0345971750c48f9b3938df74094b9b5'),('7face14d3aa64f36848b1a4d198108eb','修改某条单据','/store/CG_T_Json/','{\'action\': \'CG-T-01-03\',\'content\': {\'uuid\': uuid,\'Name\': Name,\'Status__NO\': Status__NO,\'OriginStore_id\': OriginStore_id,\'TargetStore_id\': TargetStore_id}','{\"status\":true,\"message\":\"修改数据StoreForm\",\"errors\":null,\"content\":{}}','Status__NO:01,02,03,...,09','a0345971750c48f9b3938df74094b9b5'),('81ab11d4549a449f8d361400232217d1','搜索store_PartLive物料','/store/action_store_json/','{\"table\": \"PartLive\", \"action\": 4000, \"content\": {\"QR_Code\":\"\",\"Part_id\":\"\"}}','{\"status\":true,\"message\":\"获取PartLive\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','搜索数据','a0345971750c48f9b3938df74094b9b5'),('8560d48032e9484cbf05e95dde7a7ee2','获取库存数据','/store/CG_F_Json/','{\'action\': \'CG-F-01-03\',\'Store_id\':Store_id,\'content\': {\'store_type\':\'node_store\'}}','{\"status\":true,\"message\":\"获取StoreConPartLive\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取某仓库所有库存数据','a0345971750c48f9b3938df74094b9b5'),('90a7a2f3e502451eb44ece7308a3977e','退货操作','/store/CG_R_Json/','{\'action\':\'CG_R_02\',\'Store_id\':Store_id,\'content\': {\'StoreForm_id\':StoreForm_id}}','{\"status\":true,\"message\":[0,0,0,......],\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('9eefebfcc283482298114e516b513539','为某条单据添加物料','/store/CG_T_Json/','{\'action\': \'CG-T-02-01\',\'content\': {\'Number\': Number,\'StoreForm_id\': StoreForm_id,\'PartLive_id\': PartLive_id}}','{\"status\":true,\"message\":\"添加数据StoreFormConPartLive\",\"errors\":null,\"content\":{}}','为某条单据添加物料','a0345971750c48f9b3938df74094b9b5'),('b0c78be7a40e4d00abcada773ccfe898','获取store_Store仓库','/store/action_store_json/','{\"table\": \"Store\", \"action\": 4000, \"content\": {}}','{\"status\":true,\"message\":\"获取Store\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','获取所有Store表数据','a0345971750c48f9b3938df74094b9b5'),('b9a9e880657d4cc7ab896457463ef105','编辑store_Store仓库','/store/action_store_json/','{\"table\": \"Store\", \"action\": 3000, \"content\": {\"uuid\":uuid,\"Name\":Name,\"Tell\":Tell,\"Address\":Address,\"Company_id\":Company_id,\"Status_id\":Status_id}}','{\"status\":true,\"message\":\"编辑数据Store\",\"errors\":null,\"content\":{}}','编辑某条数据','a0345971750c48f9b3938df74094b9b5'),('bae3e9da7e074240b5bcefff3cf52ddb','编辑store_Store_Status状态','/store/action_store_json/','{\"table\": \"Store_Status\", \"action\": 3000, \"content\": {\"uuid\":uuid,\"NO\":NO,\"Name\":Name}}','{\"status\":true,\"message\":\"编辑数据Store_Status\",\"errors\":null,\"content\":{}}','编辑某条数据','a0345971750c48f9b3938df74094b9b5'),('c5184ab21abb4685ba7e0f2a0409b64b','获取某仓库单据','/store/CG_T_Json/','{\'action\': \'CG-T-01-04\',\'content\': {\'Status__NO\': Status__NO,\'Store_id\': Store_id}}','{\"status\":true,\"message\":\"获取StoreForm\",\"errors\":null,\"content\":{\"title\":[\"id\",\"名称\",\"Status_id\",\"类型\",\"OriginStore_id\",\"仓库\",\"TargetStore_id\",\"目标仓库\",\"创建时间\",\"最后修改时间\"],\"value\":[ [ ],[ ],...] }}','Status__NO:01,02,03,...,09','a0345971750c48f9b3938df74094b9b5'),('c580a446a68647a08522bef05950b13a','添加store_Store_Status状态','/store/action_store_json/','{\"table\": \"Store_Status\", \"action\": 1000, \"content\": {\"NO\":NO,\"Name\":Name}}','{\"status\":true,\"message\":\"添加数据Store_Status\",\"errors\":null,\"content\":{}}','添加一条数据','a0345971750c48f9b3938df74094b9b5'),('cc751bfe940c4f6ca224317caceedee9','出临时库操作(单个)','/store/CG_F_Json/','{\'action\': \'CG-F-02-02\',\'Store_id\':Store_id,\'content\': {\'PartLive_id\': PartLive_id,\'Number\': Number}}','{\"status\":true,\"message\":0,\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('cd2f653e6ce84676b0101c446abca574','编辑store_PartLive物料','/store/action_store_json/','{\"table\": \"PartLive\", \"action\": 3000, \"content\": {\"uuid\":uuid,\"QR_Code\":QR_Code,\"Part_id\":Part_id}}','{\"status\":true,\"message\":\"编辑数据PartLive\",\"errors\":null,\"content\":{}}','编辑某条数据','a0345971750c48f9b3938df74094b9b5'),('d52dcb5847994e148f7fde34b9a9016f','删除store_PartLive物料','/store/action_store_json/','{\"table\": \"PartLive\", \"action\": 2000, \"content\": {\"uuid\":uuid}}','{\"status\":true,\"message\":\"删除数据PartLive\",\"errors\":null,\"content\":{}}','删除某条数据','a0345971750c48f9b3938df74094b9b5'),('d782280c41694dc4b8ab143fc8a55cd2','搜索store_StoreConPartLive','/store/action_store_json/','{\"table\": \"StoreConPartLive\", \"store_type\":store_type,\"action\": 4000, \"content\": {\"Store_id\":\"\",\"PartLive__QR_Code\":\"\",\"PartLive__Part__ItemNO\":\"\",\"PartLive__Part__Name\":\"\"}}','{\"status\":true,\"message\":\"获取StoreConPartLive\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','(\"node\",\"all\",\"all_leaf_node\")','a0345971750c48f9b3938df74094b9b5'),('d8f6b5a14cae4cdc97374f1f2de4ff36','删除store_StoreCon仓库关系','/store/action_store_json/','{\"table\": \"StoreCon\", \"action\": 2000, \"content\": {\"uuid\":uuid}}','{\"status\":true,\"message\":\"删除数据StoreCon\",\"errors\":null,\"content\":{}}','删除某条数据','a0345971750c48f9b3938df74094b9b5'),('e79a4654457b42eea3fa3021c75777e9','删除store_Store仓库','/store/action_store_json/','{\"table\": \"Store\", \"action\": 2000, \"content\": {\"uuid\":uuid}}','{\"status\":true,\"message\":\"删除数据Store\",\"errors\":null,\"content\":{}}','删除某条数据','a0345971750c48f9b3938df74094b9b5'),('e9303e543d1a45d3b918c941e8855d4d','入库操作(单个)','/store/CG_F_Json/','{\'action\': \'CG-F-01-01\',\'Store_id\':Store_id,\'content\': {\'PartLive_id\': PartLive_id,\'Number\': Number}}','{\"status\":true,\"message\":0,\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('e9dfeeae06094a7db8c6ac4d316300b9','入库操作','/store/CG_R_Json/','{\'action\':\'CG_R_03\',\'Store_id\':Store_id,\'content\': {\'StoreForm_id\':StoreForm_id}}','{\"status\":true,\"message\":[0,0,0,......],\"errors\":null,\"content\":{}}','0:成功;1:不为数字;2:数量不够;3:不存在;','a0345971750c48f9b3938df74094b9b5'),('ea7b3b92a9354d96b38b8eb3285656a5','删除单据中某条物料','/store/CG_T_Json/','{\'action\': \'CG-T-02-02\',\'content\': {\'uuid\': uuid}}','{\"status\":true,\"message\":\"删除数据StoreFormConPartLive\",\"errors\":null,\"content\":{}}','删除单据中某条物料','a0345971750c48f9b3938df74094b9b5'),('ebb800bbe8d5474f8e13db29a4703a73','编辑store_StoreConPartLive','/store/action_store_json/','{\"table\": \"Store\", \"action\": 3000, \"content\": {\"uuid\":uuid,\"Number\":Number,\"PartLive_id\":PartLive_id}}','{\"status\":true,\"message\":\"编辑数据StoreConPartLive\",\"errors\":null,\"content\":{}}','编辑某条数据','a0345971750c48f9b3938df74094b9b5'),('f345b7d4a99c4ba986e463eb4761f033','搜索store_Store仓库','/store/action_store_json/','{\"table\": \"Store\", \"action\": 4000, \"content\": {\"Name\":\"\",\"Tell\":\"\",\"Address\":\"\",\"Company_id\":\"\",\"Status_id\":\"\"}}','{\"status\":true,\"message\":\"获取Store\",\"errors\":null,\"content\":{\"title\":[],,\"value\":[]}}','搜索数据','a0345971750c48f9b3938df74094b9b5'),('faf0031f40684b8882b8c1b9cbeb25d6','test','/test/','{}','{}','it\'s a test','7864ae87f3174977819af102e4893715');
/*!40000 ALTER TABLE `general_moduleinterface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_modulemenu`
--

DROP TABLE IF EXISTS `general_modulemenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_modulemenu` (
  `id` char(32) NOT NULL,
  `Display_ICO` varchar(100) NOT NULL,
  `Display_Name` varchar(100) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Module_id` char(32) NOT NULL,
  `P_Menu_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `general_modulemenu_Module_id_587714ca_fk_general_module_id` (`Module_id`),
  KEY `general_modulemenu_P_Menu_id_1e313ef7_fk_general_modulemenu_id` (`P_Menu_id`),
  CONSTRAINT `general_modulemenu_Module_id_587714ca_fk_general_module_id` FOREIGN KEY (`Module_id`) REFERENCES `general_module` (`id`),
  CONSTRAINT `general_modulemenu_P_Menu_id_1e313ef7_fk_general_modulemenu_id` FOREIGN KEY (`P_Menu_id`) REFERENCES `general_modulemenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_modulemenu`
--

LOCK TABLES `general_modulemenu` WRITE;
/*!40000 ALTER TABLE `general_modulemenu` DISABLE KEYS */;
INSERT INTO `general_modulemenu` VALUES ('0092a4bcde4740629982770e559c04c6','icon-cog02','我的任务','/XXX','4c18ba0ecff1412798f650ae70200310','0092a4bcde4740629982770e559c04c6'),('05ac7d0366f048b68c7a472976ff9f31','icon-cog40','StoreFormConPartLive表','/store/objects/StoreFormConPartLive/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('086ae04deb2045bbbbbdd4dd728f5d0e','icon-cog35','StoreConPartLive表','/store/objects/StoreConPartLive/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('0989741e9a474f6794c8f0d27d8945ba','icon-cog92','组织机构-职能ZG-R','/org/ZG_R/','4bae57855762437d9bc652e26d5825eb','37c56e1e4af04ce9966db0a1335a4496'),('0bd39db3d01a482cb783a6c3f9d97154','icon-cog93','修改账户信息','/org/ZG_R/ZG-R-01-03/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('11b1811204f84d9db7e4f7d550bd4cb4','icon-cog63','入库03','/store/CG_R/CG-R-03/','a0345971750c48f9b3938df74094b9b5','a8e95fb6b3cc41a899ac3442a311d707'),('1246ac27715f43bf899fbbdad7aa46bf','icon-cog75','删除用户权限','/org/ZG_F/ZG-F-04-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('1278e2fedc7e4cce8c785b5fc0ad7338','icon-cog110','添加岗位','/org/ZG_F/ZG-F-08-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('14baf766ff0d4d3bbe064231ed8a394c','icon-cog14','通用模块-菜单','/general/menu/','b41a29669b93417da4aad3c2cbb47aeb','2725a64e43fc453c8388c3e486ee4352'),('15601220709f4229be9fec4d80aefa71','icon-cog111','删除岗位','/org/ZG_F/ZG-F-08-02/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('1652ce4c1386430d8fb7cccd851b5205','icon-cog30','ModuleInterface表','/general/objects/ModuleInterface/','b41a29669b93417da4aad3c2cbb47aeb','949121e7c20343daa7eb46617764754e'),('1768350d98a04db5b82b79d0beddfd77','icon-cog79','删除用户角色','/org/ZG_F/ZG-F-05-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('1860efa4d9c0470e9d467b56b3263c9b','icon-cog01','主控制台','/','4c18ba0ecff1412798f650ae70200310','1860efa4d9c0470e9d467b56b3263c9b'),('18fa395ab4334cf09685143ee8ec57b6','icon-cog99','查看某部门用户','/org/ZG_F/ZG-F-07-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('196708a19b9c4e1095985f322e989d9a','icon-cog59','出库单','/store/CG_T/Store_008Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('1cbf189d43d84e2387a479c4f452cd07','icon-cog84','删除部门','/org/ZG_F/ZG-F-06-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('1f03b6587a1c48ed8a4cc586ac282025','icon-cog28','Module表','/general/objects/Module/','b41a29669b93417da4aad3c2cbb47aeb','949121e7c20343daa7eb46617764754e'),('2647c4d8b6e143088519ee26779acd21','icon-cog77','查看用户权限','/org/ZG_F/ZG-F-04-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('268ab1a4e00d451bae3c29d4617173d8','icon-cog39','StoreForm表','/store/objects/StoreForm/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('2725a64e43fc453c8388c3e486ee4352','icon-cog08','通用模块','/general/','b41a29669b93417da4aad3c2cbb47aeb','f197916850134aa09bed2cf3d9acb9c6'),('2866930271f84b5ea55f5469c96b1bf5','icon-cog05','我的功能','/XXX','4c18ba0ecff1412798f650ae70200310','2866930271f84b5ea55f5469c96b1bf5'),('2aa371065ab64a21a45de1d43604b22a','icon-cog04','我的项目','/XXX','4c18ba0ecff1412798f650ae70200310','2aa371065ab64a21a45de1d43604b22a'),('2bf52ef51aa14e52b6227e73d3e087d3','icon-cog24','组织机构-接口测试','/org/Org_Interface/','4bae57855762437d9bc652e26d5825eb','37c56e1e4af04ce9966db0a1335a4496'),('2f734569751b4ce2a18c94f97745305d','icon-cog50','general/ModuleInterface表(store)','/store/objects/ModuleInterface/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('3048acc3ef594ea98bf74673cbe89159','icon-cog87','添加组织机构','/org/ZG_F/ZG-F-01-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('35d1d25a44e044fc87e4764f7d59d351','icon-cog61','收货01','/store/CG_R/CG-R-01/','a0345971750c48f9b3938df74094b9b5','a8e95fb6b3cc41a899ac3442a311d707'),('37c56e1e4af04ce9966db0a1335a4496','icon-cog10','组织机构','/org/','4bae57855762437d9bc652e26d5825eb','78d8e0ea87e54950a8bb7c950f315f83'),('3be1e41c4252467cb1b6a62e55fbc329','icon-cog52','送货单','/store/CG_T/Store_001Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('3caefae55615471598d96e22091e7716','icon-cog51','general/ModuleInterface表(org)','/org/objects/ModuleInterface/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('4560e7f03c9e4c04b89c3917839ecb67','icon-cog43','Department_Con表','/org/objects/Department_Con/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('4611c69bac4f4dac83fdb7708c3a4a3e','icon-cog21','仓管模块-表单CG-T','/store/CG_T/','a0345971750c48f9b3938df74094b9b5','d71079b09baf45f4851a9732f89503d6'),('46181a64e31f45ff889d08f53c391af7','icon-cog29','ModuleMenu表','/general/objects/ModuleMenu/','b41a29669b93417da4aad3c2cbb47aeb','949121e7c20343daa7eb46617764754e'),('46874d154ddf4e819c75638f71b2c6c0','icon-cog22','组织机构-对象','/org/objects/','4bae57855762437d9bc652e26d5825eb','37c56e1e4af04ce9966db0a1335a4496'),('47516e3a68274ac381afc5e6dad728f8','icon-cog95','删除账户角色','/org/ZG_R/ZG-R-02-02/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('485676afda25488eb4a7ccc3d20a4b2a','icon-cog64','出货04','/store/CG_R/CG-R-04/','a0345971750c48f9b3938df74094b9b5','a8e95fb6b3cc41a899ac3442a311d707'),('498c71e64d344e478695fcf095847c4a','icon-cog44','Role表','/org/objects/Role/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('4afe34ed6e30461f9fa9a20af6860325','icon-cog16','仓管模块-对象','/store/objects/','0bdbb194df574d2fa6e15694285d863d','d71079b09baf45f4851a9732f89503d6'),('4c9c477494c44b50b095acf995267370','icon-cog55','退货单','/store/CG_T/Store_004Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('4d99821f6c8244769e18a7d9ebd4de30','icon-cog107','修改岗位部门','/org/ZG_R/ZG-R-04-03/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('506cf716545e4cb09673b3545b7bf8a4','icon-cog89','修改组织机构','/org/ZG_F/ZG-F-01-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('55ce107f53b24aa98041c943a2684436','icon-cog76','修改用户权限','/org/ZG_F/ZG-F-04-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('57cb0d6b62d64c3b893ead50b06b5cb5','icon-cog31','ModuleAuthority表','/general/objects/ModuleAuthority/','b41a29669b93417da4aad3c2cbb47aeb','949121e7c20343daa7eb46617764754e'),('5996c2f741804180930f6b3a95184845','icon-cog91','Account_Type表','/org/objects/Account_Type/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('5aba2009f4364908b50b6437c946bb85','icon-cog78','增加用户角色','/org/ZG_F/ZG-F-05-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('5af2294ce0fb40a4a4ec847dbb90afa2','icon-cog46','AuthorityCompany表','/org/objects/AuthorityCompany/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('5bdef5e0afde494f8ff270ab575244b0','icon-cog109','AuthorityDepartment表','/org/objects/AuthorityDepartment/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('60467c625d464df28a3dbaba906ced8d','icon-cog54','领货单','/store/CG_T/Store_003Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('60ac7d61f80c4c3595af4b11a1bb5ec7','icon-cog62','退货02','/store/CG_R/CG-R-02/','a0345971750c48f9b3938df74094b9b5','a8e95fb6b3cc41a899ac3442a311d707'),('615fe9e7abb44282902d1a0f408e2277','icon-cog101','添加某部门用户','/org/ZG_F/ZG-F-07-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('62ac68d2d99c428bb869de955bc2f1e1','icon-cog86','查看部门','/org/ZG_F/ZG-F-06-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('64cc4c269b6f4035ae9ff41a960fad0d','icon-cog73','查看角色权限','/org/ZG_F/ZG-F-03-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('6523d7a51e534c49aabccddb68deda20','icon-cog56','送料单','/store/CG_T/Store_005Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('67f4fc4c0c3d40ab979e5c9b1c42fc2e','icon-cog58','领料单','/store/CG_T/Store_007Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('6ac83662db1740a8960df3c60a4a31e3','icon-cog106','删除岗位部门','/org/ZG_R/ZG-R-04-02/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('6cb67bc829144b57aa02a874a82a29cd','icon-cog108','查看岗位部门','/org/ZG_R/ZG-R-04-04/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('74ebedaf02fb495f963c095adc0d23d6','icon-cog25','组织机构-功能ZG-F','/org/ZG_F/','4bae57855762437d9bc652e26d5825eb','37c56e1e4af04ce9966db0a1335a4496'),('78d8e0ea87e54950a8bb7c950f315f83','icon-cog07','系统设置','/XXX','4c18ba0ecff1412798f650ae70200310','78d8e0ea87e54950a8bb7c950f315f83'),('7a99d6bb05534c4c92b9daf9626840e3','icon-cog66','增加公司权限','/org/ZG_F/ZG-F-02-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('7fbc6f34c4184763811223bd29b89273','icon-cog33','Store表','/store/objects/Store/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('811d91bb4a104e46ad2cef6e4def864a','icon-cog68','修改公司权限','/org/ZG_F/ZG-F-02-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('87bfe5c7bd3b4f54905ce14efb5d7327','icon-cog03','我的签审','/XXX','4c18ba0ecff1412798f650ae70200310','87bfe5c7bd3b4f54905ce14efb5d7327'),('8adfae0191c344b0a2d0f3c544b90118','icon-cog14','通用模块-接口','/general/interface/','b41a29669b93417da4aad3c2cbb47aeb','2725a64e43fc453c8388c3e486ee4352'),('93516957be9e4f658b45e8df8ed19752','icon-cog41','Company表','/org/objects/Company/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('93813329673d42b59af6d69bea6276c7','icon-cog49','User_Con_Role表','/org/objects/User_Con_Role/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('949121e7c20343daa7eb46617764754e','icon-cog13','通用模块-对象','/general/objects/','b41a29669b93417da4aad3c2cbb47aeb','2725a64e43fc453c8388c3e486ee4352'),('951e0a29bc774f3e91c1214badfb5ce7','icon-cog113','查看岗位','/org/ZG_F/ZG-F-08-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('9702bfb9c18742fbaafc3b3ba749e7cf','icon-cog74','增加用户权限','/org/ZG_F/ZG-F-04-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('97d9bbeccc1a4f35b101725b88e86ca1','icon-cog104','添加用户','/org/ZG_R/ZG-R-03-01/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('9fe3354a11774a57b975a4e44c99d64b','icon-cog90','显示组织机构','/org/ZG_F/ZG-F-01-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('a6776ff1c85b49ed830fb493351de526','icon-cog42','Department表','/org/objects/Department/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('a69438628f264ca69f768ae379db80b0','icon-cog103','User_Con_Department表','/org/objects/User_Con_Department/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('a8e95fb6b3cc41a899ac3442a311d707','icon-cog20','仓管模块-职能CG-R','/store/CG_R/','a0345971750c48f9b3938df74094b9b5','d71079b09baf45f4851a9732f89503d6'),('a93db0e089404c9aa29d9e566de916a7','icon-cog102','User_Con_Company表','/org/objects/User_Con_Company/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('aa3803ebc81d47f294b16431bc94daa2','icon-cog18','仓管模块-接口测试','/store/Store_Interface/','a0345971750c48f9b3938df74094b9b5','d71079b09baf45f4851a9732f89503d6'),('ab3ac5d8b7eb4a1da3558a6cb5a3437d','icon-cog38','Form_Status表','/store/objects/Form_Status/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('acd2a0a50be5447e8e7bc512260df31c','icon-cog69','查看公司权限','/org/ZG_F/ZG-F-02-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('ad49d5b332c1493f8ff8f7f5426a6b70','icon-cog97','查看账户角色','/org/ZG_R/ZG-R-02-04/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('b0bb4c351d8942db8fc03d786e32556b','icon-cog60','盘库单','/store/CG_T/Store_009Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('b170a76e9d5c48c194ea849828b1ced2','icon-cog94','添加账户角色','/org/ZG_R/ZG-R-02-01/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('b292694902b6458a98921fe7d2fc7825','icon-cog53','收货单','/store/CG_T/Store_002Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e'),('b7b524c8c45a4ea3b5763d621b61f124','icon-cog47','AuthorityRole表','/org/objects/AuthorityRole/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('b8155272aafe4741a32ebd170820d092','icon-cog32','Message表','/general/objects/Message/','b41a29669b93417da4aad3c2cbb47aeb','949121e7c20343daa7eb46617764754e'),('bd94bf8bfb6b4b6684e93bc541114be2','icon-cog88','删除组织机构','/org/ZG_F/ZG-F-01-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('bf1396a216784368ac9d4e2fe870d3e5','icon-cog70','增加角色权限','/org/ZG_F/ZG-F-03-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('c8da2d6a1f6646d98f451a60cff7963a','icon-cog105','添加岗位部门','/org/ZG_R/ZG-R-04-01/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('cd04339202dc46ec9541a181ccf206ee','icon-cog48','AuthorityUser表','/org/objects/AuthorityUser/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('cd50de1217724f45a13e77eecf531315','icon-cog71','删除角色权限','/org/ZG_F/ZG-F-03-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('cd89ae768a0640b5a30852c36987b698','icon-cog72','修改角色权限','/org/ZG_F/ZG-F-03-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('d124cb1112254dffaa2a2d5f7f85e3d7','icon-cog45','User表','/org/objects/User/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('d1a16ef0ed654678879a61d7879db00c','icon-cog85','修改部门','/org/ZG_F/ZG-F-06-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('d1c96715b4714df18fc81aff7da3169d','icon-cog23','组织机构-接口管理','/org/Org_CRUD_Interface/','4bae57855762437d9bc652e26d5825eb','37c56e1e4af04ce9966db0a1335a4496'),('d71079b09baf45f4851a9732f89503d6','icon-cog09','仓管模块','/store/','a0345971750c48f9b3938df74094b9b5','f197916850134aa09bed2cf3d9acb9c6'),('dd2783780ac14e5d8c5ab42c7bbedd0d','icon-cog83','增加部门','/org/ZG_F/ZG-F-06-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('de0161c5214c4feabf362b4f5cf5c9db','icon-cog36','StoreCon表','/store/objects/StoreCon/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('e13e5d38c73f4cfb8848d385faf26be0','icon-cog34','PartLive表','/store/objects/PartLive/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('e399b7d027fd424baa77fbeb530dc5ff','icon-cog98','Role_Con_Department表','/org/objects/Role_Con_Department/','4bae57855762437d9bc652e26d5825eb','46874d154ddf4e819c75638f71b2c6c0'),('e7da154107624b5ba3683332bed81aec','icon-cog96','修改账户角色','/org/ZG_R/ZG-R-02-03/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('ebde8bada68a459dbad52bad0a0e8ff7','icon-cog82','添加组织机构','/org/ZG_F/ZG-F-01-01/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('eddf54bbadb44f15bdf0c14044501d6d','icon-cog37','Store_Status表','/store/objects/Store_Status/','a0345971750c48f9b3938df74094b9b5','4afe34ed6e30461f9fa9a20af6860325'),('effbf8307dc4429dbb143c5b10977d0f','icon-cog80','修改用户角色','/org/ZG_F/ZG-F-05-03/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('f197916850134aa09bed2cf3d9acb9c6','icon-cog06','我的模块','/XXX','4c18ba0ecff1412798f650ae70200310','f197916850134aa09bed2cf3d9acb9c6'),('f1ca153b8d4c40d38dd0a36f8e59feef','icon-cog67','删除公司权限','/org/ZG_F/ZG-F-02-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('f684ced0bb9d4c5eb7a4eaea585733e9','icon-cog81','查看用户角色','/org/ZG_F/ZG-F-05-04/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('fa073c9c5d1847b9821f1aad6c14e1fd','icon-cog17','仓管模块-接口管理','/store/Store_CRUD_Interface/','a0345971750c48f9b3938df74094b9b5','d71079b09baf45f4851a9732f89503d6'),('fa72fabe753b4a749a520d5f2a9f2782','icon-cog19','仓管模块-功能CG-F','/store/CG_F/','a0345971750c48f9b3938df74094b9b5','d71079b09baf45f4851a9732f89503d6'),('fe3ef4c8ce1d405ca7aae0d498e8b1fc','icon-cog112','修改岗位','/org/ZG_F/ZG-F-08-03/','4bae57855762437d9bc652e26d5825eb','0989741e9a474f6794c8f0d27d8945ba'),('ffadb49c6adf447bb81493719f668d6a','icon-cog100','删除某部门用户','/org/ZG_F/ZG-F-07-02/','4bae57855762437d9bc652e26d5825eb','74ebedaf02fb495f963c095adc0d23d6'),('ffc9ac1401e04428939e76f7dc2a38d8','icon-cog57','入库单','/store/CG_T/Store_006Order/','a0345971750c48f9b3938df74094b9b5','4611c69bac4f4dac83fdb7708c3a4a3e');
/*!40000 ALTER TABLE `general_modulemenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_account_type`
--

DROP TABLE IF EXISTS `org_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_account_type` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_account_type`
--

LOCK TABLES `org_account_type` WRITE;
/*!40000 ALTER TABLE `org_account_type` DISABLE KEYS */;
INSERT INTO `org_account_type` VALUES ('0abbf25d56bd4138b3e87a0ccbb4d4bb','0','普通用户'),('74126d9498b049729ce4533d68c31d93','2','企业'),('846968a858c74fed8a211c2b3046a345','1','站点管理员');
/*!40000 ALTER TABLE `org_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_authoritycompany`
--

DROP TABLE IF EXISTS `org_authoritycompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_authoritycompany` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Company_id` char(32) NOT NULL,
  `ModuleMenu_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_authoritycompany_Company_id_84d03cc4_fk_org_company_id` (`Company_id`),
  KEY `org_authoritycompany_ModuleMenu_id_117abeb7_fk_general_m` (`ModuleMenu_id`),
  CONSTRAINT `org_authoritycompany_Company_id_84d03cc4_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`),
  CONSTRAINT `org_authoritycompany_ModuleMenu_id_117abeb7_fk_general_m` FOREIGN KEY (`ModuleMenu_id`) REFERENCES `general_modulemenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_authoritycompany`
--

LOCK TABLES `org_authoritycompany` WRITE;
/*!40000 ALTER TABLE `org_authoritycompany` DISABLE KEYS */;
INSERT INTO `org_authoritycompany` VALUES ('01bf171942114215a651af66d81fae56','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','97d9bbeccc1a4f35b101725b88e86ca1'),('05533463a5a5467b8b451d282773dee7','0','3a282f9209cd4ee2b1c04a4a7eb28da2','7a99d6bb05534c4c92b9daf9626840e3'),('0564211269044106bea609e16b59fa1a','7','3a282f9209cd4ee2b1c04a4a7eb28da2','cd04339202dc46ec9541a181ccf206ee'),('0b5c801e92b5492d99183fe5c60ce2af','7','3a282f9209cd4ee2b1c04a4a7eb28da2','b7b524c8c45a4ea3b5763d621b61f124'),('0d9d6727f17c40538bda73556dac60b8','0','3a282f9209cd4ee2b1c04a4a7eb28da2','fa073c9c5d1847b9821f1aad6c14e1fd'),('0f2de3cf7c4e4e8ca74aca355b82a781','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','0989741e9a474f6794c8f0d27d8945ba'),('0fe69951e7644a07a7cba48106e36244','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','67f4fc4c0c3d40ab979e5c9b1c42fc2e'),('1117e0df7062410fab44c0b2d57982f5','0','3a282f9209cd4ee2b1c04a4a7eb28da2','485676afda25488eb4a7ccc3d20a4b2a'),('122324ac77d24a95b97d52946da14c98','0','3a282f9209cd4ee2b1c04a4a7eb28da2','cd50de1217724f45a13e77eecf531315'),('1243ac3f6e114a678841ef78c7154ff8','7','3a282f9209cd4ee2b1c04a4a7eb28da2','93516957be9e4f658b45e8df8ed19752'),('1542bfb989f9421bb34b42f199e08229','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','6ac83662db1740a8960df3c60a4a31e3'),('1606d6ddd34a47148f5cd5931928d1e0','7','3a282f9209cd4ee2b1c04a4a7eb28da2','eddf54bbadb44f15bdf0c14044501d6d'),('1704d6a4693c4480adf24752da44d9ef','0','3a282f9209cd4ee2b1c04a4a7eb28da2','c8da2d6a1f6646d98f451a60cff7963a'),('1721e99e6ad84100a3361148425489cc','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','47516e3a68274ac381afc5e6dad728f8'),('1a14b282df224564b23063914891e597','0','3a282f9209cd4ee2b1c04a4a7eb28da2','a8e95fb6b3cc41a899ac3442a311d707'),('1a3df991a65544c5bcb9b3b00d1bfb88','0','3a282f9209cd4ee2b1c04a4a7eb28da2','d1a16ef0ed654678879a61d7879db00c'),('1b17df34f88c4dbea0c6402e147cfbbc','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','bf1396a216784368ac9d4e2fe870d3e5'),('1b671028c21e4ae8a5b062dad48be843','7','3a282f9209cd4ee2b1c04a4a7eb28da2','4c9c477494c44b50b095acf995267370'),('1b79d27711d7431985274c3395d2a5b9','0','3a282f9209cd4ee2b1c04a4a7eb28da2','f684ced0bb9d4c5eb7a4eaea585733e9'),('1d6b5936600d405abbb94c97893fa514','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','effbf8307dc4429dbb143c5b10977d0f'),('1dd91237b03945019a8a64a4070b1769','7','3a282f9209cd4ee2b1c04a4a7eb28da2','e399b7d027fd424baa77fbeb530dc5ff'),('1e527ac3a89949ed843f4b74fc450e47','7','3a282f9209cd4ee2b1c04a4a7eb28da2','5996c2f741804180930f6b3a95184845'),('1f457c1dbef041e0a7aa7f6ce522a7b1','7','3a282f9209cd4ee2b1c04a4a7eb28da2','d124cb1112254dffaa2a2d5f7f85e3d7'),('1f80ed56973649e2af25270b7cc51687','7','3a282f9209cd4ee2b1c04a4a7eb28da2','b8155272aafe4741a32ebd170820d092'),('204f5b3936a8453083c7e9b874d9618e','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','1768350d98a04db5b82b79d0beddfd77'),('22947cd522d748098d5da7e5185fa4b9','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','d1a16ef0ed654678879a61d7879db00c'),('22b5a1f5c1db442e8ef8a6317d3ff337','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','1246ac27715f43bf899fbbdad7aa46bf'),('23e3bcb5b5cb4e279c9e1a11dab09b8f','0','3a282f9209cd4ee2b1c04a4a7eb28da2','60ac7d61f80c4c3595af4b11a1bb5ec7'),('246ddf933ff24989b20bafb408c0d1fc','0','3a282f9209cd4ee2b1c04a4a7eb28da2','14baf766ff0d4d3bbe064231ed8a394c'),('2486eaf847924c91b9825f38046daaff','0','3a282f9209cd4ee2b1c04a4a7eb28da2','dd2783780ac14e5d8c5ab42c7bbedd0d'),('2543a1648bfe4e78a2a7c27caec0ae7e','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','0bd39db3d01a482cb783a6c3f9d97154'),('2577bbdc2d944c0ba6bd0f88f7e5fe55','0','3a282f9209cd4ee2b1c04a4a7eb28da2','9fe3354a11774a57b975a4e44c99d64b'),('27b944d52cca4f928e3437a0f7a6859f','7','3a282f9209cd4ee2b1c04a4a7eb28da2','3be1e41c4252467cb1b6a62e55fbc329'),('2821b2aa73ee486087255c05b7f3c1cf','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','4611c69bac4f4dac83fdb7708c3a4a3e'),('2d14eef72e504c2c8e54365cc378ac49','7','3a282f9209cd4ee2b1c04a4a7eb28da2','e13e5d38c73f4cfb8848d385faf26be0'),('2dea12c95a804792acb82f7f34e8f874','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','2647c4d8b6e143088519ee26779acd21'),('2ef6d82ca4c94e2ab36f355f89942c44','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','d71079b09baf45f4851a9732f89503d6'),('2f1cfa90b0014a9abea37927068e906d','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','3be1e41c4252467cb1b6a62e55fbc329'),('339bd39cfb2f4a51a355627957266e73','7','3a282f9209cd4ee2b1c04a4a7eb28da2','5af2294ce0fb40a4a4ec847dbb90afa2'),('33b797d7f8e44bb1a0d11402a45bd40b','0','3a282f9209cd4ee2b1c04a4a7eb28da2','951e0a29bc774f3e91c1214badfb5ce7'),('33fe4f635dee4971b8347ab42dea4e10','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','ad49d5b332c1493f8ff8f7f5426a6b70'),('34bb36304c81479dadc80b4319d28625','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','f684ced0bb9d4c5eb7a4eaea585733e9'),('35a14acda00e4c78888895616f1a6a48','0','3a282f9209cd4ee2b1c04a4a7eb28da2','5aba2009f4364908b50b6437c946bb85'),('3893e938930244cc8382743197d1ed2e','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','b0bb4c351d8942db8fc03d786e32556b'),('38d80c48018e485bb48ea8fbf1c6c14d','7','3a282f9209cd4ee2b1c04a4a7eb28da2','ffc9ac1401e04428939e76f7dc2a38d8'),('396dc087abd14ae091b066b0b53a9275','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','b170a76e9d5c48c194ea849828b1ced2'),('39df0f27def14bea97ea0029b0157869','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','55ce107f53b24aa98041c943a2684436'),('3a2e796c5b374255bbd958161d9dbf11','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','615fe9e7abb44282902d1a0f408e2277'),('3d2664f41ddb46a98177cc711218f997','0','3a282f9209cd4ee2b1c04a4a7eb28da2','2f734569751b4ce2a18c94f97745305d'),('3e916aa3349040b89d2692b495e7a17f','7','3a282f9209cd4ee2b1c04a4a7eb28da2','05ac7d0366f048b68c7a472976ff9f31'),('3f03dd7dd01340c7aea04a5fcf619fef','0','3a282f9209cd4ee2b1c04a4a7eb28da2','15601220709f4229be9fec4d80aefa71'),('41774294ba554f9a8ed68eaa878f7c05','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','d1a16ef0ed654678879a61d7879db00c'),('42be5963780a402cad9e7ab77644f168','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','6cb67bc829144b57aa02a874a82a29cd'),('432e8c064aff497d9bbf9310f4bab13f','0','3a282f9209cd4ee2b1c04a4a7eb28da2','11b1811204f84d9db7e4f7d550bd4cb4'),('44364320a77a4a7f8921ef04f26682c7','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','18fa395ab4334cf09685143ee8ec57b6'),('454fd02917be44c889909afff5a8a424','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','b292694902b6458a98921fe7d2fc7825'),('47454056c5874f938862753ba9e72277','0','3a282f9209cd4ee2b1c04a4a7eb28da2','55ce107f53b24aa98041c943a2684436'),('476f8813d57341e9a57cb82dd8e0435f','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','64cc4c269b6f4035ae9ff41a960fad0d'),('4853ece37da64225af02f05dd0a742b9','0','3a282f9209cd4ee2b1c04a4a7eb28da2','e7da154107624b5ba3683332bed81aec'),('495e892c903f4b3da3daf14265ae1010','0','3a282f9209cd4ee2b1c04a4a7eb28da2','37c56e1e4af04ce9966db0a1335a4496'),('49d58a01387e4ef9b297b59d4769d8bc','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','506cf716545e4cb09673b3545b7bf8a4'),('4b0d84fb36a74695abf458268db1948e','7','3a282f9209cd4ee2b1c04a4a7eb28da2','57cb0d6b62d64c3b893ead50b06b5cb5'),('4c17ffa5c71a4e788b58ca456d33d01e','0','3a282f9209cd4ee2b1c04a4a7eb28da2','506cf716545e4cb09673b3545b7bf8a4'),('4e2f04a23e9141d69a51e507959fa896','0','3a282f9209cd4ee2b1c04a4a7eb28da2','3caefae55615471598d96e22091e7716'),('4f915365125d46dca0d3167c37e09d80','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','60ac7d61f80c4c3595af4b11a1bb5ec7'),('5421882098ce4a7c96ecaeb4cd49b16f','0','3a282f9209cd4ee2b1c04a4a7eb28da2','bf1396a216784368ac9d4e2fe870d3e5'),('545c66595eae4186b331d6d991839098','0','3a282f9209cd4ee2b1c04a4a7eb28da2','4afe34ed6e30461f9fa9a20af6860325'),('5461e6cb72bd44f0b0e995d8f525e10f','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','fe3ef4c8ce1d405ca7aae0d498e8b1fc'),('54e65af14abc44f1844f5bcf841dabe2','0','3a282f9209cd4ee2b1c04a4a7eb28da2','1cbf189d43d84e2387a479c4f452cd07'),('5661fa8f763b4e3a801cbdd4796d5033','0','3a282f9209cd4ee2b1c04a4a7eb28da2','2725a64e43fc453c8388c3e486ee4352'),('5a3d3559cfff46f4a0e373e61ea36603','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','ffadb49c6adf447bb81493719f668d6a'),('683d348ceebc42088e5235d36626e299','0','3a282f9209cd4ee2b1c04a4a7eb28da2','b170a76e9d5c48c194ea849828b1ced2'),('6ab98c39081e471484fb297b8b03a7fb','7','3a282f9209cd4ee2b1c04a4a7eb28da2','67f4fc4c0c3d40ab979e5c9b1c42fc2e'),('6c99218c17b64dfc9f5a17950646be40','7','3a282f9209cd4ee2b1c04a4a7eb28da2','de0161c5214c4feabf362b4f5cf5c9db'),('6df476093af542c99d6919896b760513','0','3a282f9209cd4ee2b1c04a4a7eb28da2','8adfae0191c344b0a2d0f3c544b90118'),('6e6e0d18211d41ec8239e6fc41579d91','7','3a282f9209cd4ee2b1c04a4a7eb28da2','5bdef5e0afde494f8ff270ab575244b0'),('71209257096b41c699e6fda5af7ec59f','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','37c56e1e4af04ce9966db0a1335a4496'),('7131304c1441459cb50eeefd57ccc484','0','3a282f9209cd4ee2b1c04a4a7eb28da2','ffadb49c6adf447bb81493719f668d6a'),('7174d0a0b7f74e55b4239aed51408d3f','0','3a282f9209cd4ee2b1c04a4a7eb28da2','3048acc3ef594ea98bf74673cbe89159'),('71ebaa19db6143699e68c2ce31ca5b6f','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','e7da154107624b5ba3683332bed81aec'),('745195571add443e820cbaf6af892541','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','485676afda25488eb4a7ccc3d20a4b2a'),('74778cf16c3c4f0093a8ef74123fab4e','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','c8da2d6a1f6646d98f451a60cff7963a'),('74dc2e551836429b9e35b71f4752e708','7','3a282f9209cd4ee2b1c04a4a7eb28da2','b292694902b6458a98921fe7d2fc7825'),('772e3abf15bb40549660c87bda89e7f0','0','3a282f9209cd4ee2b1c04a4a7eb28da2','18fa395ab4334cf09685143ee8ec57b6'),('78773821618d4dd6bca32739c10a29db','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','196708a19b9c4e1095985f322e989d9a'),('7881ed32c51a463cbb6d971e12ea4e26','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','ffc9ac1401e04428939e76f7dc2a38d8'),('78df18e8dd0248b794a0a1b7bf74080d','7','3a282f9209cd4ee2b1c04a4a7eb28da2','93813329673d42b59af6d69bea6276c7'),('79db979695974db7ab1f02c33bebb20b','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','dd2783780ac14e5d8c5ab42c7bbedd0d'),('7a45dd9774d4411887f41adc7364c28b','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','fa72fabe753b4a749a520d5f2a9f2782'),('7ca93160fd0642818e99c4a53ef520c4','0','3a282f9209cd4ee2b1c04a4a7eb28da2','2647c4d8b6e143088519ee26779acd21'),('7e8378fbdb74461ea1bfe4d8f9052c44','7','3a282f9209cd4ee2b1c04a4a7eb28da2','46181a64e31f45ff889d08f53c391af7'),('7f4022c48eac4b549dcb04fa1ff1dbbd','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','4d99821f6c8244769e18a7d9ebd4de30'),('7fe62d325a264c9e8fc51acfeaa4e5b9','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','3048acc3ef594ea98bf74673cbe89159'),('805f5241f75e4d48a36d9f7fdc5653fd','7','3a282f9209cd4ee2b1c04a4a7eb28da2','60467c625d464df28a3dbaba906ced8d'),('80ffbb5c43f9421e8bd219c87f8ccd53','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','4afe34ed6e30461f9fa9a20af6860325'),('83af874d589e4fa0a52ff4dc65164fa6','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','cd50de1217724f45a13e77eecf531315'),('878f2079742e4ac595d0aeac9ae48015','0','3a282f9209cd4ee2b1c04a4a7eb28da2','97d9bbeccc1a4f35b101725b88e86ca1'),('8d71d583573843709332e13af6526402','0','3a282f9209cd4ee2b1c04a4a7eb28da2','f1ca153b8d4c40d38dd0a36f8e59feef'),('8daa442cc78642d6a9158d44946aab2f','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','35d1d25a44e044fc87e4764f7d59d351'),('910b700c4def4e30b7b9a5da6d6c879c','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','9fe3354a11774a57b975a4e44c99d64b'),('91570dc1f68b411cb15b8c240af3322d','0','3a282f9209cd4ee2b1c04a4a7eb28da2','ad49d5b332c1493f8ff8f7f5426a6b70'),('94efa9fcfc4748a98d30de669c387584','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','74ebedaf02fb495f963c095adc0d23d6'),('975dedda2287427da482307f62f18411','7','3a282f9209cd4ee2b1c04a4a7eb28da2','086ae04deb2045bbbbbdd4dd728f5d0e'),('9c080e4aa5cf4ff8a696aafdb12f0095','0','3a282f9209cd4ee2b1c04a4a7eb28da2','6cb67bc829144b57aa02a874a82a29cd'),('9d37743dae1b4b328e16739d8b9ae7cd','0','3a282f9209cd4ee2b1c04a4a7eb28da2','fa72fabe753b4a749a520d5f2a9f2782'),('9e651b7aa48746d2b76bddde4394577a','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','9702bfb9c18742fbaafc3b3ba749e7cf'),('9e8dbd7ed1444cb492445cb5356f64ba','7','3a282f9209cd4ee2b1c04a4a7eb28da2','a69438628f264ca69f768ae379db80b0'),('a1c926eb134b4626b7e7c0deb3a6ae7f','0','3a282f9209cd4ee2b1c04a4a7eb28da2','effbf8307dc4429dbb143c5b10977d0f'),('a39a9d7a3a8648e2b9d4cf162b3f674b','0','3a282f9209cd4ee2b1c04a4a7eb28da2','1768350d98a04db5b82b79d0beddfd77'),('a763ad9368d542cc8dc3cc9130455d47','0','3a282f9209cd4ee2b1c04a4a7eb28da2','d1c96715b4714df18fc81aff7da3169d'),('a874ede370de441e852dcce5e5b8259b','0','3a282f9209cd4ee2b1c04a4a7eb28da2','9702bfb9c18742fbaafc3b3ba749e7cf'),('aae7c24d0bca4aa7bd73c2165965988e','0','3a282f9209cd4ee2b1c04a4a7eb28da2','1278e2fedc7e4cce8c785b5fc0ad7338'),('ab8789f467af473e920a3b5c67db5894','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','62ac68d2d99c428bb869de955bc2f1e1'),('aecd84c818b74e049c52a05b72b811ae','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','951e0a29bc774f3e91c1214badfb5ce7'),('af3e29f8fb2948b098eb712d9006227f','7','3a282f9209cd4ee2b1c04a4a7eb28da2','ab3ac5d8b7eb4a1da3558a6cb5a3437d'),('b1d66f5eb9be4b78a334e90647ba5ce8','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','1278e2fedc7e4cce8c785b5fc0ad7338'),('b26eb5160c664cccb14b04a50b357c73','7','3a282f9209cd4ee2b1c04a4a7eb28da2','1f03b6587a1c48ed8a4cc586ac282025'),('b6ddbbcf361446bda5d4840da38fceb4','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','60467c625d464df28a3dbaba906ced8d'),('b85310f5e57943e2b531680f7175f75e','7','3a282f9209cd4ee2b1c04a4a7eb28da2','6523d7a51e534c49aabccddb68deda20'),('b85e30d132f344f881bb0502c835448e','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','1cbf189d43d84e2387a479c4f452cd07'),('b95eb9324e184a3d939324c0976a5909','0','3a282f9209cd4ee2b1c04a4a7eb28da2','4d99821f6c8244769e18a7d9ebd4de30'),('b9c30e0aef6847e79bd5cf4bdf7a59a4','0','3a282f9209cd4ee2b1c04a4a7eb28da2','0989741e9a474f6794c8f0d27d8945ba'),('bb66508692ad4ebfbb6835435bb4b0e1','7','3a282f9209cd4ee2b1c04a4a7eb28da2','196708a19b9c4e1095985f322e989d9a'),('bbf1a6971452496680171bc7946cd5a2','0','3a282f9209cd4ee2b1c04a4a7eb28da2','acd2a0a50be5447e8e7bc512260df31c'),('bc2ea4e5e6f74b05b6d9000b826aa56c','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','bd94bf8bfb6b4b6684e93bc541114be2'),('bd4284e3efda4fb2b48790d50bff4c7c','0','3a282f9209cd4ee2b1c04a4a7eb28da2','6ac83662db1740a8960df3c60a4a31e3'),('bdfb377eee854de5acd55715473c366a','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','6523d7a51e534c49aabccddb68deda20'),('c45a3776da8b401899e99bd4049c9b23','0','3a282f9209cd4ee2b1c04a4a7eb28da2','64cc4c269b6f4035ae9ff41a960fad0d'),('c5962df0dfde4cb1bbf8c66c7198bb7e','0','3a282f9209cd4ee2b1c04a4a7eb28da2','74ebedaf02fb495f963c095adc0d23d6'),('c97ee1dff3324be0add3ffe86e1e205c','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','ebde8bada68a459dbad52bad0a0e8ff7'),('ca6629a28e4d4f01a56d7d8dec7b68cf','0','3a282f9209cd4ee2b1c04a4a7eb28da2','bd94bf8bfb6b4b6684e93bc541114be2'),('caeabb1d34e44152810838fcbc12aabd','7','3a282f9209cd4ee2b1c04a4a7eb28da2','268ab1a4e00d451bae3c29d4617173d8'),('cb0af84f41f847eeba33079961048458','0','3a282f9209cd4ee2b1c04a4a7eb28da2','811d91bb4a104e46ad2cef6e4def864a'),('cbc411f81a774936b168e5c39a393dd8','0','3a282f9209cd4ee2b1c04a4a7eb28da2','4611c69bac4f4dac83fdb7708c3a4a3e'),('cd53e63722c34f3fb5d07679ea6382a4','0','3a282f9209cd4ee2b1c04a4a7eb28da2','949121e7c20343daa7eb46617764754e'),('cdc5e4c7c5bf41a5a65e5ffcf87e8d64','7','3a282f9209cd4ee2b1c04a4a7eb28da2','7fbc6f34c4184763811223bd29b89273'),('d340356489a94193aded90bb323c050a','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','dd2783780ac14e5d8c5ab42c7bbedd0d'),('d9a04b8683f441f78d97aeaa47c55058','0','3a282f9209cd4ee2b1c04a4a7eb28da2','615fe9e7abb44282902d1a0f408e2277'),('db426b3100404901833dbac27c66ce1c','7','3a282f9209cd4ee2b1c04a4a7eb28da2','a6776ff1c85b49ed830fb493351de526'),('de0080acee504baf9f488f19e0788685','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','a8e95fb6b3cc41a899ac3442a311d707'),('dff442fb6c55402382838ce1f8be9627','0','3a282f9209cd4ee2b1c04a4a7eb28da2','d71079b09baf45f4851a9732f89503d6'),('e021fe3231b745b3bb591ce22965a974','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','15601220709f4229be9fec4d80aefa71'),('e2a62edaa9034cabbd2169056bafc983','0','3a282f9209cd4ee2b1c04a4a7eb28da2','fe3ef4c8ce1d405ca7aae0d498e8b1fc'),('e2ce07af565543a199109617afa8e858','0','3a282f9209cd4ee2b1c04a4a7eb28da2','2bf52ef51aa14e52b6227e73d3e087d3'),('e477252eaccf4864a98d1c01d65b7395','7','3a282f9209cd4ee2b1c04a4a7eb28da2','a93db0e089404c9aa29d9e566de916a7'),('e51b917ef8594e87a162548470b45235','7','3a282f9209cd4ee2b1c04a4a7eb28da2','4560e7f03c9e4c04b89c3917839ecb67'),('e596097a6b83497f8f409665e01e0ec1','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','62ac68d2d99c428bb869de955bc2f1e1'),('e8541bd454dd48dab13c7282f70761c1','0','3a282f9209cd4ee2b1c04a4a7eb28da2','46874d154ddf4e819c75638f71b2c6c0'),('e95cc62fe3c94435a48f4e6457f2e6b2','0','3a282f9209cd4ee2b1c04a4a7eb28da2','62ac68d2d99c428bb869de955bc2f1e1'),('ebb12e77e76a46998a31c0926e00697a','7','3a282f9209cd4ee2b1c04a4a7eb28da2','b0bb4c351d8942db8fc03d786e32556b'),('eeb296efa1304725a04d58630db9565b','7','3a282f9209cd4ee2b1c04a4a7eb28da2','498c71e64d344e478695fcf095847c4a'),('eef98652bca34bdeb2db916d44c1df53','0','3a282f9209cd4ee2b1c04a4a7eb28da2','cd89ae768a0640b5a30852c36987b698'),('ef8b5770b4e24a50bca48646ced4e1b0','0','3a282f9209cd4ee2b1c04a4a7eb28da2','0bd39db3d01a482cb783a6c3f9d97154'),('efdcff5b44d3437a9c54ea53aef63005','0','3a282f9209cd4ee2b1c04a4a7eb28da2','35d1d25a44e044fc87e4764f7d59d351'),('f2d976c97c2a4ff5a88ae883b31d9422','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','1cbf189d43d84e2387a479c4f452cd07'),('f3a8694b289e4d728842a1add0da8be5','7','3a282f9209cd4ee2b1c04a4a7eb28da2','1652ce4c1386430d8fb7cccd851b5205'),('f4a063d5effb4667b9d1573c4dd0b0a2','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','7fbc6f34c4184763811223bd29b89273'),('f4c7c98ab41f40f99d1586881154c4e9','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','cd89ae768a0640b5a30852c36987b698'),('f5ce7700ba37461fa815776d291ff46e','0','3a282f9209cd4ee2b1c04a4a7eb28da2','aa3803ebc81d47f294b16431bc94daa2'),('f9156dd26b1f44fe87a751bdd44ef9ba','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','11b1811204f84d9db7e4f7d550bd4cb4'),('fc54ec73591645e0b019317ca62c9439','0','3a282f9209cd4ee2b1c04a4a7eb28da2','47516e3a68274ac381afc5e6dad728f8'),('feba0f46508d4d07887b77570440435d','0','3a282f9209cd4ee2b1c04a4a7eb28da2','1246ac27715f43bf899fbbdad7aa46bf'),('ff4a73b9b4574b22943b9ad0bb67a9fa','7','447ca2ad52b24a39a8ec9d3a4ed0c8f4','4c9c477494c44b50b095acf995267370'),('ffc1fe2c0c7143c9be4050f8d2c12c9e','0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','5aba2009f4364908b50b6437c946bb85');
/*!40000 ALTER TABLE `org_authoritycompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_authoritydepartment`
--

DROP TABLE IF EXISTS `org_authoritydepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_authoritydepartment` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Department_id` char(32) NOT NULL,
  `ModuleMenu_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_authoritydepartm_Department_id_b236f4ec_fk_org_depar` (`Department_id`),
  KEY `org_authoritydepartm_ModuleMenu_id_45871a47_fk_general_m` (`ModuleMenu_id`),
  CONSTRAINT `org_authoritydepartm_Department_id_b236f4ec_fk_org_depar` FOREIGN KEY (`Department_id`) REFERENCES `org_department` (`id`),
  CONSTRAINT `org_authoritydepartm_ModuleMenu_id_45871a47_fk_general_m` FOREIGN KEY (`ModuleMenu_id`) REFERENCES `general_modulemenu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_authoritydepartment`
--

LOCK TABLES `org_authoritydepartment` WRITE;
/*!40000 ALTER TABLE `org_authoritydepartment` DISABLE KEYS */;
INSERT INTO `org_authoritydepartment` VALUES ('6660e9d495c84bcdb31fad13acd0322c','0','d1cb1c00fb594dbda0379255d559217d','2725a64e43fc453c8388c3e486ee4352'),('7fef1436cf824c2ca81ea86401d1bb4f','0','39aeea5ab5f448e3959e2420b386b88b','2725a64e43fc453c8388c3e486ee4352');
/*!40000 ALTER TABLE `org_authoritydepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_authorityrole`
--

DROP TABLE IF EXISTS `org_authorityrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_authorityrole` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `ModuleMenu_id` char(32) NOT NULL,
  `Role_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_authorityrole_ModuleMenu_id_6997091e_fk_general_m` (`ModuleMenu_id`),
  KEY `org_authorityrole_Role_id_caa35bc3_fk_org_role_id` (`Role_id`),
  CONSTRAINT `org_authorityrole_ModuleMenu_id_6997091e_fk_general_m` FOREIGN KEY (`ModuleMenu_id`) REFERENCES `general_modulemenu` (`id`),
  CONSTRAINT `org_authorityrole_Role_id_caa35bc3_fk_org_role_id` FOREIGN KEY (`Role_id`) REFERENCES `org_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_authorityrole`
--

LOCK TABLES `org_authorityrole` WRITE;
/*!40000 ALTER TABLE `org_authorityrole` DISABLE KEYS */;
INSERT INTO `org_authorityrole` VALUES ('01bf62bd5f6d429390d6c5df68ce5af0','0','fa72fabe753b4a749a520d5f2a9f2782','8fcddbe295f94bc0995a5aa93da5f70c'),('01fa2a4abf894964b0571e3e1fe6ce56','0','3caefae55615471598d96e22091e7716','35415614a8ad40faafac77377f486617'),('02b6f846a60042f7a01a4ab4326de771','7','eddf54bbadb44f15bdf0c14044501d6d','35415614a8ad40faafac77377f486617'),('0338bcbf2e3b4528b88771a5c69e66f4','0','fa72fabe753b4a749a520d5f2a9f2782','221de2dd68c34ce89326d3ab9e2ffe5c'),('08169ac7dca0415dbc28f39a212bcf59','0','ffadb49c6adf447bb81493719f668d6a','4c9185c9d80f403092eaf7a462072a46'),('0942fe5af246429f805708d0bb819c9c','0','6cb67bc829144b57aa02a874a82a29cd','35415614a8ad40faafac77377f486617'),('0b4cb0aa3ed74ff4a0f6e0f23f07409f','0','0989741e9a474f6794c8f0d27d8945ba','4c9185c9d80f403092eaf7a462072a46'),('0c85fe8b42654030aa8d1d5d48358d95','7','196708a19b9c4e1095985f322e989d9a','210ad7c04a8c42559f2fe86a7b07d882'),('0d3d8317caef407981a15f64c9c8b0ec','0','9702bfb9c18742fbaafc3b3ba749e7cf','4c9185c9d80f403092eaf7a462072a46'),('1040cf00c9e84296ab943ad87f44c215','7','4c9c477494c44b50b095acf995267370','35415614a8ad40faafac77377f486617'),('1056f8e93aa74449805f675ea931e7b0','0','ebde8bada68a459dbad52bad0a0e8ff7','35415614a8ad40faafac77377f486617'),('153cba450fa0483fa95969d51322839e','0','951e0a29bc774f3e91c1214badfb5ce7','35415614a8ad40faafac77377f486617'),('193bbd5a75564c33ae213b4a153231c9','7','1652ce4c1386430d8fb7cccd851b5205','35415614a8ad40faafac77377f486617'),('1ad47d36145043f69d9b3508be45c30e','0','8adfae0191c344b0a2d0f3c544b90118','35415614a8ad40faafac77377f486617'),('1c6e99d53ec941489edc658cd08b0efc','0','a8e95fb6b3cc41a899ac3442a311d707','210ad7c04a8c42559f2fe86a7b07d882'),('1ca356c811234b7fb7139080ee7f3e07','0','1246ac27715f43bf899fbbdad7aa46bf','35415614a8ad40faafac77377f486617'),('1d17810c29c0458ea1997bc079fb25da','7','1f03b6587a1c48ed8a4cc586ac282025','35415614a8ad40faafac77377f486617'),('1e2cf1b8643c4c1c8fb2c5eb9387f1b8','0','2725a64e43fc453c8388c3e486ee4352','35415614a8ad40faafac77377f486617'),('1f71de81491f4b4580b1118da5645545','0','55ce107f53b24aa98041c943a2684436','4c9185c9d80f403092eaf7a462072a46'),('20d78e7c3bcb497c8f123d5e430a11ee','0','64cc4c269b6f4035ae9ff41a960fad0d','35415614a8ad40faafac77377f486617'),('21667cebef274640b608a2116a02f3e1','7','67f4fc4c0c3d40ab979e5c9b1c42fc2e','35415614a8ad40faafac77377f486617'),('226ace081a4d4607916b25b5f5beb858','0','acd2a0a50be5447e8e7bc512260df31c','35415614a8ad40faafac77377f486617'),('22e949059b1b4be38acd6dbcea34044c','0','a8e95fb6b3cc41a899ac3442a311d707','35415614a8ad40faafac77377f486617'),('2324a17f752246c6808dbb2059ffd2bc','0','4611c69bac4f4dac83fdb7708c3a4a3e','bb9c4acea6614f7e8ed475954f34fba7'),('25cad151e4524152b21c73869f509d1e','0','bd94bf8bfb6b4b6684e93bc541114be2','35415614a8ad40faafac77377f486617'),('2836277991b14efab4ccd8a8f7b1378a','0','2725a64e43fc453c8388c3e486ee4352','6cd2cd869d804e8cb74932f58a87fa77'),('29e2d8fc5a3b4721b691301e35c6ca16','0','c8da2d6a1f6646d98f451a60cff7963a','35415614a8ad40faafac77377f486617'),('2ebed25f449a494fa29c8c7fac6715db','7','b0bb4c351d8942db8fc03d786e32556b','35415614a8ad40faafac77377f486617'),('2f2fa5169ec3464e96bfb915bdeb9732','0','d1c96715b4714df18fc81aff7da3169d','35415614a8ad40faafac77377f486617'),('305eff6d57804a83a311d8299d87a60e','7','ffc9ac1401e04428939e76f7dc2a38d8','35415614a8ad40faafac77377f486617'),('321a595d52794a5583c08bd7b378bbc7','7','4560e7f03c9e4c04b89c3917839ecb67','35415614a8ad40faafac77377f486617'),('34fefeaa3103465b992d4fcca6a843e0','0','35d1d25a44e044fc87e4764f7d59d351','210ad7c04a8c42559f2fe86a7b07d882'),('374a075cc2c14c6697a2e181680d76c9','0','c8da2d6a1f6646d98f451a60cff7963a','4c9185c9d80f403092eaf7a462072a46'),('3891ffe1ff5c41319edc1b8eb04d69a1','0','15601220709f4229be9fec4d80aefa71','4c9185c9d80f403092eaf7a462072a46'),('398e20c0fb844437bd3ab8f63755363d','0','949121e7c20343daa7eb46617764754e','7827fb27cffe428db095769bb90af6ea'),('39aa44f47f224f7d8f0e64d5565559b3','0','2f734569751b4ce2a18c94f97745305d','35415614a8ad40faafac77377f486617'),('39b63426c73e42199947fe82f95677c3','7','ffc9ac1401e04428939e76f7dc2a38d8','210ad7c04a8c42559f2fe86a7b07d882'),('3f645d8db8ea45fa90ae2a19e5c772a5','0','d71079b09baf45f4851a9732f89503d6','acdfd7accacd49449798a27d3438f4af'),('41512ce91fca4dea92f9a08e1d8eb874','0','6cb67bc829144b57aa02a874a82a29cd','4c9185c9d80f403092eaf7a462072a46'),('415300de2a5041a9abd3e74159f7cf32','7','b292694902b6458a98921fe7d2fc7825','210ad7c04a8c42559f2fe86a7b07d882'),('422890d90bcd491f8b144b92da216aca','7','6523d7a51e534c49aabccddb68deda20','210ad7c04a8c42559f2fe86a7b07d882'),('433fcb777f6f42129fd34a443fd9b9f3','0','11b1811204f84d9db7e4f7d550bd4cb4','210ad7c04a8c42559f2fe86a7b07d882'),('43ea4ff087c542f896aec324a1472bcd','7','a93db0e089404c9aa29d9e566de916a7','35415614a8ad40faafac77377f486617'),('44e141cd2e3b45d28b457a98d0aeb618','7','b292694902b6458a98921fe7d2fc7825','35415614a8ad40faafac77377f486617'),('46f4db2498d140139946c131d26cb60c','0','bf1396a216784368ac9d4e2fe870d3e5','35415614a8ad40faafac77377f486617'),('47208bf014e549eea2f41d702b62aaaf','0','1768350d98a04db5b82b79d0beddfd77','4c9185c9d80f403092eaf7a462072a46'),('48985bfbc0d64523953e31092c83ac91','7','3be1e41c4252467cb1b6a62e55fbc329','210ad7c04a8c42559f2fe86a7b07d882'),('4a9603c445434ad38f9dba2274b53aee','0','e7da154107624b5ba3683332bed81aec','4c9185c9d80f403092eaf7a462072a46'),('4b97dc8cace84f508faac1fd43682e44','7','93813329673d42b59af6d69bea6276c7','35415614a8ad40faafac77377f486617'),('4c1870427f7441409ba7554f21c46de2','0','4611c69bac4f4dac83fdb7708c3a4a3e','35415614a8ad40faafac77377f486617'),('4c7282d375c347b09b27c69708cdcbad','0','a8e95fb6b3cc41a899ac3442a311d707','8fcddbe295f94bc0995a5aa93da5f70c'),('4cbc6a19d09d45b6957c14c6fd5d840c','0','0989741e9a474f6794c8f0d27d8945ba','210ad7c04a8c42559f2fe86a7b07d882'),('4eee4d4147ce40b1a0f996bedb67fdbf','0','506cf716545e4cb09673b3545b7bf8a4','35415614a8ad40faafac77377f486617'),('4f764cc8afe24ddc99c5c42e6bc97a67','0','e7da154107624b5ba3683332bed81aec','35415614a8ad40faafac77377f486617'),('4fae255c6177425187d77638adb9cbc6','0','62ac68d2d99c428bb869de955bc2f1e1','35415614a8ad40faafac77377f486617'),('52c17f7fa3cc4fe48a990fabfd1b9572','7','196708a19b9c4e1095985f322e989d9a','35415614a8ad40faafac77377f486617'),('53c9f502eea34ca78e10d69c67569fcc','0','60ac7d61f80c4c3595af4b11a1bb5ec7','210ad7c04a8c42559f2fe86a7b07d882'),('53f25861d3054ba1973ec51ce78333aa','0','effbf8307dc4429dbb143c5b10977d0f','35415614a8ad40faafac77377f486617'),('542aa48442ac4e9bafeb61bb69f728d8','0','485676afda25488eb4a7ccc3d20a4b2a','210ad7c04a8c42559f2fe86a7b07d882'),('54e064a94d684b139303a11dda1cf919','0','62ac68d2d99c428bb869de955bc2f1e1','4c9185c9d80f403092eaf7a462072a46'),('555291c988374e7b94e2dafd4459acf8','0','6ac83662db1740a8960df3c60a4a31e3','35415614a8ad40faafac77377f486617'),('5862913519844e00b73607a4d67191cd','7','e13e5d38c73f4cfb8848d385faf26be0','35415614a8ad40faafac77377f486617'),('58f9da26f86f47c38d0d586a7b0fa2da','0','d71079b09baf45f4851a9732f89503d6','210ad7c04a8c42559f2fe86a7b07d882'),('59a3236298084be380febb4de089d49d','7','e399b7d027fd424baa77fbeb530dc5ff','35415614a8ad40faafac77377f486617'),('5a0d837b58c0405ba379c3a356ae0c54','0','55ce107f53b24aa98041c943a2684436','35415614a8ad40faafac77377f486617'),('5f39ff71f70f48ad889cff83333b5427','0','a8e95fb6b3cc41a899ac3442a311d707','bb9c4acea6614f7e8ed475954f34fba7'),('6a636b3e46f64f3490cf55d1cefea01e','7','5996c2f741804180930f6b3a95184845','35415614a8ad40faafac77377f486617'),('6b0d576cdfce4870ab1dd8218f29aa9b','0','0989741e9a474f6794c8f0d27d8945ba','35415614a8ad40faafac77377f486617'),('6bafd8139af54380b000a2c97c5123a6','7','b0bb4c351d8942db8fc03d786e32556b','210ad7c04a8c42559f2fe86a7b07d882'),('6c533604508041558b6188d6810dffce','7','b7b524c8c45a4ea3b5763d621b61f124','35415614a8ad40faafac77377f486617'),('6dff90b4b0b748579756a282f5e69a0f','0','d1a16ef0ed654678879a61d7879db00c','4c9185c9d80f403092eaf7a462072a46'),('6f173cc69fce48d0957800473b24c79a','0','6ac83662db1740a8960df3c60a4a31e3','4c9185c9d80f403092eaf7a462072a46'),('6f4403fb02334b5cb2a852681a0d298b','0','2bf52ef51aa14e52b6227e73d3e087d3','35415614a8ad40faafac77377f486617'),('6f6c85751bc44b3aab49a03d0748e353','0','811d91bb4a104e46ad2cef6e4def864a','35415614a8ad40faafac77377f486617'),('6f833a6161494cbab8c73ddd9b0ed508','0','1246ac27715f43bf899fbbdad7aa46bf','4c9185c9d80f403092eaf7a462072a46'),('716ae00172c948efab340a9235a7426b','0','18fa395ab4334cf09685143ee8ec57b6','4c9185c9d80f403092eaf7a462072a46'),('71eae28ea5964be88b3901a354420ba9','0','bf1396a216784368ac9d4e2fe870d3e5','4c9185c9d80f403092eaf7a462072a46'),('74e6fdec53e741c8a150ea95c146b71c','0','9fe3354a11774a57b975a4e44c99d64b','35415614a8ad40faafac77377f486617'),('75ed19427a51420fafa489d67c268830','0','ebde8bada68a459dbad52bad0a0e8ff7','4c9185c9d80f403092eaf7a462072a46'),('76a7ce127e284e749b27b1fbc6bed629','0','74ebedaf02fb495f963c095adc0d23d6','35415614a8ad40faafac77377f486617'),('778469b6878e4453925796bb3d0c9b52','0','7a99d6bb05534c4c92b9daf9626840e3','35415614a8ad40faafac77377f486617'),('787c5da638bc49ae86ddfcdbc0032120','0','d1a16ef0ed654678879a61d7879db00c','4c9185c9d80f403092eaf7a462072a46'),('795eb20f03b640828f47838d227fae7f','0','60ac7d61f80c4c3595af4b11a1bb5ec7','35415614a8ad40faafac77377f486617'),('79eb7d275af34a339d4e1bcc3d531a61','7','7fbc6f34c4184763811223bd29b89273','35415614a8ad40faafac77377f486617'),('7e4b19ef3a454eea82defa86202e0362','0','ffadb49c6adf447bb81493719f668d6a','35415614a8ad40faafac77377f486617'),('7e54ce03c8694cdcb925e53d50dd96de','0','cd89ae768a0640b5a30852c36987b698','4c9185c9d80f403092eaf7a462072a46'),('7ed298a18d044716804769fd8a9114a5','0','74ebedaf02fb495f963c095adc0d23d6','4c9185c9d80f403092eaf7a462072a46'),('7f9be06f9dc54176b27eb00eb3fe589a','0','4611c69bac4f4dac83fdb7708c3a4a3e','8fcddbe295f94bc0995a5aa93da5f70c'),('82360e9c02e645aa98e1710641a97d4a','7','ab3ac5d8b7eb4a1da3558a6cb5a3437d','35415614a8ad40faafac77377f486617'),('8292033d5049491ca6f8d2198a697c40','0','cd50de1217724f45a13e77eecf531315','4c9185c9d80f403092eaf7a462072a46'),('82be5157312b4e69b56927b5a4ad1a89','0','0bd39db3d01a482cb783a6c3f9d97154','35415614a8ad40faafac77377f486617'),('83474ac78dda401d9446f0f6ca9aa31a','0','4611c69bac4f4dac83fdb7708c3a4a3e','221de2dd68c34ce89326d3ab9e2ffe5c'),('84f278086fbb4689a43457b7ba946377','0','37c56e1e4af04ce9966db0a1335a4496','9a2d04f20b034d4389023c49704d89d6'),('8580df280f074d3ca5efd9ae6a2b287c','0','dd2783780ac14e5d8c5ab42c7bbedd0d','4c9185c9d80f403092eaf7a462072a46'),('868c605559bb4bb0a617555f1b07729c','0','b170a76e9d5c48c194ea849828b1ced2','35415614a8ad40faafac77377f486617'),('8beca0ab859e4778980477e06f999b07','7','93516957be9e4f658b45e8df8ed19752','35415614a8ad40faafac77377f486617'),('8df371e2b56548b090946005e728c05a','0','1cbf189d43d84e2387a479c4f452cd07','4c9185c9d80f403092eaf7a462072a46'),('8ec2ee2befa2436fb3e6d94376caef26','0','615fe9e7abb44282902d1a0f408e2277','4c9185c9d80f403092eaf7a462072a46'),('8eeca0506dc94a36abe0d7d9934d3066','0','fa073c9c5d1847b9821f1aad6c14e1fd','35415614a8ad40faafac77377f486617'),('901988719d8c4b07a5e22fc9230b2303','0','62ac68d2d99c428bb869de955bc2f1e1','4c9185c9d80f403092eaf7a462072a46'),('908ced371a254d51aac7541cf58262a6','0','97d9bbeccc1a4f35b101725b88e86ca1','4c9185c9d80f403092eaf7a462072a46'),('90b44eac35d94e16b3d380f824c9258d','7','a6776ff1c85b49ed830fb493351de526','35415614a8ad40faafac77377f486617'),('91dfc780d18a4a008faeafdc0ec37c36','0','1cbf189d43d84e2387a479c4f452cd07','4c9185c9d80f403092eaf7a462072a46'),('9282c490e92e4cd8adca978a2c3fe738','0','47516e3a68274ac381afc5e6dad728f8','4c9185c9d80f403092eaf7a462072a46'),('92b2c4680ea04ff68a131d9ebba902c5','0','fe3ef4c8ce1d405ca7aae0d498e8b1fc','4c9185c9d80f403092eaf7a462072a46'),('92badef3da83444dbf3ca972c422c463','0','4d99821f6c8244769e18a7d9ebd4de30','35415614a8ad40faafac77377f486617'),('9378361b85f642d7ab2ea4d3757caf2c','0','2647c4d8b6e143088519ee26779acd21','35415614a8ad40faafac77377f486617'),('93bde99e9de2453f9999843f22cbdff8','7','a69438628f264ca69f768ae379db80b0','35415614a8ad40faafac77377f486617'),('9788bf4f1584475e8787856dbce9ec3e','0','d1a16ef0ed654678879a61d7879db00c','35415614a8ad40faafac77377f486617'),('981647e780324c07bbba54fb923d4464','0','35d1d25a44e044fc87e4764f7d59d351','35415614a8ad40faafac77377f486617'),('98407132824b464eb0bd93687894c2cf','0','fa72fabe753b4a749a520d5f2a9f2782','210ad7c04a8c42559f2fe86a7b07d882'),('99af7ab5f5844f328a8818a85ea46366','0','b170a76e9d5c48c194ea849828b1ced2','4c9185c9d80f403092eaf7a462072a46'),('9a3c47f0f43b4720b413e7d585d431ab','0','949121e7c20343daa7eb46617764754e','35415614a8ad40faafac77377f486617'),('9b85aad7e76e42f5b045215f11332e7a','0','4d99821f6c8244769e18a7d9ebd4de30','4c9185c9d80f403092eaf7a462072a46'),('9bdd31b4d673425a8fa200c3aa990775','7','5af2294ce0fb40a4a4ec847dbb90afa2','35415614a8ad40faafac77377f486617'),('9d673dee4cb84ff88b39b4bbe4023ae7','0','3048acc3ef594ea98bf74673cbe89159','35415614a8ad40faafac77377f486617'),('9da7d70219de4d7c9a97e47b37525373','7','3be1e41c4252467cb1b6a62e55fbc329','35415614a8ad40faafac77377f486617'),('9e90cd12d01f47ed9b117e4190daecbf','0','5aba2009f4364908b50b6437c946bb85','4c9185c9d80f403092eaf7a462072a46'),('9fee91d41a30432f9270bb6ef592ef55','7','46181a64e31f45ff889d08f53c391af7','35415614a8ad40faafac77377f486617'),('9ff5161ba0fa4989b86dc3b5c549352d','0','d71079b09baf45f4851a9732f89503d6','35415614a8ad40faafac77377f486617'),('a0d69a4224284c2b94022983f72f7b67','7','60467c625d464df28a3dbaba906ced8d','210ad7c04a8c42559f2fe86a7b07d882'),('a180771ae5314994ae4a0ca5fd4776a2','0','15601220709f4229be9fec4d80aefa71','35415614a8ad40faafac77377f486617'),('a246cf155af94b24943ba9d0a92082ea','0','4afe34ed6e30461f9fa9a20af6860325','35415614a8ad40faafac77377f486617'),('a3ed6edddaba49329951cb9a92b41385','7','60467c625d464df28a3dbaba906ced8d','35415614a8ad40faafac77377f486617'),('a57d8b8f17a04107a68efb005f458669','7','67f4fc4c0c3d40ab979e5c9b1c42fc2e','210ad7c04a8c42559f2fe86a7b07d882'),('a9e62f55720a40d48ae2e795c239f326','0','46874d154ddf4e819c75638f71b2c6c0','35415614a8ad40faafac77377f486617'),('ac1a26bbeb79401db320a19be04e4ea1','0','1278e2fedc7e4cce8c785b5fc0ad7338','35415614a8ad40faafac77377f486617'),('b04e9259b6484a9c943cb8021eb98c65','0','9702bfb9c18742fbaafc3b3ba749e7cf','35415614a8ad40faafac77377f486617'),('b24947264fde44bb8a70715553089c95','0','1768350d98a04db5b82b79d0beddfd77','35415614a8ad40faafac77377f486617'),('b41aabc3a1014c328fce00d9c2250593','0','dd2783780ac14e5d8c5ab42c7bbedd0d','4c9185c9d80f403092eaf7a462072a46'),('b51277b846cd4865905d1858e84d349e','0','9fe3354a11774a57b975a4e44c99d64b','4c9185c9d80f403092eaf7a462072a46'),('b5a23550a23e4b30b0d98ca2d62a8bb9','7','05ac7d0366f048b68c7a472976ff9f31','35415614a8ad40faafac77377f486617'),('b92b6b64a3194011a8bc2116911ff528','0','effbf8307dc4429dbb143c5b10977d0f','4c9185c9d80f403092eaf7a462072a46'),('ba07e25784ed4ad68585980915fe96df','0','506cf716545e4cb09673b3545b7bf8a4','4c9185c9d80f403092eaf7a462072a46'),('ba919d5712fc4a8f9b6d2d94e090fd42','0','bd94bf8bfb6b4b6684e93bc541114be2','4c9185c9d80f403092eaf7a462072a46'),('bb3c8a53922849b9927979dc2fdbf196','7','4c9c477494c44b50b095acf995267370','210ad7c04a8c42559f2fe86a7b07d882'),('bb4acfce4d0442559bab4bddaa0aa486','0','ad49d5b332c1493f8ff8f7f5426a6b70','35415614a8ad40faafac77377f486617'),('bc9a1e1d0caf46b99841ecad3d0f3a79','0','0bd39db3d01a482cb783a6c3f9d97154','4c9185c9d80f403092eaf7a462072a46'),('c05a88274c9b46ba90bd83bbbf26c9a4','0','1278e2fedc7e4cce8c785b5fc0ad7338','4c9185c9d80f403092eaf7a462072a46'),('c23a4110c4e7411c823afeab44039c2b','7','d124cb1112254dffaa2a2d5f7f85e3d7','35415614a8ad40faafac77377f486617'),('c2694445f2ab45ed9c773ade477dd741','0','18fa395ab4334cf09685143ee8ec57b6','35415614a8ad40faafac77377f486617'),('c556f6019d3d444698192c5460ece8b3','7','b8155272aafe4741a32ebd170820d092','35415614a8ad40faafac77377f486617'),('c875362b1cc2479982c5b43976164bed','0','14baf766ff0d4d3bbe064231ed8a394c','35415614a8ad40faafac77377f486617'),('c8baeafe25144d1297ae57570c0f1ecc','0','1cbf189d43d84e2387a479c4f452cd07','35415614a8ad40faafac77377f486617'),('c917291731f84948bb052be64ef7d6c9','0','47516e3a68274ac381afc5e6dad728f8','35415614a8ad40faafac77377f486617'),('c9a9d17ba29048318ad57f3f194a3ff0','7','57cb0d6b62d64c3b893ead50b06b5cb5','35415614a8ad40faafac77377f486617'),('c9c0755d5b064b0ab5eed4f3bad87818','7','cd04339202dc46ec9541a181ccf206ee','35415614a8ad40faafac77377f486617'),('cb45d8fc4caf49f98b9a364271abad1b','0','f684ced0bb9d4c5eb7a4eaea585733e9','35415614a8ad40faafac77377f486617'),('d0857f0a2c8a45bd8eea606385ca2a10','0','951e0a29bc774f3e91c1214badfb5ce7','4c9185c9d80f403092eaf7a462072a46'),('d21f003bb21e4ed191016a56171e211a','0','fa72fabe753b4a749a520d5f2a9f2782','35415614a8ad40faafac77377f486617'),('d3e0f941b66642349c3663ba490a7ab6','0','0bd39db3d01a482cb783a6c3f9d97154','210ad7c04a8c42559f2fe86a7b07d882'),('d50efd1eb2654f7fbaf8b793e7cec1f3','0','37c56e1e4af04ce9966db0a1335a4496','4c9185c9d80f403092eaf7a462072a46'),('d518ba150e6c4de18e794bc5b2637229','0','2647c4d8b6e143088519ee26779acd21','4c9185c9d80f403092eaf7a462072a46'),('d8b6e2c388064fb98433498b62388805','7','de0161c5214c4feabf362b4f5cf5c9db','35415614a8ad40faafac77377f486617'),('d8e268d3ef1240778e40b483beade6b5','0','aa3803ebc81d47f294b16431bc94daa2','35415614a8ad40faafac77377f486617'),('da3193aa08a545d49ffbf612c88b00dd','0','a8e95fb6b3cc41a899ac3442a311d707','221de2dd68c34ce89326d3ab9e2ffe5c'),('db69e094b98f4a6c82d95ec995843305','7','268ab1a4e00d451bae3c29d4617173d8','35415614a8ad40faafac77377f486617'),('dc815dea17a7467783a57317f6ed92ce','0','4611c69bac4f4dac83fdb7708c3a4a3e','210ad7c04a8c42559f2fe86a7b07d882'),('ddf90b887dc54a0aaffd515716aed236','0','11b1811204f84d9db7e4f7d550bd4cb4','35415614a8ad40faafac77377f486617'),('e2a2782915c54eeaa4006a8eda611c56','0','fe3ef4c8ce1d405ca7aae0d498e8b1fc','35415614a8ad40faafac77377f486617'),('e6787cc8c1404eaa8e2b490c00396008','7','086ae04deb2045bbbbbdd4dd728f5d0e','35415614a8ad40faafac77377f486617'),('e708fde3c9b5432a878630f8ab7afcd5','0','485676afda25488eb4a7ccc3d20a4b2a','35415614a8ad40faafac77377f486617'),('e72b89998a6c4942bf7219392720bc1c','0','dd2783780ac14e5d8c5ab42c7bbedd0d','35415614a8ad40faafac77377f486617'),('e80ec21fa3424a1f9dc9e1ca55ca5848','0','f1ca153b8d4c40d38dd0a36f8e59feef','35415614a8ad40faafac77377f486617'),('ee28c5f04992444bb79ac5cea1f8c7ef','7','6523d7a51e534c49aabccddb68deda20','35415614a8ad40faafac77377f486617'),('eef90ea46b8d4a7ba9d4262fbf7e1a74','0','f684ced0bb9d4c5eb7a4eaea585733e9','4c9185c9d80f403092eaf7a462072a46'),('f16f31a38556471385b8bde2822f408d','7','498c71e64d344e478695fcf095847c4a','35415614a8ad40faafac77377f486617'),('f2f2c890f67c466688c042b1b5191511','7','5bdef5e0afde494f8ff270ab575244b0','35415614a8ad40faafac77377f486617'),('f384a0b7a0be4122863072d604f7348d','0','cd50de1217724f45a13e77eecf531315','35415614a8ad40faafac77377f486617'),('f55d94722ff249e593526c3b41bacfc6','0','cd89ae768a0640b5a30852c36987b698','35415614a8ad40faafac77377f486617'),('f9774b1f162a42cab62fea3ac54c7cc1','0','37c56e1e4af04ce9966db0a1335a4496','35415614a8ad40faafac77377f486617'),('fa36e83854d543128eb818f1a762bf97','0','5aba2009f4364908b50b6437c946bb85','35415614a8ad40faafac77377f486617'),('fac20b2e06c441a39999fba9b79a32b4','0','64cc4c269b6f4035ae9ff41a960fad0d','4c9185c9d80f403092eaf7a462072a46'),('fee3e8445092421fae383b19ef9c2d52','0','615fe9e7abb44282902d1a0f408e2277','35415614a8ad40faafac77377f486617'),('feffe78453874120a2344466b2f9bc12','0','97d9bbeccc1a4f35b101725b88e86ca1','35415614a8ad40faafac77377f486617'),('ff9a95acff514fe18b2b8dda6a19ac7d','0','ad49d5b332c1493f8ff8f7f5426a6b70','4c9185c9d80f403092eaf7a462072a46'),('ffb7ae76f6684c99bdf2b3923b5a73dc','0','3048acc3ef594ea98bf74673cbe89159','4c9185c9d80f403092eaf7a462072a46');
/*!40000 ALTER TABLE `org_authorityrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_authorityuser`
--

DROP TABLE IF EXISTS `org_authorityuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_authorityuser` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `ModuleMenu_id` char(32) NOT NULL,
  `User_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_authorityuser_ModuleMenu_id_739401e4_fk_general_m` (`ModuleMenu_id`),
  KEY `org_authorityuser_User_id_4e967f72_fk_org_user_id` (`User_id`),
  CONSTRAINT `org_authorityuser_ModuleMenu_id_739401e4_fk_general_m` FOREIGN KEY (`ModuleMenu_id`) REFERENCES `general_modulemenu` (`id`),
  CONSTRAINT `org_authorityuser_User_id_4e967f72_fk_org_user_id` FOREIGN KEY (`User_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_authorityuser`
--

LOCK TABLES `org_authorityuser` WRITE;
/*!40000 ALTER TABLE `org_authorityuser` DISABLE KEYS */;
INSERT INTO `org_authorityuser` VALUES ('25cb2fad61f74ee09f239d7d06720167','0','d71079b09baf45f4851a9732f89503d6','5cd31d57ce9448e29e46f9fd894d7f58'),('362b9915e9a442a2aa276dc4664f3e0d','0','d71079b09baf45f4851a9732f89503d6','daff1a6801404d74878bae6344f9977e'),('44d25f21f2f2486985465c3136fbbbb6','0','2725a64e43fc453c8388c3e486ee4352','daff1a6801404d74878bae6344f9977e'),('5c72e8d130a14492af42e1e82254b26e','6','87bfe5c7bd3b4f54905ce14efb5d7327','e0d7b4adb2ac446eb642c7f86fe33884'),('70554109980b4760b42a598460d83f8b','0','37c56e1e4af04ce9966db0a1335a4496','daff1a6801404d74878bae6344f9977e'),('b9f8c384947e4242aa6936559052f35f','6','2aa371065ab64a21a45de1d43604b22a','73cbe4f9c0284929add11de80d4522b4'),('c50b22c13a0f4cc6be307cfdf488cb1f','0','37c56e1e4af04ce9966db0a1335a4496','5cd31d57ce9448e29e46f9fd894d7f58');
/*!40000 ALTER TABLE `org_authorityuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_company`
--

DROP TABLE IF EXISTS `org_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_company` (
  `id` char(32) NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_company`
--

LOCK TABLES `org_company` WRITE;
/*!40000 ALTER TABLE `org_company` DISABLE KEYS */;
INSERT INTO `org_company` VALUES ('01191d33f08940409cb21b68fc7978f7','西安泰富西玛电机有限公司'),('3a282f9209cd4ee2b1c04a4a7eb28da2','迈迪信息技术有限公司( 站点管理 )'),('403f5b5e27c844b88bcbbaabcae76cbd','深圳市杰美康机电有限公司'),('41e3a3a013384cb081288c1811109a02','浙江邦飞利传动设备有限公司'),('447ca2ad52b24a39a8ec9d3a4ed0c8f4','河北衡水云海液压机械有限公司'),('6d234d64fa8646369cd8abad03d18500','江西华伍制动器股份有限公司'),('6f19259e5f5f4e498e3aa09f83c0880c','安徽皖南电机股份有限公司'),('8b1e95fe3c49445bbfe55e4fdbdcabcb','宁波奥德普电梯部件有限公司'),('8b9b74020793464d8335af25442fee30','江苏双菊风机有限公司'),('e7510de617e74a85aa1b4fe04b8c8da6','宁波市华益气动工程有限公司'),('f9cbc280c3cb4cab8d446ec65dfb139a','山东德方液压机械股份有限公司');
/*!40000 ALTER TABLE `org_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_department`
--

DROP TABLE IF EXISTS `org_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_department` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `is_First` tinyint(1) NOT NULL,
  `Company_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_department_Company_id_36b59bfa_fk_org_company_id` (`Company_id`),
  CONSTRAINT `org_department_Company_id_36b59bfa_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_department`
--

LOCK TABLES `org_department` WRITE;
/*!40000 ALTER TABLE `org_department` DISABLE KEYS */;
INSERT INTO `org_department` VALUES ('06c65703e63642adaedd1b483c7496e7','部门二',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('0c34277cce9f4b80ac68a6073052776b','市场运营部(总部)',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('0dc9741c54354a2e96ad2e27ac01fbc2','事业装备部',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('144ba15608864123ad2d2fa2835ffac6','部门二',0,'41e3a3a013384cb081288c1811109a02'),('1b5800f3bf944879af9cf922e23e45f0','部门一',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('1ee607f2448c4670bf0a1059f37908e9','教育组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('2b3c8b9750c24e1ebde80406530e8e50','部门六',0,'41e3a3a013384cb081288c1811109a02'),('39aeea5ab5f448e3959e2420b386b88b','仓库01',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('3dfe56604b894df8bc3b19421d87cb47','test部门',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('40f11559f5924b6f9b64a86fdec48ec0','物联网研发组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('41cba3964bab466192238640a2d8ef76','部门五',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('43831cc04abd4f7183b7727ecaacdf56','部门九',0,'41e3a3a013384cb081288c1811109a02'),('49d9e2e9e6ec4c2aaf4b005e002dd1a4','迈迪通研发组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('56bac42b07ee4e0d99f624772823262c','部门二',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('5ba02c7833dc4667bd422d911ce1d027','测试组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('5ca73e80f48747fd8ddb6e6217e4ded3','部门三',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('5e0547396f7a48908fe70d2e1cabc807','教育部',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('5e17754990104b46a126e25b708a8854','部门五',0,'41e3a3a013384cb081288c1811109a02'),('6371a5f8f3944baf84034236e1053dbf','济南实施部',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('65d76b06730549a18a02b60a0f1a3591','迈迪信息技术有限公司',1,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('769fe56a5caf4832bcc8790ac26c6ad7','部门七',0,'41e3a3a013384cb081288c1811109a02'),('827ee673c278437088ffebf8b05dab72','部门一',0,'8b9b74020793464d8335af25442fee30'),('863320c00f8242ddaaeb0d27943f9e7e','行政组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('889af90e761e45179efdd67c8f7fcc10','模型组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('8befe60379c94715938a9bfcc9a25ab1','杭州研发中心',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('8c808cab984c4805ac42bc7afd932917','部门一',0,'8b1e95fe3c49445bbfe55e4fdbdcabcb'),('8f2d362281c44e9ba8c90fa969db2f07','部门十',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('98093b859780498b9ebe8bf2b326e765','表单组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('9d4e7d58654e47a0b45948942df7b1d5','部门一',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('a32aaf3e21f546a4968d8952dcd22ea9','部门三',0,'41e3a3a013384cb081288c1811109a02'),('acb55052bce84e228a593c4f809352f8','部门YY',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('af2857d5491b4ff1aa188fcaecdf7ec2','部门八',0,'41e3a3a013384cb081288c1811109a02'),('b572d49d50c84d38ad049afc2a3e29b9','部门六',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('b8e2147272794e969d9c7678a06f1dc5','SW开发',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('bdb8fca005f947b5a516956a53d20985','浙江邦飞利传动设备有限公司',1,'41e3a3a013384cb081288c1811109a02'),('bdbb7a2b4fab4e15964b03424386cc68','杭州总部',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('be2c32db534c4c60988659b03be533c5','淄博研发中心',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('c30a38b357884cc68e438007acf4846b','部门四',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('c78ced7b09b744c9bed1790baa55a4ca','部门一',0,'41e3a3a013384cb081288c1811109a02'),('ca61f8c4c23e4bddb1bf4af11cb33d38','外协联络部(总部)',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('ccd178649cd0442385e5938c705ec832','行政人事财务部(总部)',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('d1cb1c00fb594dbda0379255d559217d','技术研发部(总部)',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('d4462beccb5e46e0b5a7a7e18d221f91','部门一',0,'e7510de617e74a85aa1b4fe04b8c8da6'),('dfb54a5d9a564f5984249b69be8c9c1d','部门五',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('e6b4573e4efe4630a319cac50a0f37a3','天工宏图',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('e81c267368bb4a4eb4acc464b36b8481','部门四',0,'41e3a3a013384cb081288c1811109a02'),('e87672bc302e469e8d20472403286725','主网站',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('e8e99f87ace14df88d304a9059e81186','部门八',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('ed14c56bd4f24dfdb863ca03acbfc249','济南研发中心',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('ed185a1cb79e4878a37fbd50b81cda23','设计宝研发组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('f271b023b05c4b1ea8d2290e25cfe6e8','部门七',0,'3a282f9209cd4ee2b1c04a4a7eb28da2'),('fce74c8dd62044068d6bf192fe532758','部门三',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('fdc7306bdbfe4423a3ba6a714a5752b7','河北衡水云海液压机械有限公司',1,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('ff141eaa382d432fb27408b18236a445','部门XX',0,'447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('ff705050aa824515ac39e88797353ac8','后台研发组',0,'3a282f9209cd4ee2b1c04a4a7eb28da2');
/*!40000 ALTER TABLE `org_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_department_con`
--

DROP TABLE IF EXISTS `org_department_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_department_con` (
  `id` char(32) NOT NULL,
  `Head_id` char(32) NOT NULL,
  `Leef_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_department_con_Head_id_bf850a6f_fk_org_department_id` (`Head_id`),
  KEY `org_department_con_Leef_id_965e884e_fk_org_department_id` (`Leef_id`),
  CONSTRAINT `org_department_con_Head_id_bf850a6f_fk_org_department_id` FOREIGN KEY (`Head_id`) REFERENCES `org_department` (`id`),
  CONSTRAINT `org_department_con_Leef_id_965e884e_fk_org_department_id` FOREIGN KEY (`Leef_id`) REFERENCES `org_department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_department_con`
--

LOCK TABLES `org_department_con` WRITE;
/*!40000 ALTER TABLE `org_department_con` DISABLE KEYS */;
INSERT INTO `org_department_con` VALUES ('00b3158061184898a60d50e777fbf187','5e17754990104b46a126e25b708a8854','af2857d5491b4ff1aa188fcaecdf7ec2'),('0213e508eb5d4e4a80e1b38d13b3155a','e87672bc302e469e8d20472403286725','c30a38b357884cc68e438007acf4846b'),('043f38d4ca0444fb9343fade45d19da5','bdb8fca005f947b5a516956a53d20985','c78ced7b09b744c9bed1790baa55a4ca'),('0ebf7ca4e48149b985c3e3f8040e71d1','41cba3964bab466192238640a2d8ef76','ff141eaa382d432fb27408b18236a445'),('11ebac40d6e04f5cabda20cf72f0d113','bdbb7a2b4fab4e15964b03424386cc68','ca61f8c4c23e4bddb1bf4af11cb33d38'),('123541b43fa74b6e8c59457b032ff3aa','5e17754990104b46a126e25b708a8854','769fe56a5caf4832bcc8790ac26c6ad7'),('2fd6aa0ed9f44fa79306bde7a2f38230','fdc7306bdbfe4423a3ba6a714a5752b7','41cba3964bab466192238640a2d8ef76'),('3efcaf32c9b344bc97d6055fe795bced','65d76b06730549a18a02b60a0f1a3591','ed14c56bd4f24dfdb863ca03acbfc249'),('3f68aae4a6864e239cf9ed447d268cbd','5e0547396f7a48908fe70d2e1cabc807','889af90e761e45179efdd67c8f7fcc10'),('4bc24863ce124aeeb92c5dd63a5cb628','5e0547396f7a48908fe70d2e1cabc807','f271b023b05c4b1ea8d2290e25cfe6e8'),('4c7d3e422d394737b1d976a22b2ed9d0','bdb8fca005f947b5a516956a53d20985','43831cc04abd4f7183b7727ecaacdf56'),('4ee94e9495f84a7cbf87de1ad7dadf68','65d76b06730549a18a02b60a0f1a3591','5e0547396f7a48908fe70d2e1cabc807'),('4fe6f8221752483a821d42f27302f363','ed14c56bd4f24dfdb863ca03acbfc249','e87672bc302e469e8d20472403286725'),('505da8a52c6c4863a1760c74d66a2264','ed14c56bd4f24dfdb863ca03acbfc249','ff705050aa824515ac39e88797353ac8'),('6af859815f4840fd8ac319282332c930','65d76b06730549a18a02b60a0f1a3591','bdbb7a2b4fab4e15964b03424386cc68'),('805d42978b004148bf8dd39bab5d8e08','9d4e7d58654e47a0b45948942df7b1d5','8f2d362281c44e9ba8c90fa969db2f07'),('8b4d55fa815843eab697bcfbc7ef6565','1ee607f2448c4670bf0a1059f37908e9','b572d49d50c84d38ad049afc2a3e29b9'),('9208750192b148ee84b2049411f221d2','c78ced7b09b744c9bed1790baa55a4ca','5e17754990104b46a126e25b708a8854'),('99bedd3fd63e44ce922e9c83fe805e06','c78ced7b09b744c9bed1790baa55a4ca','a32aaf3e21f546a4968d8952dcd22ea9'),('9f29542824b34931ab18c1dae0eb9c6c','5e0547396f7a48908fe70d2e1cabc807','b572d49d50c84d38ad049afc2a3e29b9'),('a3bb8b26e5dd4119ae4421d42f4f0d8b','5e0547396f7a48908fe70d2e1cabc807','1ee607f2448c4670bf0a1059f37908e9'),('a8eb50c89c94479c88b5b5475e247fa9','bdbb7a2b4fab4e15964b03424386cc68','d1cb1c00fb594dbda0379255d559217d'),('b38c66113a08435d8e308dc6201d631b','41cba3964bab466192238640a2d8ef76','acb55052bce84e228a593c4f809352f8'),('b7b7e90f4b994250b73ec8dfa02cb22b','fdc7306bdbfe4423a3ba6a714a5752b7','fce74c8dd62044068d6bf192fe532758'),('c0ecebf4d6ad4e5bbe2c9f831f002c81','c78ced7b09b744c9bed1790baa55a4ca','144ba15608864123ad2d2fa2835ffac6'),('cb25b287296b4679aa6b6fe2e33d3dfb','ed14c56bd4f24dfdb863ca03acbfc249','ed185a1cb79e4878a37fbd50b81cda23'),('ccf50317ec2e48799a4e2c944a6a3d86','fdc7306bdbfe4423a3ba6a714a5752b7','39aeea5ab5f448e3959e2420b386b88b'),('dab2fc59ee654bb8a9ff4649c85cf416','a32aaf3e21f546a4968d8952dcd22ea9','2b3c8b9750c24e1ebde80406530e8e50'),('dac33c74f50c42bbb3d8c4390c155986','144ba15608864123ad2d2fa2835ffac6','e81c267368bb4a4eb4acc464b36b8481'),('e3fbea694b0d4f42a0d4af9a7c5df560','bdbb7a2b4fab4e15964b03424386cc68','8befe60379c94715938a9bfcc9a25ab1'),('e613b745f7414f7496de9a1432c6f945','e87672bc302e469e8d20472403286725','dfb54a5d9a564f5984249b69be8c9c1d'),('ee0edadb24bf402a8564ab621caa025c','fdc7306bdbfe4423a3ba6a714a5752b7','9d4e7d58654e47a0b45948942df7b1d5'),('ee126c4d8f69432bb184dc4ca3165ebc','bdbb7a2b4fab4e15964b03424386cc68','ccd178649cd0442385e5938c705ec832'),('f903acc88aa343b69731dc92ce5e3faf','ed14c56bd4f24dfdb863ca03acbfc249','49d9e2e9e6ec4c2aaf4b005e002dd1a4'),('fa8000439c304f4a8d906b5653a0afc6','9d4e7d58654e47a0b45948942df7b1d5','06c65703e63642adaedd1b483c7496e7'),('fe295af68bdc482ba15a7030e815799b','1ee607f2448c4670bf0a1059f37908e9','b572d49d50c84d38ad049afc2a3e29b9');
/*!40000 ALTER TABLE `org_department_con` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_role`
--

DROP TABLE IF EXISTS `org_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_role` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Account_Type_id` char(32) NOT NULL,
  `Company_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_role_Account_Type_id_3a7cf551_fk_org_account_type_id` (`Account_Type_id`),
  KEY `org_role_Company_id_7051f3de_fk_org_company_id` (`Company_id`),
  CONSTRAINT `org_role_Account_Type_id_3a7cf551_fk_org_account_type_id` FOREIGN KEY (`Account_Type_id`) REFERENCES `org_account_type` (`id`),
  CONSTRAINT `org_role_Company_id_7051f3de_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_role`
--

LOCK TABLES `org_role` WRITE;
/*!40000 ALTER TABLE `org_role` DISABLE KEYS */;
INSERT INTO `org_role` VALUES ('0358d4a252004bc9b244b6f7b98a9b5d','岗位05','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('05e115f354674e08b009f43208ef5f8b','岗位03','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('210ad7c04a8c42559f2fe86a7b07d882','仓库管理员','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('221de2dd68c34ce89326d3ab9e2ffe5c','企业 (企业系统管理员)','74126d9498b049729ce4533d68c31d93','f9cbc280c3cb4cab8d446ec65dfb139a'),('35415614a8ad40faafac77377f486617','ALL管理员( 站点管理员 )','846968a858c74fed8a211c2b3046a345','3a282f9209cd4ee2b1c04a4a7eb28da2'),('436f81febad8499cb845fd5a3a0c52ee','岗位01','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('4c9185c9d80f403092eaf7a462072a46','企业 (企业系统管理员)','74126d9498b049729ce4533d68c31d93','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('4ce8d5be2466449cb523d6fcc318903a','岗位01','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('68111388bde649d1bb2244b3915f5151','岗位04','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('6cd2cd869d804e8cb74932f58a87fa77','general管理员( 站点管理员 )','846968a858c74fed8a211c2b3046a345','3a282f9209cd4ee2b1c04a4a7eb28da2'),('7827fb27cffe428db095769bb90af6ea','permissions管理员( 站点管理','846968a858c74fed8a211c2b3046a345','3a282f9209cd4ee2b1c04a4a7eb28da2'),('8251803b5743459a8dccf89d5f5a955f','岗位05','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('8fcddbe295f94bc0995a5aa93da5f70c','企业 (企业系统管理员)','74126d9498b049729ce4533d68c31d93','8b1e95fe3c49445bbfe55e4fdbdcabcb'),('9a2d04f20b034d4389023c49704d89d6','org管理员( 站点管理员 )','846968a858c74fed8a211c2b3046a345','3a282f9209cd4ee2b1c04a4a7eb28da2'),('acdfd7accacd49449798a27d3438f4af','store管理员( 站点管理员 )','846968a858c74fed8a211c2b3046a345','3a282f9209cd4ee2b1c04a4a7eb28da2'),('bb9c4acea6614f7e8ed475954f34fba7','企业 (企业系统管理员)','74126d9498b049729ce4533d68c31d93','6d234d64fa8646369cd8abad03d18500'),('c39e51b3b9f747ba8f79b699c27851e2','岗位02','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('c5718340d7c341eba24c1b42af65d426','岗位06','0abbf25d56bd4138b3e87a0ccbb4d4bb','3a282f9209cd4ee2b1c04a4a7eb28da2'),('d243d54a521b4126a170bfffa5f389b1','岗位06','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('da48faef29574f91b1f3d28326760822','岗位04','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('e52c1e91eb1a4bd9944b7abbcb34849c','岗位03','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4'),('ffe24b00dd93499eb18f587c23543057','岗位02','0abbf25d56bd4138b3e87a0ccbb4d4bb','447ca2ad52b24a39a8ec9d3a4ed0c8f4');
/*!40000 ALTER TABLE `org_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_role_con_department`
--

DROP TABLE IF EXISTS `org_role_con_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_role_con_department` (
  `id` char(32) NOT NULL,
  `Department_id` char(32) NOT NULL,
  `Role_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_role_con_departm_Department_id_4a5d687c_fk_org_depar` (`Department_id`),
  KEY `org_role_con_department_Role_id_ac312621_fk_org_role_id` (`Role_id`),
  CONSTRAINT `org_role_con_departm_Department_id_4a5d687c_fk_org_depar` FOREIGN KEY (`Department_id`) REFERENCES `org_department` (`id`),
  CONSTRAINT `org_role_con_department_Role_id_ac312621_fk_org_role_id` FOREIGN KEY (`Role_id`) REFERENCES `org_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_role_con_department`
--

LOCK TABLES `org_role_con_department` WRITE;
/*!40000 ALTER TABLE `org_role_con_department` DISABLE KEYS */;
INSERT INTO `org_role_con_department` VALUES ('037d61a11a53418f98b72ef2de161477','ccd178649cd0442385e5938c705ec832','c39e51b3b9f747ba8f79b699c27851e2'),('07cce99279f74961be754ddfc37bf811','39aeea5ab5f448e3959e2420b386b88b','210ad7c04a8c42559f2fe86a7b07d882'),('11c004cf80794e578a06450d8695d5f5','d1cb1c00fb594dbda0379255d559217d','6cd2cd869d804e8cb74932f58a87fa77'),('24bd54af303b4d4187a33eb6b452c229','8f2d362281c44e9ba8c90fa969db2f07','0358d4a252004bc9b244b6f7b98a9b5d'),('2d084a22d1614f55aca4b6d9d8c5fdcd','acb55052bce84e228a593c4f809352f8','d243d54a521b4126a170bfffa5f389b1'),('3053612f30444eca955e994ae219e35e','49d9e2e9e6ec4c2aaf4b005e002dd1a4','68111388bde649d1bb2244b3915f5151'),('45c513136ad54fc185b1e988ff1ea35f','39aeea5ab5f448e3959e2420b386b88b','da48faef29574f91b1f3d28326760822'),('45ccbbfda9e94fe8a2aa6f44f5ac83cb','d1cb1c00fb594dbda0379255d559217d','35415614a8ad40faafac77377f486617'),('4c9c956892844314a5d3976b9084e03e','ed185a1cb79e4878a37fbd50b81cda23','c5718340d7c341eba24c1b42af65d426'),('5b134d5693a542b18935076557a03bf0','9d4e7d58654e47a0b45948942df7b1d5','ffe24b00dd93499eb18f587c23543057'),('71c1ae9c71cc4bd8806a123b5ae4fedd','8befe60379c94715938a9bfcc9a25ab1','05e115f354674e08b009f43208ef5f8b'),('a1b3255b5341402398103e9483c9769e','ff705050aa824515ac39e88797353ac8','8251803b5743459a8dccf89d5f5a955f'),('a92c4bc028f94e33a7e73a13036da724','d1cb1c00fb594dbda0379255d559217d','acdfd7accacd49449798a27d3438f4af'),('af2ff186387e49408385b68d8e78bcb5','d1cb1c00fb594dbda0379255d559217d','9a2d04f20b034d4389023c49704d89d6'),('c4eccf097c8a4415a9822ed094d07de7','06c65703e63642adaedd1b483c7496e7','436f81febad8499cb845fd5a3a0c52ee'),('e1eb04804ef841d9a9d2599054111298','ca61f8c4c23e4bddb1bf4af11cb33d38','4ce8d5be2466449cb523d6fcc318903a'),('e94c674ea372428b8bbe0e8d388def08','d1cb1c00fb594dbda0379255d559217d','7827fb27cffe428db095769bb90af6ea'),('edb49151187643f786428d9108690e87','39aeea5ab5f448e3959e2420b386b88b','e52c1e91eb1a4bd9944b7abbcb34849c');
/*!40000 ALTER TABLE `org_role_con_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user`
--

DROP TABLE IF EXISTS `org_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user` (
  `id` char(32) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `Ui_Color` varchar(20) NOT NULL,
  `Ui_Zoom` double NOT NULL,
  `Design_Rate` double NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Job_Number` varchar(20) NOT NULL,
  `Avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user`
--

LOCK TABLES `org_user` WRITE;
/*!40000 ALTER TABLE `org_user` DISABLE KEYS */;
INSERT INTO `org_user` VALUES ('10fd9e41ccd640e2af1ff5d724ce1083','pbkdf2_sha256$100000$HnWpSqcibCcX$ojg619TbwGJ5fG7mqjfOEJJME4QBjBTtCDP4sp9cqFk=','2018-03-07 05:17:36.528296',0,'test_001','','','test_001@md.com',0,1,'2018-03-07 02:16:34.454316','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/test_001-Store_Admin01.jpg'),('14e3c949b7e04b0184bfd43902ee46cc','pbkdf2_sha256$100000$BmT8esDV8WOi$LA3Obqqwzn6WeMswhg+Kl79uf3TvZcu21seMndF65WY=','2018-02-27 03:19:11.457444',0,'yh_test03','','','test03@md.com',0,1,'2018-02-27 03:19:11.331062','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('2768df9755034faf949c32cb224ee537','pbkdf2_sha256$100000$TS6cdJrBQppo$m1IDXRLw55cpccNzhKvL5EtluB+72fZNCwDQZy7GVHc=','2018-03-14 10:38:23.459831',0,'Company_01','','','Company_01@md.com',0,1,'2018-02-07 05:40:03.569522','contrast-fb',0.8,0.8,'13912345679','000000000','/images/avatar/Company_01.jpg'),('34411249f03a493aaf746debeedd9960','pbkdf2_sha256$100000$EDpmGAB9l3dw$jM3UH7QKqxs5opTZnOHAhbbaVrcQfFxXFJadYyyZLYA=','2018-02-27 10:27:41.946179',0,'yh_test05','','','test05@md.com',0,1,'2018-02-27 10:27:41.818881','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('5cd31d57ce9448e29e46f9fd894d7f58','pbkdf2_sha256$100000$VO30dwXobQZQ$ygPpEaSVFlr+ayW9WK8zDNgqjZPNFkps5z23WAHsBnQ=','2018-03-14 10:24:30.306894',1,'summer','','','summer@md.com',1,1,'2017-12-16 00:38:56.078866','contrast-fb',0.8,0.8,'13999999998','000000000','/images/avatar/summer-summer.jpg'),('5cd6790fb9f44a8497ec405e63c2a2a2','pbkdf2_sha256$100000$fbsicMPl1uJg$cod8DLpdSguce0AgnRsRVk0TshAKm2wf2nPTvRSpfiU=','2018-01-19 02:22:56.801245',0,'winter','','','winter@md.com',0,1,'2018-01-19 02:22:56.681199','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('6f8ba6e7501e403b8a2236d6518f4a93','pbkdf2_sha256$100000$h6Clb8Mwag7T$/gWnwwfy9RvH+e+pVzhG6D8uRd97rWwydxT9lxDgm78=','2018-02-28 03:06:59.849958',0,'md_test02','','','md_test02@md.com',0,1,'2018-02-28 03:06:59.729047','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('73cbe4f9c0284929add11de80d4522b4','pbkdf2_sha256$100000$p5AqmGz9MgvY$dUHp+EU4GMdKSFCLMg1wX1CReu+mcJEXBCnJCYvvepI=','2018-03-15 00:36:44.803515',0,'Admin_01','','','Admin01@md.com',0,1,'2018-02-07 11:32:51.812105','contrast-fb',0.8,0.8,'13912345678','000000000','/images/avatar/Admin_01.jpg'),('74f2f9ce2b6d476ea11557a5cb04b82b','pbkdf2_sha256$100000$mdnXg19bPD5z$3U7apoYRwIpRq5lLptWKW7tZVcoYDIG5/1nsLUXGM50=','2018-01-22 11:41:42.189172',0,'spring','','','spring@md.com',0,1,'2018-01-11 05:58:48.949008','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('7f66ea0492834859b9383cd8147e7a83','pbkdf2_sha256$100000$8VKi6xrXlUEC$YHSFe671PyKMOB+gA9IwJKMJrAxHaW5zAfihSaAXgm8=','2018-02-26 08:25:03.398190',0,'yh_test01','','','yh_test00@md.com',0,1,'2018-02-26 08:25:03.270359','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('93151b3dc16844febbd482a083b1baf0','pbkdf2_sha256$100000$RL5sVBcGReGW$wAzuTTKGJX8sph0CIKMJKqr9cgfBQbupTr1vx/U9iMc=','2018-02-27 10:58:11.455540',0,'yh_test04','','','test04@md.com',0,1,'2018-02-27 03:19:45.139733','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/test04-头像001.png'),('965c47b564354e39a2d7dae65ac3ee97','pbkdf2_sha256$100000$34MF82bUN522$cYAUDHXqNj5jPs0h1cKoPoI3K2Jm5+tD5mc0A5tTSxM=','2018-02-28 03:09:32.458151',0,'md_test06','','','md_test06@md.com',0,1,'2018-02-28 03:09:32.338000','contrast-fb',0.8,0.8,'13999999998','000000000','/images/avatar/default.png'),('ab6b47f7dc3d47f7a2a9f8d93d007010','pbkdf2_sha256$100000$qgsDPRx5ZEhf$Y1PJLcEs6gIEuQP2FeCmg7duN5VdqQPbvrvs5YZvPus=','2018-03-07 02:14:59.159500',0,'tt','','','tt@md.com',0,1,'2018-03-07 02:14:59.031693','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('d26043dbbb124d969758334d55d12dcf','pbkdf2_sha256$100000$PesEc67f99jF$QNxo4wkYesftjmNpw/UydhxX6EQNm/Cs0GB++qyhUco=','2018-02-28 03:06:24.018440',0,'md_test01','','','md_test01@md.com',0,1,'2018-02-28 03:06:23.892300','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('d6ea2381433142cab9873aaf320d600a','pbkdf2_sha256$100000$wShm7FKhDAeR$AhT/eerM/DQcLl+H3Wb91hhtz7Rzx8Wst7qTabDjIrM=','2018-02-27 03:16:50.280738',0,'yh_test02','','','test02@md.com',0,1,'2018-02-27 03:16:50.157416','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('daff1a6801404d74878bae6344f9977e','pbkdf2_sha256$100000$4FBZCpwe67z4$3DAs0p8bsgcNjmeFpBDRUtVnqCjEwPUa/cc6wPRTe0o=','2018-02-24 01:32:20.111166',0,'autumn','','','autumn@md.com',0,1,'2018-01-05 10:02:19.317273','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/autumn.jpg'),('e0d7b4adb2ac446eb642c7f86fe33884','pbkdf2_sha256$100000$Riuq2fagF8dx$d9E41tRwf3Mxusa1NCC00ukfISky4REXLV1yVI+G09Q=','2018-03-09 11:46:51.290561',0,'Store_Admin01','','','Store_Admin01@md.com',0,1,'2018-02-06 11:26:51.241549','contrast-fb',0.8,0.8,'13912345679','000000000','/images/avatar/Store_Admin01-Store_Admin01.jpg'),('e9455c4b99b7420e8cc1e2083985bff9','pbkdf2_sha256$100000$0Nb2P3Us5iSz$NP2/cEn09CEyMhCcUqV4kzvulOHeikSILtahAbPzwOI=','2018-02-28 03:07:57.400557',0,'md_test04','','','md_test04@md.com',0,1,'2018-02-28 03:07:57.281157','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('ecc0d0c9ff58435c9cc4bac706b71106','pbkdf2_sha256$100000$OeXa0OjKhsg2$ZlcaMrIWJH/eSLpQcVXw0MySUMu4fTJKtyzuFAz6jf4=','2018-02-28 03:08:42.496618',0,'md_test05','','','md_test05@md.com',0,1,'2018-02-28 03:08:42.375124','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png'),('eee1343bb7e24c1d8a8fa2b5342cf82d','pbkdf2_sha256$100000$wrvxL5L2AAFS$VDl+tABDDjQfRMN2X84Onv8TQ9JptJv0R8Y3gT+A/Ec=','2018-02-28 03:07:30.168718',0,'md_test03','','','md_test03@md.com',0,1,'2018-02-28 03:07:30.053962','contrast-fb',0.8,0.8,'13999999999','000000000','/images/avatar/default.png');
/*!40000 ALTER TABLE `org_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user_con_company`
--

DROP TABLE IF EXISTS `org_user_con_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user_con_company` (
  `id` char(32) NOT NULL,
  `Company_id` char(32) NOT NULL,
  `User_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_user_con_company_Company_id_fa0ea56a_fk_org_company_id` (`Company_id`),
  KEY `org_user_con_company_User_id_563f7688_fk_org_user_id` (`User_id`),
  CONSTRAINT `org_user_con_company_Company_id_fa0ea56a_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`),
  CONSTRAINT `org_user_con_company_User_id_563f7688_fk_org_user_id` FOREIGN KEY (`User_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user_con_company`
--

LOCK TABLES `org_user_con_company` WRITE;
/*!40000 ALTER TABLE `org_user_con_company` DISABLE KEYS */;
INSERT INTO `org_user_con_company` VALUES ('1359834461ea4bbc934e47ac6aea3cc5','3a282f9209cd4ee2b1c04a4a7eb28da2','5cd31d57ce9448e29e46f9fd894d7f58'),('21a1705d426f483a9225d6c2d8e49511','3a282f9209cd4ee2b1c04a4a7eb28da2','74f2f9ce2b6d476ea11557a5cb04b82b'),('50668bccedf245d984558f43d6ba2677','3a282f9209cd4ee2b1c04a4a7eb28da2','d26043dbbb124d969758334d55d12dcf'),('52478ed776e84d58b293b9a07ea4d910','447ca2ad52b24a39a8ec9d3a4ed0c8f4','7f66ea0492834859b9383cd8147e7a83'),('630d3eeffa5241b9825221e856442e50','3a282f9209cd4ee2b1c04a4a7eb28da2','73cbe4f9c0284929add11de80d4522b4'),('726169bbd16c45ebb1ef41103eaf6493','3a282f9209cd4ee2b1c04a4a7eb28da2','5cd6790fb9f44a8497ec405e63c2a2a2'),('7291ae1572e8465d98cf6344ac71a981','447ca2ad52b24a39a8ec9d3a4ed0c8f4','2768df9755034faf949c32cb224ee537'),('7c1b915326fd4f5f9964ad498ed53ab0','447ca2ad52b24a39a8ec9d3a4ed0c8f4','d6ea2381433142cab9873aaf320d600a'),('7ce6928797ae472688e6180fe1fd42ae','447ca2ad52b24a39a8ec9d3a4ed0c8f4','10fd9e41ccd640e2af1ff5d724ce1083'),('840487de86d34efc99b3d547bd040e00','3a282f9209cd4ee2b1c04a4a7eb28da2','e9455c4b99b7420e8cc1e2083985bff9'),('a06ad44bf57940ec8f73175d3d98adf4','3a282f9209cd4ee2b1c04a4a7eb28da2','eee1343bb7e24c1d8a8fa2b5342cf82d'),('bc5ecb48f26147fb90c6488b93df89e6','447ca2ad52b24a39a8ec9d3a4ed0c8f4','e0d7b4adb2ac446eb642c7f86fe33884'),('c240e46f5fc7414d886678f459182bb1','3a282f9209cd4ee2b1c04a4a7eb28da2','93151b3dc16844febbd482a083b1baf0'),('c352da4774f344b3ac6adb8360ba8774','3a282f9209cd4ee2b1c04a4a7eb28da2','6f8ba6e7501e403b8a2236d6518f4a93'),('d65b35ffd4304f868c9bb31ad7b6a8f9','41e3a3a013384cb081288c1811109a02','34411249f03a493aaf746debeedd9960'),('e9a9ebc2ff64431e93b8fca09e78e7de','447ca2ad52b24a39a8ec9d3a4ed0c8f4','14e3c949b7e04b0184bfd43902ee46cc'),('f020b4a7384b4ea0af48ac854e7f750a','3a282f9209cd4ee2b1c04a4a7eb28da2','daff1a6801404d74878bae6344f9977e');
/*!40000 ALTER TABLE `org_user_con_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user_con_department`
--

DROP TABLE IF EXISTS `org_user_con_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user_con_department` (
  `id` char(32) NOT NULL,
  `Department_id` char(32) NOT NULL,
  `User_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_user_con_departm_Department_id_b0f6b4a9_fk_org_depar` (`Department_id`),
  KEY `org_user_con_department_User_id_116a6077_fk_org_user_id` (`User_id`),
  CONSTRAINT `org_user_con_departm_Department_id_b0f6b4a9_fk_org_depar` FOREIGN KEY (`Department_id`) REFERENCES `org_department` (`id`),
  CONSTRAINT `org_user_con_department_User_id_116a6077_fk_org_user_id` FOREIGN KEY (`User_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user_con_department`
--

LOCK TABLES `org_user_con_department` WRITE;
/*!40000 ALTER TABLE `org_user_con_department` DISABLE KEYS */;
INSERT INTO `org_user_con_department` VALUES ('21436d77f3e84c65a6bde230de911e5e','d1cb1c00fb594dbda0379255d559217d','74f2f9ce2b6d476ea11557a5cb04b82b'),('284f369aeaeb4f4491a4ff30857ae15b','39aeea5ab5f448e3959e2420b386b88b','10fd9e41ccd640e2af1ff5d724ce1083'),('39c9c0df8a3a4c1fb79f48d2d24df5f8','d1cb1c00fb594dbda0379255d559217d','73cbe4f9c0284929add11de80d4522b4'),('4a13752ea3f64902a3a77b7e4b82b1fb','d1cb1c00fb594dbda0379255d559217d','5cd31d57ce9448e29e46f9fd894d7f58'),('4a3f37d7897e4076a6d6165bbb046e2b','ca61f8c4c23e4bddb1bf4af11cb33d38','d26043dbbb124d969758334d55d12dcf'),('60f889ff59b7461dbaa049f05d477748','ccd178649cd0442385e5938c705ec832','6f8ba6e7501e403b8a2236d6518f4a93'),('aaed250ef61940eb94dffc8504285593','39aeea5ab5f448e3959e2420b386b88b','e0d7b4adb2ac446eb642c7f86fe33884'),('aeb980b2d48a4151ba9aab9dc1d25868','8befe60379c94715938a9bfcc9a25ab1','eee1343bb7e24c1d8a8fa2b5342cf82d'),('b9af4da953814694805a7ad5113a8f56','d1cb1c00fb594dbda0379255d559217d','5cd6790fb9f44a8497ec405e63c2a2a2');
/*!40000 ALTER TABLE `org_user_con_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user_con_role`
--

DROP TABLE IF EXISTS `org_user_con_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user_con_role` (
  `id` char(32) NOT NULL,
  `Role_id` char(32) NOT NULL,
  `User_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_user_con_role_Role_id_4394cd4a_fk_org_role_id` (`Role_id`),
  KEY `org_user_con_role_User_id_c4b00a3c_fk_org_user_id` (`User_id`),
  CONSTRAINT `org_user_con_role_Role_id_4394cd4a_fk_org_role_id` FOREIGN KEY (`Role_id`) REFERENCES `org_role` (`id`),
  CONSTRAINT `org_user_con_role_User_id_c4b00a3c_fk_org_user_id` FOREIGN KEY (`User_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user_con_role`
--

LOCK TABLES `org_user_con_role` WRITE;
/*!40000 ALTER TABLE `org_user_con_role` DISABLE KEYS */;
INSERT INTO `org_user_con_role` VALUES ('0a41c073e4ae42e6a222daf7926fa2d0','7827fb27cffe428db095769bb90af6ea','5cd6790fb9f44a8497ec405e63c2a2a2'),('102c68ae275c4e06a28fd9d6d1d898c0','35415614a8ad40faafac77377f486617','5cd31d57ce9448e29e46f9fd894d7f58'),('1ab71685d1cc4fb090dc1bd2510eabf5','4c9185c9d80f403092eaf7a462072a46','2768df9755034faf949c32cb224ee537'),('1eac4f4bd43843479d8dedf8b05f94aa','210ad7c04a8c42559f2fe86a7b07d882','e0d7b4adb2ac446eb642c7f86fe33884'),('2886c39384c049cd9aada7cac60431ad','35415614a8ad40faafac77377f486617','73cbe4f9c0284929add11de80d4522b4'),('4ad1bc6a54ac4967a207a61ec02c2fad','4c9185c9d80f403092eaf7a462072a46','daff1a6801404d74878bae6344f9977e'),('4f857607b2954660a698df9d010187d4','c39e51b3b9f747ba8f79b699c27851e2','6f8ba6e7501e403b8a2236d6518f4a93'),('808a2c7ce476488b8d3cc9276d719ae4','4ce8d5be2466449cb523d6fcc318903a','d26043dbbb124d969758334d55d12dcf'),('b778de63acb249c09a55a3f7bb0282a8','05e115f354674e08b009f43208ef5f8b','eee1343bb7e24c1d8a8fa2b5342cf82d'),('e3dad13c3f93496d9b0f8ef75b9968ef','35415614a8ad40faafac77377f486617','74f2f9ce2b6d476ea11557a5cb04b82b');
/*!40000 ALTER TABLE `org_user_con_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user_groups`
--

DROP TABLE IF EXISTS `org_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_user_groups_user_id_group_id_fef80fe9_uniq` (`user_id`,`group_id`),
  KEY `org_user_groups_group_id_e029a873_fk_auth_group_id` (`group_id`),
  CONSTRAINT `org_user_groups_group_id_e029a873_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `org_user_groups_user_id_984438cd_fk_org_user_id` FOREIGN KEY (`user_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user_groups`
--

LOCK TABLES `org_user_groups` WRITE;
/*!40000 ALTER TABLE `org_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_user_user_permissions`
--

DROP TABLE IF EXISTS `org_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(32) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_user_user_permissions_user_id_permission_id_e61128be_uniq` (`user_id`,`permission_id`),
  KEY `org_user_user_permis_permission_id_2178fc41_fk_auth_perm` (`permission_id`),
  CONSTRAINT `org_user_user_permis_permission_id_2178fc41_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `org_user_user_permissions_user_id_ab8f2587_fk_org_user_id` FOREIGN KEY (`user_id`) REFERENCES `org_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_user_user_permissions`
--

LOCK TABLES `org_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `org_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_drawing`
--

DROP TABLE IF EXISTS `pdm_drawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_drawing` (
  `id` char(32) NOT NULL,
  `DocNO` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `Regtime` datetime(6) DEFAULT NULL,
  `Updatetime` datetime(6) DEFAULT NULL,
  `Rev` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `Size_id` char(32) NOT NULL,
  `Status_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DocNO` (`DocNO`),
  KEY `pdm_drawing_Size_id_9c6fb091_fk_pdm_drawingsize_id` (`Size_id`),
  KEY `pdm_drawing_Status_id_2a27a4bd_fk_pdm_pdm_status_id` (`Status_id`),
  CONSTRAINT `pdm_drawing_Size_id_9c6fb091_fk_pdm_drawingsize_id` FOREIGN KEY (`Size_id`) REFERENCES `pdm_drawingsize` (`id`),
  CONSTRAINT `pdm_drawing_Status_id_2a27a4bd_fk_pdm_pdm_status_id` FOREIGN KEY (`Status_id`) REFERENCES `pdm_pdm_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_drawing`
--

LOCK TABLES `pdm_drawing` WRITE;
/*!40000 ALTER TABLE `pdm_drawing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdm_drawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_drawingsize`
--

DROP TABLE IF EXISTS `pdm_drawingsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_drawingsize` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_drawingsize`
--

LOCK TABLES `pdm_drawingsize` WRITE;
/*!40000 ALTER TABLE `pdm_drawingsize` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdm_drawingsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_materials`
--

DROP TABLE IF EXISTS `pdm_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_materials` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Company_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pdm_materials_Company_id_6b438344_fk_org_company_id` (`Company_id`),
  CONSTRAINT `pdm_materials_Company_id_6b438344_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_materials`
--

LOCK TABLES `pdm_materials` WRITE;
/*!40000 ALTER TABLE `pdm_materials` DISABLE KEYS */;
INSERT INTO `pdm_materials` VALUES ('867eaeb1cb804ea98a1c0e613f78a6eb','塑料','41e3a3a013384cb081288c1811109a02'),('ea3f1bdf929049a7a51e6d8fa6c6a516','金属','41e3a3a013384cb081288c1811109a02');
/*!40000 ALTER TABLE `pdm_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_part`
--

DROP TABLE IF EXISTS `pdm_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_part` (
  `id` char(32) NOT NULL,
  `ItemNO` varchar(30) NOT NULL,
  `DocNO` varchar(30) DEFAULT NULL,
  `Name` varchar(200) NOT NULL,
  `EName` varchar(100) DEFAULT NULL,
  `Regtime` datetime(6) DEFAULT NULL,
  `Updatetime` datetime(6) DEFAULT NULL,
  `Weight` double NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `Rev` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `Company_id` char(32) DEFAULT NULL,
  `DUser_id` char(32) DEFAULT NULL,
  `Material_id` char(32) DEFAULT NULL,
  `Status_id` char(32) DEFAULT NULL,
  `Unit_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ItemNO` (`ItemNO`),
  UNIQUE KEY `pdm_part_ItemNO_Company_id_895929cd_uniq` (`ItemNO`,`Company_id`),
  KEY `pdm_part_Company_id_358c9ad4_fk_org_company_id` (`Company_id`),
  KEY `pdm_part_DUser_id_1d6744c5_fk_org_user_id` (`DUser_id`),
  KEY `pdm_part_Material_id_2a73e784_fk_pdm_materials_id` (`Material_id`),
  KEY `pdm_part_Status_id_79f69a06_fk_pdm_pdm_status_id` (`Status_id`),
  KEY `pdm_part_Unit_id_1c798519_fk_pdm_units_id` (`Unit_id`),
  CONSTRAINT `pdm_part_Company_id_358c9ad4_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`),
  CONSTRAINT `pdm_part_DUser_id_1d6744c5_fk_org_user_id` FOREIGN KEY (`DUser_id`) REFERENCES `org_user` (`id`),
  CONSTRAINT `pdm_part_Material_id_2a73e784_fk_pdm_materials_id` FOREIGN KEY (`Material_id`) REFERENCES `pdm_materials` (`id`),
  CONSTRAINT `pdm_part_Status_id_79f69a06_fk_pdm_pdm_status_id` FOREIGN KEY (`Status_id`) REFERENCES `pdm_pdm_status` (`id`),
  CONSTRAINT `pdm_part_Unit_id_1c798519_fk_pdm_units_id` FOREIGN KEY (`Unit_id`) REFERENCES `pdm_units` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_part`
--

LOCK TABLES `pdm_part` WRITE;
/*!40000 ALTER TABLE `pdm_part` DISABLE KEYS */;
INSERT INTO `pdm_part` VALUES ('0521e9c11f59430c8fa283bc32d7339f','物号009','资料号009','C系列3mm旋钮式人控阀',NULL,NULL,NULL,0,NULL,0,1,'6d234d64fa8646369cd8abad03d18500','10fd9e41ccd640e2af1ff5d724ce1083','ea3f1bdf929049a7a51e6d8fa6c6a516','3bd8152faa08492b8e2234fff1571ef6','514743b879434399979a2ddeff5eb4b1'),('45e781ab422e489ea5051d946b39e75d','物号001','资料号001','FBL090标准型精密行星减速机','null',NULL,NULL,0,NULL,0,1,'8b1e95fe3c49445bbfe55e4fdbdcabcb','10fd9e41ccd640e2af1ff5d724ce1083','ea3f1bdf929049a7a51e6d8fa6c6a516','3bd8152faa08492b8e2234fff1571ef6','514743b879434399979a2ddeff5eb4b1'),('511823d6fdb4400891e66bd4e640dd46','物号008','资料号008','WG系列热水/热油旋涡泵',NULL,NULL,NULL,0,NULL,0,1,'f9cbc280c3cb4cab8d446ec65dfb139a','10fd9e41ccd640e2af1ff5d724ce1083','ea3f1bdf929049a7a51e6d8fa6c6a516','3bd8152faa08492b8e2234fff1571ef6','514743b879434399979a2ddeff5eb4b1'),('b5beadb5e263442d96b7e2c66054293a','物号007','资料号007','上展式放料阀',NULL,NULL,NULL,0,NULL,0,1,'6d234d64fa8646369cd8abad03d18500','10fd9e41ccd640e2af1ff5d724ce1083','ea3f1bdf929049a7a51e6d8fa6c6a516','91b4a85b0bba40b8a5bdea4b530cba49','514743b879434399979a2ddeff5eb4b1'),('bc752e89f4764358a6f75abbb3a99d81','物号003','资料号003','EKL160M/H超薄型管道风机','null',NULL,NULL,0,NULL,0,1,'447ca2ad52b24a39a8ec9d3a4ed0c8f4','10fd9e41ccd640e2af1ff5d724ce1083','ea3f1bdf929049a7a51e6d8fa6c6a516','3bd8152faa08492b8e2234fff1571ef6','514743b879434399979a2ddeff5eb4b1'),('db5ef2b78491461e90cf3ff3eb5a7a3a','物号002','资料号002','DKF(H)12.5-0°离心通风机','null',NULL,NULL,0,NULL,0,1,'41e3a3a013384cb081288c1811109a02','10fd9e41ccd640e2af1ff5d724ce1083','867eaeb1cb804ea98a1c0e613f78a6eb','91b4a85b0bba40b8a5bdea4b530cba49','514743b879434399979a2ddeff5eb4b1');
/*!40000 ALTER TABLE `pdm_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_pdm_status`
--

DROP TABLE IF EXISTS `pdm_pdm_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_pdm_status` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_pdm_status`
--

LOCK TABLES `pdm_pdm_status` WRITE;
/*!40000 ALTER TABLE `pdm_pdm_status` DISABLE KEYS */;
INSERT INTO `pdm_pdm_status` VALUES ('3bd8152faa08492b8e2234fff1571ef6','001','XX'),('91b4a85b0bba40b8a5bdea4b530cba49','002','XX'),('add1a9d0c05a48d69d522c38cbc5bbef','003','XX');
/*!40000 ALTER TABLE `pdm_pdm_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdm_units`
--

DROP TABLE IF EXISTS `pdm_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdm_units` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Company_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pdm_units_Company_id_e04860d4_fk_org_company_id` (`Company_id`),
  CONSTRAINT `pdm_units_Company_id_e04860d4_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdm_units`
--

LOCK TABLES `pdm_units` WRITE;
/*!40000 ALTER TABLE `pdm_units` DISABLE KEYS */;
INSERT INTO `pdm_units` VALUES ('514743b879434399979a2ddeff5eb4b1','个','41e3a3a013384cb081288c1811109a02');
/*!40000 ALTER TABLE `pdm_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_form_status`
--

DROP TABLE IF EXISTS `store_form_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_form_status` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_form_status`
--

LOCK TABLES `store_form_status` WRITE;
/*!40000 ALTER TABLE `store_form_status` DISABLE KEYS */;
INSERT INTO `store_form_status` VALUES ('3779a64ad05b4f498861e4847341d5dc','003','领货单'),('765420f84edc4855917156813a89cff1','008','出库单'),('770cb8e608f040c1a2fd953322948cdc','005','送料单'),('813791ce479b4c6aa7fd93cde3941de4','001','送货单'),('97282a182211481d8dbf16199c1512d6','009','盘库单'),('9dd7ebb875a243da8ab37b3cb9f57231','002','收货单'),('ae4553f009d8446096fefb5bbd2bd88d','006','入库单'),('bbeeec7ac14941fdb94a20dbd16efbb8','007','领料单'),('d60c8174dc3c4600879c22060525cd3a','004','退货单');
/*!40000 ALTER TABLE `store_form_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_partlive`
--

DROP TABLE IF EXISTS `store_partlive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_partlive` (
  `id` char(32) NOT NULL,
  `QR_Code` varchar(256) DEFAULT NULL,
  `Part_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_partlive_Part_id_df88f92f_fk_pdm_part_id` (`Part_id`),
  CONSTRAINT `store_partlive_Part_id_df88f92f_fk_pdm_part_id` FOREIGN KEY (`Part_id`) REFERENCES `pdm_part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_partlive`
--

LOCK TABLES `store_partlive` WRITE;
/*!40000 ALTER TABLE `store_partlive` DISABLE KEYS */;
INSERT INTO `store_partlive` VALUES ('043ca7835cc44d69acaf03cf967ec456','二维码5466','0521e9c11f59430c8fa283bc32d7339f'),('3a0b7bdbe97f4b5f958535ae16e05d5c','二维码9464','bc752e89f4764358a6f75abbb3a99d81'),('64039a3016e640f08668861e1f7a5f40','二维码7675','511823d6fdb4400891e66bd4e640dd46'),('685f454a6ebd410c8fa853c41865a696','二维码9768','b5beadb5e263442d96b7e2c66054293a'),('6eda19494892447e91493857dae573f1','二维码9083','45e781ab422e489ea5051d946b39e75d'),('7fd184d424ec44da9dd445dbfcf42c4f','二维码7667','db5ef2b78491461e90cf3ff3eb5a7a3a');
/*!40000 ALTER TABLE `store_partlive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_store`
--

DROP TABLE IF EXISTS `store_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_store` (
  `id` char(32) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Tell` varchar(200) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Company_id` char(32) DEFAULT NULL,
  `Status_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_store_Company_id_e02c8e58_fk_org_company_id` (`Company_id`),
  KEY `store_store_Status_id_d09289a1_fk_store_store_status_id` (`Status_id`),
  CONSTRAINT `store_store_Company_id_e02c8e58_fk_org_company_id` FOREIGN KEY (`Company_id`) REFERENCES `org_company` (`id`),
  CONSTRAINT `store_store_Status_id_d09289a1_fk_store_store_status_id` FOREIGN KEY (`Status_id`) REFERENCES `store_store_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_store`
--

LOCK TABLES `store_store` WRITE;
/*!40000 ALTER TABLE `store_store` DISABLE KEYS */;
INSERT INTO `store_store` VALUES ('076f3f0c70bc4db5a245962793172c66','华益气动','0574-8885822','浙江省奉化市溪口镇王浦桥沿江北路8号','41e3a3a013384cb081288c1811109a02','280bc6815f754516a66f1707c14fdd23'),('64b0678f5aeb4b28b52506cb7eb0741f','深圳市杰美康机电','0755-26509689','留仙三路鸿威工业区A栋2楼（金威啤酒厂旁）','403f5b5e27c844b88bcbbaabcae76cbd','52954df4c52d4311b684cd4430afbedf'),('6c863209ffd84298943cec4f33a3b3e2','迈迪仓库','0571-000000','浙江省杭州市下城区','41e3a3a013384cb081288c1811109a02','52954df4c52d4311b684cd4430afbedf'),('6fe7bde02c194634a3fd90d6c92c80c6','衡水云海液','543654366','河北省衡水市景县景州镇工业区','447ca2ad52b24a39a8ec9d3a4ed0c8f4','280bc6815f754516a66f1707c14fdd23'),('8c48b8246be244e0947632533da97448','深圳市杰美康机电','0755-26509689','留仙三路鸿威工业区A栋2楼（金威啤酒厂旁）','403f5b5e27c844b88bcbbaabcae76cbd','280bc6815f754516a66f1707c14fdd23'),('8dd3b766eace498c80f9838f2c30d892','华益气动','0574-8885822','浙江省奉化市溪口镇王浦桥沿江北路8号','41e3a3a013384cb081288c1811109a02','52954df4c52d4311b684cd4430afbedf'),('9be37d7684724ffc81150917f324084c','迈迪仓库','0571-000000','浙江省杭州市下城区','3a282f9209cd4ee2b1c04a4a7eb28da2','280bc6815f754516a66f1707c14fdd23'),('b2108380ed6a4bebaef526da756fa1aa','江西华伍','0795-6201884','江西省丰城市高新技术产业园区火炬大道26号','6d234d64fa8646369cd8abad03d18500','52954df4c52d4311b684cd4430afbedf'),('c3460cd87df649a6abcd329438fa68ec','江西华伍','0795-6201884','江西省丰城市高新技术产业园区火炬大道26号','6d234d64fa8646369cd8abad03d18500','280bc6815f754516a66f1707c14fdd23'),('e9f58a6749b14837ac81331efffbad5c','衡水云海液','15076815555','河北省衡水市景县景州镇工业区','447ca2ad52b24a39a8ec9d3a4ed0c8f4','52954df4c52d4311b684cd4430afbedf');
/*!40000 ALTER TABLE `store_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_store_status`
--

DROP TABLE IF EXISTS `store_store_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_store_status` (
  `id` char(32) NOT NULL,
  `NO` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_store_status`
--

LOCK TABLES `store_store_status` WRITE;
/*!40000 ALTER TABLE `store_store_status` DISABLE KEYS */;
INSERT INTO `store_store_status` VALUES ('280bc6815f754516a66f1707c14fdd23','002','仓库'),('52954df4c52d4311b684cd4430afbedf','001','临时仓库'),('e489a4f2db09456eb7a9980127b61fb0','003','虚拟仓库');
/*!40000 ALTER TABLE `store_store_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_storecon`
--

DROP TABLE IF EXISTS `store_storecon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_storecon` (
  `id` char(32) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `Head_id` char(32) DEFAULT NULL,
  `Last_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_storecon_Head_id_0ad2b421_fk_store_store_id` (`Head_id`),
  KEY `store_storecon_Last_id_8e821363_fk_store_store_id` (`Last_id`),
  CONSTRAINT `store_storecon_Head_id_0ad2b421_fk_store_store_id` FOREIGN KEY (`Head_id`) REFERENCES `store_store` (`id`),
  CONSTRAINT `store_storecon_Last_id_8e821363_fk_store_store_id` FOREIGN KEY (`Last_id`) REFERENCES `store_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_storecon`
--

LOCK TABLES `store_storecon` WRITE;
/*!40000 ALTER TABLE `store_storecon` DISABLE KEYS */;
INSERT INTO `store_storecon` VALUES ('112a75fb16c44adc807f194f70896a69',NULL,1,'e9f58a6749b14837ac81331efffbad5c','8dd3b766eace498c80f9838f2c30d892'),('34cd432c10504fe6aa26b38ad0356007',NULL,1,'c3460cd87df649a6abcd329438fa68ec','b2108380ed6a4bebaef526da756fa1aa'),('3a93fa5c6b7747a3b9291f21c09fc065',NULL,1,'8dd3b766eace498c80f9838f2c30d892','b2108380ed6a4bebaef526da756fa1aa'),('63088678c21a4421ad5f78641a841ad9',NULL,1,'b2108380ed6a4bebaef526da756fa1aa','64b0678f5aeb4b28b52506cb7eb0741f'),('64a0aa2e601a4f158a6c6a193ceae8e0',NULL,1,'c3460cd87df649a6abcd329438fa68ec','8c48b8246be244e0947632533da97448'),('8da407cd5b1641009d7685d02a326ffa',NULL,1,'076f3f0c70bc4db5a245962793172c66','8dd3b766eace498c80f9838f2c30d892'),('970c9e6c04834d29bc7416417c8de0ce',NULL,1,'6fe7bde02c194634a3fd90d6c92c80c6','076f3f0c70bc4db5a245962793172c66'),('ac802aa3863b4f229dab6735a9297fc7',NULL,1,'9be37d7684724ffc81150917f324084c','6c863209ffd84298943cec4f33a3b3e2'),('ae617871c6434d868851d4053f202b7f',NULL,1,'076f3f0c70bc4db5a245962793172c66','c3460cd87df649a6abcd329438fa68ec'),('ecc23103380e4e319d019d37b88f9d49',NULL,1,'8c48b8246be244e0947632533da97448','64b0678f5aeb4b28b52506cb7eb0741f'),('f6f195faaf73442d927b18b3d061b5fa',NULL,1,'6fe7bde02c194634a3fd90d6c92c80c6','e9f58a6749b14837ac81331efffbad5c');
/*!40000 ALTER TABLE `store_storecon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_storeconpartlive`
--

DROP TABLE IF EXISTS `store_storeconpartlive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_storeconpartlive` (
  `id` char(32) NOT NULL,
  `Number` int(11) NOT NULL,
  `PartLive_id` char(32) DEFAULT NULL,
  `Store_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_storeconpartlive_PartLive_id_43a51f56_fk_store_partlive_id` (`PartLive_id`),
  KEY `store_storeconpartlive_Store_id_fcac0e13_fk_store_store_id` (`Store_id`),
  CONSTRAINT `store_storeconpartlive_PartLive_id_43a51f56_fk_store_partlive_id` FOREIGN KEY (`PartLive_id`) REFERENCES `store_partlive` (`id`),
  CONSTRAINT `store_storeconpartlive_Store_id_fcac0e13_fk_store_store_id` FOREIGN KEY (`Store_id`) REFERENCES `store_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_storeconpartlive`
--

LOCK TABLES `store_storeconpartlive` WRITE;
/*!40000 ALTER TABLE `store_storeconpartlive` DISABLE KEYS */;
INSERT INTO `store_storeconpartlive` VALUES ('00d4912e56b84e5c8bb5ea9b5c290d22',42,'3a0b7bdbe97f4b5f958535ae16e05d5c','6c863209ffd84298943cec4f33a3b3e2'),('021c935adae2428fa45fb2a957ff599d',67,'64039a3016e640f08668861e1f7a5f40','6fe7bde02c194634a3fd90d6c92c80c6'),('05da4dd1c37f4fb2a3c69945db7224d0',337,'3a0b7bdbe97f4b5f958535ae16e05d5c','c3460cd87df649a6abcd329438fa68ec'),('0c697e19bca4441ebb84846f6cc79fdd',2319,'64039a3016e640f08668861e1f7a5f40','e9f58a6749b14837ac81331efffbad5c'),('107361476bb84be0b125072e61c0bc89',541,'6eda19494892447e91493857dae573f1','6fe7bde02c194634a3fd90d6c92c80c6'),('135f26f0114f4ac68b286cc52244a1e7',3045,'3a0b7bdbe97f4b5f958535ae16e05d5c','e9f58a6749b14837ac81331efffbad5c'),('16f130cbaded4aaebdc140e37520ef76',44,'6eda19494892447e91493857dae573f1',NULL),('257181f55b24424a81589d9c9d3da29f',1820,'7fd184d424ec44da9dd445dbfcf42c4f','b2108380ed6a4bebaef526da756fa1aa'),('271973015c0647c392b7764f229dab5c',2520,'64039a3016e640f08668861e1f7a5f40','8dd3b766eace498c80f9838f2c30d892'),('2eff6780342b4f93a614bb195fb5d60e',68442,'043ca7835cc44d69acaf03cf967ec456','e9f58a6749b14837ac81331efffbad5c'),('2fe9ed48638e4fe1926a2bbadef14973',246,'7fd184d424ec44da9dd445dbfcf42c4f','6fe7bde02c194634a3fd90d6c92c80c6'),('397f36e10c5a4b6794fcd3862cb605be',465,'3a0b7bdbe97f4b5f958535ae16e05d5c','b2108380ed6a4bebaef526da756fa1aa'),('3bc24e1241874bcbaf8763adc53dce58',1386,'64039a3016e640f08668861e1f7a5f40','b2108380ed6a4bebaef526da756fa1aa'),('3f25337dc39d4e5f945b6f62bdc95315',1778,'685f454a6ebd410c8fa853c41865a696','8dd3b766eace498c80f9838f2c30d892'),('3f45c9f463c0476cb9496c685da4041c',43,'685f454a6ebd410c8fa853c41865a696','6c863209ffd84298943cec4f33a3b3e2'),('3f96842a79864f36a423df7972205803',600,'685f454a6ebd410c8fa853c41865a696','076f3f0c70bc4db5a245962793172c66'),('44fd72efe5584a16b37070bcfc042550',30704,'7fd184d424ec44da9dd445dbfcf42c4f','8dd3b766eace498c80f9838f2c30d892'),('45b7ff9f03414e8f8f1c1cbda01c03bc',840,'043ca7835cc44d69acaf03cf967ec456','076f3f0c70bc4db5a245962793172c66'),('5403b93365074dfd93506cf26b8bc852',17532,'6eda19494892447e91493857dae573f1','e9f58a6749b14837ac81331efffbad5c'),('58dd779cdeba4ad690bd0018efd7a5ab',1768,'7fd184d424ec44da9dd445dbfcf42c4f','076f3f0c70bc4db5a245962793172c66'),('5beb3ed0a88844a881704dc60b559688',59,'6eda19494892447e91493857dae573f1','076f3f0c70bc4db5a245962793172c66'),('677cf901c503494d9b4566c14e8a6efe',861727,'685f454a6ebd410c8fa853c41865a696','e9f58a6749b14837ac81331efffbad5c'),('68155dabaa8f4359954ea632abaee261',39766,'6eda19494892447e91493857dae573f1','b2108380ed6a4bebaef526da756fa1aa'),('6fd6e22503964858b080a842c3c190d9',555555,'6eda19494892447e91493857dae573f1',NULL),('72de4b983ea5494b89cee4fbc32e5bac',600,'043ca7835cc44d69acaf03cf967ec456','64b0678f5aeb4b28b52506cb7eb0741f'),('7f3bd6a45429475fa8204d3fb6fea79c',76,'6eda19494892447e91493857dae573f1','9be37d7684724ffc81150917f324084c'),('84346603e9d646cfb0b542b8d3646c4a',500,'64039a3016e640f08668861e1f7a5f40','8c48b8246be244e0947632533da97448'),('8d38d2f607e44673a41f4c42a1ad7ea1',5732,'3a0b7bdbe97f4b5f958535ae16e05d5c','8dd3b766eace498c80f9838f2c30d892'),('94241470a40f43e5a8cddde264d3950c',4813,'64039a3016e640f08668861e1f7a5f40','c3460cd87df649a6abcd329438fa68ec'),('95fb77dcde3049b799260b3e55ff56c1',462,'3a0b7bdbe97f4b5f958535ae16e05d5c','6fe7bde02c194634a3fd90d6c92c80c6'),('999995d0d52f4004be443b089a2d0394',78,'7fd184d424ec44da9dd445dbfcf42c4f','9be37d7684724ffc81150917f324084c'),('a1d5e58355124e919b528c5cb754aec3',2680,'043ca7835cc44d69acaf03cf967ec456','8dd3b766eace498c80f9838f2c30d892'),('adfc21f554cd49ddafe898f84f0a52d2',2611424,'7fd184d424ec44da9dd445dbfcf42c4f','e9f58a6749b14837ac81331efffbad5c'),('b0b5bf83193945a7965907908c0b99ba',980,'64039a3016e640f08668861e1f7a5f40','076f3f0c70bc4db5a245962793172c66'),('b35cf8bca6db4668ac321843f4ab89a1',89,'64039a3016e640f08668861e1f7a5f40','9be37d7684724ffc81150917f324084c'),('b58596817fd34068a8f8ae7018161b0a',5424,'043ca7835cc44d69acaf03cf967ec456','b2108380ed6a4bebaef526da756fa1aa'),('c9cbf80f74024c28b4645d3cc439c120',541,'6eda19494892447e91493857dae573f1','6fe7bde02c194634a3fd90d6c92c80c6'),('d022f8f4ad87489f8d0fdb06ba44a02c',39877,'7fd184d424ec44da9dd445dbfcf42c4f','c3460cd87df649a6abcd329438fa68ec'),('d0d038bfde5a48c8857c6020b985eb5d',67,'64039a3016e640f08668861e1f7a5f40','64b0678f5aeb4b28b52506cb7eb0741f'),('d6edaccc84f643759456b971b65b3c05',26,'6eda19494892447e91493857dae573f1','8dd3b766eace498c80f9838f2c30d892'),('e5d25635a95b4345b13a3b1f02d75a80',160,'6eda19494892447e91493857dae573f1','c3460cd87df649a6abcd329438fa68ec'),('e968a7f47d1a452b9e0bdcfef849b941',349,'043ca7835cc44d69acaf03cf967ec456','6fe7bde02c194634a3fd90d6c92c80c6'),('f7273b0310a845be86ebc70ed646b4e8',118,'64039a3016e640f08668861e1f7a5f40','6c863209ffd84298943cec4f33a3b3e2'),('fa9d1814c28341e2ad5e8979151e7dc5',313,'64039a3016e640f08668861e1f7a5f40','6fe7bde02c194634a3fd90d6c92c80c6'),('fcdfc0a108854cf2aa812d887cf40f72',444444,'6eda19494892447e91493857dae573f1',NULL);
/*!40000 ALTER TABLE `store_storeconpartlive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_storeform`
--

DROP TABLE IF EXISTS `store_storeform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_storeform` (
  `id` char(32) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `OriginStore_id` char(32) DEFAULT NULL,
  `Status_id` char(32) DEFAULT NULL,
  `TargetStore_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_storeform_OriginStore_id_ed8219dd_fk_store_store_id` (`OriginStore_id`),
  KEY `store_storeform_Status_id_5bcc38c6_fk_store_form_status_id` (`Status_id`),
  KEY `store_storeform_TargetStore_id_37925845_fk_store_store_id` (`TargetStore_id`),
  CONSTRAINT `store_storeform_OriginStore_id_ed8219dd_fk_store_store_id` FOREIGN KEY (`OriginStore_id`) REFERENCES `store_store` (`id`),
  CONSTRAINT `store_storeform_Status_id_5bcc38c6_fk_store_form_status_id` FOREIGN KEY (`Status_id`) REFERENCES `store_form_status` (`id`),
  CONSTRAINT `store_storeform_TargetStore_id_37925845_fk_store_store_id` FOREIGN KEY (`TargetStore_id`) REFERENCES `store_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_storeform`
--

LOCK TABLES `store_storeform` WRITE;
/*!40000 ALTER TABLE `store_storeform` DISABLE KEYS */;
INSERT INTO `store_storeform` VALUES ('0eb1313d91ca401dac1b9ac279e1f5a6','退货单001','2018-01-04 04:49:01.384006','2018-01-12 09:34:15.619185','c3460cd87df649a6abcd329438fa68ec','d60c8174dc3c4600879c22060525cd3a','076f3f0c70bc4db5a245962793172c66'),('101c0ecb85cc45a386512654e99190e1','送货单003','2018-01-17 07:43:18.113625','2018-01-18 11:53:25.761299','6fe7bde02c194634a3fd90d6c92c80c6','813791ce479b4c6aa7fd93cde3941de4','8c48b8246be244e0947632533da97448'),('1098761281c84c17953a14d6ff582ca2','收货单002','2018-01-17 06:43:35.752170','2018-01-18 02:25:22.646085','6fe7bde02c194634a3fd90d6c92c80c6','9dd7ebb875a243da8ab37b3cb9f57231',NULL),('1926712f1c924f6bab4284b5db4939b1','入库单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','c3460cd87df649a6abcd329438fa68ec','ae4553f009d8446096fefb5bbd2bd88d',NULL),('1bccd2f04d184a68a261500ee972ad12','退货单001','2018-01-04 04:49:01.384006','2018-01-17 07:58:38.283466','6fe7bde02c194634a3fd90d6c92c80c6','d60c8174dc3c4600879c22060525cd3a','8c48b8246be244e0947632533da97448'),('1ea012339169444987193188d06db549','领料单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','076f3f0c70bc4db5a245962793172c66','bbeeec7ac14941fdb94a20dbd16efbb8',NULL),('276613bbdfd2413388df766ff28cb035','入库单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','076f3f0c70bc4db5a245962793172c66','ae4553f009d8446096fefb5bbd2bd88d',NULL),('2ca93ac5763042ce8878ac96ee3031d4','入库单003','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','6fe7bde02c194634a3fd90d6c92c80c6','ae4553f009d8446096fefb5bbd2bd88d',NULL),('3993022273fa46789d990594fd8b41a4','收货单001','2018-01-04 04:49:01.384006','2018-01-18 11:40:21.669927','6fe7bde02c194634a3fd90d6c92c80c6','9dd7ebb875a243da8ab37b3cb9f57231',NULL),('4314107ad6fb457391f6d6d13e420770','送货单002','2018-01-17 07:43:07.777513','2018-01-19 07:36:42.374188','6fe7bde02c194634a3fd90d6c92c80c6','813791ce479b4c6aa7fd93cde3941de4','076f3f0c70bc4db5a245962793172c66'),('4ac23a0bd935455b99cfba4f8c4d1988','出库单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','c3460cd87df649a6abcd329438fa68ec','765420f84edc4855917156813a89cff1','6fe7bde02c194634a3fd90d6c92c80c6'),('53fb7b02571344fb9e2810a254005705','收货单002','2018-01-06 01:48:56.896858','2018-01-06 10:34:57.964892','c3460cd87df649a6abcd329438fa68ec','9dd7ebb875a243da8ab37b3cb9f57231',NULL),('58e61b2eb49848a6ab97b87ab8379c16','送料单001','2018-01-04 04:49:01.384006','2018-02-22 11:07:39.357755','6fe7bde02c194634a3fd90d6c92c80c6','770cb8e608f040c1a2fd953322948cdc','076f3f0c70bc4db5a245962793172c66'),('5ec365a32b3440e7950a16a78ff427f9','出库单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','6fe7bde02c194634a3fd90d6c92c80c6','765420f84edc4855917156813a89cff1','c3460cd87df649a6abcd329438fa68ec'),('7c7c66a6ac4b4889b6c9b1838202604d','领货单001','2018-01-04 04:49:01.384006','2018-02-26 11:35:17.338529','6fe7bde02c194634a3fd90d6c92c80c6','3779a64ad05b4f498861e4847341d5dc',NULL),('836e8ae9471a4723a949028dde9b8156','退货单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','8c48b8246be244e0947632533da97448','d60c8174dc3c4600879c22060525cd3a','076f3f0c70bc4db5a245962793172c66'),('9eac2f04359d4ab6ac7c87112882cbd8','收货单001','2018-01-04 04:49:01.384006','2018-01-06 10:28:02.098463','c3460cd87df649a6abcd329438fa68ec','9dd7ebb875a243da8ab37b3cb9f57231',NULL),('a315af35d601485f97830030d9f5cc9b','退货单002','2018-01-17 07:58:34.552647','2018-01-17 07:59:18.177393','6fe7bde02c194634a3fd90d6c92c80c6','d60c8174dc3c4600879c22060525cd3a','c3460cd87df649a6abcd329438fa68ec'),('a85542fb05b1413c8db60810d9bee700','入库单001','2018-01-04 04:49:01.384006','2018-01-05 07:00:06.701238','6fe7bde02c194634a3fd90d6c92c80c6','ae4553f009d8446096fefb5bbd2bd88d',NULL),('afa4c653a33a4094b83d02d08adc8870','盘库单001','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','6fe7bde02c194634a3fd90d6c92c80c6','97282a182211481d8dbf16199c1512d6',NULL),('b456610145764d728809721d946b87f8','收货单001','2018-01-04 04:49:01.384006','2018-02-22 11:05:12.954352','076f3f0c70bc4db5a245962793172c66','9dd7ebb875a243da8ab37b3cb9f57231',NULL),('b7a9538b580c4c21b4fbbe34f50e2c6b','送货单001','2018-01-17 09:28:55.615665','2018-01-17 09:29:12.749074','9be37d7684724ffc81150917f324084c','813791ce479b4c6aa7fd93cde3941de4','6fe7bde02c194634a3fd90d6c92c80c6'),('c66dc6a1a3cc4bc29c6dfe8383487d23','送料单001','2018-01-30 10:46:18.659956','2018-01-30 10:46:42.658373','c3460cd87df649a6abcd329438fa68ec','770cb8e608f040c1a2fd953322948cdc','6fe7bde02c194634a3fd90d6c92c80c6'),('c6d3edaed83e4001a0f1398f66ea67b5','入库单002','2018-01-04 04:49:01.384006','2018-01-04 04:49:01.394581','6fe7bde02c194634a3fd90d6c92c80c6','ae4553f009d8446096fefb5bbd2bd88d',NULL),('e26b1319b2534767a6cff12f719f585e','领料单001','2018-01-04 04:49:01.384006','2018-01-08 06:51:41.065032','6fe7bde02c194634a3fd90d6c92c80c6','bbeeec7ac14941fdb94a20dbd16efbb8',NULL),('e5f61dea09484cc4abb9c781b57aad1c','送货单001','2018-01-04 04:49:01.384006','2018-02-22 10:51:34.671700','6fe7bde02c194634a3fd90d6c92c80c6','813791ce479b4c6aa7fd93cde3941de4','6fe7bde02c194634a3fd90d6c92c80c6'),('ea7e05b2840c428fbea4c4509e2e9063','送料单002','2018-01-17 08:02:26.091655','2018-01-17 08:02:45.064857','6fe7bde02c194634a3fd90d6c92c80c6','770cb8e608f040c1a2fd953322948cdc','c3460cd87df649a6abcd329438fa68ec'),('f3ea0c92bc464bbbb410284ecc1425c8','领货单002','2018-01-04 04:49:01.384006','2018-01-08 01:00:23.739696','6fe7bde02c194634a3fd90d6c92c80c6','3779a64ad05b4f498861e4847341d5dc',NULL),('faa6d45e4c084e7fbddb3fbe6c5c2c8f','退货单003','2018-01-17 07:59:30.266400','2018-01-17 07:59:30.266444','6fe7bde02c194634a3fd90d6c92c80c6','d60c8174dc3c4600879c22060525cd3a','076f3f0c70bc4db5a245962793172c66');
/*!40000 ALTER TABLE `store_storeform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_storeformconpartlive`
--

DROP TABLE IF EXISTS `store_storeformconpartlive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_storeformconpartlive` (
  `id` char(32) NOT NULL,
  `Number` int(11) NOT NULL,
  `PartLive_id` char(32) DEFAULT NULL,
  `StoreForm_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_storeformconpa_PartLive_id_597d8ccb_fk_store_par` (`PartLive_id`),
  KEY `store_storeformconpa_StoreForm_id_f6fbe7a3_fk_store_sto` (`StoreForm_id`),
  CONSTRAINT `store_storeformconpa_PartLive_id_597d8ccb_fk_store_par` FOREIGN KEY (`PartLive_id`) REFERENCES `store_partlive` (`id`),
  CONSTRAINT `store_storeformconpa_StoreForm_id_f6fbe7a3_fk_store_sto` FOREIGN KEY (`StoreForm_id`) REFERENCES `store_storeform` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_storeformconpartlive`
--

LOCK TABLES `store_storeformconpartlive` WRITE;
/*!40000 ALTER TABLE `store_storeformconpartlive` DISABLE KEYS */;
INSERT INTO `store_storeformconpartlive` VALUES ('01510752cbe242ee9ed36011517176ae',43,'64039a3016e640f08668861e1f7a5f40','836e8ae9471a4723a949028dde9b8156'),('036c31c97c76452aaf0919bc5743a1d7',67,'685f454a6ebd410c8fa853c41865a696','e26b1319b2534767a6cff12f719f585e'),('04dd36b792164a7f884926ee47232543',70,'043ca7835cc44d69acaf03cf967ec456','a315af35d601485f97830030d9f5cc9b'),('0bd7907d116f40858ce38f49b61b6ae1',54,'7fd184d424ec44da9dd445dbfcf42c4f','a85542fb05b1413c8db60810d9bee700'),('0db27da2c3594b13ac05878514c689e5',67,'64039a3016e640f08668861e1f7a5f40','7c7c66a6ac4b4889b6c9b1838202604d'),('10042272855f4390bc38f93638d6f00f',45,'64039a3016e640f08668861e1f7a5f40','c66dc6a1a3cc4bc29c6dfe8383487d23'),('123889132ba04f36b19e99cf96a95c0d',45,'6eda19494892447e91493857dae573f1','e26b1319b2534767a6cff12f719f585e'),('1253703e82b2438b8a68a570bc279aa1',89,'685f454a6ebd410c8fa853c41865a696','1926712f1c924f6bab4284b5db4939b1'),('24bc83234ef0478ab695f33b979ab40b',60,'6eda19494892447e91493857dae573f1','101c0ecb85cc45a386512654e99190e1'),('25fd66f98291480fb403f6b9c7d6c880',67,'64039a3016e640f08668861e1f7a5f40','1098761281c84c17953a14d6ff582ca2'),('27e076daa1784fb886570ded017037f4',77,'64039a3016e640f08668861e1f7a5f40','3993022273fa46789d990594fd8b41a4'),('2c265c4eee8a4db4a53782f6d132ac1e',80,'64039a3016e640f08668861e1f7a5f40','101c0ecb85cc45a386512654e99190e1'),('329c263ad2eb4aec959394ebec633429',83,'7fd184d424ec44da9dd445dbfcf42c4f','5ec365a32b3440e7950a16a78ff427f9'),('32f188b5ef8c4f398bba0f8dfcc4575f',56,'6eda19494892447e91493857dae573f1','c6d3edaed83e4001a0f1398f66ea67b5'),('3325136fbd19466ca68a17866e19a9d0',78,'3a0b7bdbe97f4b5f958535ae16e05d5c','e5f61dea09484cc4abb9c781b57aad1c'),('35cbe0a67c8e47e591102839529dfc56',97,'685f454a6ebd410c8fa853c41865a696','ea7e05b2840c428fbea4c4509e2e9063'),('38ba62f8fc8449d68c8671b686df8087',78,'043ca7835cc44d69acaf03cf967ec456','e26b1319b2534767a6cff12f719f585e'),('39000ae70fcb4a4c85974b36c6b976e1',89,'7fd184d424ec44da9dd445dbfcf42c4f','b456610145764d728809721d946b87f8'),('39b3bf42088241c78ddf992162e5bf3d',79,'3a0b7bdbe97f4b5f958535ae16e05d5c','1926712f1c924f6bab4284b5db4939b1'),('3b4e80bf06b44754b52701e81cfa24ff',60,'7fd184d424ec44da9dd445dbfcf42c4f','a315af35d601485f97830030d9f5cc9b'),('3cc381a9c88b4d209906c22cbf5b0396',78,'685f454a6ebd410c8fa853c41865a696','b7a9538b580c4c21b4fbbe34f50e2c6b'),('3d2078458d4a415cb39865b7a0cb1092',78,'64039a3016e640f08668861e1f7a5f40','9eac2f04359d4ab6ac7c87112882cbd8'),('41bd85f2cf9d4864813e20fa00fe59ca',86,'685f454a6ebd410c8fa853c41865a696','b456610145764d728809721d946b87f8'),('437cc9eb04f74cd3bfc07cbbbe6aebb4',67,'685f454a6ebd410c8fa853c41865a696','2ca93ac5763042ce8878ac96ee3031d4'),('4441827a1ac045438309669a94872a52',78,'7fd184d424ec44da9dd445dbfcf42c4f','276613bbdfd2413388df766ff28cb035'),('46f0ce0ca4cf4cb1bfd31017fb964c2b',92,'64039a3016e640f08668861e1f7a5f40','4ac23a0bd935455b99cfba4f8c4d1988'),('477cb37a6fe0453bb7cb82784f789914',68,'685f454a6ebd410c8fa853c41865a696','101c0ecb85cc45a386512654e99190e1'),('48f18c9a6b7846df96b27604e72b4114',356,'3a0b7bdbe97f4b5f958535ae16e05d5c','b456610145764d728809721d946b87f8'),('4af7994cd2024d41a75467f16e683361',65,'7fd184d424ec44da9dd445dbfcf42c4f','ea7e05b2840c428fbea4c4509e2e9063'),('4b7002c34ae44e809be02245a244c9fc',65,'7fd184d424ec44da9dd445dbfcf42c4f','53fb7b02571344fb9e2810a254005705'),('4c5999e0e58a40b99732621902525ddd',67,'7fd184d424ec44da9dd445dbfcf42c4f','e5f61dea09484cc4abb9c781b57aad1c'),('4e42012c3cc64b2fa4c65b4439216d45',67,'7fd184d424ec44da9dd445dbfcf42c4f','836e8ae9471a4723a949028dde9b8156'),('59aa2d18a7be44f7a1eb0ce7f6eb4b11',67,'6eda19494892447e91493857dae573f1','1bccd2f04d184a68a261500ee972ad12'),('63d44e2d08904ebf88fb7eb101366ffd',67,'043ca7835cc44d69acaf03cf967ec456','a85542fb05b1413c8db60810d9bee700'),('64522ea1dcc34b76a7a33e239169e9d0',45,'3a0b7bdbe97f4b5f958535ae16e05d5c','3993022273fa46789d990594fd8b41a4'),('6554395975304afb93990033f9a09a88',67,'7fd184d424ec44da9dd445dbfcf42c4f','f3ea0c92bc464bbbb410284ecc1425c8'),('67b8b85dae3644cd838ca407109e2ae8',4343,'6eda19494892447e91493857dae573f1','9eac2f04359d4ab6ac7c87112882cbd8'),('67ebcf597e3e4348812e6b5f979597f1',89,'043ca7835cc44d69acaf03cf967ec456','53fb7b02571344fb9e2810a254005705'),('7006700a43ff4ea7b9f010dea926bd4c',54,'6eda19494892447e91493857dae573f1','f3ea0c92bc464bbbb410284ecc1425c8'),('71bcc15ef7c6440c81be044af439d4f0',79,'64039a3016e640f08668861e1f7a5f40','1bccd2f04d184a68a261500ee972ad12'),('7923683ffc7f4e45be5f1ea06e37b1f7',89,'6eda19494892447e91493857dae573f1','0eb1313d91ca401dac1b9ac279e1f5a6'),('7b2235bbf66d4244a0e758da30a2cfc7',7,'043ca7835cc44d69acaf03cf967ec456','c6d3edaed83e4001a0f1398f66ea67b5'),('80310952b78d4ee58d552983b9413adb',45,'64039a3016e640f08668861e1f7a5f40','2ca93ac5763042ce8878ac96ee3031d4'),('85d31d06bc3640c0b42399adb7d1dae8',64,'64039a3016e640f08668861e1f7a5f40','0eb1313d91ca401dac1b9ac279e1f5a6'),('8f03f6201a9948529797e771d1527bc5',67,'64039a3016e640f08668861e1f7a5f40','e5f61dea09484cc4abb9c781b57aad1c'),('96998cca54fd42be93c183ec36f5c750',607,'043ca7835cc44d69acaf03cf967ec456','3993022273fa46789d990594fd8b41a4'),('97d74f198a5d4213a63675c571ac1a32',67,'64039a3016e640f08668861e1f7a5f40','1926712f1c924f6bab4284b5db4939b1'),('9df06ccc1a7b41acbc1c528b02532f16',79,'6eda19494892447e91493857dae573f1','a85542fb05b1413c8db60810d9bee700'),('9ea6af22503a42e3a521767d7fd9326d',56,'043ca7835cc44d69acaf03cf967ec456','276613bbdfd2413388df766ff28cb035'),('9fe6dee4e58144eab25faceeb946213e',45,'6eda19494892447e91493857dae573f1','7c7c66a6ac4b4889b6c9b1838202604d'),('a3d46d00807b4074ad068e6f7afa09b7',78,'6eda19494892447e91493857dae573f1','53fb7b02571344fb9e2810a254005705'),('c021344bb18e43cbaadb350be46bf073',20,'7fd184d424ec44da9dd445dbfcf42c4f','c66dc6a1a3cc4bc29c6dfe8383487d23'),('c3eca8f3eb77409e9a51425974ed652d',34,'7fd184d424ec44da9dd445dbfcf42c4f','58e61b2eb49848a6ab97b87ab8379c16'),('c3f9d3f326d343aca4e80e1ffb45ff28',45,'7fd184d424ec44da9dd445dbfcf42c4f','0eb1313d91ca401dac1b9ac279e1f5a6'),('c4f4a35f0c0e4cf3a91e2039e0d6da03',78,'043ca7835cc44d69acaf03cf967ec456','1ea012339169444987193188d06db549'),('c6bc2ad83bea4cbebbd36e40ee6973de',54,'3a0b7bdbe97f4b5f958535ae16e05d5c','c6d3edaed83e4001a0f1398f66ea67b5'),('cbca3752656e4a7f826368b22079f468',65,'6eda19494892447e91493857dae573f1','58e61b2eb49848a6ab97b87ab8379c16'),('d0a825d8690a4257ad781ae617e15098',89,'3a0b7bdbe97f4b5f958535ae16e05d5c','4314107ad6fb457391f6d6d13e420770'),('d78aff3ca84c4f92969e6e44f57dd8c3',78,'3a0b7bdbe97f4b5f958535ae16e05d5c','9eac2f04359d4ab6ac7c87112882cbd8'),('d9ab4253a09c41e2a9370f8ed7fc861e',89,'043ca7835cc44d69acaf03cf967ec456','9eac2f04359d4ab6ac7c87112882cbd8'),('e8c9d0e5370b4bb5ae1cd7b600bb7554',67,'64039a3016e640f08668861e1f7a5f40','5ec365a32b3440e7950a16a78ff427f9'),('ea7cdad3346a4093adaf7cb2d68db7a7',78,'64039a3016e640f08668861e1f7a5f40','4314107ad6fb457391f6d6d13e420770'),('eebc4a3859e143508c72800173aa6445',46,'6eda19494892447e91493857dae573f1','4314107ad6fb457391f6d6d13e420770'),('f45f39a7326d435789e35e0ced31b931',89,'64039a3016e640f08668861e1f7a5f40','53fb7b02571344fb9e2810a254005705'),('f75b37f6b67742bca7e8deb21ca0635c',64,'7fd184d424ec44da9dd445dbfcf42c4f','4ac23a0bd935455b99cfba4f8c4d1988'),('fcafa68dbe384cefa19fe7599db4c5d0',65,'7fd184d424ec44da9dd445dbfcf42c4f','b7a9538b580c4c21b4fbbe34f50e2c6b');
/*!40000 ALTER TABLE `store_storeformconpartlive` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-14 22:07:32
