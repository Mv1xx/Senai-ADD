-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: smartfactory
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alerta`
--

DROP TABLE IF EXISTS `alerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerta` (
  `id_alerta` int NOT NULL AUTO_INCREMENT,
  `nivel_alerta` varchar(50) DEFAULT NULL,
  `data_hora_inicio` datetime DEFAULT NULL,
  `data_hora_fim` datetime DEFAULT NULL,
  `duracao_min` int DEFAULT NULL,
  `fk_leitura` int DEFAULT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerta`
--

LOCK TABLES `alerta` WRITE;
/*!40000 ALTER TABLE `alerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `id_equipamento` int NOT NULL AUTO_INCREMENT,
  `nome_equipamento` varchar(50) NOT NULL,
  `status_equipamento` varchar(50) NOT NULL,
  `fk_setor` int DEFAULT NULL,
  PRIMARY KEY (`id_equipamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Caldeira','Manutencao',4),(2,'Centro de Usinagem','Inativo',4),(3,'Compressor Industrial','Ativo',6),(4,'Corte Laser','Ativo',2),(5,'Esteira Transportadora','Manutencao',1),(6,'Fresadora CNC','Inativo',2),(7,'Injetora','Inativo',6),(8,'Prensa Hidraulica','Ativo',1),(9,'Robo Soldador','Inativo',4),(10,'Torno CNC','Manutencao',5);
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `codigo_evento` char(8) DEFAULT NULL,
  `status_evento` varchar(20) DEFAULT NULL,
  `fk_alerta` int DEFAULT NULL,
  PRIMARY KEY (`id_historico`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'EVT-1004','Encerrado',1),(2,'EVT-1005','Encerrado',2),(3,'EVT-1007','Encerrado',3),(4,'EVT-1008','Encerrado',4),(5,'EVT-1019','Encerrado',5),(6,'EVT-1020','Encerrado',6),(7,'EVT-1023','Encerrado',7),(8,'EVT-1029','Encerrado',8),(9,'EVT-1031','Encerrado',9),(10,'EVT-1035','Encerrado',10),(11,'EVT-1036','Encerrado',11),(12,'EVT-1040','Encerrado',12),(13,'EVT-1041','Em andamento',13),(14,'EVT-1042','Encerrado',14),(15,'EVT-1043','Encerrado',15),(16,'EVT-1048','Encerrado',16),(17,'EVT-1049','Encerrado',17),(18,'EVT-1050','Encerrado',18),(19,'EVT-1051','Encerrado',19),(20,'EVT-1056','Encerrado',20),(21,'EVT-1063','Encerrado',21),(22,'EVT-1066','Encerrado',22),(23,'EVT-1076','Encerrado',23),(24,'EVT-1080','Encerrado',24),(25,'EVT-1082','Encerrado',25),(26,'EVT-1091','Encerrado',26),(27,'EVT-1095','Encerrado',27),(28,'EVT-1097','Encerrado',28),(29,'EVT-1101','Encerrado',29),(30,'EVT-1112','Encerrado',30),(31,'EVT-1115','Encerrado',31),(32,'EVT-1116','Encerrado',32),(33,'EVT-1124','Em andamento',33),(34,'EVT-1130','Encerrado',34),(35,'EVT-1131','Encerrado',35),(36,'EVT-1134','Encerrado',36),(37,'EVT-1136','Encerrado',37),(38,'EVT-1138','Encerrado',38),(39,'EVT-1143','Encerrado',39),(40,'EVT-1144','Encerrado',40),(41,'EVT-1146','Encerrado',41),(42,'EVT-1149','Encerrado',42),(43,'EVT-1161','Encerrado',43),(44,'EVT-1162','Em andamento',44),(45,'EVT-1172','Encerrado',45),(46,'EVT-1176','Encerrado',46),(47,'EVT-1178','Encerrado',47),(48,'EVT-1190','Encerrado',48),(49,'EVT-1191','Encerrado',49),(50,'EVT-1192','Encerrado',50),(51,'EVT-1194','Encerrado',51),(52,'EVT-1205','Encerrado',52),(53,'EVT-1209','Encerrado',53),(54,'EVT-1212','Encerrado',54),(55,'EVT-1220','Encerrado',55),(56,'EVT-1222','Encerrado',56),(57,'EVT-1228','Encerrado',57),(58,'EVT-1232','Em andamento',58),(59,'EVT-1234','Encerrado',59),(60,'EVT-1238','Encerrado',60),(61,'EVT-1244','Encerrado',61),(62,'EVT-1249','Encerrado',62),(63,'EVT-1252','Encerrado',63),(64,'EVT-1254','Encerrado',64),(65,'EVT-1258','Encerrado',65),(66,'EVT-1262','Encerrado',66),(67,'EVT-1263','Encerrado',67),(68,'EVT-1265','Encerrado',68),(69,'EVT-1271','Encerrado',69),(70,'EVT-1273','Encerrado',70),(71,'EVT-1274','Em andamento',71),(72,'EVT-1282','Encerrado',72),(73,'EVT-1293','Encerrado',73),(74,'EVT-1294','Encerrado',74);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitura`
--

DROP TABLE IF EXISTS `leitura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitura` (
  `id_leitura` int NOT NULL AUTO_INCREMENT,
  `data_hora_leitura` datetime DEFAULT NULL,
  `valor_leitura` decimal(10,2) DEFAULT NULL,
  `alerta_gerado` varchar(10) DEFAULT NULL,
  `fk_sensor` int DEFAULT NULL,
  `coluna` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_leitura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitura`
--

LOCK TABLES `leitura` WRITE;
/*!40000 ALTER TABLE `leitura` DISABLE KEYS */;
/*!40000 ALTER TABLE `leitura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor` (
  `id_sensor` int NOT NULL AUTO_INCREMENT,
  `codigo_sensor` char(8) DEFAULT NULL,
  `limite_minimo` int DEFAULT NULL,
  `limite_maximo` int DEFAULT NULL,
  `fk_tipo` int DEFAULT NULL,
  `fk_equipamento` int DEFAULT NULL,
  PRIMARY KEY (`id_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,'SEN-1046',10,60,3,1),(2,'SEN-1086',10,60,3,9),(3,'SEN-1152',20,80,2,1),(4,'SEN-1166',0,5,4,3),(5,'SEN-1187',20,80,2,1),(6,'SEN-1188',0,5,4,6),(7,'SEN-1266',20,80,2,3),(8,'SEN-1307',0,5,4,10),(9,'SEN-1410',0,5,4,7),(10,'SEN-1422',10,60,3,8),(11,'SEN-1430',0,5,4,6),(12,'SEN-1436',10,60,3,11),(13,'SEN-1530',20,80,2,5),(14,'SEN-1590',30,120,1,8),(15,'SEN-1595',30,120,1,5),(16,'SEN-1606',10,60,3,8),(17,'SEN-1626',10,60,3,4),(18,'SEN-1627',20,80,2,8),(19,'SEN-1651',20,80,2,4),(20,'SEN-1659',10,60,3,3),(21,'SEN-1672',0,5,4,4),(22,'SEN-1693',0,5,4,1),(23,'SEN-1724',0,5,4,7),(24,'SEN-1741',10,60,3,5),(25,'SEN-1821',20,80,2,1),(26,'SEN-1828',20,80,2,6),(27,'SEN-1858',20,80,2,8),(28,'SEN-1861',20,80,2,4),(29,'SEN-1977',20,80,2,8),(30,'SEN-1987',30,120,1,2),(31,'SEN-2029',20,80,2,4),(32,'SEN-2076',30,120,1,4),(33,'SEN-2102',10,60,3,7),(34,'SEN-2122',0,5,4,2),(35,'SEN-2163',20,80,2,7),(36,'SEN-2229',30,120,1,8),(37,'SEN-2293',20,80,2,8),(38,'SEN-2317',20,80,2,9),(39,'SEN-2381',30,120,1,2),(40,'SEN-2388',0,5,4,5),(41,'SEN-2395',20,80,2,4),(42,'SEN-2403',10,60,3,4),(43,'SEN-2442',0,5,4,10),(44,'SEN-2479',20,80,2,3),(45,'SEN-2494',0,5,4,9),(46,'SEN-2530',30,120,1,4),(47,'SEN-2557',0,5,4,5),(48,'SEN-2625',20,80,2,4),(49,'SEN-2679',30,120,1,8),(50,'SEN-2697',10,60,3,6),(51,'SEN-2768',10,60,3,5),(52,'SEN-2771',20,80,2,11),(53,'SEN-2800',30,120,1,11),(54,'SEN-2821',20,80,2,6),(55,'SEN-2832',0,5,4,9),(56,'SEN-2848',10,60,3,7),(57,'SEN-2868',30,120,1,6),(58,'SEN-2887',10,60,3,5),(59,'SEN-2894',0,5,4,4),(60,'SEN-2902',20,80,2,3),(61,'SEN-2922',20,80,2,7),(62,'SEN-2958',30,120,1,7),(63,'SEN-3007',20,80,2,7),(64,'SEN-3039',20,80,2,1),(65,'SEN-3068',30,120,1,6),(66,'SEN-3086',30,120,1,5),(67,'SEN-3108',30,120,1,4),(68,'SEN-3198',30,120,1,6),(69,'SEN-3255',20,80,2,2),(70,'SEN-3287',30,120,1,8),(71,'SEN-3324',0,5,4,5),(72,'SEN-3399',0,5,4,7),(73,'SEN-3496',20,80,2,7),(74,'SEN-3531',20,80,2,6),(75,'SEN-3532',30,120,1,5),(76,'SEN-3600',30,120,1,6),(77,'SEN-3616',30,120,1,9),(78,'SEN-3621',10,60,3,2),(79,'SEN-3626',0,5,4,3),(80,'SEN-3697',0,5,4,8),(81,'SEN-3725',30,120,1,2),(82,'SEN-3793',0,5,4,4),(83,'SEN-3803',20,80,2,11),(84,'SEN-3869',10,60,3,10),(85,'SEN-3885',20,80,2,8),(86,'SEN-3962',30,120,1,8),(87,'SEN-3981',20,80,2,6),(88,'SEN-4048',0,5,4,10),(89,'SEN-4068',20,80,2,4),(90,'SEN-4084',0,5,4,9),(91,'SEN-4090',0,5,4,9),(92,'SEN-4111',20,80,2,9),(93,'SEN-4145',0,5,4,1),(94,'SEN-4150',30,120,1,4),(95,'SEN-4164',20,80,2,7),(96,'SEN-4178',30,120,1,11),(97,'SEN-4185',20,80,2,9),(98,'SEN-4241',20,80,2,4),(99,'SEN-4249',20,80,2,5),(100,'SEN-4262',30,120,1,3),(101,'SEN-4295',20,80,2,6),(102,'SEN-4302',20,80,2,10),(103,'SEN-4312',0,5,4,6),(104,'SEN-4335',0,5,4,9),(105,'SEN-4362',30,120,1,8),(106,'SEN-4365',0,5,4,2),(107,'SEN-4396',20,80,2,3),(108,'SEN-4453',20,80,2,4),(109,'SEN-4475',0,5,4,2),(110,'SEN-4522',0,5,4,2),(111,'SEN-4555',0,5,4,2),(112,'SEN-4582',30,120,1,10),(113,'SEN-4611',0,5,4,6),(114,'SEN-4612',20,80,2,3),(115,'SEN-4618',30,120,1,3),(116,'SEN-4673',20,80,2,10),(117,'SEN-4678',0,5,4,2),(118,'SEN-4692',0,5,4,9),(119,'SEN-4733',30,120,1,10),(120,'SEN-4750',20,80,2,10),(121,'SEN-4770',20,80,2,5),(122,'SEN-4804',30,120,1,2),(123,'SEN-4891',30,120,1,5),(124,'SEN-4899',30,120,1,2),(125,'SEN-4920',0,5,4,11),(126,'SEN-4921',10,60,3,7),(127,'SEN-4944',10,60,3,6),(128,'SEN-4963',10,60,3,6),(129,'SEN-4972',10,60,3,11),(130,'SEN-4981',30,120,1,4),(131,'SEN-4986',30,120,1,7),(132,'SEN-4995',0,5,4,3),(133,'SEN-5050',10,60,3,9),(134,'SEN-5061',20,80,2,9),(135,'SEN-5067',0,5,4,4),(136,'SEN-5105',20,80,2,3),(137,'SEN-5106',30,120,1,7),(138,'SEN-5169',0,5,4,10),(139,'SEN-5198',20,80,2,9),(140,'SEN-5215',0,5,4,9),(141,'SEN-5285',20,80,2,1),(142,'SEN-5295',0,5,4,9),(143,'SEN-5333',20,80,2,11),(144,'SEN-5342',30,120,1,2),(145,'SEN-5345',20,80,2,10),(146,'SEN-5377',10,60,3,1),(147,'SEN-5479',30,120,1,6),(148,'SEN-5552',0,5,4,5),(149,'SEN-5558',20,80,2,1),(150,'SEN-5678',0,5,4,9),(151,'SEN-5681',20,80,2,9),(152,'SEN-5708',30,120,1,2),(153,'SEN-5712',10,60,3,3),(154,'SEN-5720',20,80,2,10),(155,'SEN-5739',0,5,4,8),(156,'SEN-5742',10,60,3,8),(157,'SEN-5757',10,60,3,6),(158,'SEN-5803',30,120,1,2),(159,'SEN-5808',30,120,1,1),(160,'SEN-5837',10,60,3,4),(161,'SEN-5843',10,60,3,2),(162,'SEN-5844',20,80,2,1),(163,'SEN-5888',30,120,1,10),(164,'SEN-5911',30,120,1,6),(165,'SEN-5930',20,80,2,8),(166,'SEN-5944',10,60,3,1),(167,'SEN-5949',20,80,2,3),(168,'SEN-5952',20,80,2,1),(169,'SEN-5956',10,60,3,9),(170,'SEN-6062',10,60,3,3),(171,'SEN-6119',20,80,2,10),(172,'SEN-6147',20,80,2,3),(173,'SEN-6155',20,80,2,2),(174,'SEN-6179',30,120,1,4),(175,'SEN-6188',30,120,1,6),(176,'SEN-6194',30,120,1,2),(177,'SEN-6222',30,120,1,5),(178,'SEN-6279',0,5,4,4),(179,'SEN-6301',0,5,4,8),(180,'SEN-6313',30,120,1,6),(181,'SEN-6325',10,60,3,7),(182,'SEN-6400',20,80,2,6),(183,'SEN-6409',30,120,1,5),(184,'SEN-6411',30,120,1,2),(185,'SEN-6419',30,120,1,5),(186,'SEN-6442',10,60,3,8),(187,'SEN-6447',30,120,1,2),(188,'SEN-6461',20,80,2,4),(189,'SEN-6482',0,5,4,4),(190,'SEN-6507',10,60,3,10),(191,'SEN-6530',20,80,2,9),(192,'SEN-6531',30,120,1,4),(193,'SEN-6617',20,80,2,4),(194,'SEN-6658',0,5,4,1),(195,'SEN-6727',0,5,4,7),(196,'SEN-6736',20,80,2,7),(197,'SEN-6766',0,5,4,4),(198,'SEN-6770',30,120,1,9),(199,'SEN-6862',0,5,4,1),(200,'SEN-6876',0,5,4,6),(201,'SEN-6928',20,80,2,9),(202,'SEN-6930',30,120,1,4),(203,'SEN-7044',20,80,2,10),(204,'SEN-7065',10,60,3,1),(205,'SEN-7070',30,120,1,10),(206,'SEN-7073',0,5,4,1),(207,'SEN-7079',0,5,4,2),(208,'SEN-7126',10,60,3,7),(209,'SEN-7141',20,80,2,3),(210,'SEN-7232',20,80,2,10),(211,'SEN-7275',20,80,2,8),(212,'SEN-7438',30,120,1,1),(213,'SEN-7484',0,5,4,6),(214,'SEN-7511',30,120,1,8),(215,'SEN-7523',10,60,3,2),(216,'SEN-7565',20,80,2,2),(217,'SEN-7596',10,60,3,2),(218,'SEN-7643',20,80,2,7),(219,'SEN-7655',10,60,3,10),(220,'SEN-7735',10,60,3,1),(221,'SEN-7744',0,5,4,8),(222,'SEN-7807',0,5,4,1),(223,'SEN-7812',20,80,2,6),(224,'SEN-7824',10,60,3,6),(225,'SEN-7841',0,5,4,10),(226,'SEN-7882',0,5,4,1),(227,'SEN-7887',10,60,3,8),(228,'SEN-7912',20,80,2,9),(229,'SEN-7937',0,5,4,6),(230,'SEN-7939',30,120,1,2),(231,'SEN-7947',20,80,2,9),(232,'SEN-7965',30,120,1,10),(233,'SEN-8043',30,120,1,2),(234,'SEN-8055',0,5,4,5),(235,'SEN-8136',0,5,4,9),(236,'SEN-8179',0,5,4,8),(237,'SEN-8202',20,80,2,11),(238,'SEN-8222',30,120,1,10),(239,'SEN-8239',20,80,2,8),(240,'SEN-8292',10,60,3,9),(241,'SEN-8316',20,80,2,9),(242,'SEN-8381',20,80,2,6),(243,'SEN-8432',30,120,1,5),(244,'SEN-8478',20,80,2,7),(245,'SEN-8486',0,5,4,2),(246,'SEN-8487',0,5,4,9),(247,'SEN-8504',20,80,2,6),(248,'SEN-8555',10,60,3,8),(249,'SEN-8560',20,80,2,7),(250,'SEN-8564',10,60,3,5),(251,'SEN-8606',10,60,3,2),(252,'SEN-8648',10,60,3,9),(253,'SEN-8679',30,120,1,9),(254,'SEN-8711',10,60,3,5),(255,'SEN-8749',20,80,2,10),(256,'SEN-8756',30,120,1,5),(257,'SEN-8787',0,5,4,8),(258,'SEN-8793',0,5,4,8),(259,'SEN-8800',10,60,3,6),(260,'SEN-8840',20,80,2,9),(261,'SEN-8843',10,60,3,3),(262,'SEN-8873',10,60,3,10),(263,'SEN-8894',20,80,2,8),(264,'SEN-8956',10,60,3,11),(265,'SEN-8988',0,5,4,1),(266,'SEN-9056',0,5,4,4),(267,'SEN-9095',20,80,2,2),(268,'SEN-9129',0,5,4,1),(269,'SEN-9138',10,60,3,10),(270,'SEN-9221',20,80,2,7),(271,'SEN-9261',20,80,2,2),(272,'SEN-9270',10,60,3,1),(273,'SEN-9316',30,120,1,6),(274,'SEN-9317',20,80,2,6),(275,'SEN-9327',10,60,3,5),(276,'SEN-9335',10,60,3,8),(277,'SEN-9341',0,5,4,8),(278,'SEN-9408',30,120,1,9),(279,'SEN-9409',0,5,4,9),(280,'SEN-9445',0,5,4,2),(281,'SEN-9595',0,5,4,3),(282,'SEN-9626',10,60,3,6),(283,'SEN-9641',30,120,1,5),(284,'SEN-9653',30,120,1,6),(285,'SEN-9692',20,80,2,5),(286,'SEN-9715',10,60,3,6),(287,'SEN-9751',30,120,1,8),(288,'SEN-9785',20,80,2,5),(289,'SEN-9793',0,5,4,9),(290,'SEN-9821',10,60,3,10),(291,'SEN-9824',20,80,2,7),(292,'SEN-9835',10,60,3,5),(293,'SEN-9889',20,80,2,10),(294,'SEN-9899',30,120,1,3),(295,'SEN-9947',20,80,2,6),(296,'SEN-9950',0,5,4,6),(297,'SEN-9955',20,80,2,3),(298,'SEN-9998',10,60,3,1);
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `id_setor` int NOT NULL AUTO_INCREMENT,
  `nome_setor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'Injecao'),(2,'Logistica'),(3,'Manutencao'),(4,'Montagem'),(5,'Soldagem'),(6,'Usinagem');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sensor`
--

DROP TABLE IF EXISTS `tipo_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_sensor` (
  `id_tipo_sensor` int NOT NULL AUTO_INCREMENT,
  `nome_tipo` varchar(50) NOT NULL,
  `unidade_medida` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sensor`
--

LOCK TABLES `tipo_sensor` WRITE;
/*!40000 ALTER TABLE `tipo_sensor` DISABLE KEYS */;
INSERT INTO `tipo_sensor` VALUES (1,'Pressao',' PA'),(2,'Temperatura','C'),(3,'Vazao','L/s'),(4,'Vibracao','m/s');
/*!40000 ALTER TABLE `tipo_sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-11 11:21:39
