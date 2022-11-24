CREATE DATABASE  IF NOT EXISTS `saep` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `saep`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: saep
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table ` alocacao_has_cliente`
--

DROP TABLE IF EXISTS ` alocacao_has_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE ` alocacao_has_cliente` (
  ` Alocacao_idAlocacao` int NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  PRIMARY KEY (` Alocacao_idAlocacao`,`Cliente_idCliente`),
  KEY `fk_ Alocacao_has_Cliente_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_ Alocacao_has_Cliente_ Alocacao1_idx` (` Alocacao_idAlocacao`),
  CONSTRAINT `fk_ Alocacao_has_Cliente_ Alocacao1` FOREIGN KEY (` Alocacao_idAlocacao`) REFERENCES `mydb`.` alocacao` (`idAlocacao`),
  CONSTRAINT `fk_ Alocacao_has_Cliente_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `mydb`.`cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table ` alocacao_has_cliente`
--

LOCK TABLES ` alocacao_has_cliente` WRITE;
/*!40000 ALTER TABLE ` alocacao_has_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE ` alocacao_has_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alocacao`
--

DROP TABLE IF EXISTS `alocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alocacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area` int NOT NULL,
  `idAutomovel` int NOT NULL,
  `idConcessionaria` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idAutomovel` (`idAutomovel`),
  KEY `idConcessionaria` (`idConcessionaria`),
  CONSTRAINT `alocacao_ibfk_1` FOREIGN KEY (`idAutomovel`) REFERENCES `automovel` (`idAutomovel`),
  CONSTRAINT `alocacao_ibfk_2` FOREIGN KEY (`idConcessionaria`) REFERENCES `concessionaria` (`idConcessionaria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alocacao`
--

LOCK TABLES `alocacao` WRITE;
/*!40000 ALTER TABLE `alocacao` DISABLE KEYS */;
INSERT INTO `alocacao` VALUES (1,1,1,1,8),(2,2,2,2,1),(3,4,3,3,4),(4,7,4,4,6),(5,8,5,5,4),(6,9,6,1,4),(7,10,7,2,1),(8,1,8,2,7),(9,2,9,3,2),(10,4,10,4,6),(11,7,11,5,3),(12,8,12,1,9),(13,9,13,2,9),(14,10,14,3,6),(15,1,15,3,4),(16,2,16,4,1),(17,4,17,5,8),(18,7,18,1,4),(19,8,19,2,10),(20,9,20,3,10),(21,10,21,4,7),(22,1,22,4,3),(23,2,23,5,5),(24,4,24,1,4),(25,7,25,2,3),(26,8,26,3,3),(27,9,27,4,10),(28,10,28,5,4),(29,1,29,1,2),(30,2,30,2,3),(31,4,31,3,4),(32,7,32,4,2),(33,8,33,5,3),(34,9,34,1,4),(35,10,35,2,3),(36,1,36,3,2),(37,2,37,4,3),(38,4,38,5,3),(39,7,39,1,2),(40,8,40,2,1);
/*!40000 ALTER TABLE `alocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automovel`
--

DROP TABLE IF EXISTS `automovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automovel` (
  `idAutomovel` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(45) NOT NULL,
  `preco` double NOT NULL,
  PRIMARY KEY (`idAutomovel`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovel`
--

LOCK TABLES `automovel` WRITE;
/*!40000 ALTER TABLE `automovel` DISABLE KEYS */;
INSERT INTO `automovel` VALUES (1,'	Fiat Strada	',43.115),(2,'	Fiat Argo	',47.66),(3,'	Fiat Mobi	',32.102),(4,'	Jeep Compass	',34.95),(5,'	Hyundai HB20	',49.302),(6,'	Jeep Renegade	',36.661),(7,'	Volkswagen T-Cross	',38.182),(8,'	Fiat Toro	',57.733),(9,'	Hyundai Creta	',55.998),(10,'	Chevrolet S10	',51.035),(11,'	Toyota Corolla Cross	',34.544),(12,'	Toyota Hilux	',53.937),(13,'	Toyota Corolla	',55.022),(14,'	Volkswagen Gol	',48.253),(15,'	Honda HR-V	',53.438),(16,'	Renault Kwid	',31.81),(17,'	Volkswagen Nivus	',35.104),(18,'	Hyundai HB20S	',31.855),(19,'	Ford Ranger	',48.927),(20,'	Fiat Uno	',38.111),(21,'	Fiat Cronos	',36.515),(22,'	Citroën C4 Cactus	',53.654),(23,'	Toyota Yaris Hatchback	',55.869),(24,'	Volkswagen Voyage	',30.954),(25,'	Honda Civic	',30.871),(26,'	Volkswagen Saveiro	',32.306),(27,'	Caoa Chery Tiggo 5x	',30.069),(28,'	Volkswagen Virtus	',40.689),(29,'	Fiat Grand Siena	',33.469),(30,'	Caoa Chery Tiggo 8	',48.481),(31,'	Chevrolet Tracker	',30.648),(32,'	Peugeot 208	',46.934),(33,'	Toyota SW4	',54.252),(34,'	Nissan Frontier	',32.596),(35,'	Honda WR-V	',35.139),(36,'	Volkswagen Taos	',47.546),(37,'	Mitsubishi L200	',57.049),(38,'	Renault Oroch	',48.756),(39,'	Toyota Yaris Sedan	',43.077),(40,'	Renault Duster	',52.641);
/*!40000 ALTER TABLE `automovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'	Adalberto Martins da Silva	'),(2,'	Adan Roger Guimarães Dias	'),(3,'	Adão Walter Gomes de Sousa	'),(4,'	Adelson Fernandes Sena	'),(5,'	Ademir Augusto Simões	'),(6,'	Ademir Borges dos Santos	'),(7,'	Adilio José da Silva Santos	'),(8,'	Adriana Ferreira de Lima Teodoro	'),(9,'	Adriano Bezerra Apolinario	'),(10,'	Adriano Heleno Basso	'),(11,'	Adriano Lourenço do Rego	'),(12,'	Adriano Matos Santos	'),(13,'	Adriano Pires Caetano	'),(14,'	Adriano Prada de Campos	'),(15,'	Adriel Alberto dos Santos	'),(16,'	Agner Vinicius Marques de Camargo	'),(17,'	Agrinaldo Ferreira Soares	'),(18,'	Alan Jhonnes Banlian da Silva e Sá	'),(19,'	Alberto Ramos Rodrigues	'),(20,'	Alcides José Ramos	'),(21,'	Aldemir SantAna dos Santos	'),(22,'	Aleksandro Marcelo da Silva	'),(23,'	Alessandro Martins Silva	'),(24,'	Alessandro Sanches	'),(25,'	Alex dos Reis de Jesus	'),(26,'	Alex Ferreira Soares	'),(27,'	Alex Sandro Oliveira	'),(28,'	Alex Souza Farias	'),(29,'	Alexandra de Lima Silva	'),(30,'	Alexandre Clemente da Costa	');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concessionaria`
--

DROP TABLE IF EXISTS `concessionaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concessionaria` (
  `idConcessionaria` int NOT NULL AUTO_INCREMENT,
  `concessionaria` varchar(45) NOT NULL,
  PRIMARY KEY (`idConcessionaria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concessionaria`
--

LOCK TABLES `concessionaria` WRITE;
/*!40000 ALTER TABLE `concessionaria` DISABLE KEYS */;
INSERT INTO `concessionaria` VALUES (1,'	Atena concessionária	'),(2,'	Demétir concessionária	'),(3,'	Hera concessionária	'),(4,'	Estia concessionária	'),(5,'	Perséfone concessionária	');
/*!40000 ALTER TABLE `concessionaria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24  8:59:17
