-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: train_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `registovariaveis_ume3400_comboios`
--

DROP TABLE IF EXISTS `registovariaveis_ume3400_comboios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registovariaveis_ume3400_comboios` (
  `registo_id` int NOT NULL AUTO_INCREMENT,
  `veiculo_id` int NOT NULL DEFAULT '0',
  `dia` date NOT NULL DEFAULT '0000-00-00',
  `comboio_id` int NOT NULL DEFAULT '0',
  `maquinista_id` int DEFAULT NULL,
  `energia_absorvida` int DEFAULT NULL,
  `energia_recuperada` int DEFAULT NULL,
  `energia_consumida` int DEFAULT NULL,
  `inicio_datahora` datetime DEFAULT NULL,
  `fim_datahora` datetime DEFAULT NULL,
  `kms` int DEFAULT NULL,
  `horas_funcionamento` int DEFAULT NULL,
  `comboio_master` tinyint DEFAULT NULL,
  `num_composicoes` tinyint DEFAULT NULL,
  `inicio_estacao` varchar(50) DEFAULT NULL,
  `fim_estacao` varchar(50) DEFAULT NULL,
  `offset_calculado` tinyint DEFAULT NULL,
  `offset_pis` tinyint DEFAULT NULL,
  `resumo` tinyint DEFAULT '0',
  `nao_sobrepor` tinyint DEFAULT NULL,
  `media_peso` double DEFAULT NULL,
  `pico_peso` double DEFAULT NULL,
  `pico_estacao` varchar(50) DEFAULT NULL,
  `versao` tinyint DEFAULT NULL,
  `serie_id` tinyint DEFAULT '6',
  `prox_modo` varchar(10) DEFAULT NULL,
  `prox_modo_dh` datetime DEFAULT NULL,
  `prox_modo_estacao` varchar(50) DEFAULT NULL,
  `verificacao` varchar(50) DEFAULT NULL,
  `peso_ok` tinyint(1) DEFAULT '0',
  `energia_ok` tinyint(1) DEFAULT '0',
  `KwhKm` double DEFAULT NULL,
  `KwhKmT` double DEFAULT NULL,
  `teste` int DEFAULT NULL,
  `ucc_master` tinyint DEFAULT NULL,
  `20mcounter` mediumint DEFAULT NULL,
  `das` tinyint(1) DEFAULT '0' COMMENT '1 - Serviço Feito com DAS, 0 - Sem DAS, 2 - Com DAS mas com erros',
  PRIMARY KEY (`registo_id`),
  UNIQUE KEY `veiculo_id_dia_comboio` (`veiculo_id`,`dia`,`comboio_id`),
  KEY `datahora_ix` (`fim_datahora`),
  KEY `veiculo_id_ix` (`energia_absorvida`),
  KEY `inicio_datahora` (`inicio_datahora`),
  KEY `comboio_resumo` (`comboio_id`,`resumo`),
  KEY `ix_prox_modo_dh` (`prox_modo_dh`),
  KEY `dia_picoestacao_mediapeso_resumo` (`dia`,`resumo`,`media_peso`,`pico_estacao`),
  KEY `resumo` (`resumo`,`pico_estacao`,`dia`,`media_peso`),
  KEY `ix_update_passageiros` (`pico_estacao`,`media_peso`,`resumo`,`dia`)
) ENGINE=MyISAM AUTO_INCREMENT=70771 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registovariaveis_ume3400_comboios`
--
-- WHERE:  (comboio_id = 15409 AND dia > '2015-10-01' AND dia < '2016-10-01') OR (comboio_id = 15275 AND dia > '2015-01-05'AND dia < '2016-10-01') AND (comboio_id = 15400 AND dia > '2015-01-05'AND dia < '2016-10-01')

LOCK TABLES `registovariaveis_ume3400_comboios` WRITE;
/*!40000 ALTER TABLE `registovariaveis_ume3400_comboios` DISABLE KEYS */;
INSERT INTO `registovariaveis_ume3400_comboios` VALUES (47150,44,'2015-10-23',15409,2849556,400,161,239,'2015-10-23 13:00:42','2015-10-23 13:53:41',41,1,1,1,'Porto São Bento','Penafiel',19,19,1,0,127.1931,131,'Ermesinde',11,6,'NORM','2015-10-23 14:07:23','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,1,0,0),(48397,60,'2015-10-08',15409,7261457,328,135,193,'2015-10-08 13:00:26','2015-10-08 13:53:12',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.2992,124,'Contumil',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(48547,60,'2015-10-19',15409,6272215,347,146,201,'2015-10-19 13:00:13','2015-10-19 13:53:13',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.8005,124,'Contumil',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(50541,343,'2015-10-08',15409,7261457,328,135,193,'2015-10-08 13:00:29','2015-10-08 13:53:15',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.2992,124,'Contumil',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40820,0),(50691,343,'2015-10-19',15409,6272215,347,146,201,'2015-10-19 13:00:14','2015-10-19 13:53:13',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.8005,124,'Contumil',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40820,0),(51363,40,'2015-11-26',15409,8295785,328,123,205,'2015-11-26 13:00:36','2015-11-26 13:53:24',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,123.9571,129,'Rio Tinto',13,6,'NORM','2015-11-26 14:07:11','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40880,0),(51573,41,'2015-11-06',15409,5483747,321,121,200,'2015-11-06 13:00:26','2015-11-06 13:53:09',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,125.2798,130,'Contumil',13,6,'NORM','2015-11-06 14:09:31','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(54436,339,'2015-11-26',15409,8295785,328,123,205,'2015-11-26 13:00:31','2015-11-26 13:53:21',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,123.9571,129,'Rio Tinto',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(54655,340,'2015-11-06',15409,5483747,321,121,200,'2015-11-06 13:00:28','2015-11-06 13:53:09',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,125.3755,130,'Contumil',13,6,'NORM','2015-11-06 14:09:33','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40780,0),(56297,40,'2015-12-21',15409,3966461,336,131,205,'2015-12-21 13:00:13','2015-12-21 13:53:01',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.6093,124,'Rio Tinto',13,6,'NORM','2015-12-21 14:09:23','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(56886,41,'2015-12-29',15409,4113783,377,162,215,'2015-12-29 13:00:02','2015-12-29 13:52:49',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.491,123,'Contumil',15,6,'NORM','2015-12-29 14:11:00','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(57931,47,'2015-12-23',15409,4547527,331,138,193,'2015-12-23 13:00:22','2015-12-23 13:53:31',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.1115,124,'Contumil',15,6,'NORM','2015-12-23 14:07:17','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(57957,47,'2015-12-24',15409,8527871,321,126,195,'2015-12-24 13:00:20','2015-12-24 13:52:45',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,119.4642,122,'Contumil',15,6,'NORM','2015-12-24 14:07:24','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(58051,58,'2015-12-01',15409,6669984,300,133,167,'2015-12-01 13:00:14','2015-12-01 13:53:34',40,0,1,1,'Porto São Bento','Penafiel',19,19,1,0,122.0977,127,'Rio Tinto',11,6,'NORM','2015-12-01 14:07:19','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,0,0,0),(58123,58,'2015-12-07',15409,9343412,300,145,155,'2015-12-07 13:00:33','2015-12-07 13:52:32',40,1,1,1,'Porto São Bento','Penafiel',19,19,1,0,121.8341,126,'Rio Tinto',11,6,'NORM','2015-12-07 14:07:15','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,1,0,0),(58189,58,'2015-12-11',15409,3879662,300,156,144,'2015-12-11 13:00:22','2015-12-11 13:52:33',40,0,1,1,'Porto São Bento','Penafiel',19,19,1,0,124.0179,129,'Contumil',11,6,'NORM','2015-12-11 14:19:13','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,0,0,0),(58245,58,'2015-12-15',15409,9246394,400,135,265,'2015-12-15 13:00:14','2015-12-15 13:52:43',41,1,1,1,'Porto São Bento','Penafiel',19,19,1,0,120.8626,124,'Contumil',11,6,'NORM','2015-12-15 14:07:05','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,1,0,0),(58583,60,'2015-12-02',15409,7933664,371,157,214,'2015-12-02 13:01:19','2015-12-02 13:52:54',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,122.6588,128,'Rio Tinto',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40940,0),(59304,339,'2015-12-21',15409,3966461,336,131,205,'2015-12-21 13:00:13','2015-12-21 13:53:00',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.5373,124,'Rio Tinto',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40880,0),(59904,340,'2015-12-29',15409,4113783,377,162,215,'2015-12-29 13:00:08','2015-12-29 13:52:56',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,120.491,123,'Contumil',13,6,'NORM','2015-12-29 14:11:06','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40760,0),(60295,341,'2015-12-23',15409,4547527,331,138,193,'2015-12-23 13:00:22','2015-12-23 13:53:30',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.1115,124,'Contumil',13,6,'NORM','2015-12-23 14:07:16','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40940,0),(60321,341,'2015-12-24',15409,8527871,321,126,195,'2015-12-24 13:00:18','2015-12-24 13:52:43',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,119.5028,122,'Contumil',13,6,'NORM','2015-12-24 14:07:22','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40940,0),(60439,343,'2015-12-02',15409,7933664,371,157,214,'2015-12-02 13:01:16','2015-12-02 13:52:51',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,122.7373,128,'Rio Tinto',13,6,NULL,NULL,NULL,'getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(61872,41,'2016-01-28',15409,7354816,328,127,201,'2016-01-28 13:01:16','2016-01-28 13:53:50',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.5533,126,'Contumil',15,6,'NORM','2016-01-28 14:07:31','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40620,0),(63335,58,'2016-01-20',15409,1627143,400,162,238,'2016-01-20 13:00:15','2016-01-20 13:52:34',40,0,1,1,'Porto São Bento','Penafiel',19,19,1,0,121.6677,126,'Rio Tinto',11,6,'NORM','2016-01-20 14:09:28','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,0,0,0),(63361,58,'2016-01-21',15409,4859324,300,137,163,'2016-01-21 13:00:23','2016-01-21 13:52:51',41,1,1,1,'Porto São Bento','Penafiel',19,19,1,0,120.3336,124,'Contumil',11,6,'NORM','2016-01-21 14:08:39','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,1,0,0),(64941,340,'2016-01-28',15409,7354816,328,127,201,'2016-01-28 13:01:14','2016-01-28 13:53:50',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.5533,126,'Contumil',13,6,'NORM','2016-01-28 14:07:31','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(67411,44,'2016-02-25',15409,5878212,300,131,169,'2016-02-25 13:00:19','2016-02-25 13:54:03',41,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,122.0518,125,'Contumil',16,6,'NORM','2016-02-25 14:07:17','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,1,NULL,NULL,NULL,0,0,0),(67582,47,'2016-02-11',15409,9343412,342,148,194,'2016-02-11 13:00:13','2016-02-11 13:52:55',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.2285,124,'Contumil',15,6,'NORM','2016-02-11 14:07:11','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,0,0,0),(69993,341,'2016-02-11',15409,9343412,342,148,194,'2016-02-11 13:00:14','2016-02-11 13:52:55',0,0,-1,1,'Porto São Bento','Penafiel',19,19,1,0,121.1791,124,'Contumil',13,6,'NORM','2016-02-11 14:07:11','Penafiel','getUME3400DataMarchaSumarioSQLQueryFormat_1',1,2,NULL,NULL,NULL,1,40960,0);
/*!40000 ALTER TABLE `registovariaveis_ume3400_comboios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05 21:55:05
