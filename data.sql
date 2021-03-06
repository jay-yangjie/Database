-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: art
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderinfo` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL COMMENT '下订单者ID',
  `pid` varchar(45) NOT NULL COMMENT '产品id',
  `time` date DEFAULT NULL COMMENT '下订单时间',
  `num` int(11) DEFAULT NULL COMMENT '下单数量',
  `price` float DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcollection`
--

DROP TABLE IF EXISTS `pcollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pcollection` (
  `pcid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcollection`
--

LOCK TABLES `pcollection` WRITE;
/*!40000 ALTER TABLE `pcollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcomment`
--

DROP TABLE IF EXISTS `pcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pcomment` (
  `pcoid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `pcomment` varchar(500) DEFAULT NULL,
  `pspeaker` char(3) DEFAULT NULL,
  PRIMARY KEY (`pcoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcomment`
--

LOCK TABLES `pcomment` WRITE;
/*!40000 ALTER TABLE `pcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcommentconfig`
--

DROP TABLE IF EXISTS `pcommentconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pcommentconfig` (
  `pcfid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `uid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pcfid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcommentconfig`
--

LOCK TABLES `pcommentconfig` WRITE;
/*!40000 ALTER TABLE `pcommentconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcommentconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinfo`
--

DROP TABLE IF EXISTS `productinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productinfo` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `pname` varchar(45) DEFAULT NULL COMMENT '产品名称',
  `type` varchar(45) DEFAULT NULL COMMENT '产品类型',
  `price` float DEFAULT NULL COMMENT '产品价格',
  `introduce` varchar(500) DEFAULT NULL COMMENT '产品简介',
  `cid` varchar(45) DEFAULT NULL COMMENT '产品所属公司',
  `pnum` int(11) DEFAULT NULL COMMENT '产品库存',
  `picturelocation` varchar(45) DEFAULT NULL,
  `pview` int(11) DEFAULT '0',
  `pbuynum` int(11) DEFAULT '0',
  `pstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinfo`
--

LOCK TABLES `productinfo` WRITE;
/*!40000 ALTER TABLE `productinfo` DISABLE KEYS */;
INSERT INTO `productinfo` VALUES (1,'hhhh','java',25,'dfkjlns','1',29384,NULL,17,0,NULL),(2,'sdfjhs','python',4,'sdf,jsnkf','1',10,NULL,0,0,NULL);
/*!40000 ALTER TABLE `productinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `pnid` int(11) NOT NULL DEFAULT '1',
  `pnum` int(11) DEFAULT '0',
  PRIMARY KEY (`pnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pshoppingcart`
--

DROP TABLE IF EXISTS `pshoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pshoppingcart` (
  `psid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`psid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pshoppingcart`
--

LOCK TABLES `pshoppingcart` WRITE;
/*!40000 ALTER TABLE `pshoppingcart` DISABLE KEYS */;
INSERT INTO `pshoppingcart` VALUES (2,'uid',1,1),(4,'uid',1,4),(6,'uid',1,11),(7,'uid',1,111),(8,'uid',1,1113);
/*!40000 ALTER TABLE `pshoppingcart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-02 22:22:20
