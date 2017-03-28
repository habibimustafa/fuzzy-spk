-- MySQL dump 10.13  Distrib 5.5.54, for Linux (x86_64)
--
-- Host: localhost    Database: fuzzybank
-- ------------------------------------------------------
-- Server version	5.5.54-cll

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id_user`, `username`, `password`) VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bukutamu`
--

DROP TABLE IF EXISTS `bukutamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bukutamu` (
  `id_tamu` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `produk` varchar(100) NOT NULL,
  `komentar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tamu`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bukutamu`
--

LOCK TABLES `bukutamu` WRITE;
/*!40000 ALTER TABLE `bukutamu` DISABLE KEYS */;
INSERT INTO `bukutamu` (`id_tamu`, `date`, `nama`, `email`, `produk`, `komentar`) VALUES (1,'2013-06-24','Nisa','uzhaqiyateu@yahoo.com','tabungan','hdgashdgashdg'),(2,'2013-06-24','gdhas','ndsjdb','giro','sdsasa'),(3,'2013-06-25','wilda','hjfhdjfh','giro','bfhdfbdsh'),(4,'2013-06-25','bxcx','bxz','tabungan','hsda'),(5,'2013-07-06',' habibi','hbib@jhajhsa.com','deposito','bchjbsjbdj'),(6,'2013-07-06',' habibi','hbib@jhajhsa.com','deposito','bchjbsjbdj'),(7,'2013-07-06','uyung','uyung@yahoo.com','deposito','cxhvchxvhaxvxah'),(8,'2013-07-06','uyung','uyung@yahoo.com','deposito','cxhvchxvhaxvxah'),(9,'2013-07-07','student','student@yahoo.com','giro','hhcxchjz'),(10,'2013-07-07','xyxyxyx','xy@ymail.com','deposito','sbhbx'),(11,'2013-07-14','Nisa Zakiya','uzhaqiyateu@gmail.com','deposito','Sistem dapat menampilkan produk dengan kriteria yang saya inginkan');
/*!40000 ALTER TABLE `bukutamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposito` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `bank_dep` varchar(100) NOT NULL,
  `jenis_dep` varchar(100) NOT NULL,
  `bunga_1_dep` double NOT NULL,
  `bunga_3_dep` double NOT NULL,
  `bunga_6_dep` double NOT NULL,
  `bunga_12_dep` double NOT NULL,
  `bunga_24_dep` double NOT NULL,
  `pil_mata_uang_dep` int(11) NOT NULL,
  `minim_pembukaan_dep` int(11) NOT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
INSERT INTO `deposito` (`id_dep`, `bank_dep`, `jenis_dep`, `bunga_1_dep`, `bunga_3_dep`, `bunga_6_dep`, `bunga_12_dep`, `bunga_24_dep`, `pil_mata_uang_dep`, `minim_pembukaan_dep`) VALUES (1,'Mandiri','Deposito ',4,5,5,5,5,1,10000000),(2,'Mandiri','Deposito valas',0.25,0.25,0.25,0.5,0.5,10,10000000),(3,'BRI','Deposito ',4,5,5,5,5,1,2500000),(4,'BRI','deposito valas',0.01,0.01,0.01,0.01,0.01,6,10000000),(5,'BTN','BTN Deposito Perorangan',4.7,5,5,5.2,5.2,2,1000000),(6,'BTN','BTN Deposito Valas',0.05,0.05,0.05,0.05,0.05,1,10000000),(7,'BTN','BTN Deposito Lembaga',4.7,5,5,5.2,5.2,2,5000000),(8,'BNI','deposito',4,4.5,4.7,5,5,2,1000000),(9,'BCA','deposito berjangka rupiah',3,4,4,4,0,1,8000000),(10,'BCA','deposito berjangka valas',0.01,0.01,0.01,0.01,0,9,10000000),(11,'CIMB Niaga','Power Deposit',6,6,6,5,0,1,50000000),(12,'CIMB Niaga',' deposito x-tra ',0,5,5.25,5.5,0,1,25000000),(13,'CIMB Niaga','deposito berjangka Rupiah',4.75,4.75,5,5.25,0,1,8000000),(14,'CIMB Niaga','deposito berjangka dollar',0.5,0.75,0.75,0.75,0,1,10000000),(15,'Permata Bank','Deposito Rupiah',6,5,5,5,0,1,10000000),(16,'Permata Bank','Deposito dinamis',0.56,0,0,0,0,6,50000000),(17,'Permata Bank','Deposito Valas',1,1,1,1,0,6,10000000),(18,'HSBC','time deposit rupiah',5,3,4,3,0,1,5000000),(19,'HSBC','time deposit valas',1,1,1,0,0,12,50000000),(20,'Citibank','time deposit',4,4,4,5,5,9,5000000),(21,'Citibank','ladder deposit',0,3,6,6.25,0,2,25000000),(22,'Citibank','flexible deposit',0,3,6,6.25,0,2,50000000),(23,'Citibank','super switch deposit',4,4.5,5,0,0,8,100000000),(24,'Mayapada','My Depo Rupiah',5,5,5,5,0,2,2500000),(25,'Mayapada','My Depo Valas',1,1,1,1,0,2,5000000),(26,'Commonwealth','Deposito berjangka',5,5,5,5,0,6,10000000),(27,'Commonwealth','Deposito berjangka Valas',2,2,2,2,0,5,10000000),(28,'Mega','Mega Depo',4.25,0,4.5,5,5,1,8000000),(29,'OCBC NISP','Deposito Berjangka OCBS NISP',5,5,5,5,0,6,8000000),(30,'Panin Bank','Deposito Panin',4.2,4.3,4.5,4.6,0,11,10000000),(31,'BII','BII Deposito Rupiah',5,5,5,5,5,1,10000000),(32,'BII','BII Deposito Valas',2,2,2,2,2,6,10000000),(33,'Bukopin','deposito rupiah',5,0,6,6,0,1,8000000),(34,'Bukopin',' dollar',0.01,0.01,0.01,0.01,0,1,10000000),(35,'Mayora','Deposito',6,7,6,6,0,1,5000000),(36,'DBS Indonesia','Deposito DBS',5,5,5,5,5,9,3500000),(37,'DBS Indonesia','Deposito DBS Valas',1,1,1,1,1,8,5000000),(38,'UOB Indonesia','UOB Deposito',0,0,0,4,0,10,1000000),(39,'UOB Indonesia','UOB Deposito Valas',0,0,0,1,0,9,1000000),(40,'Bank Ganesha','Deposito Berjangka Harian',0,0,0,0,0,1,500000000),(41,'Bank Ganesha','Emas',5,5,5,5,0,1,50000000),(42,'Bank Ganesha','Flexy',0.05,0,0,0,0,1,100000000),(43,'Bank Ganesha','Rupiah',5,5,5,5,0,1,2500000),(44,'Bank Ganesha','Valas',1,1,1,1,0,5,10000000),(45,'Bank ANZ','Term Deposit',3.5,3.8,4,4,0,10,150000000),(46,'Bank BJB','Deposito Perorangan',5,5,5,5,5,2,2500000),(47,'Bank BJB',' Deposito suka-suka',5,5.5,5.5,5.5,5,1,10000000),(48,'Rabobank','Deposito Reguler',4.5,4.5,4.5,5,0,1,10000000),(49,'Rabobank','Deposito 3 plus',4.5,4.5,4.5,5,0,1,10000000),(50,'Rabobank','Deposito Valas ',0,0,0,0,0,1,10000000),(51,'Bank ANDA','Deposito Anda',6.2,6.3,6.3,6.3,0,2,10000000),(52,'Bank Bumi Arta','Deposito berjangka Rupiah',5.5,6,6.5,7,0,1,1000000),(53,'Bank Bumi Arta','Deposito berjangka Valas ',1,1,1,1,0,1,10000000),(54,'Bank Maspion','Deposito Rupiah',5.5,5.5,5.5,5.5,0,1,5000000),(55,'Bank Maspion','Deposito USD',1.25,1.25,1.25,1.25,0,1,10000000),(56,'Bank Victoria','Deposito berjangka',4.6,4.7,4.8,4.9,0,1,1000000),(57,'Bank Victoria','deposito harian',0,0,0,0,0,1,1000000),(58,'Bank Sinarmas','Deposito berjangka',5.5,5.5,5.5,5.5,0,5,8000000),(59,'Bank Windu','deposito rupiah',5,5.5,5.6,5.7,0,1,8000000),(60,'Bank Windu','deposito valas',0,0.1,0.1,0.1,0,4,10000000),(61,'BPD Kaltim','Deposito rupiah',4.8,4.85,4.9,5,0,1,1000000),(62,'BPD Kaltim','Deposito valas',0,0,0,0.1,0,1,10000000),(63,'BPD Kalbar','Deposito',4.75,5,5.25,5.5,5.5,1,5000000),(64,'BPD DIY','Deposito',5,5.25,5.5,5.75,0,1,500000);
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito2`
--

DROP TABLE IF EXISTS `deposito2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposito2` (
  `id_dep2` int(11) NOT NULL AUTO_INCREMENT,
  `bank_dep2` varchar(100) NOT NULL,
  `jenis_dep2` varchar(100) NOT NULL,
  `nisbah_1_dep` int(11) NOT NULL,
  `nisbah_3_dep` int(11) NOT NULL,
  `nisbah_6_dep` int(11) NOT NULL,
  `nisbah_12_dep` int(11) NOT NULL,
  `pil_mata_uang_dep` int(11) NOT NULL,
  `minim_pembukaan_dep` int(11) NOT NULL,
  PRIMARY KEY (`id_dep2`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito2`
--

LOCK TABLES `deposito2` WRITE;
/*!40000 ALTER TABLE `deposito2` DISABLE KEYS */;
INSERT INTO `deposito2` (`id_dep2`, `bank_dep2`, `jenis_dep2`, `nisbah_1_dep`, `nisbah_3_dep`, `nisbah_6_dep`, `nisbah_12_dep`, `pil_mata_uang_dep`, `minim_pembukaan_dep`) VALUES (1,'Syariah Mandiri','BSM Deposito',45,46,47,48,1,2000000),(2,'Syariah Mandiri','BSM Deposito Valas',53,54,55,56,4,10000000),(3,'BRI Syariah','Deposito BRI Syariah iB Perorangan',57,58,60,61,1,2500000),(4,'BRI Syariah','Deposito BRI Syariah iB Perusahaan',50,51,53,54,1,5000000),(5,'Bank Muamalat Indonesia','Deposito Mudharabah',50,51,53,54,2,5000000),(6,'Bank Muamalat Indonesia','Deposito Fulinves',57,58,59,60,2,5000000),(7,'Syariah Bukopin','Deposito iB',40,40,41,41,1,8000000),(8,'Syariah Mega Indonesia','Deposito Plus iB',56,57,58,58,1,1000000),(9,'BNI Syariah','Deposito iB Hasanah',54,56,58,60,2,1000000),(10,'Jatim Syariah','Deposito Barokah',57,58,58,58,1,1000000),(11,'BTN Syariah','Deposito BTN iB',44,45,46,48,2,2000000),(12,'BCA Syariah','Deposito iB',51,52,52,53,1,8000000),(13,' CIMB Niaga Syariah','Deposito iB Syariah',51,52,52,53,2,25000000),(14,'Syariah Permata','Permata Deposito Syariah',51,51,51,52,2,1500000),(15,'Bank BJB Syariah','Deposito iB Maslahah',51,52,52,52,2,2000000),(16,'Panin Bank Syariah','Deposito pas',50,51,51,51,1,1000000);
/*!40000 ALTER TABLE `deposito2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depositoall`
--

DROP TABLE IF EXISTS `depositoall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depositoall` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `bank_dep` varchar(100) NOT NULL,
  `jenis_dep` varchar(100) NOT NULL,
  `bunga_1_dep` int(11) NOT NULL,
  `bunga_3_dep` int(11) NOT NULL,
  `bunga_6_dep` int(11) NOT NULL,
  `bunga_12_dep` int(11) NOT NULL,
  `bunga_24_dep` int(11) NOT NULL,
  `nisbah_1_dep` int(11) NOT NULL,
  `nisbah_3_dep` int(11) NOT NULL,
  `nisbah_6_dep` int(11) NOT NULL,
  `nisbah_12_dep` int(11) NOT NULL,
  `pil_mata_uang_dep` int(11) NOT NULL,
  `minim_pembukaan_dep` int(11) NOT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depositoall`
--

LOCK TABLES `depositoall` WRITE;
/*!40000 ALTER TABLE `depositoall` DISABLE KEYS */;
INSERT INTO `depositoall` (`id_dep`, `bank_dep`, `jenis_dep`, `bunga_1_dep`, `bunga_3_dep`, `bunga_6_dep`, `bunga_12_dep`, `bunga_24_dep`, `nisbah_1_dep`, `nisbah_3_dep`, `nisbah_6_dep`, `nisbah_12_dep`, `pil_mata_uang_dep`, `minim_pembukaan_dep`) VALUES (1,'Mandiri','Deposito ',4,5,5,5,5,0,0,0,0,1,10000000),(2,'Mandiri','Deposito valas',0,0,0,1,1,0,0,0,0,10,10000000),(3,'BRI','Deposito ',4,5,5,5,5,0,0,0,0,1,2500000),(4,'BRI','deposito valas',0,0,0,0,0,0,0,0,0,6,10000000),(5,'BTN','BTN Deposito Perorangan',5,5,5,5,5,0,0,0,0,2,1000000),(6,'BTN','BTN Deposito Valas',0,0,0,0,0,0,0,0,0,1,10000000),(7,'BTN','BTN Deposito Lembaga',5,5,5,5,5,0,0,0,0,2,5000000),(8,'BNI','deposito',4,5,5,5,5,0,0,0,0,2,1000000),(9,'BCA','deposito berjangka rupiah',3,4,4,4,0,0,0,0,0,1,8000000),(10,'BCA','deposito berjangka valas',0,0,0,0,0,0,0,0,0,9,10000000),(11,'CIMB Niaga','Power Deposit',6,6,6,5,0,0,0,0,0,1,50000000),(12,'CIMB Niaga',' deposito x-tra ',0,5,5,6,0,0,0,0,0,1,25000000),(13,'CIMB Niaga','deposito berjangka Rupiah',5,5,5,5,0,0,0,0,0,1,8000000),(14,'CIMB Niaga','deposito berjangka dollar',1,1,1,1,0,0,0,0,0,1,10000000),(15,'Permata Bank','Deposito Rupiah',6,5,5,5,0,0,0,0,0,1,10000000),(16,'Permata Bank','Deposito dinamis',1,0,0,0,0,0,0,0,0,6,50000000),(17,'Permata Bank','Deposito Valas',1,1,1,1,0,0,0,0,0,6,10000000),(18,'HSBC','time deposit rupiah',5,3,4,3,0,0,0,0,0,1,5000000),(19,'HSBC','time deposit valas',1,1,1,0,0,0,0,0,0,12,50000000),(20,'Citibank','time deposit',4,4,4,5,5,0,0,0,0,9,5000000),(21,'Citibank','ladder deposit',0,3,6,6,0,0,0,0,0,2,25000000),(22,'Citibank','flexible deposit',0,3,6,6,0,0,0,0,0,2,50000000),(23,'Citibank','super switch deposit',4,5,5,0,0,0,0,0,0,8,100000000),(24,'Mayapada','My Depo Rupiah',5,5,5,5,0,0,0,0,0,2,2500000),(25,'Mayapada','My Depo Valas',1,1,1,1,0,0,0,0,0,2,5000000),(26,'Commonwealth','Deposito berjangka',5,5,5,5,0,0,0,0,0,6,10000000),(27,'Commonwealth','Deposito berjangka Valas',2,2,2,2,0,0,0,0,0,5,10000000),(28,'Mega','Mega Depo',4,0,5,5,5,0,0,0,0,1,8000000),(29,'OCBC NISP','Deposito Berjangka OCBS NISP',5,5,5,5,0,0,0,0,0,6,8000000),(30,'Panin Bank','Deposito Panin',4,4,5,5,0,0,0,0,0,11,10000000),(31,'BII','BII Deposito Rupiah',5,5,5,5,5,0,0,0,0,1,10000000),(32,'BII','BII Deposito Valas',2,2,2,2,2,0,0,0,0,6,10000000),(33,'Bukopin','deposito rupiah',5,0,6,6,0,0,0,0,0,1,8000000),(34,'Bukopin',' dollar',0,0,0,0,0,0,0,0,0,1,10000000),(35,'Mayora','Deposito',6,7,6,6,0,0,0,0,0,1,5000000),(36,'DBS Indonesia','Deposito DBS',5,5,5,5,5,0,0,0,0,9,3500000),(37,'DBS Indonesia','Deposito DBS Valas',1,1,1,1,1,0,0,0,0,8,5000000),(38,'UOB Indonesia','UOB Deposito',0,0,0,4,0,0,0,0,0,10,1000000),(39,'UOB Indonesia','UOB Deposito Valas',0,0,0,1,0,0,0,0,0,9,1000000),(40,'Bank Ganesha','Deposito Berjangka Harian',0,0,0,0,0,0,0,0,0,1,500000000),(41,'Bank Ganesha','Emas',5,5,5,5,0,0,0,0,0,1,50000000),(42,'Bank Ganesha','Flexy',0,0,0,0,0,0,0,0,0,1,100000000),(43,'Bank Ganesha','Rupiah',5,5,5,5,0,0,0,0,0,1,2500000),(44,'Bank Ganesha','Valas',1,1,1,1,0,0,0,0,0,5,10000000),(45,'Bank ANZ','Term Deposit',4,4,4,4,0,0,0,0,0,10,100000000),(46,'Bank BJB','Deposito Perorangan',5,5,5,5,5,0,0,0,0,2,2500000),(47,'Bank BJB',' Deposito suka-suka',5,6,6,6,5,0,0,0,0,1,10000000),(48,'Rabobank','Deposito Reguler',5,5,5,5,0,0,0,0,0,1,10000000),(49,'Rabobank','Deposito 3 plus',5,5,5,5,0,0,0,0,0,1,10000000),(50,'Rabobank','Deposito Valas ',0,0,0,0,0,0,0,0,0,1,10000000),(51,'Bank ANDA','Deposito Anda',6,6,6,6,0,0,0,0,0,2,10000000),(52,'Bank Bumi Arta','Deposito berjangka Rupiah',6,6,7,7,0,0,0,0,0,1,1000000),(53,'Bank Bumi Arta','Deposito berjangka Valas ',1,1,1,1,0,0,0,0,0,1,10000000),(54,'Bank Maspion','Deposito Rupiah',6,6,6,6,0,0,0,0,0,1,5000000),(55,'Bank Maspion','Deposito USD',1,1,1,1,0,0,0,0,0,1,10000000),(56,'Bank Victoria','Deposito berjangka',5,5,5,5,0,0,0,0,0,1,1000000),(57,'Bank Victoria','deposito harian',0,0,0,0,0,0,0,0,0,1,1000000),(58,'Bank Sinarmas','Deposito berjangka',6,6,6,6,0,0,0,0,0,5,8000000),(59,'Bank Windu','deposito rupiah',5,6,6,6,0,0,0,0,0,1,8000000),(60,'Bank Windu','deposito valas',0,0,0,0,0,0,0,0,0,4,10000000),(61,'BPD Kaltim','Deposito rupiah',5,5,5,5,0,0,0,0,0,1,1000000),(62,'BPD Kaltim','Deposito valas',0,0,0,0,0,0,0,0,0,1,10000000),(63,'BPD Kalbar','Deposito',5,5,5,6,6,0,0,0,0,1,5000000),(64,'BPD DIY','Deposito',5,5,6,6,0,0,0,0,0,1,500000),(65,'Syariah Mandiri','BSM Deposito',0,0,0,0,0,45,46,47,48,1,2000000),(66,'Syariah Mandiri','BSM Deposito Valas',0,0,0,0,0,53,54,55,56,4,10000000),(67,'BRI Syariah','Deposito BRI Syariah iB Perorangan',0,0,0,0,0,57,58,60,61,1,2500000),(68,'BRI Syariah','Deposito BRI Syariah iB Perusahaan',0,0,0,0,0,50,51,53,54,1,5000000),(69,'Bank Muamalat Indonesia','Deposito Mudharabah',0,0,0,0,0,50,51,53,54,2,5000000),(70,'Bank Muamalat Indonesia','Deposito Fulinves',0,0,0,0,0,57,58,59,60,2,5000000),(71,'Syariah Bukopin','Deposito iB',0,0,0,0,0,40,40,41,41,1,8000000),(72,'Syariah Mega Indonesia','Deposito Plus iB',0,0,0,0,0,56,57,58,58,1,1000000),(73,'BNI Syariah','Deposito iB Hasanah',0,0,0,0,0,54,56,58,60,2,1000000),(74,'Jatim Syariah','Deposito Barokah',0,0,0,0,0,57,58,58,58,1,1000000),(75,'BTN Syariah','Deposito BTN iB',0,0,0,0,0,44,45,46,48,2,2000000),(76,'BCA Syariah','Deposito iB',0,0,0,0,0,51,52,52,53,1,8000000),(77,' CIMB Niaga Syariah','Deposito iB Syariah',0,0,0,0,0,51,52,52,53,2,25000000),(78,'Syariah Permata','Permata Deposito Syariah',0,0,0,0,0,51,51,51,52,2,1500000),(79,'Bank BJB Syariah','Deposito iB Maslahah',0,0,0,0,0,51,52,52,52,2,2000000),(80,'Panin Bank Syariah','Deposito pas',0,0,0,0,0,50,51,51,51,1,1000000);
/*!40000 ALTER TABLE `depositoall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giro`
--

DROP TABLE IF EXISTS `giro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giro` (
  `id_giro` int(11) NOT NULL AUTO_INCREMENT,
  `bank_giro` varchar(100) NOT NULL,
  `jenis_giro` varchar(100) NOT NULL,
  `set_awal_giro` int(11) NOT NULL,
  `saldo_minim_giro` int(11) NOT NULL,
  `pil_mata_uang_giro` int(11) NOT NULL,
  `bunga_giro` int(11) NOT NULL,
  `biaya_admin_giro` int(11) NOT NULL,
  `biaya_tutup_giro` int(11) NOT NULL,
  `biaya_buku_giro` int(11) NOT NULL,
  PRIMARY KEY (`id_giro`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giro`
--

LOCK TABLES `giro` WRITE;
/*!40000 ALTER TABLE `giro` DISABLE KEYS */;
INSERT INTO `giro` (`id_giro`, `bank_giro`, `jenis_giro`, `set_awal_giro`, `saldo_minim_giro`, `pil_mata_uang_giro`, `bunga_giro`, `biaya_admin_giro`, `biaya_tutup_giro`, `biaya_buku_giro`) VALUES (1,'Mandiri','giro',1000000,5000000,10,2,25000,25000,100000),(2,'BRI','giro BRI Rupiah',1000000,2500000,1,3,25000,25000,100000),(3,'BRI','giro BRI Valas',10000000,25000000,6,0,50000,50000,100000),(4,'BTN','giro BTN Perorangan',500000,1000000,2,3,15000,25000,100000),(5,'BTN','giro valas BTN Perorangan',5000000,5000000,1,0,0,100000,100000),(6,'BTN','giro BTN Lembaga',1000000,5000000,2,3,15000,25000,100000),(7,'BTN','giro valas BTN Lembaga',25000000,25000000,1,0,0,100000,100000),(8,'BNI','giro',10000000,10000000,2,2,25000,25000,100000),(9,'BCA','giro',1000000,8000000,9,3,30000,25000,100000),(10,'Danamon','prima giro',1000000,500000,5,2,25000,50000,125000),(11,'Bank Jatim','Giro Perorangan',1000000,2500000,2,3,15000,75000,125000),(12,'Bank Jatim','Giro Perusahaan ',2500000,2500000,2,3,15000,75000,125000),(13,'CIMB Niaga','Giro rupiah ',1000000,8000000,1,2,30000,50000,100000),(14,'CIMB Niaga','giro valas',2000000,10000000,6,0,50000,50000,100000),(15,'Permata Bank','maxima',1000000,1000000,1,2,5000,100000,100000),(16,'Permata Bank','giro ganda',1000000,1000000,1,2,15000,100000,100000),(17,'Permata Bank','giro',1000000,1000000,9,2,50000,100000,100000),(18,'Permata Bank','home ready cash',0,0,1,1,20000,500000,100000),(19,'HSBC','current account',1000000,20000000,13,2,35000,50000,100000),(20,'Citibank','current account',2000000,25000000,9,3,30000,50000,100000),(21,'Mayapada','My Giro',1000000,1000000,2,5,25000,50000,125000),(22,'Commonwealth','Current account',1000000,10000000,6,0,10000,50000,100000),(23,'Commonwealth','market link current account',25000000,5000000,6,0,25000,50000,100000),(24,'Mega','Mega Giro',1000000,1000000,1,2,30000,100000,100000),(25,'Mega','Mega Giro Valas',1000000,1000000,1,0,50000,10000,125000),(26,'OCBC NISP','Giro OCBC NISP Perorangan',1000000,8000000,6,3,50000,25000,100000),(27,'OCBC NISP','Giro Utama OCBC NISP',10000000,1000000000,1,2,0,100000,100000),(28,'OCBC NISP','Giro OCBC NISP Multicurrrency',0,1000000,11,0,10000,100000,100000),(29,'OCBC NISP','Giro OCBC NISP Non Perorangan',2000000,8000000,6,3,50000,25000,100000),(30,'Panin Bank','Giro Rupiah Panin Perorangan',500000,500000,1,3,40000,50000,110000),(31,'Panin Bank','Giro Valas Panin',1000000,500000,10,0,40000,50000,110000),(32,'Panin Bank','Giro Rupiah Panin Perusahaan',1000000,500000,1,3,40000,50000,110000),(33,'BII','Giro BII Valas',5000000,5000000,6,5,50000,100000,100000),(34,'BII','Giro BII Rupiah',1000000,10000000,1,3,30000,100000,100000),(35,'Bukopin','giro bukopin ',8000000,8000000,2,2,35000,50000,120000),(36,'Bukopin','giro valas',10000000,10000000,6,1,50000,50000,150000),(37,'Mayora','Giro Peroarangan',500000,500000,1,2,25000,50000,125000),(38,'Mayora','Giro Duo',2000000,2000000,2,2,25000,50000,125000),(39,'Mayora','Giro Perusahaan',5000000,2000000,2,2,35000,50000,125000),(40,'Mayora',' Giro MyMerchant',2500000,2000000,2,2,35000,50000,125000),(41,'DBS Indonesia','DBS Regular Current Account',5000000,2000000,9,2,50000,100000,100000),(42,'DBS Indonesia','DBS Maxi Current Account',10000000,2000000,9,2,50000,100000,100000),(43,'DBS Indonesia','DBS Current Account Plus',7500000,2000000,9,2,50000,100000,100000),(44,'UOB Indonesia','UOB Current Account IDR Perorangan',1500000,1000000,1,3,35000,50000,100000),(45,'UOB Indonesia',' UOB Current Account-Foreign Currency',1000000,0,2,3,30000,0,0),(46,'UOB Indonesia','UOB Current Account IDR Non Perorangan ',2500000,1000000,1,3,35000,50000,100000),(47,'Bank Ganesha','Giro Rupiah',1000000,500000,1,2,25000,50000,150000),(48,'Bank Ganesha','Giro Valas',2000000,1000000,5,2,50000,50000,150000),(49,'Bank ANZ','Rekening Giro ANZ Escalator',50000000,100000000,10,3,0,50000,125000),(50,'Bank BJB','Giro Perorangan',1000000,2500000,3,2,10000,10000,130000),(51,'Rabobank','Giro Rupiah',1000000,10000000,1,2,25000,50000,50000),(52,'Rabobank','Giro Valas',1000000,1000000,4,1,5000,75000,75000),(53,'Bank ANDA','Giro Anda',1000000,1000000,2,3,25000,50000,75000),(54,'Bank Bumi Arta','Giro Rupiah',500000,1000000,1,2,25000,50000,90000),(55,'Bank Bumi Arta','Giro USD',5000000,5000000,2,1,50000,100000,100000),(56,'Bank Maspion','Giro',1000000,5000000,2,2,25000,25000,100000),(57,'Bank Victoria','Giro Victoria Perorangan',500000,1000000,1,3,25000,50000,100000),(58,'Bank Victoria','Giro Victoria Non Perorangan',1000000,1000000,1,3,25000,50000,100000),(59,'Bank Sinarmas','Promo Giro',10000000,10000000,1,2,0,50000,0),(60,'Bank Sinarmas','Giro',1500000,8000000,5,2,31000,50000,100000),(61,'Bank Windu','Giro Rupiah',2500000,8000000,1,2,20000,100000,100000),(62,'Bank Windu','Giro valas',1000000,1000000,4,0,0,100000,200000),(63,'BPD Kaltim','Giro Rupiah',500000,1000000,1,3,25000,25000,125000),(64,'BPD Kaltim','Giro Valas',1000000,1000000,2,1,30000,30000,150000),(65,'BPD Kalbar','Giro Perorangan',500000,5000000,1,2,30000,50000,100000),(66,'BPD Kalbar','Giro Non Perorangan',1000000,5000000,1,2,30000,50000,100000),(67,'BPD DIY','Giro',1500000,500000,1,3,20000,35000,100000);
/*!40000 ALTER TABLE `giro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giro2`
--

DROP TABLE IF EXISTS `giro2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giro2` (
  `id_giro2` int(11) NOT NULL AUTO_INCREMENT,
  `bank_giro2` varchar(100) NOT NULL,
  `jenis_giro2` varchar(100) NOT NULL,
  `set_awal_giro` int(11) NOT NULL,
  `saldo_minim_giro` int(11) NOT NULL,
  `pil_mata_uang_giro` int(11) NOT NULL,
  `biaya_admin_giro` int(11) NOT NULL,
  `biaya_tutup_giro` int(11) NOT NULL,
  `biaya_buku_giro` int(11) NOT NULL,
  PRIMARY KEY (`id_giro2`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giro2`
--

LOCK TABLES `giro2` WRITE;
/*!40000 ALTER TABLE `giro2` DISABLE KEYS */;
INSERT INTO `giro2` (`id_giro2`, `bank_giro2`, `jenis_giro2`, `set_awal_giro`, `saldo_minim_giro`, `pil_mata_uang_giro`, `biaya_admin_giro`, `biaya_tutup_giro`, `biaya_buku_giro`) VALUES (1,'Syariah Mandiri','BSM Giro',500000,500000,1,20000,20000,100000),(2,'Syariah Mandiri','BSM Giro Valas',0,10000000,1,50000,100000,100000),(3,'Syariah Mandiri','BSM Giro Singapore Dollar',1000000,1000000,1,40000,100000,100000),(4,'Syariah Mandiri','BSM Giro Euro',1000000,1000000,1,40000,100000,100000),(5,'BRI Syariah','Giro BRI syariah iB Perorangan',2500000,500000,1,10000,25000,125000),(6,'BRI Syariah','Giro BRI syariah iB Perusahaan',5000000,500000,1,10000,25000,125000),(7,'Bank Muamalat Indonesia','Giro Perorangan',500000,500000,1,10000,50000,100000),(8,'Bank Muamalat Indonesia','Giro Institusi',1000000,1000000,2,10000,50000,100000),(9,'Syariah Bukopin','Giro iB Perorangan',1000000,0,1,20000,50000,120000),(10,'Syariah Bukopin','Giro iB Badan Hukum',2000000,0,1,20000,50000,120000),(11,'Syariah Mega Indonesia','Giro Utama iB',1000000,500000,1,25000,25000,90000),(12,'BNI Syariah','Giro iB Hasanah',500000,200000,1,10000,25000,100000),(13,'Jatim Syariah','Giro Amanah',1000000,100000,1,15000,12000,75000),(14,'BTN Syariah','Giro BTN iB Perorangan',500000,500000,1,10000,50000,100000),(15,'BTN Syariah','Giro BTN  Investa iB',1000000,500000,1,10000,50000,100000),(16,'BTN Syariah','Giro BTN iB Lembaga',1000000,500000,1,10000,50000,100000),(17,'BCA Syariah','Giro iB',1000000,500000,1,35000,25000,100000),(18,' CIMB Niaga Syariah','Giro iB syariah',1000000,100000,1,30000,50000,0),(19,'Syariah Permata','Permata Giro iB',1000000,100000,1,35000,35000,125000),(20,'Bank BJB Syariah','Giro iB Maslahah Perorangan',500000,100000,1,0,20000,100000),(21,'Bank BJB Syariah','Giro iB Maslahah Perusahaan',1500000,3000000,1,0,20000,100000),(22,'Panin Bank Syariah','Giro pas',1000000,250000,1,25000,100000,120000);
/*!40000 ALTER TABLE `giro2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giroall`
--

DROP TABLE IF EXISTS `giroall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giroall` (
  `id_giro` int(11) NOT NULL,
  `bank_giro` varchar(100) NOT NULL,
  `jenis_giro` varchar(100) NOT NULL,
  `set_awal_giro` int(11) NOT NULL,
  `saldo_minim_giro` int(11) NOT NULL,
  `pil_mata_uang_giro` int(11) NOT NULL,
  `bunga_giro` int(11) NOT NULL,
  `biaya_admin_giro` int(11) NOT NULL,
  `biaya_tutup_giro` int(11) NOT NULL,
  `biaya_buku_giro` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giroall`
--

LOCK TABLES `giroall` WRITE;
/*!40000 ALTER TABLE `giroall` DISABLE KEYS */;
INSERT INTO `giroall` (`id_giro`, `bank_giro`, `jenis_giro`, `set_awal_giro`, `saldo_minim_giro`, `pil_mata_uang_giro`, `bunga_giro`, `biaya_admin_giro`, `biaya_tutup_giro`, `biaya_buku_giro`) VALUES (1,'Mandiri','giro',1000000,5000000,10,2,25000,25000,100000),(2,'BRI','giro BRI Rupiah',1000000,2500000,1,3,25000,25000,100000),(3,'BRI','giro BRI Valas',10000000,25000000,6,0,50000,50000,100000),(4,'BTN','giro BTN Perorangan',500000,1000000,2,3,15000,25000,100000),(5,'BTN','giro valas BTN Perorangan',5000000,5000000,1,0,0,100000,100000),(6,'BTN','giro BTN Lembaga',1000000,5000000,2,3,15000,25000,100000),(7,'BTN','giro valas BTN Lembaga',25000000,25000000,1,0,0,100000,100000),(8,'BNI','giro',10000000,10000000,2,2,25000,25000,100000),(9,'BCA','giro',1000000,8000000,9,3,30000,25000,100000),(10,'Danamon','prima giro',1000000,500000,5,2,25000,50000,125000),(11,'Bank Jatim','Giro Perorangan',1000000,2500000,2,3,15000,75000,125000),(12,'Bank Jatim','Giro Perusahaan ',2500000,2500000,2,3,15000,75000,125000),(13,'CIMB Niaga','Giro rupiah ',1000000,8000000,1,2,30000,50000,100000),(14,'CIMB Niaga','giro valas',2000000,10000000,6,0,50000,50000,100000),(15,'Permata Bank','maxima',1000000,1000000,1,2,5000,100000,100000),(16,'Permata Bank','giro ganda',1000000,1000000,1,2,15000,100000,100000),(17,'Permata Bank','giro',1000000,1000000,9,2,50000,100000,100000),(18,'Permata Bank','home ready cash',0,0,1,1,20000,50000,100000),(19,'HSBC','current account',1000000,20000000,13,2,35000,50000,100000),(20,'Citibank','current account',2000000,25000000,9,3,30000,50000,100000),(21,'Mayapada','My Giro',1000000,1000000,2,5,25000,50000,125000),(22,'Commonwealth','Current account',1000000,10000000,6,0,10000,50000,100000),(23,'Commonwealth','market link current account',25000000,5000000,6,0,25000,50000,100000),(24,'Mega','Mega Giro',1000000,1000000,1,2,30000,100000,100000),(25,'Mega','Mega Giro Valas',1000000,1000000,1,0,50000,10000,125000),(26,'OCBC NISP','Giro OCBC NISP Perorangan',1000000,8000000,6,3,50000,25000,100000),(27,'OCBC NISP','Giro Utama OCBC NISP',10000000,1000000000,1,2,0,100000,100000),(28,'OCBC NISP','Giro OCBC NISP Multicurrrency',0,1000000,11,0,10000,100000,100000),(29,'OCBC NISP','Giro OCBC NISP Non Perorangan',2000000,8000000,6,3,50000,25000,100000),(30,'Panin Bank','Giro Rupiah Panin Perorangan',500000,500000,1,3,40000,50000,110000),(31,'Panin Bank','Giro Valas Panin',1000000,500000,10,0,40000,50000,110000),(32,'Panin Bank','Giro Rupiah Panin Perusahaan',1000000,500000,1,3,40000,50000,110000),(33,'BII','Giro BII Valas',5000000,5000000,6,5,50000,100000,100000),(34,'BII','Giro BII Rupiah',1000000,10000000,1,3,30000,100000,100000),(35,'Bukopin','giro bukopin ',8000000,8000000,2,2,35000,50000,120000),(36,'Bukopin','giro valas',10000000,10000000,6,1,50000,50000,150000),(37,'Mayora','Giro Peroarangan',500000,500000,1,2,25000,50000,125000),(38,'Mayora','Giro Duo',2000000,2000000,2,2,25000,50000,125000),(39,'Mayora','Giro Perusahaan',5000000,2000000,2,2,35000,50000,125000),(40,'Mayora',' Giro MyMerchant',2500000,2000000,2,2,35000,50000,125000),(41,'DBS Indonesia','DBS Regular Current Account',5000000,2000000,9,2,50000,100000,100000),(42,'DBS Indonesia','DBS Maxi Current Account',10000000,2000000,9,2,50000,100000,100000),(43,'DBS Indonesia','DBS Current Account Plus',7500000,2000000,9,2,50000,100000,100000),(44,'UOB Indonesia','UOB Current Account IDR Perorangan',1500000,1000000,1,3,35000,50000,100000),(45,'UOB Indonesia',' UOB Current Account-Foreign Currency',1000000,0,2,3,30000,0,0),(46,'UOB Indonesia','UOB Current Account IDR Non Perorangan ',2500000,1000000,1,3,35000,50000,100000),(47,'Bank Ganesha','Giro Rupiah',1000000,500000,1,2,25000,50000,150000),(48,'Bank Ganesha','Giro Valas',2000000,1000000,5,2,50000,50000,150000),(49,'Bank ANZ','Rekening Giro ANZ Escalator',50000000,100000000,10,3,0,50000,125000),(50,'Bank BJB','Giro Perorangan',1000000,2500000,3,2,10000,10000,130000),(51,'Rabobank','Giro Rupiah',1000000,10000000,1,2,25000,50000,50000),(52,'Rabobank','Giro Valas',1000000,1000000,4,1,5000,75000,75000),(53,'Bank ANDA','Giro Anda',1000000,1000000,2,3,25000,50000,75000),(54,'Bank Bumi Arta','Giro Rupiah',500000,1000000,1,2,25000,50000,90000),(55,'Bank Bumi Arta','Giro USD',5000000,5000000,2,1,50000,100000,100000),(56,'Bank Maspion','Giro',1000000,5000000,2,2,25000,25000,100000),(57,'Bank Victoria','Giro Victoria Perorangan',500000,1000000,1,3,25000,50000,100000),(58,'Bank Victoria','Giro Victoria Non Perorangan',1000000,1000000,1,3,25000,50000,100000),(59,'Bank Sinarmas','Promo Giro',10000000,10000000,1,2,0,50000,0),(60,'Bank Sinarmas','Giro',1500000,8000000,5,2,31000,50000,100000),(61,'Bank Windu','Giro Rupiah',2500000,8000000,1,2,20000,100000,100000),(62,'Bank Windu','Giro valas',1000000,1000000,4,0,0,100000,200000),(63,'BPD Kaltim','Giro Rupiah',500000,1000000,1,3,25000,25000,125000),(64,'BPD Kaltim','Giro Valas',1000000,1000000,2,1,30000,30000,150000),(65,'BPD Kalbar','Giro Perorangan',500000,5000000,1,2,30000,50000,100000),(66,'BPD Kalbar','Giro Non Perorangan',1000000,5000000,1,2,30000,50000,100000),(67,'BPD DIY','Giro',1500000,500000,1,3,20000,35000,100000),(68,'Syariah Mandiri','BSM Giro',500000,500000,1,0,20000,20000,100000),(69,'Syariah Mandiri','BSM Giro Valas',0,10000000,1,0,50000,100000,100000),(70,'Syariah Mandiri','BSM Giro Singapore Dollar',1000000,1000000,1,0,40000,100000,100000),(71,'Syariah Mandiri','BSM Giro Euro',1000000,1000000,1,0,40000,100000,100000),(72,'BRI Syariah','Giro BRI syariah iB Perorangan',2500000,500000,1,0,10000,25000,125000),(73,'BRI Syariah','Giro BRI syariah iB Perusahaan',5000000,500000,1,0,10000,25000,125000),(74,'Bank Muamalat Indonesia','Giro Perorangan',500000,500000,1,0,10000,50000,100000),(75,'Bank Muamalat Indonesia','Giro Institusi',1000000,1000000,2,0,10000,50000,100000),(76,'Syariah Bukopin','Giro iB Perorangan',1000000,0,1,0,20000,50000,120000),(77,'Syariah Bukopin','Giro iB Badan Hukum',2000000,0,1,0,20000,50000,120000),(78,'Syariah Mega Indonesia','Giro Utama iB',1000000,500000,1,0,25000,25000,90000),(79,'BNI Syariah','Giro iB Hasanah',500000,200000,1,0,10000,25000,100000),(80,'Jatim Syariah','Giro Amanah',1000000,100000,1,0,15000,12000,75000),(81,'BTN Syariah','Giro BTN iB Perorangan',500000,500000,1,0,10000,50000,100000),(82,'BTN Syariah','Giro BTN  Investa iB',1000000,500000,1,0,10000,50000,100000),(83,'BTN Syariah','Giro BTN iB Lembaga',1000000,500000,1,0,10000,50000,100000),(84,'BCA Syariah','Giro iB',1000000,500000,1,0,35000,25000,100000),(85,' CIMB Niaga Syariah','Giro iB syariah',1000000,100000,1,0,30000,50000,0),(86,'Syariah Permata','Permata Giro iB',1000000,100000,1,0,35000,35000,125000),(87,'Bank BJB Syariah','Giro iB Maslahah Perorangan',500000,100000,1,0,0,20000,100000),(88,'Bank BJB Syariah','Giro iB Maslahah Perusahaan',2000000,100000,1,0,0,20000,100000),(89,'Panin Bank Syariah','Giro pas',1000000,250000,1,0,25000,100000,120000);
/*!40000 ALTER TABLE `giroall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabungan`
--

DROP TABLE IF EXISTS `tabungan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabungan` (
  `id_tab` int(11) NOT NULL AUTO_INCREMENT,
  `bank_tab` varchar(100) NOT NULL,
  `jenis_tab` varchar(100) NOT NULL,
  `jml_atm` int(11) NOT NULL,
  `set_awal_tab` int(11) NOT NULL,
  `set_selanjutnya_tab` int(11) NOT NULL,
  `biaya_admin_tab` int(11) NOT NULL,
  `bunga_tab` double NOT NULL,
  `biaya_tutup_tab` int(11) NOT NULL,
  `saldo_minim_tab` int(11) NOT NULL,
  `periode_undian` double NOT NULL,
  PRIMARY KEY (`id_tab`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabungan`
--

LOCK TABLES `tabungan` WRITE;
/*!40000 ALTER TABLE `tabungan` DISABLE KEYS */;
INSERT INTO `tabungan` (`id_tab`, `bank_tab`, `jenis_tab`, `jml_atm`, `set_awal_tab`, `set_selanjutnya_tab`, `biaya_admin_tab`, `bunga_tab`, `biaya_tutup_tab`, `saldo_minim_tab`, `periode_undian`) VALUES (1,'Mandiri','tabungan',10365,500000,0,9000,2.25,50000,100000,0.5),(2,'Mandiri','tabungan bisnis',10365,1000000,0,10000,2.35,50000,100000,0),(3,'Mandiri',' tabungan rencana',10365,100000,0,0,2.35,0,100000,0),(4,'Mandiri',' tabungan haji',10365,500000,100000,0,0,0,0,0),(5,'Mandiri',' tabungan valas',10365,1000000,1000000,10000,2.35,50000,100000,0),(6,'Mandiri',' tabungan TKI',10365,10000,0,0,2.35,50000,10000,0),(7,'Mandiri','tabunganku',10365,20000,10000,0,0.5,20000,50000,0),(8,'BRI','Britama ',11111,250000,0,9000,2.75,50000,100000,6),(9,'BRI',' simpedes ',11111,50000,0,5000,2.75,50000,50000,0),(10,'BRI','TKI ',11111,50000,0,0,0,0,50000,0),(11,'BRI','Haji',11111,50000,0,0,0,0,50000,0),(12,'BRI','Britama dollar',11111,500000,0,10000,0.5,50000,100000,0),(13,'BRI',' britama junio',11111,200000,0,5000,2.75,50000,100000,0),(14,'BRI','tabunganku',11111,20000,10000,0,0,20000,20000,0),(15,'BTN','Batara',1277,200000,10000,9000,2.75,0,50000,6),(16,'BTN','Batara payroll',1277,200000,10000,1000,2.75,0,50000,0),(17,'BTN','batara pensiunan',1277,10000,0,3000,0,0,10000,0),(18,'BTN','prima',1277,2000000,50000,10000,4,0,100000,0),(19,'BTN',' haji',1277,100000,0,0,0,0,0,0),(20,'BTN','haji plus',1277,500000,0,0,0,0,0,0),(21,'BTN','junior',1277,0,10000,0,0.5,0,20000,0),(22,'BTN',' juara',1277,50000,0,0,0.5,0,50000,0),(23,'BTN','e\'BATARAPOS',1277,50000,10000,0,2.5,0,50000,0),(24,'BNI','taplus ',6831,250000,100000,10000,2.25,50000,100000,8),(25,'BNI',' taplus anak',6831,20000,10000,7500,1.5,25000,20000,0),(26,'BNI',' taplus bisnis',6831,5000000,0,10000,2.5,50000,75000,0),(27,'BNI',' tapenas',6831,100000,50000,10000,0.04,50000,50000,0),(28,'BNI','haji',6831,100000,0,0,0,0,50000,0),(29,'BNI','BNI dollar',6831,10000000,1000000,10000,0.5,50000,100000,0),(30,'BCA','tahapan',8836,500000,50000,20000,1.9,50000,100000,0.5),(31,'BCA','tahapan Xpresi',8836,50000,50000,5000,0.9,50000,50000,0),(32,'BCA','tahapan gold',8836,10000000,50000,20000,0,50000,1000000,0),(33,'BCA',' tapres',8836,5000000,50000,12000,2.5,50000,100000,0),(34,'BCA','bca dollar',8836,1000000,50000,10000,0.5,50000,100000,0),(35,'Danamon',' tabunganku',1469,20000,10000,0,0.1,20000,20000,0),(36,'Danamon','danamon lebih',1469,250000,50000,0,0.1,50000,50000,0),(37,'Danamon','fleximax',1469,1000000,1000000,0,5,250000,100000,0),(38,'Danamon',' tabungan MU',1469,250000,0,5000,0,50000,100000,12),(39,'Danamon','tabungan dollar',1469,1000000,1000000,10000,0.25,50000,100000,0),(40,'Bank Jatim','Haji',382,100000,0,0,0,0,100000,12),(41,'Bank Jatim',' Siklus',382,50000,100000,5000,0.25,20000,50000,0),(42,'Bank Jatim','Simpeda',382,50000,50000,3000,0.02,20000,50000,0),(43,'Bank Jatim',' Tabunganku',382,20000,10000,2500,1,20000,20000,0),(44,'CIMB Niaga','CIMB Niaga X-tra',1749,300000,0,9000,1,50000,50000,5),(45,'Permata Bank','tabungan bebas ',633,250000,0,0,1,100000,100000,3),(46,'Permata Bank','permataMe!',633,50000,0,5000,1.5,50000,50000,0),(47,'Permata Bank','permataBintang',633,50000,0,5000,1.5,50000,50000,0),(48,'Permata Bank','Tabungan OPTIMA',633,1000000,0,15000,1.75,50000,200000,0),(49,'Permata Bank','Permata Tabunganku',633,20000,0,0,0,20000,20000,0),(50,'Permata Bank','Payroll ASTRA',633,0,0,5000,0,0,50000,0),(51,'Permata Bank',' Permatae payrol',633,0,0,4000,0,15000,50000,0),(52,'Permata Bank','Permata dollar',633,1000000,100000,5000,0,50000,1000000,0),(53,'Permata Bank','Permata valas dinamis',633,1000000,0,15000,1.75,50000,100000,0),(54,'Permata Bank','Permata Proteksi masa depan',633,100000,50000,1000,2,15000,75000,0),(55,'HSBC','savings account',124,5000000,250000,50000,1.5,50000,100000,1),(56,'Citibank','target savings plan',105,1000000,0,50000,0,50000,100000,2),(57,'Citibank','guard savings',105,0,0,25000,2.25,50000,100000,0),(58,'Citibank','maxi save',105,0,0,20000,2.25,50000,100000,0),(59,'Mayapada','My savings ',79,100000,50000,5000,2.25,0,100000,0),(60,'Commonwealth','Comm save',141,500000,0,5000,2,50000,50000,0.03),(61,'Commonwealth',' comm cash',141,1000000,0,5000,0.1,50000,100000,0),(62,'Commonwealth',' comm wealth',141,50000000,0,10000,5.5,50000,50000000,0),(63,'Commonwealth','comm pro',141,25000000,0,10000,1.5,50000,1000000,0),(64,'Commonwealth',' tabungan bunga harian',141,500000,0,5000,2,50000,100000,0),(65,'Commonwealth','aus student',141,10000000,0,5000,2.5,50000,500000,0),(66,'Mega','Mega DANA',800,500000,0,30000,1.75,100000,100000,3),(67,'Mega','Mega MAXi',800,500000,0,30000,2,100000,100000,2),(68,'Mega','Mega Perdana',800,100000,0,30000,2,100000,100000,0),(69,'Mega','Mega Berbagi',800,500000,0,30000,1,50000,100000,0),(70,'Mega','Mega Rencana',800,500000,0,30000,1.75,100000,100000,0),(71,'Mega','Mega Tabunganku',800,20000,10000,10000,1.75,20000,20000,0),(72,'Mega','Mega Ultima',800,500000,0,30000,2,100000,100000,0),(73,'Mega',' Mega Absolute',800,500000,0,30000,1.75,100000,100000,0),(74,'OCBC NISP','Tabungan harian',602,1000000,20000,0,2,100000,100000,12),(75,'OCBC NISP','TAKA',602,0,0,0,2,50000,50000,0),(76,'OCBC NISP','TANDA',602,200000,200000,10000,2.3,100000,100000,0),(77,'OCBC NISP','TANDA senior',602,500000,50000,0,2.5,50000,100000,0),(78,'OCBC NISP',' TANDA SGD',602,1000000,1000000,0,1,100000,100000,0),(79,'OCBC NISP',' TANDA VALAS',602,1000000,1000000,0,1,100000,100000,0),(80,'OCBC NISP','Mighty savers',602,50000,0,0,1.5,50000,50000,0),(81,'OCBC NISP',' TANDA 360',602,1000000,10000000,0,2,100000,0,0),(82,'Panin Bank','Tabungan Panin',612,300000,0,10000,3,50000,100000,12),(83,'Panin Bank',' Tabungan Bisnis Panin',612,1000000,0,10000,3.5,50000,100000,0),(84,'Panin Bank','Tabungan Junior Panin',612,100000,0,0,2.5,50000,100000,0),(85,'Panin Bank',' Tabungan Rencana Panin',612,500000,0,10000,3.75,50000,100000,0),(86,'Panin Bank','TabunganKu',612,100000,0,5000,0.5,50000,100000,0),(87,'Panin Bank','Pan Dollar',612,1500000,0,10000,2.5,50000,150000,0),(88,'BII','Tabungan Reguler',953,500000,0,10000,2.75,50000,100000,5),(89,'BII','Tabungan Gold',953,10000000,0,10000,2.5,50000,1000000,0),(90,'BII',' Tabungan Pro',953,25000000,0,20000,4.75,50000,5000000,0),(91,'BII',' Woman One',953,2500000,0,10000,2,50000,500000,0),(92,'BII','SuperKidz',953,500000,0,10000,2,50000,100000,0),(93,'BII','Super Valas',953,2500000,0,20000,0.5,50000,250000,0),(94,'BII',' EduPlan USD',953,1500000,0,20000,0.4,50000,150000,0),(95,'Bukopin',' siaga bukopin ',342,20000,0,0,1,20000,20000,1),(96,'Bukopin',' siaga bukopin premium',342,100000000,100000,15000,5.5,20000,10000000,0),(97,'Bukopin','siaga bukopin bisnis,',342,1000000,0,10000,0,20000,250000,0),(98,'Bukopin',' rencana bukopin',342,2000000,0,10000,0.6,20000,250000,0),(99,'Bukopin','siaga haji dan umroh',342,250000,0,0,0,20000,250000,0),(100,'Bukopin',' tabunganku',342,20000,10000,2000,0.5,10000,20000,0),(101,'Bukopin','Siaga dollar',342,10000000,1000000,15000,0.5,50000,5000000,0),(102,'Mayora','Tabungan Mayora',0,25000,25000,3500,1.5,20000,25000,3),(103,'Mayora','Tabungan Tambah',0,100000,100000,5000,1.25,25000,100000,1),(104,'Mayora','Tabungan Pelajar',0,100000,50000,3500,1.75,25000,100000,0),(105,'Mayora','TabunganKu',0,20000,10000,0,0.45,20000,20000,0),(106,'Mayora','Tabungan Payroll',0,500000,0,5000,1.75,50000,100000,0),(107,'Mayora',' Tabungan Giro Duo',0,2000000,0,6000,1,50000,100000,0),(108,'Mayora',' SiPucuk',0,200000,50000,3500,1.75,25000,50000,0),(109,'Mayora','Tabungan Standby',0,100000,100000,3500,1.75,50000,75000,0),(110,'DBS Indonesia','DBS Regular Saving Account',0,100000,50000,10000,0.75,50000,50000,0),(111,'DBS Indonesia','DBS Maxi Saving Account',0,1000000,200000,11000,1,50000,200000,0),(112,'DBS Indonesia',' DBS Saving Account Plus',0,1500000,250000,11000,1,50000,250000,0),(113,'DBS Indonesia',' DBS My Smart Account',0,250000,50000,8000,0.5,50000,50000,0),(114,'UOB Indonesia','UOB Plus Account',132,100000,10000,25000,0.4,10000,100000,0),(115,'UOB Indonesia','UOB Rupiah Savings',132,100000,25000,25000,0.7,50000,100000,0),(116,'UOB Indonesia',' UOB Gold Account',132,10000000,1000000,25000,0.5,50000,1000000,0),(117,'UOB Indonesia',' Tabunganku',132,20000,20000,0,0.5,20000,20000,0),(118,'UOB Indonesia','UOB Savings Plan',132,100000,100000,0,0.6,0,50000,12),(119,'UOB Indonesia','UOB Valas Produktif',132,1000000,100000,15000,0.1,100000,100000,0),(120,'UOB Indonesia','High Yield Account',132,1000000,1000000,25000,0.5,50000,100000,0),(121,'Bank Ganesha','Tabungan Ganesha',12,2500000,250000,0,1.7,50000,250000,6),(122,'Bank Ganesha',' Tabungan Investasi',12,2500000,250000,0,1.7,50000,250000,0),(123,'Bank Ganesha',' Tabungan Optima Ganesha',12,500000,100000,0,2,25000,100000,0),(124,'Bank Ganesha','Tabunganku',12,2500000,250000,0,1.7,50000,100000,0),(125,'Bank Ganesha','Ganesha Dollar',12,1500000,100000,0,2,50000,50000,0),(126,'Bank ANZ','ANZ USD Savings Account',2600,100000000,0,0,2,50000,10000000,0),(127,'Bank ANZ','ANZ Australian Dollar Savings Account',2600,2500000,0,0,1.75,50000,2500000,0),(128,'Bank ANZ',' ANZ Super Savings',2600,0,0,0,1.75,50000,250000,0),(129,'Bank ANZ',' ANZ Infinite',2600,25000000,0,0,1.5,50000,1000000,0),(130,'Bank BJB','Simpeda',316,50000,25000,2500,2,15000,50000,12),(131,'Bank BJB',' TabunganKu',316,0,0,2500,1,20000,50000,0),(132,'Bank BJB','Tandamata',316,50000,25000,2500,2.5,15000,50000,0),(133,'Bank BJB',' Tandamata Berjangka',316,100000,50000,0,0,0,100000,0),(134,'Bank BJB',' Tandamata Gold',316,500000,250000,2500,4.5,50000,100000,0),(135,'Bank BJB',' Tandamata Haji',316,100000,0,0,0,0,100000,0),(136,'Bank BJB',' Tandamata Purnabakti',316,0,0,0,2.5,0,50000,0),(137,'Bank BJB',' Tandamata Bisnis',316,2500000,1000000,10000,5.5,100000,200000,0),(138,'Rabobank','Tabungan Maxima ',77,50000000,0,5000,3.5,25000,1000000,0),(139,'Rabobank','Tabungan Maestro',77,100000,50000,5000,3.5,25000,100000,0),(140,'Bank ANDA','Tabungan Anda Prestise ',14,50000000,50000000,5000,3.5,25000,1000000,12),(141,'Bank ANDA','Tabungan Anda Berhadiah',14,50000000,50000000,5000,3,25000,1000000,6),(142,'Bank Bumi Arta','Tabungan BBA',0,100000,10000,5000,1,25000,100000,4),(143,'Bank Bumi Arta','Tabungan Kesra',0,100000,10000,5000,3,25000,100000,0),(144,'Bank Bumi Arta',' BBA US Dollar',0,100000,1000000,10000,1.5,50000,100000,0),(145,'Bank Bumi Arta','Tabungan Pensiun',0,0,0,0,1,0,20000,0),(146,'Bank Bumi Arta','Tabunganku',0,20000,10000,0,1,20000,20000,0),(147,'Bank Maspion','Tabungan Arthamas ',27,100000,100000,5000,2.75,15000,100000,0),(148,'Bank Maspion','Tabungan Emas',27,100000,100000,5000,3,15000,100000,0),(149,'Bank Maspion','Tabungan Karya',27,50000,50000,0,2.75,15000,50000,0),(150,'Bank Maspion','Tabungan Si Cerdas',27,50000,0,0,2.75,15000,50000,0),(151,'Bank Maspion','Simpanan Arthadollar',27,1000000,1000000,0,1,50000,100000,0),(152,'Bank Victoria','Tabungan victoria',0,50000,50000,0,4,50000,50000,12),(153,'Bank Victoria','v-pro',0,100000,50000,0,3,50000,100000,0),(154,'Bank Victoria',' v-jun',0,50000,25000,0,3,25000,50000,0),(155,'Bank Victoria','v-plan',0,100000,25000,0,4,50000,100000,0),(156,'Bank Victoria',' v-bisnis',0,1000000,1000000,0,5,100000,250000,0),(157,'Bank Victoria','tabunganku',0,20000,10000,0,0.25,20000,20000,0),(158,'Bank Sinarmas','Tabungan Sinarmas',0,100000,50000,6000,2,50000,100000,3),(159,'Bank Sinarmas','TabunganKu',0,20000,10000,0,2,20000,20000,0),(160,'Bank Sinarmas','Simas Valas',0,500000,500000,10000,0,50000,100000,0),(161,'Bank Sinarmas',' Simas Gold',0,1000000,500000,10000,2,50000,100000,0),(162,'Bank Windu','Tabungan Kentjana',0,200000,50000,5000,4.5,50000,50000,1),(163,'Bank Windu','Tabungan Windu',0,500000,100000,5000,5,100000,100000,0),(164,'Bank Windu','Tahapan',0,50000,25000,0,0.02,25000,50000,0),(165,'Bank Windu',' Tabungan Bisnis',0,1000000,0,0,5,100000,100000,0),(166,'BPD Kaltim','TabunganKu',0,20000,10000,0,2.3,20000,20000,0),(167,'BPD Kaltim','Tabungan Simpeda',0,50000,20000,3500,2,20000,50000,0),(168,'BPD Kaltim','Haji Al Amin',0,1000000,100000,0,0,0,100000,0),(169,'BPD Kaltim','Tabungan Prama',0,2500000,500000,8000,4.25,50000,500000,0),(170,'BPD Kalbar','Tabungan Simpeda',0,50000,20000,0,2.5,25000,50000,12),(171,'BPD Kalbar','Tabungan Taserna',0,50000,20000,0,2.5,25000,50000,0),(172,'BPD Kalbar','TabunganKu',0,20000,10000,0,2.5,25000,20000,0),(173,'BPD DIY','Tabungan Simpeda',23,25000,0,1500,2,20000,25000,12),(174,'BPD DIY','Tabungan Sutera',23,50000,0,3000,2,20000,50000,0),(175,'BPD DIY','Tabungan Sutera Emas',23,5000,0,0,3,10000,25000,0),(176,'BPD DIY','Tabungan Haji, umrah  shafa ',23,500000,100000,0,0,0,100000,0),(177,'BPD DIY','Tunas',23,5000,0,0,2.5,10000,25000,0),(178,'BPD DIY','TabunganKU',23,20000,10000,1500,1.75,20000,20000,0);
/*!40000 ALTER TABLE `tabungan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabungan2`
--

DROP TABLE IF EXISTS `tabungan2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabungan2` (
  `id_tab2` int(11) NOT NULL AUTO_INCREMENT,
  `bank_tab2` varchar(100) NOT NULL,
  `jenis_tab2` varchar(100) NOT NULL,
  `set_awal_tab` int(11) NOT NULL,
  `set_selanjutnya_tab` int(11) NOT NULL,
  `biaya_admin_tab` int(11) NOT NULL,
  `nisbah_tab` int(11) NOT NULL,
  `biaya_tutup_tab` int(11) NOT NULL,
  `saldo_minim_tab` int(11) NOT NULL,
  `periode_undian` int(11) NOT NULL,
  PRIMARY KEY (`id_tab2`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabungan2`
--

LOCK TABLES `tabungan2` WRITE;
/*!40000 ALTER TABLE `tabungan2` DISABLE KEYS */;
INSERT INTO `tabungan2` (`id_tab2`, `bank_tab2`, `jenis_tab2`, `set_awal_tab`, `set_selanjutnya_tab`, `biaya_admin_tab`, `nisbah_tab`, `biaya_tutup_tab`, `saldo_minim_tab`, `periode_undian`) VALUES (1,'Syariah Mandiri','Tabungan BSM',80000,100000,6000,73,20000,50000,0),(2,'Syariah Mandiri','BSM Tabungan Rencana',0,100000,6000,73,20000,50000,0),(3,'Syariah Mandiri','BSM Tabungan Simpatik',30000,10000,2000,73,10000,20000,0),(4,'Syariah Mandiri','BSM Tabungan Investa Cendekia',0,100000,6000,73,20000,50000,0),(5,'Syariah Mandiri','BSM Tabungan Mabrur',500000,100000,0,0,25000,25500000,0),(6,'Syariah Mandiri','BSM Tabungan Dollar',1000000,1000000,5000,73,50000,1000000,0),(7,'Syariah Mandiri','BSM Tabungan Kurban',50000,25000,2000,0,0,50000,0),(8,'Syariah Mandiri','BSM Tabungan Pensiun ',0,0,0,0,0,0,0),(9,'BRI Syariah','Tabungan BRI Syariah iB',50000,10000,0,51,25000,20000,3),(10,'BRI Syariah','Tabungan Haji BRI Syariah iB',50000,10000,0,51,25000,50000,0),(11,'BRI Syariah','Tabungan Impian BRI Syraiah iB',50000,50000,0,51,25000,50000,0),(12,'Bank Muamalat Indonesia','Tabungan Muamalat',500000,10000,7500,58,20000,250000,12),(13,'Bank Muamalat Indonesia','Tabungan Muamalat Dollar',1000000,500000,5000,53,50000,500000,0),(14,'Bank Muamalat Indonesia','Haji Arafah',250000,50000,0,0,20000,0,0),(15,'Bank Muamalat Indonesia','Haji Arafah Plus',1500000,10000,0,0,20000,0,0),(16,'Bank Muamalat Indonesia','Muamalat Umroh',200000,100000,0,0,100000,0,0),(17,'Bank Muamalat Indonesia','TabunganKu',20000,20000,0,55,20000,20000,0),(18,'Bank Muamalat Indonesia','iB Muamalat Wisata',200000,200000,0,58,100000,500000,0),(19,'Bank Muamalat Indonesia','iB Muamalat Prima Perorangan',5000000,500000,7500,52,20000,5000000,0),(20,'Bank Muamalat Indonesia','iB Muamalat Prima Perusahaan',25000000,500000,7500,0,20000,5000000,0),(21,'Syariah Bukopin','iB Siaga',50000,10000,0,0,20000,35000,12),(22,'Syariah Bukopin','iB Rencana',100000,100000,0,57,30000,100000,0),(23,'Syariah Bukopin','iB Siaga Bisnis',1000000,100000,5000,0,25000,100000,0),(24,'Syariah Bukopin','iB Haji',500000,100000,0,0,0,0,0),(25,'Syariah Bukopin','TabunganKu iB',20000,10000,3000,0,10000,20000,0),(26,'Syariah Mega Indonesia','Tabungan Utama iB',100000,50000,3500,51,50000,50000,5),(27,'Syariah Mega Indonesia','Flexi iB',100000,100000,3500,51,50000,100000,0),(28,'Syariah Mega Indonesia','Rencana iB',0,0,5000,51,50000,50000,0),(29,'Syariah Mega Indonesia','Haji iB',200000,0,0,0,0,0,0),(30,'Syariah Mega Indonesia','Investasya iB',100000000,50000000,0,51,50000,50000,0),(31,'BNI Syariah','TabunganKu iB',20000,10000,0,0,5000,20000,4),(32,'BNI Syariah','Tabungan iB Tapenas Hasanah',100000,50000,5000,85,5000,100000,0),(33,'BNI Syariah','Tabungan iB THI Hasanah',500000,200000,0,50,0,500000,0),(34,'BNI Syariah','Tabungan iB Hasanah',100000,50000,5000,75,10000,100000,0),(35,'BNI Syariah','Tabungan iB Prima Hasanah',10000000,500000,11000,65,10000,100000,0),(36,'BNI Syariah','Tabungan iB Bsinis',5000000,500000,11000,60,10000,100000,0),(37,'BNI Syariah','Tabungan iB Tunas Hasanah',100000,10000,0,0,25000,500000,0),(38,'Jatim Syariah','Tabungan Barokah',50000,10000,2500,30,15000,50000,0),(39,'Jatim Syariah','Tabungan Haji Amanah',100000,50000,0,0,0,0,0),(40,'Jatim Syariah','TabunganKu iB',20000,10000,0,25,20000,20000,0),(41,'BTN Syariah','BTN Batara iB',50000,20000,5000,66,10000,50000,0),(42,'BTN Syariah','BTN Prima iB',100000,50000,5000,60,20000,100000,0),(43,'BTN Syariah','BTN Haji iB',50000,0,0,0,0,50000,0),(44,'BTN Syariah','TabunganKu ib',20000,10000,3000,55,10000,20000,0),(45,'BCA Syariah','Tahapan iB',100000,50000,7500,52,25000,25000,0),(46,'BCA Syariah','Tahapan Rencana iB',200000,250000,0,52,100000,100000,0),(47,' CIMB Niaga Syariah','Tabungan iB Perencanaan',100000,0,1500,52,0,0,0),(48,' CIMB Niaga Syariah','Tabungan iB junior',100000,0,1500,55,0,0,0),(49,' CIMB Niaga Syariah','Tabungan iB Pendidikan',100000,0,1500,55,0,0,0),(50,' CIMB Niaga Syariah','Tabungan iB X-tra Syariah',100000,0,1500,54,0,0,0),(51,'OCBC NISP Syariah','TANDA iB OCBC NISP',1000000,0,0,52,50000,1000000,0),(52,'Syariah Permata','Tabungan iB ',250000,50000,5000,55,10000,50000,0),(53,'Syariah Permata','Tabungan iB Umrah',250000,250000,0,50,0,50000,0),(54,'Syariah Permata','Tabungan iB Optima',100000,50000,5000,55,10000,50000,0),(55,'Syariah Permata','Permata Umrah iB',200000,0,0,50,0,50000,0),(56,'Syariah Permata','Permata Pendidikan Syariah',250000,250000,7500,50,10000,50000,0),(57,'Bank BJB Syariah','Tabungan iB Maslahah',100000,50000,8000,25,25000,100000,0),(58,'Bank BJB Syariah','Tabungan Haji iB Maslahah',250000,0,0,0,0,50000,0),(59,'Panin Bank Syariah','Tabungan pas iB',100000,10000,5000,79,50000,50000,0),(60,'Panin Bank Syariah','tabungan pas iB flexibel',500000,10000,0,52,100000,100000,0),(61,'Panin Bank Syariah','Tabungan bisnis pas',10000000,0,0,51,100000,1000000,0);
/*!40000 ALTER TABLE `tabungan2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabunganall`
--

DROP TABLE IF EXISTS `tabunganall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabunganall` (
  `id_tab` int(11) NOT NULL AUTO_INCREMENT,
  `bank_tab` varchar(100) NOT NULL,
  `jenis_tab` varchar(100) NOT NULL,
  `jml_atm` int(11) NOT NULL,
  `set_awal_tab` int(11) NOT NULL,
  `set_selanjutnya_tab` int(11) NOT NULL,
  `biaya_admin_tab` int(11) NOT NULL,
  `bunga_tab` double DEFAULT NULL,
  `nisbah_tab` int(11) DEFAULT NULL,
  `biaya_tutup_tab` int(11) NOT NULL,
  `saldo_minim_tab` int(11) NOT NULL,
  `periode_undian` int(11) NOT NULL,
  PRIMARY KEY (`id_tab`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabunganall`
--

LOCK TABLES `tabunganall` WRITE;
/*!40000 ALTER TABLE `tabunganall` DISABLE KEYS */;
INSERT INTO `tabunganall` (`id_tab`, `bank_tab`, `jenis_tab`, `jml_atm`, `set_awal_tab`, `set_selanjutnya_tab`, `biaya_admin_tab`, `bunga_tab`, `nisbah_tab`, `biaya_tutup_tab`, `saldo_minim_tab`, `periode_undian`) VALUES (1,'Mandiri','tabungan',10365,500000,0,9000,2.25,0,50000,100000,0),(2,'Mandiri','tabungan bisnis',10365,1000000,0,10000,2.35,0,50000,100000,0),(3,'Mandiri',' tabungan rencana',10365,100000,0,0,2.35,0,0,100000,0),(4,'Mandiri',' tabungan haji',10365,500000,100000,0,0,0,0,0,0),(5,'Mandiri',' tabungan valas',10365,1000000,1000000,10000,2.35,0,50000,100000,0),(6,'Mandiri',' tabungan TKI',10365,10000,0,0,2.35,0,50000,10000,0),(7,'Mandiri','tabunganku',10365,20000,10000,0,0.5,0,20000,50000,0),(8,'BRI','Britama ',11111,250000,0,9000,2.75,0,50000,100000,6),(9,'BRI',' simpedes ',11111,50000,0,5000,2.75,0,50000,50000,0),(10,'BRI','TKI ',11111,50000,0,0,0,0,0,50000,0),(11,'BRI','Haji',11111,50000,0,0,0,0,0,50000,0),(12,'BRI','Britama dollar',11111,500000,0,10000,0.5,0,50000,100000,0),(13,'BRI',' britama junio',11111,200000,0,5000,2.75,0,50000,100000,0),(14,'BRI','tabunganku',11111,20000,10000,0,0,0,20000,20000,0),(15,'BTN','Batara',1277,200000,10000,9000,2.75,0,0,50000,6),(16,'BTN','Batara payroll',1277,200000,10000,1000,2.75,0,0,50000,0),(17,'BTN','batara pensiunan',1277,10000,0,3000,0,0,0,10000,0),(18,'BTN','prima',1277,2000000,50000,10000,4,0,0,100000,0),(19,'BTN',' haji',1277,100000,0,0,0,0,0,0,0),(20,'BTN','haji plus',1277,500000,0,0,0,0,0,0,0),(21,'BTN','junior',1277,0,10000,0,0.5,0,0,20000,0),(22,'BTN',' juara',1277,50000,0,0,0.5,0,0,50000,0),(23,'BTN','e\'BATARAPOS',1277,50000,10000,0,2.5,0,0,50000,0),(24,'BNI','taplus ',6831,250000,100000,10000,2.25,0,50000,100000,8),(25,'BNI',' taplus anak',6831,20000,10000,7500,1.5,0,25000,20000,0),(26,'BNI',' taplus bisnis',6831,5000000,0,10000,2.5,0,50000,75000,0),(27,'BNI',' tapenas',6831,100000,50000,10000,0.04,0,50000,50000,0),(28,'BNI','haji',6831,100000,0,0,0,0,0,50000,0),(29,'BNI','BNI dollar',6831,10000000,1000000,10000,0.5,0,50000,100000,0),(30,'BCA','tahapan',8836,500000,50000,20000,1.9,0,50000,100000,0),(31,'BCA','tahapan Xpresi',8836,50000,50000,5000,0.9,0,50000,50000,0),(32,'BCA','tahapan gold',8836,10000000,50000,20000,0,0,50000,1000000,0),(33,'BCA',' tapres',8836,5000000,50000,12000,2.5,0,50000,100000,0),(34,'BCA','bca dollar',8836,1000000,50000,10000,0.5,0,50000,100000,0),(35,'Danamon',' tabunganku',1469,20000,10000,0,0.1,0,20000,20000,0),(36,'Danamon','danamon lebih',1469,250000,50000,0,0.1,0,50000,50000,0),(37,'Danamon','fleximax',1469,1000000,1000000,0,5,0,250000,100000,0),(38,'Danamon',' tabungan MU',1469,250000,0,5000,0,0,50000,100000,12),(39,'Danamon','tabungan dollar',1469,1000000,1000000,10000,0.25,0,50000,100000,0),(40,'Bank Jatim','Haji',382,100000,0,0,0,0,0,100000,12),(41,'Bank Jatim',' Siklus',382,50000,100000,5000,0.25,0,20000,50000,0),(42,'Bank Jatim','Simpeda',382,50000,50000,3000,0.02,0,20000,50000,0),(43,'Bank Jatim',' Tabunganku',382,20000,10000,2500,1,0,20000,20000,0),(44,'CIMB Niaga','CIMB Niaga X-tra',1749,300000,0,9000,1,0,50000,50000,5),(45,'Permata Bank','tabungan bebas ',633,250000,0,0,1,0,100000,100000,3),(46,'Permata Bank','permataMe!',633,50000,0,5000,1.5,0,50000,50000,0),(47,'Permata Bank','permataBintang',633,50000,0,5000,1.5,0,50000,50000,0),(48,'Permata Bank','Tabungan OPTIMA',633,1000000,0,15000,1.75,0,50000,200000,0),(49,'Permata Bank','Permata Tabunganku',633,20000,0,0,0,0,20000,20000,0),(50,'Permata Bank','Payroll ASTRA',633,0,0,5000,0,0,0,50000,0),(51,'Permata Bank',' Permatae payrol',633,0,0,4000,0,0,15000,50000,0),(52,'Permata Bank','Permata dollar',633,1000000,100000,5000,0,0,50000,1000000,0),(53,'Permata Bank','Permata valas dinamis',633,1000000,0,15000,1.75,0,50000,100000,0),(54,'Permata Bank','Permata Proteksi masa depan',633,100000,50000,1000,2,0,15000,75000,0),(55,'HSBC','savings account',124,5000000,250000,50000,1.5,0,50000,100000,1),(56,'Citibank','target savings plan',105,1000000,0,50000,0,0,50000,100000,2),(57,'Citibank','guard savings',105,0,0,25000,2.25,0,50000,100000,0),(58,'Citibank','maxi save',105,0,0,20000,2.25,0,50000,100000,0),(59,'Mayapada','My savings ',79,100000,50000,5000,2.25,0,0,100000,0),(60,'Commonwealth','Comm save',141,500000,0,5000,2,0,50000,50000,0),(61,'Commonwealth',' comm cash',141,1000000,0,5000,0.1,0,50000,100000,0),(62,'Commonwealth',' comm wealth',141,50000000,0,10000,5.5,0,50000,50000000,0),(63,'Commonwealth','comm pro',141,25000000,0,10000,1.5,0,50000,1000000,0),(64,'Commonwealth',' tabungan bunga harian',141,500000,0,5000,2,0,50000,100000,0),(65,'Commonwealth','aus student',141,10000000,0,5000,2.5,0,50000,500000,0),(66,'Mega','Mega DANA',800,500000,0,30000,1.75,0,100000,100000,3),(67,'Mega','Mega MAXi',800,500000,0,30000,2,0,100000,100000,2),(68,'Mega','Mega Perdana',800,100000,0,30000,2,0,100000,100000,0),(69,'Mega','Mega Berbagi',800,500000,0,30000,1,0,50000,100000,0),(70,'Mega','Mega Rencana',800,500000,0,30000,1.75,0,100000,100000,0),(71,'Mega','Mega Tabunganku',800,20000,10000,10000,1.75,0,20000,20000,0),(72,'Mega','Mega Ultima',800,500000,0,30000,2,0,100000,100000,0),(73,'Mega',' Mega Absolute',800,500000,0,30000,1.75,0,100000,100000,0),(74,'OCBC NISP','Tabungan harian',602,1000000,20000,0,2,0,100000,100000,12),(75,'OCBC NISP','TAKA',602,0,0,0,2,0,50000,50000,0),(76,'OCBC NISP','TANDA',602,200000,200000,10000,2.3,0,100000,100000,0),(77,'OCBC NISP','TANDA senior',602,500000,50000,0,2.5,0,50000,100000,0),(78,'OCBC NISP',' TANDA SGD',602,1000000,1000000,0,1,0,100000,100000,0),(79,'OCBC NISP',' TANDA VALAS',602,1000000,1000000,0,1,0,100000,100000,0),(80,'OCBC NISP','Mighty savers',602,50000,0,0,1.5,0,50000,50000,0),(81,'OCBC NISP',' TANDA 360',602,1000000,10000000,0,2,0,100000,0,0),(82,'Panin Bank','Tabungan Panin',612,300000,0,10000,3,0,50000,100000,12),(83,'Panin Bank',' Tabungan Bisnis Panin',612,1000000,0,10000,3.5,0,50000,100000,0),(84,'Panin Bank','Tabungan Junior Panin',612,100000,0,0,2.5,0,50000,100000,0),(85,'Panin Bank',' Tabungan Rencana Panin',612,500000,0,10000,3.75,0,50000,100000,0),(86,'Panin Bank','TabunganKu',612,100000,0,5000,0.5,0,50000,100000,0),(87,'Panin Bank','Pan Dollar',612,1500000,0,10000,2.5,0,50000,150000,0),(88,'BII','Tabungan Reguler',953,500000,0,10000,2.75,0,50000,100000,5),(89,'BII','Tabungan Gold',953,10000000,0,10000,2.5,0,50000,1000000,0),(90,'BII',' Tabungan Pro',953,25000000,0,20000,4.75,0,50000,5000000,0),(91,'BII',' Woman One',953,2500000,0,10000,2,0,50000,500000,0),(92,'BII','SuperKidz',953,500000,0,10000,2,0,50000,100000,0),(93,'BII','Super Valas',953,2500000,0,20000,0.5,0,50000,250000,0),(94,'BII',' EduPlan USD',953,1500000,0,20000,0.4,0,50000,150000,0),(95,'Bukopin',' siaga bukopin ',342,20000,0,0,1,0,20000,20000,1),(96,'Bukopin',' siaga bukopin premium',342,100000000,100000,15000,5.5,0,20000,10000000,0),(97,'Bukopin','siaga bukopin bisnis,',342,1000000,0,10000,0,0,20000,250000,0),(98,'Bukopin',' rencana bukopin',342,2000000,0,10000,0.6,0,20000,250000,0),(99,'Bukopin','siaga haji dan umroh',342,250000,0,0,0,0,20000,250000,0),(100,'Bukopin',' tabunganku',342,20000,10000,2000,0.5,0,10000,20000,0),(101,'Bukopin','Siaga dollar',342,10000000,1000000,15000,0.5,0,50000,5000000,0),(102,'Mayora','Tabungan Mayora',0,25000,25000,3500,1.5,0,20000,25000,3),(103,'Mayora','Tabungan Tambah',0,100000,100000,5000,1.25,0,25000,100000,1),(104,'Mayora','Tabungan Pelajar',0,100000,50000,3500,1.75,0,25000,100000,0),(105,'Mayora','TabunganKu',0,20000,10000,0,0.45,0,20000,20000,0),(106,'Mayora','Tabungan Payroll',0,500000,0,5000,1.75,0,50000,100000,0),(107,'Mayora',' Tabungan Giro Duo',0,2000000,0,6000,1,0,50000,100000,0),(108,'Mayora',' SiPucuk',0,200000,50000,3500,1.75,0,25000,50000,0),(109,'Mayora','Tabungan Standby',0,100000,100000,3500,1.75,0,50000,75000,0),(110,'DBS Indonesia','DBS Regular Saving Account',0,100000,50000,10000,0.75,0,50000,50000,0),(111,'DBS Indonesia','DBS Maxi Saving Account',0,1000000,200000,11000,1,0,50000,200000,0),(112,'DBS Indonesia',' DBS Saving Account Plus',0,1500000,250000,11000,1,0,50000,250000,0),(113,'DBS Indonesia',' DBS My Smart Account',0,250000,50000,8000,0.5,0,50000,50000,0),(114,'UOB Indonesia','UOB Plus Account',132,100000,10000,25000,0.4,0,10000,100000,0),(115,'UOB Indonesia','UOB Rupiah Savings',132,100000,25000,25000,0.7,0,50000,100000,0),(116,'UOB Indonesia',' UOB Gold Account',132,10000000,1000000,25000,0.5,0,50000,1000000,0),(117,'UOB Indonesia',' Tabunganku',132,20000,20000,0,0.5,0,20000,20000,0),(118,'UOB Indonesia','UOB Savings Plan',132,100000,100000,0,0.6,0,0,50000,12),(119,'UOB Indonesia','UOB Valas Produktif',132,1000000,100000,15000,0.1,0,100000,100000,0),(120,'UOB Indonesia','High Yield Account',132,1000000,1000000,25000,0.5,0,50000,100000,0),(121,'Bank Ganesha','Tabungan Ganesha',12,2500000,250000,0,1.7,0,50000,250000,6),(122,'Bank Ganesha',' Tabungan Investasi',12,2500000,250000,0,1.7,0,50000,250000,0),(123,'Bank Ganesha',' Tabungan Optima Ganesha',12,500000,100000,0,2,0,25000,100000,0),(124,'Bank Ganesha','Tabunganku',12,2500000,250000,0,1.7,0,50000,100000,0),(125,'Bank Ganesha','Ganesha Dollar',12,1500000,100000,0,2,0,50000,50000,0),(126,'Bank ANZ','ANZ USD Savings Account',2600,100000000,0,0,2,0,50000,10000000,0),(127,'Bank ANZ','ANZ Australian Dollar Savings Account',2600,2500000,0,0,1.75,0,50000,2500000,0),(128,'Bank ANZ',' ANZ Super Savings',2600,0,0,0,1.75,0,50000,250000,0),(129,'Bank ANZ',' ANZ Infinite',2600,25000000,0,0,1.5,0,50000,1000000,0),(130,'Bank BJB','Simpeda',316,50000,25000,2500,2,0,15000,50000,12),(131,'Bank BJB',' TabunganKu',316,0,0,2500,1,0,20000,50000,0),(132,'Bank BJB','Tandamata',316,50000,25000,2500,2.5,0,15000,50000,0),(133,'Bank BJB',' Tandamata Berjangka',316,100000,50000,0,0,0,0,100000,0),(134,'Bank BJB',' Tandamata Gold',316,500000,250000,2500,4.5,0,50000,100000,0),(135,'Bank BJB',' Tandamata Haji',316,100000,0,0,0,0,0,100000,0),(136,'Bank BJB',' Tandamata Purnabakti',316,0,0,0,2.5,0,0,50000,0),(137,'Bank BJB',' Tandamata Bisnis',316,2500000,1000000,10000,5.5,0,100000,200000,0),(138,'Rabobank','Tabungan Maxima ',77,50000000,0,5000,3.5,0,25000,1000000,0),(139,'Rabobank','Tabungan Maestro',77,100000,50000,5000,3.5,0,25000,100000,0),(140,'Bank ANDA','Tabungan Anda Prestise ',14,50000000,50000000,5000,3.5,0,25000,1000000,12),(141,'Bank ANDA','Tabungan Anda Berhadiah',14,50000000,50000000,5000,3,0,25000,1000000,6),(142,'Bank Bumi Arta','Tabungan BBA',0,100000,10000,5000,1,0,25000,100000,4),(143,'Bank Bumi Arta','Tabungan Kesra',0,100000,10000,5000,3,0,25000,100000,0),(144,'Bank Bumi Arta',' BBA US Dollar',0,100000,1000000,10000,1.5,0,50000,100000,0),(145,'Bank Bumi Arta','Tabungan Pensiun',0,0,0,0,1,0,0,20000,0),(146,'Bank Bumi Arta','Tabunganku',0,20000,10000,0,1,0,20000,20000,0),(147,'Bank Maspion','Tabungan Arthamas ',27,100000,100000,5000,2.75,0,15000,100000,0),(148,'Bank Maspion','Tabungan Emas',27,100000,100000,5000,3,0,15000,100000,0),(149,'Bank Maspion','Tabungan Karya',27,50000,50000,0,2.75,0,15000,50000,0),(150,'Bank Maspion','Tabungan Si Cerdas',27,50000,0,0,2.75,0,15000,50000,0),(151,'Bank Maspion','Simpanan Arthadollar',27,1000000,1000000,0,1,0,50000,100000,0),(152,'Bank Victoria','Tabungan victoria',0,50000,50000,0,4,0,50000,50000,12),(153,'Bank Victoria','v-pro',0,100000,50000,0,3,0,50000,100000,0),(154,'Bank Victoria',' v-jun',0,50000,25000,0,3,0,25000,50000,0),(155,'Bank Victoria','v-plan',0,100000,25000,0,4,0,50000,100000,0),(156,'Bank Victoria',' v-bisnis',0,1000000,1000000,0,5,0,100000,250000,0),(157,'Bank Victoria','tabunganku',0,20000,10000,0,0.25,0,20000,20000,0),(158,'Bank Sinarmas','Tabungan Sinarmas',0,100000,50000,6000,2,0,50000,100000,3),(159,'Bank Sinarmas','TabunganKu',0,20000,10000,0,2,0,20000,20000,0),(160,'Bank Sinarmas','Simas Valas',0,500000,500000,10000,0,0,50000,100000,0),(161,'Bank Sinarmas',' Simas Gold',0,1000000,500000,10000,2,0,50000,100000,0),(162,'Bank Windu','Tabungan Kentjana',0,200000,50000,5000,4.5,0,50000,50000,1),(163,'Bank Windu','Tabungan Windu',0,500000,100000,5000,7,0,100000,100000,0),(164,'Bank Windu','Tahapan',0,50000,25000,0,0.02,0,25000,50000,0),(165,'Bank Windu',' Tabungan Bisnis',0,1000000,0,0,5,0,100000,100000,0),(166,'BPD Kaltim','TabunganKu',0,20000,10000,0,2.3,0,20000,20000,0),(167,'BPD Kaltim','Tabungan Simpeda',0,50000,20000,3500,2,0,20000,50000,0),(168,'BPD Kaltim','Haji Al Amin',0,1000000,100000,0,0,0,0,100000,0),(169,'BPD Kaltim','Tabungan Prama',0,2500000,500000,8000,4.25,0,50000,500000,0),(170,'BPD Kalbar','Tabungan Simpeda',0,50000,20000,0,2.5,0,25000,50000,12),(171,'BPD Kalbar','Tabungan Taserna',0,50000,20000,0,2.5,0,25000,50000,0),(172,'BPD Kalbar','TabunganKu',0,20000,10000,0,2.5,0,25000,20000,0),(173,'BPD DIY','Tabungan Simpeda',23,25000,0,1500,2,0,20000,25000,12),(174,'BPD DIY','Tabungan Sutera',23,50000,0,3000,2,0,20000,50000,0),(175,'BPD DIY','Tabungan Sutera Emas',23,5000,0,0,3,0,10000,25000,0),(176,'BPD DIY','Tabungan Haji, umrah  shafa ',23,500000,100000,0,0,0,0,100000,0),(177,'BPD DIY','Tunas',23,5000,0,0,2.5,0,10000,25000,0),(178,'BPD DIY','TabunganKU',23,20000,10000,1500,1.75,0,20000,20000,0),(179,'Syariah Mandiri','Tabungan BSM',757,80000,100000,6000,0,73,20000,50000,0),(180,'Syariah Mandiri','BSM Tabungan Rencana',757,0,100000,6000,0,73,20000,50000,0),(181,'Syariah Mandiri','BSM Tabungan Simpatik',757,30000,10000,2000,0,73,10000,20000,0),(182,'Syariah Mandiri','BSM Tabungan Investa Cendekia',757,0,100000,6000,0,73,20000,50000,0),(183,'Syariah Mandiri','BSM Tabungan Mabrur',757,500000,100000,0,0,0,25000,25500000,0),(184,'Syariah Mandiri','BSM Tabungan Dollar',757,1000000,1000000,5000,0,73,50000,1000000,0),(185,'Syariah Mandiri','BSM Tabungan Kurban',757,50000,25000,2000,0,0,0,50000,0),(186,'Syariah Mandiri','BSM Tabungan Pensiun ',757,0,0,0,0,0,0,0,0),(187,'BRI Syariah','Tabungan BRI Syariah iB',0,50000,10000,0,0,51,25000,20000,3),(188,'BRI Syariah','Tabungan Haji BRI Syariah iB',0,50000,10000,0,0,51,25000,50000,0),(189,'BRI Syariah','Tabungan Impian BRI Syraiah iB',0,50000,50000,0,0,51,25000,50000,0),(190,'Bank Muamalat Indonesia','Tabungan Muamalat',1000,500000,10000,7500,0,58,20000,250000,12),(191,'Bank Muamalat Indonesia','Tabungan Muamalat Dollar',1000,1000000,500000,5000,0,53,50000,500000,0),(192,'Bank Muamalat Indonesia','Haji Arafah',1000,250000,50000,0,0,0,20000,0,0),(193,'Bank Muamalat Indonesia','Haji Arafah Plus',1000,1500000,10000,0,0,0,20000,0,0),(194,'Bank Muamalat Indonesia','Muamalat Umroh',1000,200000,100000,0,0,0,100000,0,0),(195,'Bank Muamalat Indonesia','TabunganKu',1000,20000,20000,0,0,55,20000,20000,0),(196,'Bank Muamalat Indonesia','iB Muamalat Wisata',1000,200000,200000,0,0,58,100000,500000,0),(197,'Bank Muamalat Indonesia','iB Muamalat Prima Perorangan',1000,5000000,500000,7500,0,52,20000,5000000,0),(198,'Bank Muamalat Indonesia','iB Muamalat Prima Perusahaan',1000,25000000,500000,7500,0,0,20000,5000000,0),(199,'Syariah Bukopin','iB Siaga',0,50000,10000,0,0,0,20000,35000,12),(200,'Syariah Bukopin','iB Rencana',0,100000,100000,0,0,57,30000,100000,0),(201,'Syariah Bukopin','iB Siaga Bisnis',0,1000000,100000,5000,0,0,25000,100000,0),(202,'Syariah Bukopin','iB Haji',0,500000,100000,0,0,0,0,0,0),(203,'Syariah Bukopin','TabunganKu iB',0,20000,10000,3000,0,0,10000,20000,0),(204,'Syariah Mega Indonesia','Tabungan Utama iB',0,100000,50000,3500,0,51,50000,50000,5),(205,'Syariah Mega Indonesia','Flexi iB',0,100000,100000,3500,0,51,50000,100000,0),(206,'Syariah Mega Indonesia','Rencana iB',0,0,0,5000,0,51,50000,50000,0),(207,'Syariah Mega Indonesia','Haji iB',0,200000,0,0,0,0,0,0,0),(208,'Syariah Mega Indonesia','Investasya iB',0,100000000,50000000,0,0,51,50000,50000,0),(209,'BNI Syariah','TabunganKu iB',0,20000,10000,0,0,0,5000,20000,4),(210,'BNI Syariah','Tabungan iB Tapenas Hasanah',0,100000,50000,5000,0,85,5000,100000,0),(211,'BNI Syariah','Tabungan iB THI Hasanah',0,500000,200000,0,0,50,0,500000,0),(212,'BNI Syariah','Tabungan iB Hasanah',0,100000,50000,5000,0,75,10000,100000,0),(213,'BNI Syariah','Tabungan iB Prima Hasanah',0,10000000,500000,11000,0,65,10000,100000,0),(214,'BNI Syariah','Tabungan iB Bsinis',0,5000000,500000,11000,0,60,10000,100000,0),(215,'BNI Syariah','Tabungan iB Tunas Hasanah',0,100000,10000,0,0,0,25000,500000,0),(216,'Jatim Syariah','Tabungan Barokah',0,50000,10000,2500,0,30,15000,50000,0),(217,'Jatim Syariah','Tabungan Haji Amanah',0,100000,50000,0,0,0,0,0,0),(218,'Jatim Syariah','TabunganKu iB',0,20000,10000,0,0,25,20000,20000,0),(219,'BTN Syariah','BTN Batara iB',0,50000,20000,5000,0,66,10000,50000,0),(220,'BTN Syariah','BTN Prima iB',0,100000,50000,5000,0,60,20000,100000,0),(221,'BTN Syariah','BTN Haji iB',0,50000,0,0,0,0,0,50000,0),(222,'BTN Syariah','TabunganKu ib',0,20000,10000,3000,0,55,10000,20000,0),(223,'BCA Syariah','Tahapan iB',0,100000,50000,7500,0,52,25000,25000,0),(224,'BCA Syariah','Tahapan Rencana iB',0,200000,250000,0,0,52,100000,100000,0),(225,' CIMB Niaga Syariah','Tabungan iB Perencanaan',0,100000,0,1500,0,52,0,0,0),(226,' CIMB Niaga Syariah','Tabungan iB junior',0,100000,0,1500,0,55,0,0,0),(227,' CIMB Niaga Syariah','Tabungan iB Pendidikan',0,100000,0,1500,0,55,0,0,0),(228,' CIMB Niaga Syariah','Tabungan iB X-tra Syariah',0,100000,0,1500,0,54,0,0,0),(229,'OCBC NISP Syariah','TANDA iB OCBC NISP',0,1000000,0,0,0,52,50000,1000000,0),(230,'Syariah Permata','Tabungan iB ',0,250000,50000,5000,0,55,10000,50000,0),(231,'Syariah Permata','Tabungan iB Umrah',0,250000,250000,0,0,50,0,50000,0),(232,'Syariah Permata','Tabungan iB Optima',0,100000,50000,5000,0,55,10000,50000,0),(233,'Syariah Permata','Permata Umrah iB',0,200000,0,0,0,50,0,50000,0),(234,'Syariah Permata','Permata Pendidikan Syariah',0,250000,250000,7500,0,50,10000,50000,0),(235,'Bank BJB Syariah','Tabungan iB Maslahah',0,100000,50000,8000,0,25,25000,100000,0),(236,'Bank BJB Syariah','Tabungan Haji iB Maslahah',0,250000,0,0,0,0,0,50000,0),(237,'Panin Bank Syariah','Tabungan pas iB',0,100000,10000,5000,0,79,50000,50000,0),(238,'Panin Bank Syariah','tabungan pas iB flexibel',0,500000,10000,0,0,52,100000,100000,0),(239,'Panin Bank Syariah','Tabungan bisnis pas',0,10000000,0,0,0,51,100000,1000000,0);
/*!40000 ALTER TABLE `tabunganall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fuzzybank'
--

--
-- Dumping routines for database 'fuzzybank'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-23 15:32:38
