-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: Dictionary
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `antonym`
--

DROP TABLE IF EXISTS `antonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antonym` (
  `antID` int NOT NULL,
  `posID` int DEFAULT NULL,
  `meanID` int DEFAULT NULL,
  `antonym` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`antID`),
  KEY `posID` (`posID`),
  KEY `meanID` (`meanID`),
  CONSTRAINT `antonym_ibfk_1` FOREIGN KEY (`posID`) REFERENCES `pos` (`posID`),
  CONSTRAINT `antonym_ibfk_2` FOREIGN KEY (`meanID`) REFERENCES `meaning` (`meanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antonym`
--

LOCK TABLES `antonym` WRITE;
/*!40000 ALTER TABLE `antonym` DISABLE KEYS */;
INSERT INTO `antonym` VALUES (1,1,1,'skinny, cut'),(2,2,2,''),(3,3,3,''),(4,15,4,''),(5,4,5,'plain'),(6,4,6,'plain'),(7,5,7,''),(8,6,8,''),(9,7,9,'dryness'),(10,8,10,''),(11,8,11,'dryness'),(12,8,12,''),(13,9,13,''),(14,10,14,'tomorrow'),(15,10,15,'tomorrow'),(16,11,16,'tomorrow'),(17,11,17,'tomorrow'),(18,12,18,''),(19,13,19,'awake'),(20,13,20,'awake, conscious'),(21,14,21,'awake');
/*!40000 ALTER TABLE `antonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example` (
  `meanID` int DEFAULT NULL,
  `example` varchar(200) DEFAULT NULL,
  `exID` int DEFAULT NULL,
  KEY `meanID` (`meanID`),
  CONSTRAINT `example_ibfk_1` FOREIGN KEY (`meanID`) REFERENCES `meaning` (`meanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
INSERT INTO `example` VALUES (1,'This abdominous \'system\' beholds enemies only in two forms of opposition which it threatens.',1),(2,'A bacillus (plural bacilli) is a rod-shaped bacterium.',2),(3,'An ultraviolet lamp.',3),(4,'Exposure to ultraviolet light increases the risk.',4),(5,'They got lost in the forest.',5),(6,'Laxman and Sita also went to forest with Rama.',6),(7,'Afforest the mountains.',7),(8,'Zebra is an equine animal.',8),(9,'Rain dripped down his collar.',9),(10,'The rain descending should not make you blue.',10),(11,'Precipitation forms in the clouds when water vapor condenses into bigger and bigger droplets of water which rains later.',11),(12,'The weatherman forecasts rain for this afternoon.',12),(13,'An earthworm is a terrestrial invertebrate that belongs to the phylum Annelida.',13),(14,'It was in yesterday\'s newspapers.',14),(15,'Yesterday was rainy, but by this morning it had begun to snow.',15),(16,'She left yesterday.',16),(17,'Yesterday the weather was beautiful.',17),(18,'Jasmine oil is made from jasmine flower.',18),(19,'calm as a child in dreamless slumber.',19),(20,'The dried mucoid particles often found in the corners of the eyes after sleeping.',20),(21,'The slumber behaviour was observed in the patient after he went through counceling.',21);
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `lanID` int NOT NULL,
  `wordID` int DEFAULT NULL,
  `Hindi` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sanskrit` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Punjabi` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`lanID`),
  KEY `wordID` (`wordID`),
  CONSTRAINT `language_ibfk_1` FOREIGN KEY (`wordID`) REFERENCES `word` (`wordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,1,'à¤¸à¥à¤¥à¥‚à¤²à¤•à¤¾à¤¯, à¤¤à¥‹à¤‚à¤¦ à¤µà¤¾à¤²à¤¾','à¤ªà¤¿à¤šà¤£à¥à¤¡à¤¿à¤¨à¥, à¤ªà¥à¤°à¥‹à¤¦à¤°, à¤®à¤¹à¥‹à¤¦à¤°, à¤²à¤®à¥à¤¬à¤œà¤ à¤°','à¨…à©°à¨¡à¨°à¨œà¨¼à¨¨'),(2,2,'à¤•à¥€à¤Ÿà¤¾à¤£à¥, à¤¦à¤£à¥à¤¡à¤¾à¤£à¥ , à¤°à¥‹à¤—-à¤•à¥€à¤Ÿ ','à¤…à¤£à¥à¤¡à¤¾à¤•à¤¾à¤°à¤•à¤®à¥','à¨¬à©‡à¨¸à©€à¨²à¨¸'),(3,3,'à¤ªà¤°à¤¾à¤¬à¥ˆà¤‚à¤—à¤¨à¥€, à¤…à¤²à¥à¤Ÿà¥à¤°à¤¾à¤µà¤¾à¤¯à¥‹à¤²à¥‡à¤Ÿ, à¤ªà¤¾à¤°à¤œà¤‚à¤¬à¥','à¤¨à¥€à¤²à¤²à¥‹à¤¹à¤¿à¤¤à¤µà¤¿à¤•à¤¿à¤°à¤£','à¨ªà¨°à¨¾à¨¬à©ˆà¨‚à¨—à¨¨à©€'),(4,4,'à¤µà¤¨, à¤œà¤‚à¤—à¤², à¤•à¤¾à¤¨à¤¨, à¤…à¤°à¤£à¥à¤¯, à¤¸à¤¹à¤°à¤¾, à¤µà¤¨à¥à¤¯ à¤¸à¥Œà¤¨à¥à¤¦à¤°à¥à¤¯','à¤…à¤°à¤£à¥à¤¯, à¤µà¤¨, à¤¦à¤¾à¤µ','à¨¬à¨£, à¨œà©°à¨—à¨², à¨œà©°à¨—à¨²à¨µà¨£'),(5,5,'à¤¬à¤¨à¥ˆà¤²à¤¾ à¤—à¤§à¤¾, à¤§à¤¾à¤°à¥€à¤¦à¤¾à¤° à¤œà¤‚à¤¤à¥','à¤šà¤¿à¤¤à¥à¤°à¤°à¤¾à¤¸à¤­, à¤µà¤¨à¤—à¤°à¥à¤¦à¤­à¤ƒ-à¤°à¤¾à¤¸à¤­, à¤°à¤¾à¤œà¥€à¤µà¤°à¤¾à¤¸à¤­','à©›à©ˆà¨¬à¨°à¨¾'),(6,6,'à¤à¤‚à¤à¤¾à¤µà¤¾à¤¤, à¤à¤‚à¤à¤¾, à¤®à¥‡à¤‚à¤¹, à¤¬à¤¾à¤°à¤¿à¤¶, à¤µà¤°à¥à¤·à¤¾, à¤¬à¤°à¤¸à¤¾à¤¤','à¤µà¥ƒà¤·à¥à¤Ÿà¤¿, à¤ªà¤°à¥à¤œà¤¨à¥à¤¯, à¤µà¤°à¥à¤·à¤¤à¤¿','à¨¬à¨°à¨¸à¨¾à¨¤, à¨®à©€à¨‚à¨¹, à¨¬à¨°à¨¸, à¨µà¨°à¨¸, à¨µà¨°à¨¸à¨£à¨¾'),(7,7,'à¤•à¥‡à¤‚à¤šà¥à¤†','à¤µà¤°à¥à¤·à¤¾à¤­à¥‚, à¤•à¤¿à¤žà¥à¤šà¥à¤²à¥à¤•, à¤®à¤¹à¥€à¤²à¤¤à¤¾, à¤¶à¤•à¥à¤²à¤¾à¤¦à¤¨à¥€','à¨—à©°à¨¡à©‹à¨†'),(8,8,'à¤•à¤² à¤•à¤¾ à¤¬à¥€à¤¤à¤¾ à¤¦à¤¿à¤¨','à¤¹à¥à¤¯à¤ƒ','à¨•à©±à¨²à©à¨¹, à¨•à©±à¨²'),(9,9,'à¤šà¤®à¥‡à¤²à¥€, à¤¬à¥‡à¤²à¤¾, à¤®à¥‹à¤—à¤°à¤¾, à¤®à¤¾à¤—à¤§à¥€','à¤®à¤²à¥à¤²à¤¿à¤•à¤¾, à¤®à¤²à¥à¤²à¤¿à¤—à¤¨à¥à¤§à¤¿, à¤¸à¥‚à¤šà¤¿à¤®à¤²à¥à¤²à¤¿à¤•à¤¾, à¤¤à¤¿à¤²à¤­à¤¾à¤µà¤¿à¤¨à¥€, à¤¸à¥à¤°à¤­à¤¿à¤—à¤¨à¥à¤§à¤¾','à¨šà¨®à©‡à¨²à©€'),(10,10,'à¤¹à¤²à¥à¤•à¥€ à¤¨à¥€à¤‚à¤¦, à¤à¤ªà¤•à¥€, à¤Šà¤‚à¤˜','à¤²à¤˜à¥à¤¨à¤¿à¤¦à¥à¤°à¤¾','à¨¨à©€à¨‚à¨¦à¨°, à¨¨à©€à¨‚à¨¦, à¨Šà¨‚à¨˜, à¨¨à©€à¨‚à¨¦à©à¨°');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meaning`
--

DROP TABLE IF EXISTS `meaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meaning` (
  `meanID` int NOT NULL,
  `wordID` int DEFAULT NULL,
  `posID` int DEFAULT NULL,
  `meaning` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`meanID`),
  KEY `wordID` (`wordID`),
  KEY `posID` (`posID`),
  CONSTRAINT `meaning_ibfk_1` FOREIGN KEY (`wordID`) REFERENCES `word` (`wordID`),
  CONSTRAINT `meaning_ibfk_2` FOREIGN KEY (`posID`) REFERENCES `pos` (`posID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meaning`
--

LOCK TABLES `meaning` WRITE;
/*!40000 ALTER TABLE `meaning` DISABLE KEYS */;
INSERT INTO `meaning` VALUES (1,1,1,'having a large belly'),(2,2,2,'aerobic rod-shaped spore-producing bacterium'),(3,3,3,'having or employing wavelengths shorter than light but longer than X-rays; lying outside the visible spectrum at its violet end'),(4,3,15,'radiation lying in the ultraviolet range; wave lengths shorter than light but longer than X rays'),(5,4,4,'the trees and other plants in a large densely wooded area'),(6,4,4,'land that is covered with trees and shrubs'),(7,4,5,'establish a forest on previously unforested land'),(8,5,6,'any of several fleet black-and-white striped African equines'),(9,6,7,'precipitate as rain'),(10,6,8,'anything happening rapidly or in quick successive'),(11,6,8,'water falling in drops from vapor condensed in the atmosphere'),(12,6,8,'drops of fresh water that fall as precipitation from clouds'),(13,7,9,'terrestrial worm that burrows into and helps aerate soil; often surfaces when the ground is cool or wet; used as bait by anglers'),(14,8,10,'the day immediately before today'),(15,8,10,'the recent past'),(16,8,11,'on the day preceding today'),(17,8,11,'in the recent past; only a short time ago'),(18,9,12,'any of several shrubs and vines of the genus Jasminum chiefly native to Asia'),(19,10,13,'a dormant or quiescent state'),(20,10,13,'a natural and periodic state of rest during which consciousness of the world is suspended'),(21,10,14,'be asleep');
/*!40000 ALTER TABLE `meaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pic`
--

DROP TABLE IF EXISTS `pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pic` (
  `picID` int NOT NULL,
  `wordID` int DEFAULT NULL,
  `pic_file` longblob,
  PRIMARY KEY (`picID`),
  KEY `wordID` (`wordID`),
  CONSTRAINT `pic_ibfk_1` FOREIGN KEY (`wordID`) REFERENCES `word` (`wordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pic`
--

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;
INSERT INTO `pic` VALUES (1,2,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0‚\0­\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0>\0\0\0\0!1A\"Qaq2‘¡±#3BRÁ\Ñ$br\á\ð‚46t’²ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\'\0\0\0\0\0\0\0\0!1A\"2aQq3BCÿ\Ú\0\0\0?\0\å\÷\Ëz¬\÷™0\áW%@¶\á\ZJ¤…$ÿ\0\õP«Ò¸¿ˆf\Û\Ì)7Y°±¥M\ä\"F\õW‰n?Œ^_Ÿ°q\ò2”Œ€R \0¥mÊ³\Ã\Ï^Vûhm·ƒIAW‰j>B¹[M&\ÎV\ì’\Î\ÌMRT\òO„Ÿjš\÷|”û¡	qhh¾\ô!$\ê\Ê-\Ò$4\îw\É5’•Í“\ì·\ò\ôM+mÕ¥C»k)?•<~\Ìx\ÊK0C²Tœ\Ü\Ó\á\ßoHl\õûÐ«wN›ËŽ\Ëm—pª¨\Ü8~Lî•Œ)¥gzJ—fTDý\Þ\\\é\å\r!d’”dŸ¹§\Ë\õ«m±\æ3	|\Ô\ò\ÔÊJÀ;\î@Á\Ü\n\ç\Þr*\Õ\Ë:s¶\â¶ye~%,©g¹¦Ÿ\Zn–\ë¡\ß\ñˆ6\ÙÉt\á\ö[Ž¯12–¥)>`\ã•tiV\Ë\áŠ0\ñ?c˜Jµj\Üg=+…Ã\"{aµ©Jm=	9\Å4µsLvS1aßŒ\×(!8\Ð\æ¤\öÛµJI\'HÖ‘µã‰¬\rI\rÇµG˜œø–Û®6\np?>½¾\õ_\ñ.\Z’\âT\Û\ò\íùù\Ð\ãE\ì\ô”n~ Rü+O:?\Ä:¢„•iJS‚sŒ\î<©Ž\×cT»k¢:\êšN\Å=s\çŠ<žœpgAÆ¸ž\Ø\ó\Ð^}¶[\r6\â¥)i\ÒFÛ“\Ü\íù	\âk\Ú•½\Ø#Kq%Bd—‘\ö?zQqR£=¨‚•¡GRq\Ó´‹Ë®¤\'\éAqK\Ê\ã£$W\ÔT+Ö¿©®‡o™Š Be¹\íÆº¶\Úu‡ÎzF’N\Ê\Èa¿¥!\ÂzB\\)\ê\'|Ešf—Ç²´%?2@\ëý\éù$–$ŒŸL\è7\Ð,\Ç H—ªsˆÐ¦â€·OQžˆ\ÏL“¶\õÍ®|A-\ô¹\n;)·BE`\ä«ý\ë\ê¯m‡¥G>c‰%ˆl¦3I>\r\Íi§\ð\n\ÉRŽäž´\ÐJ*\Ãx#ŽŽ{\él š%>Ê¦›J˜\Ê\É\êxÝŽ[Ï¶ˆ\ÈR\ÜYÀH\íMe»,4·=\Ò^P\ÏL{g \õ¤\ä\åvœüxt?h:”t·#À°•|ª\êœû\Z\Þ\ícŸw˜e[\\*H\0@Ò¿¯¸]\ã\É\Ó\ám“°ÿ\0š%\î‡\\\ÂÃ¤\0¾¾/#B¦Ÿ˜3³\È\Ü%wS­V\ç\Â\Û8-­8Q\ö\ézP[n–V…¶¤Ð F>”\åv\ã{›\ËeS®-•(¥\ÒJU…ccŽ\ÛW—/‰r²Dp„µÍŽ²L§0²\âObN\õHJ[hd\ÅKL„Å¸2\ó­P•‚P®ŠU\Ñx‡¸;\nw·©™‰%\Æ\õ\àG\õR»ú+ž>†œY-\r>BºO[nQ\àJƒsil;qi·\"jk*\È\' \'#\ò¥\å§R5\ÙF\ÝXHv\ä(+SÐ.`\Ûœ`R\ÓIžÓº„”¾D\éprz\õ\éN\ö§\ä\Ù\î\ZV5#8P)Øƒ\ÔoCx•‡¤6\ò\"Gb˜`\ã\È%l+»e@‚q\Ôg9Æ’\r\Ê\èU\Z<\ëi\\„°Ä†\Î4)@©y\é…\rºùÐeJu)\×\ÐS¹8\÷¢WI·­P\Úg\0•r‰XXÿ\0\ËÊ—‹\ó&*.-9\ì6¦‚—N€¬•©ÿ\0\Ém¥d“ùT°cM~Sk\æ4¢5(€­C )Ô¯\ò(üº\Ú\Ý~\ßva®CeO²\ö\Å yVrúŒG\Ä|©\ï0‹lœ±°”+:OS\ô\ÍYµ;&vg™if`pr\ô‘\ã\ìAÁ;ûŽ\ô˜\Ñ`©I“+ÇœjJ…d‹”[@cS‹AÎ¡¿Ö‘©WŠV\nl1\ÄV\á*+·¨@§\n\Ä\ÆT¬”ü@ùÊ•›•¹#–\ÆO\ó*Ž\É\â!vyc”¦V\ëa\Ðp•ž\ç¦p(%\Ú\ÜcŽrU±¦ƒ§\á ¢IR\ÝjSo¶\ß~ƒ\ô¦\È&-\Ê\nV\Ê\ô¥±û\Åî¤«\É_Þ”-¯’Ê”\æ±B‘\"K²aº[\å!N¤ü\á#%?QÚ„\àš§\Ð¼«\Ú\ásj+Šm#%\Æü@§\ÐÖ·rˆD|a\Ä\ÒF\è\ô£\Ñï–©r¶¸®(.\êF~¿¥,_Ë‘¯¼\È!;£WEŽÆŒS“QkF\Ëxf\â»^¹RÒ¥8wo\n\è1\åçŸµ)\Ýe9&r\Üx(“œj:Ž2zž\õ»Rd\ÊJ•¯§—j®–yd·’¡ÔšhEFM³\"\ÛN¼¹°­›ˆ\ôJa¢´ƒŒæ¡—R\æ•\ìE[ƒ=\èHRYP\Z·9H?­]\ÝZG“\Ñu\Å6\ö tŸ\æ[Â¤ƒ“¨u©TÂ›P\ëÞ‰3l`Eæ¸¡šG8Ád\Ñø†\r†\è\ô™±”øSZ§I\ÏQ‘D\ï\â\Úúÿ\0-âˆÒ½Hmœ…mÐ•yûb“‹¶¼‡\ÏJŽQQN6 \ã?Ù¾Ž\Å|>)³\ñ\ô™\Ñ™-\ô\ñ²¶\ìqŸ|Š\Ö/.\õ\nM’x\Äy	\Ðr[X>Œ\÷f‘?\Â\É\Ï\Ä\âf\Û/;_ùi!´)A!_)8\é…`ûfº:¬3\ã\Üu±B\Î”§o©ß¿J$“F”i\Ú9¬h²\ìSÝ¶\Üb¹€²•©µcIÿ\0¸£7Ë…„KBP\ô\×\ÔZBF€”¤c|\ïšw\â++3• I¹3‡\ÂVæ‘­m¼6%·\Îþt¼,üfW6J¸º6\n’\é9?\íN\ß5½¯,»ä§–\n—I?#YYÇ¨\Å]]©\Æ®\å\\\'€ÛŽ2Z\õ;\Z<\ï¦;\n‹kŒ\Ì&³\ò°3·r?Z\Ëg¾§­%\Ö­t\êBÁ\ë×­N\Ò\ÑÏ§A1§­—R¨e*P¼\Óo@O\í•0q¥‰\Ø<P\ãT³\riC\ì\Õ	XÎœúG°.vl\ÎS*\Â58ê•¥-5Ò®\æ“J\Æj…\ä¶\äu$¨:¼†ß¹\0— ¦V,ˆÏ¥w\áRp¦¢´N¡\å©]>\ÕnZxQ\ç[=„$xRÌŒû\ôú\õ¥—%þÁjÄ¤[e)\ÅÇˆ\Ò\ÞV2t\r€I­\ísŸ³\É,H\Ï%\ÜjH9\íŸZ\éûµŠ,gc\Äz\\2´”\ó\n°¨À¡\Ê\áK,†”\ì9©Ÿ5`.¯”G\nz\îqEr¦ªAM	\Ó!°Ã‰¸\ê9!?\Ãÿ\0wˆ$*\õjˆ¸\é*øF\ô(\'²G?phtË²›|²Y\ZO(¡h\ÒA\éQX• JQŽ\èm9“\á\Ò|\é\ÔZ^O£%Y+\Ù\Ö\ïÅ¥¦›\æmŠnœla\n\Ð\Úá¾ G^C§¹#µ_6¨DxT‡t:¨\ó\èš	t‚›‚\Ê\Î\Î\Ø\ô\Õ\Ï>hNfn\Ø\nz	yH*I \õ\ê™Bp­Ï¡¢c\ñ’BRH\ÅCPtŒ,d\×_N>\Öe ýž\Çq½O0\á3\ÌX\Z–¥+m>j=…8\È\à\Ø*i,K¿4…˜F`¨duÁ$~•†Ã±?\ÃÈ’a|U\Å\Ç}Àz„­I	\ó\Ø¡\Í\'º¹	w–\Ùt\éVúzæœ½\Õ\Ú~.ƒ(\àNe:Ÿ»\ÜV<“\ËO\ô8«/Û†–\ìÊ”¤œ”ú—“\ê\åK|\É\n@,\Î1¹\â\ÛyzR­Z‰8=+z³of|Œk—\Æ\Ï2Ànl\Äa½ƒ-$6=(S¼M>FHy@‰Ç¶j‹6g¤Œ¥§0®Š ‘ùÑ¸9\ä\à¶\â\Üo€â‘»Ø­É€W>CšŠu€¡¿Z,º\òÁ\r•¯\nNsŸ?jo—a¶\ØjE\ö\â\Ä%8m$\êR€\éH\É8\Û\ï^À½ð«­V\Õ2ä†•¤ƒéŠ•gP\Ï\Ì=\ðv\éEBMh>œ˜5žZ–>&\Þ\ê·\ðY\Ò}?:9o\á\çc\ËiË“\Ì\Ä2T”­@)x\ì”\õ;zVM\ã%>\ãÉµ¸K-¤\'Ts¥¥+”\í«\é\â OOC\óš¸:\ÚS6?‰µ”i\É¡=OÖ•\Ô]H\Ê+°½\Ü\Ù/\×\×r]Í•6„¶„¤7£Jv\é\×~½{Ô±dj\ß6º¾ùA\ÔY\0‚’q\Ð\î<F‚7\Åü9KŠ]¡z×±<\ó±ï§\Ï=\Íeþ—h‘py™Q\Øe\Ô\ês~À€_:iF[hg{6b\ÃeCAM\ËLÅ\âl»\Êü\Íy\"œ[œ¾Amg¿\ó%\0\ã\õªq\Ú\áûš‘n2XI€Ÿu\r@V\ñl\Òyv\Ë\Ü\"A\ÉO\Ä\éPxÀ8\õ­x¦…þŠ\÷y–\Ûl\ÎD›…3¤-‰)Q0¤þ¸¨\"L\áÆžLÁ2b[@\n¹8O‘?/\×$~•kŠo-?(Fmq¤¸–…\ÊH\Ýno’ˆcH\÷“\î*Tw\ÙF²6P ý©â¼±A\Ã\èËƒ?‰\\¥Ï”´3\ñO­\ò”\öÔ¢¬~ud¦\Ç\á\ZQA<\ÍÉªº‹cJÁ*\ìsÒˆ\Ã}¸Ì­\É (¨l*³n³\ÛeEH¸\\g!ƒ®\Èp\éCh’|€£ŒÙ¯\Ð?\Í\\\ã¼\Ë)¼-	\õ%$\ìjŸ\nOj5ùÇœJ‚$2\ã:2[*þ/ûØšh\r\\¬\è \ËX;Z\õ\è¡\Ûn\ÄR\òµ\ãA“¤jW\Ä0¢¸ùiµ$i$Œ§;“ÿ\0{\Õ\Øþ\\™\"rC^\É)Vù\ÎFSq¶\ôV-\Þ\Ûc–Á\Z5½ù\nÂŸC^‚:§¶}+Ff\Í\áG^‚ÿ\0)m(‡S‰\nJ\Óü\É\'\ÏúoP‹\ñÐ©\ÖB¼\ô9\\2ˆoJoB\Þs\á”\ÚNÐ¨/\Ë%D»ú\Ö;\Â\â	J˜\Â\"…Î %>ƒ\'\ØW4µL—a|»B\Û*Xe\ï\ê7§_´Õ¼‡#™\ñ%IC®a\Æ\ÖH\Ô\n»\ç\ßjy\Ã6²gAG\Z\áà¤—.\ì!$\á\\„—¡\ä0š3ÿ\0\ç\Ë<\ËZ[˜\á6\ë©go]_Ú—?²]špÂ’-\òPe‰^\0„\÷:ÇTw…®m6‡b”¾\Ñ9\ÖËÁ\ê)5\Ð.º\æL¿¥D6­v\Ç\ò¶XR\Æ`ù\Ê\n½\0À\éšR¼L\âvd)\Ñr½&k~\Ón/J\ðO„zb‹\ð\Ë\×az‰nS¯6‡—¥\Íc`\n•±\ôˆq?Ì‡9L\Û\ÔYi\ZP1\ç\÷ýi\×&˜\ê]œ\Îdk•\ÅFL\ÙI|xT_p©C\Ós·µMj°J—ÔˆÑ£¶­\Ùk(AWÀ$Ÿa\ÜS\Âoþ#dF½$·!i\Âf2‡\ß\æ†‡?o‘b„\"]\Øz\ål—cÍ„¡¾¬x\\\nùN\Ã–j±œ¥fY\ÉY6\Û|2\ñ)\óŒ†` 4ª•œýªvj\ßdS\î¨l§Ô·v\ö\Ø~U^\ã\Å,±¤\Úl\ñZpœ~\ßS\Ê¶\Ãïš®\Ì\Î ¸¡\ÅHžúYm%jf1¡)\õÆ¯Î¦Õ«–±†;£I\ÃÑ­¶\èj$:…\ÆCiw\Ñ@¤j¤;\ó¿w’ˆú\ÄD¼¡²1¥\ð\ííŠ½ˆ\\d=+\à\ñÝµ Ÿ\æ®ª°›d\Û\Ëi•#\áä’œ”ÿ\0\ßû\Ó&\âýÀ¶Ae–aiK\ñ\Ê\ÂU’…\')>\õ%þ\è\Õ\Ñ\ä7\Z+1\ðœ)¶PBI\óÁ4)w\ðŸSR\ã¡§\æB’RE±\Üe\Þ‘\Z=¹¢[K’V\Z\ßl©[o\å\×\ó¥|/\ËÎƒ\â\Å\ÉKq(¬\ãªF\í\é(K¯Jß§Þ‰_xz\âÆ©s[å´£„¸…¶}”6úRùAïŠ¼r°Â´\çBŒ?džs½ˆÞ R	zQå°\Ïl\Ð\ö\Ý^¼$\ÑYR\Ýr\nP´ ut$œu\Ø)£sf+£\áO,m’74^-\ÂCªD\'e@d”Ÿ›ÐŽ\ã\Ð\Ð\"3¬\'p’*\í©J\Éi·€@þQ\äŒ~Kh\Ì+t+Ê¹2ƒq.]°4¶\ñ\Ï|\ôQû~”R\\¬Íª‰Cd¾z}³Ò—žDe,‡Ò•%;ÖˆG\â«r\ZL{¹SRÀ\ÒË\Í+	\ò\'¸\é-\èWŸ\Å¯@†fS\Í	%A$ø´uÇ¥1\Ë\áÒ®p[³\Èq\Ûk˜S\Ï)\å\02|]3±úÒºCLº\Ø[„(\ô\÷\âÍ¦Ì”º[m\ï2B\Ñ\Õj8À¹Ç•\ÚjŒ¿M\á»Li¯Œ–€žRÊKd\ä“ß¶<\÷¥‹‡¹ø+k±N1J¿j\Ü\Ù¦7>\äÐ®5K$®\ïW9—\Ît\ê@\èþÔ¿9y*Ë¡ u\ëT‡\Z¯&\Ã]\Ü3\Ç!.;·D\Äy¤(ÿ\0™y+Nr\è\ô=Á£3\ì±/\å\É\Ö9\ÍJh’²\ão\Üw£Ò¹;\Ïø9(D¸r\ç&\×1¾S\Ëd©^¤\à¡^cúŽ\âš\\V¬\ÍZ\Èft7¡¾P\âu9\Ô9\Ð\íW\ì<E\"Þ®[\ä­À´/\Ä<±\Ü})žØ¨\Ü_m\Ü4Ç¹1²Ö‘„8|t—¯œ5&Ø¬:žƒÂ½\ð\è®m¦´Mt\á¨Wuªg\r¨39#WÀ¸¯Ù¹þ\Â~S\èv\ò\Å&¡¹\í\Ü\n”\ê\ãJezTÒ²’‚:‚(¤ira?¬: ±¹øi†|X\\k8—ø\Ø¹?*Jÿ\0@®£\ÔmVŒ\ï\"Ô€	‚˜\÷Cu¤6“©M¡e;‘\çÚ-eV\÷’¤<Ô¤ rd‚>n\ç=q\ïšLyS­\ï»\òÓ­¸Â´©\õ\ô5Uo¾¶	(W%G#Ò‡§>\ÍAŽ »¯ˆb4\ä\ä\ÇT¨à§œ\ÓZT±Ÿ\â\ó¨x:lT³2\Ó9\å\ÆLµ¶¶ŸB5ai\ÈÒ 7Á\Õ\ô>\õV>†\ád \àùŒTM\Ïj	\ð«¨>T\êXqz\rŽoÅ»\ð\ð\ì7†?§:Ó§cUÅ¦\Û{oM¥´Å›ƒª ?\Ø{\ô\ô\ò\ò«¶\Þ0\înÁ¹ºWûnrs©¼|£¦\óþ\ÕH³do\Æ,*qm_¶`Ÿ\n\í\î“\ÙCûŠ–zB\ä[lf%„IPyj\ÒV‘$~µZû	P\\\å:¥o\áW_jnœ\ÓWk[\×X%x\é\×!M\Ý@«\Ô\Ü\åB¶F»2\ÛBB^6R•Ÿ\éT\õi½\ì\\a-8”¶œ\ë\îkW‚\Ø{\r\éV^µO!`\ÆZ‚‚¤\rC¯]« 1\Ä`\ç\ëVo6²ƒÝšr§h\n1\Ü \ïºN\õ3lNX:b\ã{Q(œJ\è- ¨–Ó ˆ4‹‹w”\éQA!A¿\ÈmRs—qE´0€·d´·5«A;¨Þ†Ê’ò’†–úB>T’HzMÀ\\nnH¸¥(J\É)m±„#\Ð\n\Ò\æa6¨\Ø*¦‹qj,ÈªÄ¢–”Ë» \õ\á\0¶®½©\ã€xn\ÃÄŒ>g<¿ŠI\'\á\Ò\î‚?ˆy\Ô\\[þ»hŒ©¶\×^}¤­—\ãJ|Á+Â8ùP\Ô%°Ó‹PHOˆù\Õ\åÛŸZ\Â]RQ:«©*ý£l¾¬wKdþ‚®¦\×\Ä5hb\Ý=\á\ç\ÈPÜ\0¬Ô›Á¼]†\àq‘°\ÃøxA2$©aN¼±CùNÛŠp\án(_\Ü\ÎRã© §s))Wr\Ù\è=»úW><ug<Ïƒ\\„Jˆ‰!O`u\ØmÓ¶s\éQGSIR¾yÀJ[Q\'°§\É-ª:\ð\Øe+‘—X\n#RwÂ†\Ä#Jq\è\ê\ÉJB€zl°[\îœ(\Üh\è…\ñ\î\ÎÁš…:T”ÿ\0¤\é\â\ß|\ö5\Æ\Éj½Fr\áÃ²\ÈK\ÊmÀ“\ÑcøHüÁ\ò¨8\Ó~9D\å\Ð6AcŒ¡~puLh••\×ù\æŸÒ„\ÆfEµ-À¸\ÇLg\"¯\n#i\ö\ó­RJW\Õu¡i8Á==iÝ©‰l¦!«ŠFy`\rX\è’z\ã×µ&\ã\â\íP¹9pl€‰zqû|¶\Î\Ô0\Øc9\r\É1\ßu3‚\ãkkHÁ8\ð\ï¿^”¿vnLyŽÇ”‡\Z}¥”-µ\õI+·I’\Ñ~KŽS¥²¥|£Òª¸e¦¨±&\ß5	Pl\Ñ\Ü#¯Û­Xá»”¨S\ÐRp\ËiC\÷ˆ\ÈÔƒ\ïýj%e\ÄR\ã·*+q\æ \î\ZqÁ¯\õ\ÍW½\ÝY\éLˆ«‹-¤\é,­9RWŸ\æ\êG½\ÕA§ù¶Kûr¡«™\Ü<\Ée¶¯On¾\Ô#‰­¯\Û/\nrÖ•\Ï6™\r!;–‚·\Ó\ô9Ø«V\Ë\ì\Öm\éALy?»D†µ¥µu\ÊzŸ,\âƒÈº]\\˜©\ò\Ý\ç-\ÅxÑ¤\00\0\è\0\Û8v¢Ÿ\ã·\ß\Öd/=\òsŸ½^a\n¾%(m‡8	aDý\0«\Ü=\ÇnW¡¢B£%´¢;‰\Ê\n\ÖO‰I\îœc¡&¸jýp¹´\äD¥\ri\Ò\ÂN\ÔÜŽ1K\Ò\ÓÀ\Æ\×\é?‡4£\àAHq\Åo\áa\ï\ö©›\à¸2Tn$ˆ„Î² ¡ùÓ­Ç‡&\ßm\r$-H~*\Ö?k\ÑÁ’r˜;R”¾»\Äxµ\Ëu t\È\ÍQ¿£Ÿ8\âF	z\ñ\æŸCh}\Ø\ï6ËŸ#‹l„«ØuX¶\Î\á\ä©vØŸ9£ƒ&Y\ÖAÿ\0J~Q\ïŒ\ã½Ga¹Î»H”\Õ\ÝÕ¹j\r/\â\Ò\÷‰\0N\Ã8\ö«.h]!“Št	\à\æ—/†ž‹h\Óø‚\ä)!@8¶À\Z4\ç¨ùºy\ÑF\â«{@6& \çd\ç\Îb­\Æ\ñ$x€\Îw\ÍN‹´Öš\Ót¦€\è–\ßZ@úK>7)7`j\Ù\Ñ<Z¼l\ó\ï«aVµ\ñ\ÅÇ›Fq®C˜ÄŠB²Ì>\à\Ë2¯S\Â:@T·<G°\ë\Ü\íM\Æ\Õm‰)MLº¬>™´´\\ZO‘Y8\ÏÞ¡\ËÀ\â¿!\öXv\Ù\ÑnS®M•‡¶j?Z†ø\È\è+^\Zµ5rmaIqeA\Ùo\r% \õ\ÇdABZ\Ý\Ìkqu\Ç\Ë\ò•\Î*#\É8	AV$G¾\Ýø›¤¥G„‘»’m?ž(kÚ˜º\Â\ßnpSl]­‹\Ê\Ó%\ô\ò\Þ~3\Z\Ô7JI#¶Ôƒw	\â%rC­ ¤8²$2@P\Ø\ô8 #D[»\ðÍµÖ‹¡\Ô9Šlr›;\é$jW\Ø\æ)‹Ÿv]\å\ÉÀ-,\ÉM\Ð$x@¸\Åtq)/k(­`\è\ÜUnt·\"ýe_:#\ÉÜ§Bû¤ŽÆ–m	\ÔÆƒi)$\ï“U8+‰\åp»ŽZ2­\Òp$F*\Æ|”œÿ\0ûýˆsgˆxE¥™±[ž\ë e,4`ùdœTy8\Úø\èW\Ú?\Åx\è;T¡€ü˜#šŽùJˆ\n>\à\ãÿ\0\ZPy	C	\Û\Äh§Nz\õx\\ù*Kd¤!¶“\ò´\Ñ#û\÷$\Ðg’G„+Wµt¬¥‘›L/fqQÀXZ\Ú^r…¤\ãª\Ýû“9\Îegù³œ\ÕTHy($\é^M\Å*h!Æ³\ëSq”e\ä…\Ñ,w\ÞuIm†J¶\ñ\ÓÒŒye$\ôû\ô ŒMq²D z\ê#$­Fä‡\ç1\õ•­[’MN\\w¬\0lµ\Ü\íœ/ky\Ä@%¸‡µ ¤ž„\ç\ÌÕ¼~/¹˜ªü\n,K`Z|o6\ß1\Ì{¯8JWGÁIa\\\ß‡¾hZžy’¦³£\Ë;SF>_°\ätø©\õ9~»¾â‡‰¥ŸÏ‘N@Ç°¢Q.\Ò\à#\áÛ»½\0#”¢¤)$l@?/·j\æ…/,Œœ\çÖ®±2D$–”‡PÚ´ø[\ï&§ù:U¹	*VR“Y\Èÿ\0A¡ür\ã\ð¡B¤¡sR”œ\0’@>{€}\Å{YQ\áÿ\0\";9\ëÿ\0»MP=k\Ú\Ê\ô V.\Zÿ\0Ü–Ÿþk?þ\Å<8„ªù7RA\Ü\õ¦²²¹ÿ\0“Ð¼ºC‡Gc\á&/’Þ´¡XV‘‘\\OˆfJ›y”fIzAmÂ”\\+\Ò<†zWµ”ÿ\0\Åø²œ\Ý>´\Ê\çŠ\ÌB·	li\Ïo\éYYKÍ´F{\õl\ÓÊ‰3\ò VVT94noýY•½¸“+\ÚÊ·ü\ÐOd€6W‡e\é\ÈK\Í!Ä‘\ÑiVVR=8¢H¸øhÌ³‘¿-°ŸÒ‘\å~ú½¬£\Å\òffŽþ\é5\n·×µ•\ÑÄ’<\ôo\ÜUÛŸ\ïÇµeeN4	lÿ\Ù'),(2,7,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\'$\"( \Z\'!1\"%*+...393,7(-.+\n\n\n\r\Z\Z2% %--/7-/---/0-5----7-/----5-+.--/---+--+-++-+-------ÿÀ\0\0\á\0\á\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0<\0\0\0\0\0\0!1AQaq\"#2‘¡$B±Á\ÑRr\á\ð3’\Â%4Cbÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0$\0\0\0\0\0\0\0\0\0!1AQ\"BR¡ÿ\Ú\0\0\0?\0¼@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0>e\ô\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0®\ã\Î1«q]\Ð\Ò\ë5N9S”^\ò\ðO»\ó93¤«Y´\é.\×x\ÓI\Ñ\ä\â\ê:•\à†ø\ó|‘½\ôw5\÷KZpþ©9?’\Â 4\éTº—½ˆ\çü\ñgJ\ÛL£ \å\'Œe\ò\ñ\Â\ë\Ý\Ý\âgœ“=›©\ñ«×«­WŽ\õŠ\í©jŽ+§bœW\\y|Ù«[ˆ¯®=\íN\å\íüø\é\á\ât-\ô]R\é\æ\×JŒVSX¦°¶\Ç6ú\\®Uy©…²Ýµ•/7\ó9\õJ\Íc¯}\"Òº©U¼ª²\çŽ\Ô\Þz~\ÖryTfºÿ\0¨\ö\ß?Øš\Ç\Ñ\î¡%\ë\ÞE|_\ì%\è\îù¯ü\Øü\ß\ì8[ÓŸ\é\Ú!N\÷T¶y¥^¬W…W±\Ö\Òø\ëXµ«Š—h¿–¢\ßý\Ës¡[€µZ+\Ù8\Ë\Ê_¾\îwa?¼\Ði\çªÀžUwT¿©Y:\ÚjsPº§\öUF\ó\äú|I9B\Ï1~\ÎXi\ì\Ë_‚5JºŽ—‹—™\Ã=\ë¡f<›\é,¹°qŽUHÀÌ \0\0\0\0\0\0\0\0\0\09Úž»¥iKþ\á=¶o\Ö\ßÿ\0•¿ÐV\ô—Ã”ß©V¤¿¦]\ðÔ¦@…S\ô¡Ã’~»«8wy<›´ý!p´\áŸ\â©x8\É?\È\Z” [\ïJZ%%‹\n5kK\Â=˜\ó\Æ\íøøMc\Ò~¹8?°¥J‚\éŸZ]³\ð9·b³)ÿ\0kP\ÒtIF1R§ª±\Í.¯\ôø”u\Ål\Ô\õ^\ìÖ¼\Ö/u[ž\Õz³©9?z[½û—\Ó&m:\Úuªco\õÿ\0U\ìÕ‡\Âq\èÿ\0‡Þ¹7:\ï\á¶z¾|¼KV\ÃJ±°†-­\Ò\ñ\Æ_\Ì\Ð\à\Ý\'ø>…J8“\õ¥\æú|°w	Ò‘«6Yµµ\Ð\0P\0\0\Çk¼®¨\Ú\ï=\ß|¹|–ÿ\0M\Æ:¤¬l{g‰\Ï;\÷Gû\òù•cR•G\ëe·\Ïo\á³\ã\âû§\ôùN‹©W	m\ÞY\Üg+}6R’\÷ž\ÞKû¶E8sG\åÂ„\Û9>\äY\Ô(Â…\ZQ\ÄR\Â#†»žK>]\âµ\á€K\Ï\0\0\0\0\0\0\0\0\n\Ã\ÒG\ê4¯]µ…IP‚\÷\êc–zA\ô^=K<\ÓÔ´»VgP¶Œ\Ò\å•\Ë\É\óAØ˜\òü\ÛØ¶©.\Õj’“\õw“\ï\Û\ô<»k)$\ÞsŽ\÷\â_W\ÃÕ—«g\Ùþ™?\×+™É¼\ôc¦\Õ_w¸k\ÂI?\Ø\æ\ç\ÒØšÏ•2§R”\â\í\ë\ïÓµºÌŸgƒg\Êu®\ð¥{ì³…ž\Í/[>m¾}KB¿¢Œ?gZ/gÕ¯\Ð\ÅE\÷ªyU!\Í?y\ó\ï\å\Ýù™ŸK\"´ü•¬\õYEN\ït›\Ç/k96\ö]%Ï¹\ò:\Z6‰cyC\í5KÉ¼8\ö¡\'\ëM\ÇyIü^\æX4ý\ÎRN­\ÔX\Ý\õ\Ï\ç¹Ó³\ôccN_xºoÁGSŸTøKx\â;««}2JÝ‹\noŒ¹K+´ü$”–\ßR\É\à\Þ	VUµ(®\×8Ã¹\÷\Ë\ÇÀ”\éZŸ¤\Ç\îv\é?\æ{\Ë\ætNÖže]\ó\î5P\0X\Î\0\0\0\0­øÞ¬«\êS\Ï\á\ÄWÁ~í‘‹T\Ã\èN8\ãN”n>\Ö\õe\Ï\Í/Ø¯\ê\ÛÕ…N\Õ%º1\Þ\'”\í\ê\ã´p¬\Â\Ý\á;z4´•*\\\å–ß“\Æ>_™\Ú+\â\õ§ú—1nWTû\Ñ<±\×\ô»\å\ìn\âŸtž~;Æ´ÅŸùM»Ã¦i­k8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Õ½+ºã˜¿\ób­\ðýKI\ç\ìÜ¡\ÒI~dü½\"\Ëq\åš)›\ë:Oÿ\0_\È\ç»5\r\é\×i\÷=\æax½µ²\Ïz\Ùýý\÷[\Õm\ÚÜµ\á%Ÿ©L\â˜l¯\É\Ç=ú \Úok\Z=M«7\îk\äX¼=Å–ºªQ­\êT|¿•ùwy\Í.¦Ÿ(Vš}žV\âÞƒ·\Î\Z\õ^\Ý\äb\óYNøkx\ß\õq7¡q-*\öqÿ\0­mK—k£\ó\î$PœjA:rM>Mr4\Ö\Ñh\Ü<\ë\ÒÔK\Ð\0’\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\æ«q¦\Üyáž€E;¹Ôº—<\åw¶\óù›ŸÃª^\ÛIÒ—]\ò\Ò\ß?±Ÿ‰4ªú]Ë•8IÒ“Ù¥œg£\î5tŠ\÷©8\ÐRY\î\ç\Ý\æd˜\Ô\õz\Ñ}\Óub´\ìQ\Ó\ñW¿	\÷>[ýroXkut\ä¥F¶`\Þ\ñ—ü—zkv¼ú¤ItŽ¡NÁ«\ÚYr\é\Õ}È§\ðÝ‹ûM;3‚\éø—\Ãü\ä‹)IˆfË–¶´§:Fµiª\Ç\Ø\Ë\\\àù\ô\Ýw­\Öÿ\0‘\Ò(»\rFµ­T\â\Úi\ç\ÃX\ßgÓ’]\ì²8s‹i\ÝECQ–%²\í\ã;/]~\ß\'\Éø\ï\Û5©\æÀ%`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&·G˜R§OÜ¦—’=€\0\0\"\ÜMÁ–š²s´\öu¹\å{²~+\õ+›ý\÷±uA\ÆI\ì\ñ•×—I&^\æ­þŸk¨\Ñ\ì\ÞQR_U\ära:\ß]\Ð\Î\â‹n\Í=Aû7„¤\Þ{=6}VV\é\ò\Ê\ÆÈž‘[žt\éµc]8¿Á?Ñ®O\àI,\éÔ¥iÖ–d£\ß{K™\Z\ï\Êyxtš\Ë0\0š\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ù'),(3,4,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0‚\0\Ã\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0:\0\0\0\0\0!1AQ\"aq2‘¡±Á\ð#3Bb\ÑRr\á¢\ñ$C‚ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0!1A\"ÿ\Ú\0\0\0?\0\Óq^\Åf¸{S6\öë—Ž\â$À\ìN7\Æ@k=\Æ8$VL±}\áeI`¿\ZŒ~ÝjaûA\Å\ï\ì/\ÖM``22 ‹\'\Zrzÿ\0\Ýco\ï¾\ñª!–\\.¢¸$¾H\Æw¯+\ô“\âm·³¼‚p\Ñ	p±\ä•µ\áWM\Ã\ÌB+¸–B]\êzùO\ïz\í¬i=´\ÙgR º*©Ø³\ëµ;‚¤Q\Ã\Ãø\ÑHÌ±Œ„l\öŸ•D\Ý\\/Ã$³)!¸\Ý\Ðü;n1\È\÷\Ô\"\í¬>\åq\"x…Ý\ÎsŒ\ì;w¥Å®$[½Zµe–U\ÛV:\ç!›)X\0ç··Êž·j6þ09ÚŽ}\âMm/ˆq\È\æOx\æˆ„ÐªT»œ\ó\çÒŸ\Âe\nÍ«89\å\íW\Çù(\õ®\Å\áM:  \0°È­—¬H\ö\nˆI\Ç,œWžZO£¦le€\ÒÝ²>•¬\ár\Ít%HDr4HXŒ\æ\Îÿ\0•e»\ÓLh\ô\÷P\ò£eI\Ü\ê\ÇAÞƒ\ñ[‹I¥‘ÔÀ\ì)qe•\Ze(Ã€Tur¬\÷“ÀVqW;mÀRý2\ÝÐµFp\Ì\ã|\Ö~q	Y‚–\'Nzw¨\î9ƒ\0\ì·CC®@!Kl0A\ê)\ã\×I\å\ñ-ÅªÂ¶\år1\'l\ó¡“T\Æ\Ç<ˆj\Âx“[UT\r\Ç qœf©x\Ì\Ò\0§—\'sÒ‰.\õY[\Ú\ß\á²\ñ)\ã‚6C¨¡\Ü(;±ùs§ý¥\ápûxdy£•$\ÂI«A\\yIù\ó«ü\ìý\õ\ì)w!Š\ÞÝ³ \É S \È\ï_Ö†\ñ¸´-:\ÊY*\0;{lÝ±Zc¹œ‡‡Y2¢b—)!$ª¸m9\ìkU\Çm\æ‚\Õ/„!!#Ll±\é\ÆGL\ï\ëY	\0\ß;\ô­¯\Ú#k{\Ã\ÚK±8Ã«\È–\\mË–\Û|\ë\×\ñ\ÓMP\êV–i€¹z\òÞ…ÝL}j\õËŸ+œc`0y\nq\ð\ã5¦1­Vj–2	\ô\"¡{\Ó\Ô\âAZØ”€’\ÈúR®j*Ü¸\Ú½pùV\Ý?†bl\ë\ódj\Î\ï\×~•’±\ñx·b\ïŒsrÝ»Ÿ¥Y\ã¹‰c¸„¬ƒQh\Ø?—?\Ô6 \×84F\åÝ¡`%Š‡Á5\æÜ­\õŸ­¿¹n.f:\ã\nXpzœ\ç\éExb[\ÚZ‹YørE—<†?³Î™Á¥’Û‡\Ëkpª\Ë$g^¬v4r\õ>\÷Á\à‡J¡UW,s\Í9\ãI:y½ý¼p™\Ã4lRh1ƒ\Èc\×~¸ùs¬\õ\ÔsCn‹\áŸ\rŽC¨\ç¶~•¦\â^–®\Ò/(\ðXlµsúU>3\ã$0[K\Z¢\"\èÓ¯+±\õ\÷«\Æ\"\ÆnK‡\Ésÿ\0\Ö\Û\Ü\óF++Ò£8\Ünr£?\ò¢D5¼\Z*’a™TùX\ô\'~x\öª\Ä\r¨bvbG]·^};Ö²t_\Ì\Í\ä<¡°¹9\Ô+[\öKŠN¼NH˜\âI‰>UcÊ°Qªi,H]L4Œú\Õþut¼^\ØØ¢4‚\\ªw:q¡5—\Ó/oB¿ûC2‰@uø¬K€pÜ¹\n?Ž\ås4„	\Z¨D¼køsøšc”\Î\Ù>¹¡²\ÝFX2¾ulq¿Ò±¸Û‘Ü…F\ê\Ì\Ü>jv»\Ê5»r¦<Ë˜†¢»\ãT®/[\Åpq½k†\ö©\ÚH\'t¶x\ZO\áœ6†<\È\å\ë\Ô\×\ÆRR¬`Q:{\Û}³\ëDxB~\r\Äf\Ë\'…KÙ¿·¦‰1{b‡…\É\Ëu’\ã[lû•\ö\Ç=\Íiq\Õ\Ú,\ì;ý*E\á]µ\ôf&5F\0$ždŒc\ÅG\ö—†Ga»[\Ýý\à2ù\È*@%zc\ò«f\îúTk+‰\\ˆµe…\0Ÿ\Ë?§¥gn%\r!‹\ÌXo\Ð\õ¨\ÆÛ—ƒ\Øƒ\Ì}\è\ò<OÁ\í\Â\ê(A±\Û \ã•›f>µv\ÒQ\÷TM³“\ó®Ÿ\Ó\È\Ó)\Ü>\ô«&0\Ê\áÿ\0T2WÔº»š#0\Õ\á¡9m•€ŽÆ¯ºƒú…8|T\Â|Æ\ÅiR›5ÊŒ\ç5\ÚZ6\Ò\îFv&à¾“\æT<±N\á—msI!”\á¶aÚ©\Â&¸V2e1©A\Íq¤Š0\ñÀú\ãnd‚7>•Á\'\Æ;n¬8\ô–\Ü:h]•ƒ¢€Ns±\Ï\èk\Ñxu\Ä7\Ü1\ò4©ˆm\Ï—Î¼.\æýþ\ë¥p œ`\î~ \ÖÃqË€«\Zu/®\r-q‹™;\ÆG\÷˜‹\ñ£ du9‡3C8\ÝÏ‹\"Å«L`i‰u\ê\n6 ~ú\Óþ\Ó|YT\ÅNÂ«q\r7\"nuÀ±eU\ZŽÃ \å·\çNY¡j§x\'°Ž5/­>-[\ç\ÔP\ëpE¸,¬\â7Rø\0¶ù\Ç,\ÑK…‰\âDH•\\\æ#^\ÝryÓ¬l²`…\ç\Ó\Ì¤\òC— ¼±\õ«\Ç<l\Ño Û‡‚Q„\rü\ÎX\Ø\0:šŠ\Ýqà¾‚„²‰6\Üc\÷\ò¢Ÿs’4\rk8Nd’H8$s\èw\õ¨€6\×³ª´j3£žýOO\ßnB2ËŠŽ0øÓ¹ÇŠWRŽD6þü\ö¥q¼Ø’\ÐM\æ8\"\\mË¶Ø«	\ÄC[;5`yv\ÇPµ¸}.I\Û>PN\õ3,²ù \à„\Ç<\n²)\Z†sÞ™<Q\ÎY\Ï \í½C\ãJ²+þ!°\r¸¦K3\r¢„ýÍ½m9*Z1Â®\Ö\Æ\Æ\ö\Þ3¥\ç(V22»t?\âˆq15­\ÄR\Ý+=Êª¼^3¤m«m\ó·µeVIü`Bœ\ä™\Èµ-\ç{©\Ì\ÓCªfÆ©3“ï€\ö\Å>6úK|O‰\\^I%Ä¬P\Ês J¯¦\Ù\ÇÒ…¬„¸#¾\ÛSD\Ê¢g8\Æ\â£/‡^¤n=)ãŽ¨ž«\\Œ\ÈJ\àZ\å°Q*ù¿{\ÔN\Ìþf¥	ø\ížU¾ºh½)\n‰\Ü9‰ª$|U©XøDvsúš¤\Ç§Œ]C&Ú¸+²oÞ’.OÊ­\'j®\Ó¥@k\Þ\ìÄ‹y†3\ôÞ¨.“	\0‘—\ë\Ó\ÍO{q–\0–a\ÑwÚ V\"8Á#H“§½r\Ìu:bµq’\Ñ*º°Á\åZ8%Š\Ú!Šl7\Æ\ê6\í¸¬Ô²bxÎ½³¸\Æ=ªünÎ™,qÌ¦v\õ¬Il€Wˆ\ß5\ÄY\ò9\Û&¢‚[™\×Ã‘›Â‰O†¯’Q\ß¹f©G\Ä)\Ï\r£c€7\ßßG\Å.ŠÍ ©\Ô[8\É}G½GäŠµ~\îi#¶”¡“!¾Û\Í+9¦y-@3cf\È\Ï\Ë:\õ[xO—\Ð>,¨^€\n±ÂŒ\ÝD\ï(iN\á²À\ï\ßÞ®~x\È:–+»[X\î\ô¢G&7\å5\ã\ßMiK;H\Î\å¶8\ò\ãþ½¨´—,\öI’DW\Ä\ÃD£‘¬w<¾½ê …X\\aU.\õ\åùR\ã%\è¨:®B\ê|`\ó9m³šs\ÆÀ.‰|šr[$zu©$Q\Z+¨\n\ì¸\ßÒ¡½tT\ï•ÜEi7R„°L.@þ¦;šl\Ç\r©Xd\òÂŠB_¨1\\dž•Zvþ bI\'½i1Ú¢\õª˜\í®¤iµŒ²\ó\Æ3\ì}wª\ò\ÆVvÀÁ]°w¦[J\è³\ä\à2I©“9f 6\Ç\'\ó§\ÄþšP>|_>¡\Èÿ\0MQ¸Œ\Äu&Fh‹6Ÿ\î\Ü\÷Zþ ¤\él¯\ôúÓ“T\ÃKœbŸ`ž\åH¦Î’7°­\ÕW¦þI<²\Ço¡\í¿\åV‹¡=ª«.3¾¡¥(ªO†¢¹\È\æºF3\íM#z¢\"2sJ™¨ŠT‘eRX3d¨À;TQ¾ˆc\ZFK\ó;\õ¨‘\Z°\Êpi+G<7\ëXÿ\0œg¥¸‘d½@J³j%\ä\Å`Ð¥P±N\'\"\çP\ØÁ5%\Ã€œšž$…‘bS£.n>ƒ#§Ý“%\È2+\ô\Ü\ó`»C“\ÎOÖŸv\î\ÓJ¨\0žg>=-_\Ü\Ê\â8™\Ä@\ãS\ÇÎ¤´–nÜ«HTÀ\ãVžgI\Æ\Ý7ªL0¹‚Œ5-˜“\Ìa9Å³\ë\ô\\\Ñ0\è\ÇxŒ°\â‚\'\Ôj.€j\ò&\Ù\ç\ÏEÃ¤/\ã\æ¸ÎŒ\î9\ì*‰Mn’/Ÿ\ïÿ\0¿\n}ˆRf¨?\Æ\'ž;\ÔXJWZ–w%Žwß•V\âJ®>}hÌ‚Nb\Z<\ÛWz\ÄUJ»!%@Q¿Î«$S$øˆ<\nŽbK‚y\â¥#.;\ne\Â\á—lyEk\"¤+RCJ\ç¥œ\ê>\Ô\Ø6s\ê¤T‰É\çµ+;+\ë®\ØfÁ$ž¦ œ\åp3¿½H\ÌF\Ús\ëQL|¸\ZL\ì\çÚ¸Ÿ,\äS\äzjm(­‘Ž•a\Þj\ë\éR\Üda°Fj¯™¼£•(g;e[dâ¹*)i\ÎÝ©tª\'1\ñJ¹‘\ÜÒ¦B\ÈY²	\É§®p£sµk€«µX\ìÚž[T\è´Ç©?xvQ€{Ô’G9 œ\ç\"µ§\ì¾N@ß¥G/Ù©Tl9R\Ñé˜‰!$\äü\Ï:\ì£\ÎÀ\îÞ‚Œ\ËÁ&A?…Un8|mý)q\ZSâŠ‚\ñ’)p5… ùúÕ‹\ß$ cüM@\×g²™¤©\Î\Ý*\ï²ž)Chb½W¿\ïø‹_\ÈÑ°\Õ\åžF=\Æ\ãüU{y$ƒ8žûÑ–\áR\Í#3\0± ™©\Ï“\âR=9b—\rM$œ5¬!O‘²MErº•²\0££ƒ0@¥€\Ãgz\ã\ð–#;7µM˜X‹~•\Ùm\Ë\Ø\éG\ä²’o\ØU¸8\Ó@³\ÌR\Ú)\ç\ì9š~›d–\rùS4´e”¯:?\àBfh\â•Y”‘\Û>Ù¦I`X\äê´š\0\ÊN9\Ó\ÞØ²Ó¡?\Üz|¨»X`Uy Ç\ï\îiYt]ƒ\É\0$´m¬\ÐTw\êN=(“Â‰\ðù^Æª]H\n±Q¸\ØÔ¦\Ä\Ê\íV\çg\ä*ªlÁ¹ïŠšP]rþ\Å@ ©†3Êª,\ö \ó\åQŽ;S\ñL\Î\Û\ÓÒ¥µ*	\ë°q(\É\Æ\r\\ƒ‹[\ä\rY\É\Ç.µ€ÿ\0S•p\Ë/!$T–üY„\á™F\à|¿y¨\Ý7¨\Û]\Âø\Ë(ÿ\0\õW\"h¥`».}y×›.‘”eŒ•8\Z}Gz$8ª¥\Äe\'uC¤\ço•.b·Mk’0„\Ó?Ò¡s+½`\ã\â\÷±\Î\Æ7vV*N–\È\Å\áŸk$ŠA\r\Ï1·®i\Ì\÷|\r7ú¾­EAª\÷\âË†Å’ É*Žfœ¿hm‰T2\ÄH\Î=\è¹ûÌ­*ù\íÒ´\Z\n\âw\Ò\ÝL°ª\ÊÂ¡ŠSŸŒÒž\ê¥T\ï’Nv>Â©±Þ¤\ÓF®\ç:³\ïV\à‰\ÚEXÁ\ÔNÁM+k|\éŽO\á]ž\ö\Ò\ÒS\0v.\Ø³S–Z*cµ\Ë{xü|ªý\â|üDd\n‡\í’ ¦%¸a\æs\É~\â™Ž$[1®\å†pNÃ½º¾ºˆ¸g\Ü\ê\õåŠŒ&^\ä«d\ê+\ñKe3,‹’p\Û\ó#¨§\Ø_	ÀŽLx€sÿ\0u\â\Ò\Òw\æ	\É\ÍQGxŸc†Z\Û\Æ5¦‘†:PùÆ£šdw~2d\ìG:D–§jUp\rP¹TR\ÙØè”˜\Å½|\Ì0r;\Ôzrm²¸O.ž‹P\rM&[\'Þ.ùÁ\Æj H<\é\éGgsÚ™N4Þ´Ã˜*G*Q”œúšt$\ïRI\ã([\Ü*\r=i]y‰@2v\ä*l\Ó>\Ö@t\ò9\å\ô¨\"‹6=MO<\ÃVBÚ²L|…OBü.\õ>âªºµ\ò|\à\ãÚ¤–\ÝC–\'%\È:•\ÂhN´\árA Žµ~\ÚpÁc`\ï¿\Ã\ë\éKŽšK#\ã’\Ø[M\ÛHÿ\0–7¦KÆ¥–f¸Ž\ÖTY1”N[›{\Õ\Ê_Â—\r(\Î{ŽU|–0x\ö\ö\ïa¶d½j~8.x\ÃÄ!8Šn¶:Ÿ\ñP\\ø\èË­\n3Tc˜\ôŸ\æ‡\Û	$º3I$a£*À“¾j\\$Ò²\ÉrAÆ–*¸\0nHþ*›‘[_\ñdµ·-\âyŠ\ä\r8Ï¦k9´r#3©sÔ’j~<Š—6\ð@\Î 9c‘\Ì\ã–\Ø\Ç\×\éA\în¤GÁ\Ø\Ç?ý\Ñ\ñ£wM¬\ð¹V`¸\öªW\ÜB\æ]2™51mZ\Â\Ü\ê”_ü‰\Ä\ÔI;1<ª\Í\ÄJ\àj\r\Z¤)\Û\ðýj·FÕ„Œ\ä³3úæ¥“_\Ä\çv\ßsÎ¸\ñ8@È§\'b;}+¦S‚\Ã\Î2\r5&–\0\à¨©\ÅÎ¡P\Ã\ãt”ƒ\ô\Å)\â\Ð\Å\0#v\'\ò¤WF]\\iR7\ÏaÎ†\çPŽTr5q\ã\Ô9¾O\ëPLK«<\Î(8¬tƒ\Ô\çÒ¢`7Á!$dQ”c¸˜74®\é¦\ò¦¥M¥@jX\ì* Q¥J‰\êg©cSW,”h\'>Ô©SQ—#P6\éLC¦7eØŒGM\Å*TS²f’\ò#w\Ôs\ëMvŠ¢m*,”ŒG5\ÊU–M0\n´Ek¦Ô \î¼Ç¥Bb\Ñ\ãtVL¿”ŒŽb•*Î£6s\í“Ž²§•WP\0m6(4\à}\îoBk”«h•‹/\æ7ü3ø\Õ\ë7où¼\Û\ó\÷®Ò¢„q¡“tS‡\ÛoJjF†\Í¢\ê,\ÙloÊ•*GŠ\ÝÓº\Ù*«05ÀÖHOŠNO:Tª©S&$j\0\ôªIý>¹\Í*T Š\Ïüÿ\0\'ø\Í*T\Õ\ñ\ÊgzT¨(\æj\í*T\Ãÿ\Ù'),(4,9,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0\n\Z\Z\Z\Z\Z\Z!\Z\" \Z\Z \",#\Z)\" \Z$6$*-/333\Z\"8>82=,23/2)#)22222222222222222222222222222222222222222222222222ÿÀ\0\0·\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0@\0\0\0\0!1AQ\"aq2‘B¡±#RbrÁ\Ñ\á\ð‚3CS²\Â\ñ$c’ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0&\0\0\0\0\0\0\0\0\0!1AQa\"2q‘\Ñÿ\Ú\0\0\0?\0ƒ\Ì<B\Þf313þ)D\ás\Õ.ÕŸ\ÄÚ“]]´®yr6\ôs¾]\Ò\ò/+\á.Û½s˜Œ\ÂÝ°¬V\\\Ì\Únu\0Nš\õ\à\Æ?\Å\Ü\ß\ÃÝ‚›f’r´°4ø£Û¶\ÖÁ…c> \÷\×\Ë±\÷±k{þ\Ò)Ê²C\\¹œ’I\Ü(=:\Çm\Êro}‹´\Ã\óZ#\ö`Ÿ);6š:\ï¥\æ\Þtk¹¬a•\ØD\\uV9GP i\êM8qn\òw!P2²…Ë”\ô;TŒn\Zø\Â\ÝL+\æ\r‚,\Ü@ƒ´\ö¡¿c²™³tWa|¨U„3”‚Ðƒ¡hA¢\0²ŠG4\áw³3¡ƒ]ó“”™¨–ž\ZŠ\ð¤\rrOJœ–Å§\à\ÛÀ›V:Ml8ºŸÎ˜Z\÷@+dy§Qc8œ¶<¢k˜°74Œ\â–Ý¸\êiXc€\ÔÔœ[zJ\Ù\Û\î\äjk®M*5üqu€\"»XbZ*\Ø%Æ’³žR¦TÁ¢~*c+Ð†¼k›\ßE,rA\\M\àh^&\ï¥qLT°Q$€’~@k^]V\Ì+$\0…HbI€2u4\ê/\ÉuqK7.1\Ém\ß(’K@\î`h*_\nÀ]\Ä\\\ð­,¿Y\Ð,3Ú®.G\à\ã‚R\ÈV\í\Ï5\ÉÀ\ôS\ØSp\Ü>Õ¶¹~ÝµK¬<\ÌLI\Z}j¸”Ä­q<‡‹µ\çn\0$Áƒ\ìZT\â8\×øDˆù\ò«‹\ÆN|®=A\ÓJ­þ\Ð\È8™\n\0+Ó®½i-Ù¥¶ÁcHMÀ\ãA>j‚*Vz3‚i‰(.\ÆW#,Š\î\Z\â£€\'°j`\ÄeX X‹²\ÓQ\âƒ\Ø!–\î+µap\Â\Ò2\ó@\îOZ\×\Ìv Y¶ÁB\0\0¥L5,\àK\ÂÜ¹t€d\ê£h£\Ü„\ÛuK—‘m(¹w#Ö¶2Ë³¡\r™‰’`\ê«\æ\Þ\0øk²XrÌ±¸\Ö`ýj\ÎÇ´a°Ž­qVB·_\óT\æ;‰Ü¼K\Ýr\Ç×§°\éVŠhY“¸&<4\Í\Äl¶I*´G*Ù†\àÕ\Ã1‚\îž RN\ï\Ù\'\Z]@&²´¸u>\õ”E¹¨\Î\Õ!0\'X¨\÷”u¤Zo\È;\â®^U¾£b\Ø\"\Ò\Äw\Ë&ªw¿†_ü§¹\ê\×2Ï°U\Ó\ëGyo˜\ÐÊ–\ÙPU-ž;\Ã±\íVÊ‘\Ó7q³Yú\Ñ\Þˆ] GO\ëK8nm\Ã\åˆž\ð\" \ñ_´+6þ\0n·EO*ÿ\0\É\ão`i`¾lw$\Ê\÷ˆ\\\'xA7®\"—\'Q\Ð\×L\ÚW¸¯\åË¬\07œ°,fµq¹{µ4•²-[:Þ¹J“Àø[‚v5\r…\r«\Z#k\nƒjY8¥@´†²\à\Äu®–\Å\áüAO\ïS±—2\Û$v©\ç¡l^\ãx¬\÷2…\r¿`e®\è3¦¤\×k\Ø\ÊM%S\ÙÁ\Ò*UœT\èkž(‘Öµh‹¦\Ã:‘µ\ô®/bA\ëv»\ë\\’\ðHH˜‘:‰\é4\É1`š/ž^\ÂY·fÐ´ˆ§\ÃIp 3y@’w“Y\Ä\ð\Ön½¶»mZ\å¦\rm\ãPF\Ð¥\à¼Z\Ý\ÛHÖ  \0\0?\ð‘\Ò+LEÝ€\n5“Ú«gZ\è-ˆ\Æ°k0\Ìhj½û\æ#}|Ñ€X˜‘´\ÌN\Ô\åÂ°·\æ* h\æŸa¥\Î\ØIÁÁ¼kd\ÚÈ·G\Â\Ï?BF\Ã\äjž³\Ã\ßŠ¹n\åÀ23)a± Á\Ë=4«®\ó¢®XŸ¦\ÕXq>nÛ¹FB-?\Ä\ô4&\ñ\Ú\ìŸ3pº\\8#C\×\çC°W$€$˜\0jI:\0;š/g‡¾2ý»op&v\ÊÉ‰\ô«S•¹\'	……¸‰v\ò¶apƒ\"+—]\"(\Å\å‹§\ÑOc3£u*\Ãua{ƒµM\åkŒL=\Ç(®\á€Ä…, ŸjfûK\á¾1œ‰[£8>¢‡\ËC\ó¡\\¹\ÊXÖ¸˜«J¶\Ö\Ó+¡ºJ\ç\×P°	‚³©\ÓZ1®…t\ÃýÞ·w*º=¤*à´sy–\"\0$\ô2>G9‡\\\íA˜7” \èbV>ZSµ‡•“\ô­\Z\êˆ\Zü\è\â¶Q*y[…3’\Ít \ÕJû|©;9ep7%\Ï.“¼H;\ô\ÜU»\Å-\r…›j]\Î\ñk«Oz«y\Æ\î|f\Õ\éÈ¤\ë¨\ö –:4„[\é\Ð\íDø76\Ã$\èj\Ò\Äq\Îz\Ë\á\Ú\åTÐ…\Z±pj©\áxEk\Ùu(‰\ë–µ5(»\ð+Z\Z°¥‰»mnªùZH“\ÒMe2Y\ç{6TZ[m |«+Ÿ\ê|\ô\ã\ìU\Â\Ú B‚OaZ\Ïq\Ç„Œ\ÄKY\Ö#I‰¢\ñ\ÖTeKˆ³¤\îw?:\ö\íÀ$ÿ\0È“¥_±%&ºC3\á\ð›E³†m”\rŠ\ÉSûÀ\Ç\ÔM\"am¨Ú»\ß|¥œ\ì\ÑùH Ë\Ëw_…IŸjx\å43nH5Š\à˜›Š¾\ë¬f•C\ïKOh–\É4\ÆX9¦b#y\"®\ÎS\Âc®[K\×nø(Txv‚‚ù#Fy\Ð1 \Ä\ô¤Ž/\Êx›W®\â\n3w|OH\ó\Þ&eIú¸5n;Š\Ú\rb\"\ÛŠÛ¶33ªVc\n\'Ô‘W\'/r&\Z\Ò~\Ò\ÚÞºG™®\Ë=r.Ê¾»ú\Öb92\ßýN\Ö2Â¨¶3;¢<H\ò2Äœ\Ät+=i\ÅÑ´ t\×\õ\ï¥XtŠË›¹Qm[p\é”$øˆ]!—1:dv \ô2¡z\ë\'‘••»0 ýµ{ß·\å\õ:\Õ{\ö‰\ÃqWü³b\åÜ¹Ù™P±Y\Ês\í\ÌJÿ\0\núR¸&+€Š—L\È:\ÑE\â$¦VÖƒ\ß\ÃÜµsÃ»m\í\Ü\0Ž¥Z\ÆOZ\Ú\ëùjS‚l“0¦£R+|W:€4¡V^@®\ò#Z›‚±jˆ^4\Ý\ëÅºX\×F¶	­]BÕ´RÑ™30/‰\ðûvÂ”y\'qPNØ®\Ê,aD\é,zZu\áfx·–k¸|‡fW7\ö…±oiŒ–„•\Æ=³û;Œ\ò±X®\Ï\Æ.¿–\ã5ÀwgJg\â\ßeX\ä\íµ«\ÃS•X«G a\ëH\Ëm–\æVR ˆ ú\Ó\â«c¼\Éh5¥9ü@32ƒ\Ø\éV†¤¨\'aR\àxƒZ·\0˜|\'c­?p,·­©Ñ‡P\Ýj<t›\ncM\ÔL\ÂI€6¤¯µjp\ëu-±¸(a˜å·«4¤z\Óc\\\"\È\Øÿ\0J\ä\éq§ \ëV\ì,T\änX¹f\à\Äb²¥\Ã,	Ô˜)O­8}›¾kl3tH3GJ\Ç8¥»vÊ»AP\ÙÌº\êGIºÒ§+p×·u®-\Â\Ép”²b3.\ä°;¬J›Kd©ù\õ<k6—)fK\ÈNPI\ÚQÉ`\r~Tg\ÄE»`€ v€4©vÝ¯(\Õ\È\ÝO¿\ö |A\Ò\æŒ4=·Ò´Û­v·d‹\\`©\ëm?˜¢ø;\ËpU\×\â\Ék=¤n,Œ\Äi\'h\é¤\Ñ>^|E«jn8,G\Ã\Z\Ó4u­	5¦f\Óz\Ê~sc¨:\õª·0\÷š\ðk¶\Ê)\ÒÉf7ˆ:oµX\Ø<[»*ÿ\0úùUw\Î\ØÀû\Ó^q\æ\Ôüt\\³\0\Äm\ózoG;<›tY7üAœ®¶\ã\Í†u?*\'Á9@Û¶.Üº©˜| Iúÿ\0Š‰w˜®xYˆ\"\âƒ±”3‡q\÷HVm\Ú\×<­§\å8ù%b±­»\'—\Êb²¶¹Ã¤’RIÞ²’\Å\Éz\Þ\Øo•Ek\äˆ\é:}+…\ÌY“\Þkª<~Î™J5H{ˆ3¾ ÿ\0z-È¼91X\ÔKŠn\\Š©#¬±O”\ÓoÙŸ(\Ú(˜\ìGŸ4›V\ô\Ê\0a–\ãk«J˜=\é\Ë„\Ã[½\÷‹v‘«-ÂŠ2±\r-\Z3£^Å¨\ê$\è6Ø¨Y\Òj\nb¤\É;l+L&)L\îDzWŽ¶\Ô\Ê\Ì\ö;š\Ö\ØO]\Îo)úž‡o\ê>U&\å\Ø]A©fû\ëB±œB4\Ê43›®£oj\ó\Æ<\ÙX\î?¯¥Ñƒ—/š]`\ë¢ë¶¦¸ø\ÅX’#¸Ö…s\Z³[d~ 5 ½†§\é]¸f…¹¿p˜Ô³eP¢6$\0\0¿Z\É\ì\Ì\÷›wu±0ª«s fG:.A%£A½Q&\îeŠ+\Î\\w\ï›ž\Æ|:°—d€ ¬¶hc¬\Z\r†I£/d\Ú\àÖ´\Ä8­\ÓAQ1	Ö¤•\ÈE·g?¼V=\é¢<«À[‹L:¶U ³·U¶±˜Ž\æH\ßÒ­\ñ\È\\(¬ø\'E\ÈH¸\à\ÎÙŒ4g\Ó\â\õªh¦\"\Ù\ß\0Li¸ø‚|D£L\Ìu‚Ý€z´\ÔX²,Z\Ðl}\õV[\ãx=û˜\'Qv\Ìø–\ØB¹FÙ§c±ªh\Þ˜¦â«¢\r0$\õˆ:\Åm$5Ü¹qœ¸Êƒ cš}ûzT|_Â·\Çf\Ó±P[Q\æÞƒ\á1U”N£\å½E¿\Ä5\Z\Ôe8¡¨O\ã\ö¼™\åù(·\åž\"]J @\âKH\Ä+‹—§@Dšj·Î¡„i—S\Øh@©©¤‰ý·D\ÇË¾®—-J\Ã#v Á,s K4\0=…\æ<Rbÿ\0l·8D	!Ùµ’ @¨–V\ÆKˆ\Æë¹‡‚‡d\Ób½H5¾£6N\È\ð‹.ªI\çI“¾“Þ™93‰µ»\Ç\Í\ð\Û\ò¯IÑ³z4@p|b#[Q‰x\Ô@™©X>¯qnY¾L\ç\ØÜ\Åi\Û2c–&\÷›1:µoo˜Ó©\ö œc\ö®¥»€\Ü\Ì%\Z\ÑR&5’ \Í\Ãq°¦\å\ËQsÿ\0)Y”’\Ûk\Z\0+\'å•°w\à×®³\Ül¬\Êù\ÚÎ«vÝ•\Ô\05Š\á•4]‡Iþ¾µ;ˆ\ÚlU°Y\â\è#©ˆ\'\â\Õ\ÄP\Ì9aV5‚zƒÚ©›°UVp¥Q™²‚T\ñ6ù\íU†3‰=\×/tsb…ˆ\èGq\ë­[œ*\öaU6­\Å\Ç\Þ\ñŠ’2«”#Ë§xÐšy\Æ\Ñ9\Ç$og¥\ò¼eÚ]\å\å¶V\â\\N¢in\Ëh\Î#q•S1Ê»\n–“j†f\â\á|¹Š\ÊWlI5”)‚\Å\Â+\Úr\å~JlMìª\Î\ÊÁJ)1™Aø¤Gzr\Å}\Ú\\\Íf\ó1Ë¢\Þ³\ß2AC]YkEÁ¼‡\Æ2\à‘\'T.±\è\\°ý#M+†»vßˆ‰#X\Ô~½*µ\Ãp¬m»ÿ\0rD)tHc\ä\Éÿ\0¨\\)\ê:˜\ßJ¹-_u²ª\Ì\rÀª—A A cOÎ§VÝŒ™Wr\È\Ä\ÛÆ­Œ@¾–H|¡‘–JŸ&Wu\ÔGcÒŸÝ€\ß\òÚ½\Åc!C\Ð\È>\ÛH¡‰\Ì\"`\÷4^º2GN-[m¶\Ôo½\":\Ôp\Ç0=;TLaYˆ\ZiªŸ­HÁ¹c>Ÿ(\ÞMs\ç,©J†\\\r\ð\Ö\ÎfKl\Æ\ñ”ÐH Î»EU<\ó\Ì\ãø6±Fý ¾wQY\ó\n½Pº\õs\í\'\n[j\àFeK°\ÏUÌ„GÌ…:Hª\÷‡\ð\ë·\ßÃ±j\å\Ö\êKG\óFŠ=LWTc\ä›#­wW\íE”q\ë9°W\ô\Þ-–ÿ\0\Û3\ò¡§\Èr²²ž\Ì?0u\Ì[7ŒWE\Ò\Æ+kL5­Qz\ÒR°¿g¼Elc%\Ìg¶\ÖÕ¦!‰V_‘\ËJj\ÅqÂ·ˆ\Î>^°{ŠAN[\Æ\ÜD¹o\ru‘\õF\å`v \ö\õ5˜7¹b\ã%\ì\È\é²\\\àÿ\0)\ÔSåƒ–\Ó\ntƒ<Ñ„|X»L¬¶­¢2K\Ú\èu&cµ\å«\Ö\Æ\n\Ñc’6†d\ì\óHÿ\0\õW¡\ãD4\Ìz\å\Ø\ë0\rÁ\ð,U\Ö\Ë>-\Â|\ÙX^°\\ÂaBä¢“þ\Ù;‹\â•\ÙB\æ¾`AC¤ûP\Ë\Ø\Æýß™®\\[ø;†\Ý\Ð²†€A•3{ûP\Å\âl\Æƒ·zŸ\Óm\Ù7“a‡\ÄiK\r\Þ,\Ö\öð¥”±€I&7Ú†5\ñ”\é¦l\ÃÜˆþ´O	Ž„.É˜­\È\õ‘ \ñI(¸­{6	³¦ŽJ‹–Áþ&\é;Ô·\áo“.{W|HŽ¢u \çˆU®Y¸¨\Æs• kúVbX\æÕ´ G\ö¥”%}ƒ\ZAN ¶Å¡n\Ó+aÔ®R5\Ô\æ??Z„˜KYVuwé¯¥D\Ä!R£ªO©\×\ò+\Û0;kÖŠ‹Q\Ó“\n\Ýá—GR.dR\0˜e\×\ð†\Òh~,2\à\Ï\ñn=\í[ý\í\ÖÛ\Î2	}«\Ü/\ñ”xŸ\ò\Ìn:ùŠS[{HÒºyB\õ²¥\åeÔ‡)ª\Î\Þ\ÔKˆ\ñfÀ\âØ¥\Û´dHÎ‘\Ö\'\Ì5\ßÒ“¯\à}+Q*°\äŠ\å¥Lu\æfý˜~v\Ó£ý¥³\Ð\ä1úUg‹—\Ý,\î\ßž½Õ«3Ú¸Jº\Ó\ÞÝ»¶\í\Ü}\Ç\ë]	\Ø\öE\ä\ëÝ¶·Kmù\Öÿ\0h\r‡6\îa\áC˜(¦Go\óD1\\\ÙíœŒ5h½+\ñl+\Ý˜–M\0>U\ñ•? ”—M|QYC]\Ø\"+Ê¶!\ÅŸ$`IœWŠR\Û-ªüS>f3¦Ye \Îý6ž.\ê\Ú¥M\Î\Øal¯ý¡”yL’@?Å®¿Z!z\èI$\Zb´<*´\Æqq–)Ô\ë§·­h1\ØßµV¼Oø—\Ûk‹”üAµ\ßXG\ÔGqO|\Ä\Ä\Ø\ñ¥E\ÙK\Üž4\'Ê€\rd|ŽÕ£&û\r«£\Ì^( ûP\Æ\Äø’\öÊ0†P_Æ¥û¸†Á­£i\Ñ3´²“\Ä†*g6\ó\Ð\é¥D<?Ág·Ãˆ)Ôˆ‘¨ 0ƒ;\õ©Nj.˜%:\n\Î\ó\×z\í†s˜e\éA¿\ë\í¤]l\ßV2¤\nC\â$ÌA×¥\Åa.\Þ\Â˜{/\á±!	_1OýCnd\Ì\Ø4Á$dÊ«!²\ÐK™\Ö\Þ2\ÂaŽ$*¶\\#)Ì£\ð±\Ü\r\'N£c¥\Zá˜›{+oª¶À\Ð ›¤±\×_S­S1mm¢\â	D©\í\Ó_Î›9w‰[¸¹-Œ7¯¬\õù\Ó)\Î\í\ô$e}–5¾8F¬4\î\Çü\n¨>\Ö8µŒF-M’­\Û\Éq†ª[6e\0ƒ©Y`}Lt\ÒÀ°\æ!µ¡\Ôj¨¹»‚Œ&#\"\ÛuoY!I ©þVzˆ«\Å\Ø\Ì\nŠ\íŸJ5\Ó6”\Í\0°±œ\ð\ÍjØ²\Å R›D,\ëVF3†X\ÇXµ\÷›V\î3ZV\Íø”²‚r\\F½ª‡\å\î{tZ´Œu\ó¸RUL±\Ø{OZ¸¸W¿Ã°\Âßˆ.C„‰\Ê§`\'1\îi#7—¾Í¬Ú½x\â®¢:µ›…Ê†B§2º)u1\'c¡¨§nÃ­á­‹v\ÖvNº’Os\ÔÐ¼7b\"\ä|´Þ‹Y\ÅGNý¢‹~L\æ>j\òœ\ö\Õ\Ï\á,(LB~0{²4ª \ó\ÒC\\\Ú4‚Š\0\ô‘_D¹\'N©C‰¿\á‰û<=–\Ä>Á€f\ßR\ì\ÒUu\é¿J\rE­¥ä®°\æ\Ö&\Ûe\Éi€3\Ð\Ò>bºd\ËjÍ¹V\Ê\å\îA\ë:D\ï¥qÀp\æ&\å\ö+Äƒ\Ë\æi0Š\è(\Æ\'†l5n‹<ÿ\0\Û\ç\\3œc,SÕ“¿D\ç\â¾=§¶\÷\ß\ÃhZÞ¨™Sš½u^X²\öÕ³³‰\Â©y.\â[¬¡z\ó3\ÇÍ°À\0b:Ù£\Ö¼\nhiü|\n›n‚x\î†´­qÁr5\Ê_rO¦»\ô¥k\Ø\Â_0UP4P=«WÅ—\Ì\÷^Êƒ¹>£¥o\Ã\\¾‡j\åÀ7(ŒÀ|À\ßÒ©Ž\î‚×£\\g.¡YF_Jˆ˜•@Š\é‹Â½¶*\è\ÊF\ê\ÊCºƒ­qD\r¡\ÓÖ™(ÑŸ\ÈË‡@À\èw\â#8]Dý*\ñï„®\0c\Z\ÓUþy<ª\ê\Â\á\ó5Ï†3ý‚<~\Ä,S²¾¿Z1\Ây‹Á¶S&n\Ôüy\éo3‘›]Lþ”§Í¼ ˜+‹‘\Ë#mš	1]‰\Ò\ÙJ¥²\\º\ÙnS´l(ª$mKF\ØK†c\õ\ÈûssC/¹\óYm\Û©Q­et\ËY\\™?b[$`8•\Ël\Û\Ê\ÈIs3¹\0n  œGˆÜ¼ÀLß†u5“¨™¢WxP…Æ…[0bt‘\Û^•œÇ€[víœ¦dJ™‚5!¶!µ\ë]‰¶‘\Ò\íGBÛ ‘Ú®L\"‹vm\"ˆUE\0o\ÎL\Õ9\÷;—\ðÀ#i˜\0û\Ó\ö‰­\Û\"\Þ%a€†´& ™Øƒ¼z\Õ8\õ\Ù\ï\ã¡o‹–\Zâ¡¶\×J\æI”k®R¿\ÄhO\Âø \Ü7\\ \É\ð·\Ã>]6`bF»\È\ëŒ@\"Ý«v›L§1ƒ\ÓQ:{Š\÷\Ûb\Þk–\Þ\ÒL¶\Ækl}bH\÷\"‚i\èy+ìŸˆ\áÖ™m«0rqv-œË”\äÄº\Åv‚¨\Ð\ëO¹¹\r\Ï)\Þ\Ò6\ÞUE¾`¸.¢j¤|@e*Àg°¢Ü¯€\Æb­f\Ã\Ú\ò®ˆX¶[¹s\ñÁ\èºw­Œ’¤4Z\òCû@\âªx…\ál‹–\ÎB\Ê@\ò¾Aœ#\rcc¬‰\'JÃ±^Å»iµS9N‡\Ô\ÔtÒ¢\ñ	~\Í\öµˆ\\·™µsk27j\'C¥Y\Å= v\\_ø£\Ök“r\îX´¾wRNX¹\Z!“ø¢w\Ík—\ð\Ï}o:º‰•dHKH©ª\ä\â­7ÿ\0²ß´‚ þ`\Õø˜ûgP\ÐÀIƒ*tŸø˜œ”j\Æ[}¢r\È\Ä\Ú+f\Úøª\ÊP€£{5]Yû=\Æ¶\í\Ý@¶\ÙÀwV*\î\Æ\Þ7Š¼€\Ë7·zT\ænbD¸–Á\ó\Ì\Ç\÷d\0\ö™\'\åEÎ•˜`ÀYµ‡¶¶, ¶Š4UýX\î\Ìz“©¥no\æG\Â\Ü\ð\Ýe\ât ©\ÚQ®\ÔK‡b\óA™Ÿ]\è¶3†Ù¼o\ÛKd+\0ÀHƒ¾\ß*W\÷ \ôV\Ø~d‹Kv\àŒÎ¹­‚Y2G\Æ:‚ƒ§·Z1…\ç‹|¹\ÏüIú~º‘@8þe™0—S,’\è®ny†P\Ú\î¡DI\"µ*¾)T•V\Ê\'X]¾s¿M=i7t…É–†7Þ¼±n\êX\îJ\ç¹\ò\nž\ç\Í\î*¸\â\\=s5\Â\Î\ÆIg,K8\îsI\ÛÖ¦\àøµ›jPXFs=wë¦šT\Û\Ö\íùs‘‘\óN›O\çQsš–\É\òJš£CŒ\Ï\ä·md\Ô[$\éš\ã{‰Ü¶\Â fC\\p\÷UP›b-«e\Í\êu‰\õúPþ%³úPË¡*\ØN\å\ð\ñ˜ˆOc\Ü\Çz5\ö}‡\ñq†\ãF[VÙ‚ÀbÒƒ;\è\Çý4­\Ãp\ïu\Ò\Úkré€¦¨L\Ô\Ów%püV\Ö\ï\Údm8B§)WXmŽ€Î£¥ZQc\Â4\Ä}Ÿ\Ølb_\0‹Y­T¸Œªþ’Jÿ\0l`=`\ÙUr¨\n h\0\Ë`*	\â\nª\éZ\ß\Ä«“bu\Ò75{TV„?´\ñ‹W=¢#¸GŸþtšW;n*\å\Æal\Þ*nZG\Ê2©uV#¼H\ÐLO° <\Å\Ë^\ÙkV\Â]\Z®A”7G—i\Ô	Ú§8^\Ñ9Á²³\Å 7]2¢\Ø>3uŽ\ô#ù™•´$š\÷x¨Nºdœ\Ü\r|™Ô˜¸\ÑPùÏŒÛ¿•SX;ÿ\0šP\Ä\Ù*þ†¤\"\éE\ô¶<\çq×“–J\å}t®\×n\å¨ù\óS¯b\Â/¶t·Å®€m«+‡‡YGz\Z¢\à|E@[Mp¨KŠ\Èfy:lûm¼Á\ï\\\Ö+‰K25\Ì\Ò\æE´Z\ãzH@7£–8n\0Ûµmn?\Þ.€þ(2‹ ˜Ë§”h0t\Ü\ZY\Ä^¼.»/—\ÈQ üQ¼zH58\ã“k¿‘Þ»¸Í¼>iVá¹•²\Ül¢ˆ/+\Z¡zPO¸=ûb\â\è¯%i:h\0ü\è\ñn \'U™ ƒ=\ÌL<¥\ÄKe²ù¿i¢vR£_a¤}*\\\Ù\ÆG°5~$7\È.!\\\×R­\'\ð°™#ah\îr\è\Ê\æ ƒ–cR\'¬Š\ïv\õ»n–\ópWp¤j}\ãOJ‘k‰¥·F\òÅ»„\\aª°U\é\\\ë’s¦Ì¢üŠpk\âyC\"\æH]\Ï]š±x¸–\Ò×ˆ \Ê\èJ†}@\Ó\åK¶›ø\ÌEÀ¨,‡F\Ë§bÅ©»\ÌVŒ!KEv\0Ú»‘HŠ_ix¦g´\Ï‚\"N¢¸\ò\×/\ð\ìVn]k–\î\ê•´t‚6Š\ë\ö£\Ãmåµˆ¶\Åe²dÎ‘˜\0ƒ\"zŠO\à\Ï~rY\ÌÅÀ ’H\0\ô•VI\Õ\Å\ì\ZOf\Üo†5\ì©p\\M\ZÛŽ¢t‘\Ü­H^)pe¹š§yTW¿Ÿ2?• \å1ø¦c\ÓZ\'\Ì¼hÛº.<‘q4F \ëC\ï4§J]ƒ\ôw\Ç\ó\Å\Ü\ÍnÕ¯8%s6±¬^Ÿ:Û€ºf¹v\èºÄ’\ÊÑ˜LKHÙŒ\é\ÙWm\å\Î)p ³fÁ»,­u‘	€|¹”\rw5Ö–ø•\ëø\ìeÁ†¶\×.;KH–\Ñm™£\åF³T´1¦›q{Ž¶\Ýn[B\ç\ÒƒZqŽt\Å\â¡qm\ënAaÙ˜’c\Ð@¦®\öGy\Æl]Õ³¨„·•˜Ž²\ß\n¶\ÍÖ¡\ó7Ù•\ë2øV7\Ñ~%h[‹\Ü\ôV^½\÷®„£V\à\ÖÑƒ©!ZY\Ð™‡h\ïÒ_\å#uKÚ¸­q¥²\ÈØ™þ¿.´7\rÂ®Zo\Ú F\Î%g©D(\Î“~\âŽ¬!$\ækš\0:mù\×7$\êW- 6•±\\[E\\Ó©\'Ê£©$\Ó})ÿ\0È©f\É{a\ñx\Å\Ë\á£8·h0#\ÌV|Ê¿V\'4DA£|3q—%\ÇPÄ$À2Gs:ü\è¾€!§\ÐOz´$\å\Ø\ÔS<\ÅÁq<-›7­²–vfa\æB\Û\"\çYRz\ÄÎ”/Ã®]eE¶\÷A9Y\Ú\'B`h&j\ñ\ædk\ö\Z\ÑÍ¨°lÀ³LyN„@þ\Ì-xFwtg{¬Í”’T…T\Èý)S¶ÂŠTj\ðG\ÇÙ»oÈ™QšS87\n›ed~	øft;\ÑL\'\Ù.\\\ÞYü-Ðƒ\Ðÿ\0½M;5•£z¯yû†\"[8›,W=\ÕÎ†\n©o0d\Ò@\Ì ‰ N•.Emb\ÆZAd\â©qÁ\æOP\Û©\ÉphÀù—\ÊG¦¤\×\ëH)\Å\î/\ì\ÐÀ´,$È\"°‚4buüé·‡b®\\\Ö\Ó6EŒ\Þf4,–u\é\ïB2°&µt1\Ô1\õ\Í”Pnq\æºÚ€—¸\n\Û$	|\Ûh?Z5&r\0;L\ñUG?5ÓŽº·K5´¥‹¶\Ý~˜6žt5u\Ð.\åÀ@tø‡N\ôÁ„º. a¼k\ïJÎ„	]\Å1\ð\Û1l^_„\î+Ÿ–œF¼Bß–hqx¢|@Ê\ëBo¦Z^-­\ö\ñ.I©6“\ËQB’h…¥W–‘¥tq\Êk+ß½zVR\ì\ÎX\Ä \éEü{nÁ–~/0\è#S±\0ï·­F\áü\Z\í«A\0ù”0˜ë¡Š‘‚\Âd\ñ¥B˜\0\é\'pO\ð=\ö©\ò8Ý¦i+z6\Ã\á‹.‡i\è\'½\â$´¡\ì\ß\ö›-\Â\0Jþ\Þ&¿H ·8\Í\Ãqm\"&BDi.\æ>S®úV®\éd\ÞbÚ‘7\èMµ=©1“\ïþ‹Š¯,\Ýp\áŽ|ACNV#X\Ï\Ð\Ï}5ÔŠ\ï\Å\Ëe\ï[•2\ÜG\Ãvr\ÝV¨o4®\Ø7m™ü$Rd‚<±\ÐÎŠzü\Åt°mø9‹ŽŒ\ë$¶‘\ÔLÀ\×\Ój\ÖüJ˜2\Þ0¿ˆÎ \\fV9t\0#± xˆ\Î\áQK10‚I\öSSpIš\ñKŽ§:©\ö\óDziNc†Â‚p\ä³:€\ìZu™û£üQm[N\Ä^ \n\"®\'\Ä\ð\Ãœ\ÈÑ¬O\Â`lF±F>Í…µ¿z\ê’VÚ…·š\ó“$±…ü\êw3½»\Ø¥\×\ö¶•J·po\Þ?p\äžZ¹n\Ê\â\Zâ¨ºA{g\â\ðÄ”`xë§¯¥4_\Ùc\Æ\Ã\\sƒ\á\Ú\ç\ßr+€Áš\ÔFfˆ2?£6‘:\ïK°\öP\ßÌ¢\â]VÈ²@¶‡¬7Ë°‘\ÓZg\æK*¶\Å\Åb-©\â.¤Œ¤ûF»I\Ü[ˆ!\ÌÈ·|&±³b¥¶\ê\ât\ïIœ›¤( ‡\æQ€R¨A@‹©\'M\çs \ËË¸\Â\Û,\×n!ºKµ©Ý²Ä±U\æ`N¬~@R\rh\\K\ÅÕ¥Õ³1£`t\ö§¬U\ßgT\íA\ãz·I:4’1\Ü\\2”®O\ï\èO\ÔPQÃ¸Ž  ¶Ál©Ã”Ì¹µ\n$±\Ø\î@Žµ1_þm‹s¦b\Ì:ª]g¾«µ4\Þ\âL¯˜f}\ë4¥¹V\"qÿ\0\Ý%svÜ…šÑ–ƒ>l\èIB yÀ\ñL¾)[aš\æS\è¹4À\Ô\ëmùT\îy\Â=\×ûÕ \"9»\æ\0†+–@™i·i£¼Ä–\òY\\-µ\ñ¬\åTU\0\\¹Y\Z;\Ì\ÏMM#J»@Åx_{S\â4†rKÇ”\Z¬t\Ö:S¶n\æRL\ÆÝ¿*†x~h±RA‚F¢F‡ß­(\ñWû½\Ëk…¼³C\ÚY\0; „>Ÿ:~6\Ò\Ø^\í\ÎV\ï\ÝÂµ¼9\Ø¼¤Žª¦	\Zn¿\Ì*°\å>-sˆ¹f\èdV\ò\ÜB5GG¶†7N°(§1q!jÂ»b¡\\\ÄZ\n„?}T7\ÓÒ•¸~œ’ ³O™‰\Ò}[©úš®qp±­–G\ã\n‹ Ì\n\ë˜te\î¥þ7\Æ\Å\Ü#gÔ¹EP:l\îHþ)\0Š\Ü\òž$aE\ôt!†smKg	1š\":Oµ@L\Û\×)\ËzL\"W\Ì©„3\\\ÚN\Û6M’¹{nb­!_.†\ïiT}`U’\öLƒ\æ\íúü\ê½\å\'ÉŠ\ó–³˜\éš:Ÿi\ZSÍ›’\Ìúv=¢­\Ç\Ðc\ÐKŠL¥\É!Fú\Ð	\'\ÐkTÿ\08qO¼\ã\Z\ï†È¹B[¥X¢“\æ \í%˜úHaa±L] ™Žº\Ñlu\Ëm„\ÄY[‹\ÓA*}m½:y#I_”\ìh†ˆh\öÿ\0	2>tk™ù0›¨p*\ì—&QÎ¨F¿ü?œ\ÔkœŽ\ï	X&\ê¯7#©\ZÇ¼\Öp°$A8œ\Ä{W@oC\ð\×\ÇZŸ‡2jX\ê\'†\Æ\êš&\éP\ïK6J2vD\ð\ë+§‰YT¶=0\ç\æK—\í[k‡%À\"@\Z‘\×]Á\Þ\riŽ—!‡\ï.Œ>[\Zz[YšŒmÖ|©v[\Ö\ÎR¤\Ú\Üþþ^µ\Ú\î\0;j?\Þ\Ô\n\Ù\\(ƒ+\ß^ž¾´\Ð[ts¬oû\Ë\ßO\Ä:Ÿ]%Èœ™	ÆžŽÃƒ\Û\ð\ò–!	@0³\'¹¨£…½¼Í”F™e—a\Ö\'V\Û\ó­\ð\Ö\Â\ê´$\È*ˆ¹s\Ç!™˜™Oq¤v¥‹”­Xc$\ÝU\í\ôTeK·S\0y©\Ø4üªn;6\r.#)v\ë{N`HšŒ\á/„[\Ïd\rÁ\ß\çS1ø§¹*—s¶p\æ\Ý\ÅY|Ú‰\ÞGA¨¢\âV\Ñ~¶D\â<R\å\ÛÕ«ŽºŽªX(\'@`hLVø1xÛ¶\ÙÁ) a’w§~[uÁY¹u!™\òÜ¸«\æP¿U\êri>\ä\ô¥\î?Ç—p‘m2†”P°OFfˆ1\ó\×\ó¦¸\ãI\ZVÖ˜-ø•\æRŒs«n\"\'\ÓNŸÚ›x!/\á¿\é\ï)m\Ã¹\04\Îiø¦#Ûµ+ž#nÁ ©2Gi\ë${i¦\Ú|\ê&?˜•n¾Yt!\"4q¬ƒIÜ´…ŽW³N~\àøl-\ôµ†ga\áË— ’\Ä\éiÒƒ\ð‘‰-tº\än¨¬\Ëÿ\0 \n\Ú\Ú\\\Æ_2FvÔ±œª\0\ë\Øl>tù\Ë\÷±8kBÛºdI‚¬c/M\ÔkÒº\å,cµc\ë\È*\×¼øy¯À|\à®Y@`\ë#\Ì\"¦\ã±\îŒP©Ì±+  ¡’b7j—Ä¹H]Z\Ø\í\ò¥,U\Ì\ì²»@+,%Üœ\å¶Õ¾UHc\Ñ3\ÄØ¥\Õ\Í\n\ÊF]\çN§ýÞ¶\Âc\Þ\Ý\ß1FmLÆ¤™ùPv°\Þ1˜\Âv\ØI\ß}&™x\'/Ø¾ùq8¢\"J@\ÎYCV``	\0¶š\È\È\ØE!^L\ò\Ç¸>l\ä\Ô\îF£\ó ˜<[\óZ	,Ã¹™>”\Ç\Ì“v\Âø¸;‹~Ò‰p\Â.(\îcF_QÛ­\ÂÞ¸£\ö™d˜\ò¯y\Ô\È\ÛJ\rb´,œ\×l\Ó†½uhH>c´½«µÖ¬%¹¼Ú¨\õÔ‰\Òvjfl“—2I:yŒO\ò\ì>•²*\ð\Ý4ž›P¥G6\ê5 I\Ú1¼À¶®[£(\0GL‘}\"\ò\ß¶—Ÿ\Ä!­g	\Ó\Ã\Ì\ÂÊž\ó\ñD\ëŠ\ðP\ä\Ü7.A\0# ‰’4­¶‹ughLTh|° ¦¨Ô’-’g¿h(m\ßLU¡•\\\0r\è\Õ\ZHPüMO\å~>×‘\Â#—XfLF†\Z\ÚH\öÚ\ñ¾1\âX6hf#d\Ès\ïÕ´ˆ\õ4g\ì\ó‰†už!,?„š\é\ãv¶g¦WcûKN.+XDƒ\Ô8\è\Ý(\ö	HA\ã\Ó\ÓH\åÖbp ]„\\üQ³¡‘\×üTË™™D\Ü	ý«u\à+a\ÏÊ \r ±Q°Ø‡µr]N\ñ\'\ò¡|2û+•a9LL\î;Ñ»w&B´\Ój0“j\ØZ*ß´¾–±B\õ³\å¾•\Û+\r§c¡úÒ¦”\Ó\ç\ÚE\ËO‘Z|uø`~¾cUÏ‚Iˆ¢\Ò}ˆLYz\ÕÚ¹\á\í\å³kR¥\àœ£LÌµ\ík&²ˆ6K\ä§Û¸¯¥2X\à6»Ww´*`\ÓI§±œ\Ñ+‡\ð«v\í¥\Â<\ÅA$\êDŽD\Æ\ñ$\"Á3\Óp{\æ\Z\í­Lw7,Á#@(\ì{\Íy†\ái–@Š\âŒ[m\Ël“«³ž\Z\ÎLÅ›}g þn\Þ\õˆ½µ>e9´!½:{ŠŠ˜\ò—I\Ð5)Ñµ+„ü1+\ê`\ì}V\r>.2¶\ZvÈ·G‰o\Ã\ó3››ÎcA—¼‘­Ã†·tøŒU­ùu\ÓH\õF\í\Û9ü6-¡0\Ç,\0@sI\ÛÒ„\ñ\ÌP»\Äd(9ƒ\0Xh&L\ívh»×‚\ë\îý\ê\å³\nT†Ø€>VÍ°#IÖ¼\ÇpÀ—¨7-ˆpdu1¡€\ÐE\à¼7\r§\Þ]™GÆ¨r†nŠ\Çp½tŠÍf\Û/\ÝÂ‹e¨L\ï\×j\æ\ÉU£uÀY¹¨%´:°\Ú;\ë2~uœ/ƒ`#13¨ \Ç\÷©|+\n±ûG†ó¿· ­±Tg\ß2™) \Ó\ñCtù\éZ\çUzI¹[\è+{…á¡\Ã,f…0d–\'\Ë\ì\"—±Ø´\\KX\ÅBª˜dq\å#uua\ñ\rˆþ\ô\'Š\ñË–\î²Z•\nt/«m¾šF´¿ˆ¾\×=\Ç$\Ø\êc\Ó\ÓÒº8\á&®E\\c\ày\Ç\ð<œ\éuµØ¬²ü¤~•\rÁUkwÆ†J•Œt”\Ö\Ø5\ÑfÙ¶‹\áX!øœu9¿u­n|Œ“3q½I\Ê[VFyD•‰\à%\í\âý\âM»lm\"@R\Ùs\æ5A_^•¥\ÛvlalÝ¶	l‹\â\ÊA¸P3d1*3¼üº\ÇkÍ”©&3\ô¨ø\âZ¶„\è˜\È¿km$ú‘«dlW3\â./…mµ#\Ì\Ä\÷“Ú¹g$eBr\0\õ=Ï¤ž•\Ò\òn3 9Ìœ² \r‚\ö7–\òÈ“B˜é¦¾›U[ŠZB\Êv´Fµ\'OZ\ê1l„Ç¯û\í\ô©‚½p\É!WúT|Nž\Z´\ñ7a\Ôÿ\0½H©©&\é»$›l(qMxL¨$Bª\Ï@4¦Ã½h\Ø\'S\åP$\õž\æ„Þ»q3¥´´|€\åQø~.ù¸–\í³°$JŸ0\×C\ðŠNOqe\\[é†¯p\äqª\åo\Þ]>£cþ\ëPÛ‡\\´­r\ÛK¸@\ëY¦[\Ö\n˜üúW4\Ï8\è–rOgX\æË—\"\ÕÒ¤\ì¦?Z7tœá›½-\\²U³[EzŠ\'c©H¿mÃ%D©\õ¯B/-\Ïk¬þh^Ç¡\÷55\Ù²\î \Ìû\Õlün\ã]›j\Él£®ºûQOüD\é?±WN„Î·ÔŠt\Ìæ–Ž\ßhwÃµp˜1\Ö#ZOÀ¢±š•\Å\ñ‰`XB…F\Âwù\×=ŸjŸ$“\ë±Œ®™\ß`t¨h›\ß`\Ô;i&’\r¥²j^\ÈùkÊŸ\÷j\Ê9¡\óˆj\å\É\ò®•ˆ9[z\÷¬¬ª\ÈS~p2ŸjŸ†\ÄB\Çj\Ê\ÊDd \âoM\æa±jf·»\äE”\0Oy&²²*M!\ç\Ò;6¤	¨$|\õ©X\ÛXV\Ã/†|R¥\Ö\ï\\\ñ)>¹¬¬®U\'hg.b\Õû^ë²¨•`¢Yœ\Ü\èY\õ¯8Ý…¸mx^\\Š\ãR\â}Æµ••›©\ëä¬´g€\\,´8\\\rþU×ˆ7h²4Œ\Ú	`w×§z\ÊÊš“sQù%‹\ÜV\Ðu‡h#Ò¥\ò\öÅ°·n¦v-\å^ŸÚ²²ºg\'\ô\ÆOC79\ñº¶ž\Â\ä( \ô\Ü\npK6\î)2À\÷˜1ùW••5\'_\ìi\ôJ\Ä\Ës1Œ¡ˆ\ÒL\õ \Ø•¶†²²©\Çø2M,?¤¶·>Õ¾\Æ[¶\âþ^£\Öv¬¬¥—L”I\Ø\Å6‰P|¬&Àž\Ýhu¤T¹’d’cm{N¾\àv••’\Óm6N·yu!\õ\Ä\ècÞ£p\ë\ï‡d…Vœ\Î4bƒ \í5\åehi²\ð\ðo·w\rqU®1U\ÛYL{ü\éŠÝµ¸	]P\Ñ\ßÒ²²$SCRm‘pml\ß`\ä…A$	Ô‘5²b¬;²Ž’Aƒ¨•”84\ÏÀ7Žc–\Ø\\‰ Ÿ;h4\é¶²úH\Ô5\åen]¥dfs¿‡V_4\î*\Ã\"²²–\r\×\ôšü‘ºZW–\íYYF\ÙI%GlÆ²²²±ÿ\Ù'),(5,6,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0‚\0±\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0D\0\0\0\0\0\0!1A\"Qaq‘¡#2B±Á\Ñ\á\ðRSb‚’¢\ñ3Tr\Ò$s“”£²³ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0?\0\ñ‹m\n\ï¥{&‘\é± |Jž«+#JŠÝš\ì\Í\Ð^Ø²UL\ÉPT6•-¸$V\Õ\èF\n’—‚tG\ÂM\è»\ÔnÀú}0/$P\ä³ \ï©M\ÎÁu)ù\í\òÀ²¾\î…[3iT6“\Ë\÷ ü0>„s\ó\Ã“‘2\ñ\Î\ô‘°¤$‚\\\ó\å\Óc€\ñé•Š\Ä\Ñ\Æ\Ô\Èú\'q\ô\Ã$9n\Ùs°¿k¢\âjn–NX\Ó<Ñ¢•\ZbVÀ\è6\óú\ãK‹q©¸Œr¦f(Žª©4\ï±Þ¾U€\Ìfi#Ž5-,\Ý#ž«¯\ÛfxT™|\Â\ä\Ç<ÁµD¤9A\ëk¾›0\ã-\'Y\È\ñ\'o\ËI¦9”™$n\ÙXik\Ü\Ë\0\Ú\ä³2Á Ž)\Úx5J\èv\Ñ\Z¨\ïo…\ç\Ë,N\êŒt\Æt1=M°\ÛÈ…¼4üNpd-(y%ŒG#«sBšJŸ¥úbe]\à–]\Z„e5Q\èÆ¿†˜2™9cl\Æg4¨ü»Z\ÔB+\Ã}°!$¥‘“LŒÖŠE¨Swúbf32O\n\ërcG*‹È€w¼\nGF´iTZ¿og\òÀig\Üs¦);Š\Åv{\n!\r…\â¨2r\å\Ú=\õ¡g¶½\Þ\è\ó;ü°\Ä\Í.emSi‰T½“(’\ç©\ÌYH\äR\áÒ¨\Ò_\0J­…Œ\ÙTÆ·;\n\Ã4+Dn{RZ&\Ü[üþX\æV$\ÌgZ)^8Y\Í/\ô56Û¦\ç\åŽfr\Ï\Ú££]\'ž“\áü\óÀd\Z’I”9B½\ÆüKµ/¥^c\ìaY•hù\î?#…\î0¤F5\êTÝ•5½yt\ôÁef–FrÁlÞ‘°¾\\¾´:AkQ°\ò41\ÓJ\Ô+\ãüø\â\ÊczŒ†A§u¯\ÅGq\ôú\àdS@=,uÀ7s{±\ó\ë†UDSwˆ]\ë\0]\ÕG\Ý\0w«­]­`‘9¾gm\Åx\ôÀJM\ñ1o|\Ì\\\Â10<\Öþ\î!5Ù—\×Ë‘ªü«\r´œb\Ñ\Z\ö1—½–Âýq\Ì\ÞG1’•b˜\0î¡—K»ü·\Û\Ô`\"m†–´½{rÞ·À7\É#\"AÄ’\Ð\01­m¨\ò\ñÚ¾X[²‘¢BT\Ñû£\Æ\Í\í‚p\é›\'œ‹0‹o$:Q\ó8­9TF%€P\ò\Ûa±ÀP¨\0€\Zˆ½mü\Ö,\í©TV\Ê3‚°, 2®Å¨(P0eË˜r\Ò\ë¥\íiR\Æ\Äj\ß\ÌQ_\Ï\0<¶U%\Èf\çi<-\Z„-Eµ6\ôýF:2¤˜\Ù%\í\"E\ó¸gƒ\ðÙ³¹¦H\ÕCGL\ìÀ\÷G*\ñ»#o\\p\Ù!Í¼2 \×ý\Õ\î\ô°OJ¿\Ó\0šfk&ùf\Ë\Â\öC+˜Æ¥=w\ó|±Ð‘*²»¾†Wf\Ö	\Ók\ò5xa\ò\Í\Æ\Ì)›b¤€\æ\ó¶\Ã\r\ðüš\0\ÓfNV)iœo«k\ó\òÀc¤aœ\"\÷¯…\Þ4$\Ëdû(™@	Râ……o\ÔW\Ôb¥$\ì;hÕ•\ÒH#\ïx/\ß—,rÝº4‚BJo\ÌrÛŸ•`-<\Æg\Ë\É0Yª&DA± \ç\á\è1;\Ë7mª4+¤·Þ‘n¶ù(°³4\ð\\|Œ€n°»·–¯-•\È\æ!]Mn\è¬ÿ\0yA£\â.ÿ\0ŽO”\É\ÇlsLªq¢›SbÁ\ó\êN\éq£$¨J¶¨Ö·\"\Éù\ì6Á2\ék\0˜#`n\Í\Õ\nS\ñ\'¯\ëfK˜n\Â={\"\í \rˆ¯­\à($¥?po«–ÿ\0/\ÛD™œ×¨–û§Ÿ\ë_<s7–“%0C\n\îZb<O\ó\Ó\Å\îý„\Ð\ëk6\Ûû?Žþ\n«h7h\Å\Ø(\r|\÷³‹\ö]œ@³Xq`\Ý\í|¼Ž*‹C’MTh¯…“uåŽˆ¤\0–V!H\Æ\Ã\×t\Z>7\ÃGL;UjûÆ¶$uúadC¤\Z«\'Ÿ•~ø<Ž$“Poºt\ï°X}Ÿ\åûbbRÿ\0X¿\á˜’¶ I\ï#\ïU\Ó\Ó\Zü?9\np|\îRHÛ´Ì°K¥\'Ÿ§?\Z\Æ@ˆ³\éf\01R\÷¶\ô\Û\ë_\\3•m)\ÍßŠ9o³+³_;>€m€gHÛ \ó®^g.c\Ó.\ÊEi²ª\ë\È\õ\ôÀ¦•Že\Ý\"X\õ¥º+øœS?tGfˆù›\çù`\Z™Y\Ë\Ü}™V\Üx\ï\Z\Ùn>c‚ÍœpI*¯–\0iM`t6Ày\ã!d\ê•\ÙD­®ú_ws|º\ãgƒf_#˜0Ë™Ó’6XU\n[&AüDrÀ)”\Íe\Ñs‡#e\ï…A²”l\îoP®bü\ñ\èš	gš,\Ó\Ï“i`d…eÝ¹\0H$\rüŽ\Î\ñ!i[7\ÄXeedg\â\Ã\ì\Æ\ä\ò\ï\Z\òº¼¸À%g\ÉeRQk­§pn\Ç\"«~\\\Ï\ï€ZN›Ì¦„\ÙSmD\r·>†½prˆ\í(‘]IM*\í\ÔÝ›\ò\r<\ÜBy\óqw’5X\áK@N\Ü\ë~WÊ¼1ƒ›\â¹\\œO’\Ë/…þ\Ê(¤¤M¯v\ß{?N˜f2M©’:=©\å°úoþ•†x/\Ê\ç5\Ç+MÄ—˜•\È\n4‡¿†\ê|\ð.\Ä\óI4R\Æ\ð}¹WH\ÜXQk\'™\Øo}N6¸~o sÐ¤Q²¼*\Ë.©WIS¿z·¿Ù¬GƒGÛ¬\\9Ø¯`	?Ó°I7×­úaot“9œh\å`Ù—™U\åm´\Ø\æFÛŠÇ¤È“\Ûû\ÔJ\"9$“´¸}ùu\å\ôÀ\ò¹ysf|\â\Å\n†±1«ÇŸ1\×\Ï‹™Ë¬o˜\í	*\ÖAg,,Ö¬`qY\í&•c‡TR0\Õ\Þ\Ô9\Æ\Ç<h\çža—ûFhc4ÁÂ†\r×\å\Ï\ó\ÂRÆ²Ã®ew,X%€yï¾­«|y‰ZPŒÁ˜›,l\õùs;z`\Ù7\Ê\Ç+\Ìr8@G°mŽ\æü\è\ã¼S/&-3\Â\Òrp–¥@¯Ä›¾]0¦—Ž‘W³]Ô±¯`o~¸,j2\à»S±\Ûøü\ðÀ$+\0\ä‰l²‹<¯\Ï\nQ‘Ì\÷\ËÀ‘¹«:±V\Ð\óªˆ#Â·ß˜\ç\ñÀDd \Ã]½y^\á\0Y\Øø\ôÂ­:®\á\0i\òë‹¥^ƒ!Z\ïv¿¥Ÿ†\0–Ø˜W·ú\áþL{¤d‘\÷Ž\ä±üW\×‹+Œ\ÄV\Ã\ç|c\ÐPi\Ûw¶•W^g\\\Ì~\ëÙ˜Ä¯Q`yx\Ö\0f1.Ô—@\ô#Ï¦¢\'°Q\Ù\ê4Aw¬s\Ê\"R\Å\ë`\õª\ë\×‘x\ärQ\ËÄ¢/š\"\â\Ë_!Ì´œ¬ÿ\0g®Àž˜7?¹\Åm3ˆ\ãbB\Z$¿*P¼\Íymú\"x¼Ùœ´pd\"ž’\Ò q©ƒU\á\Þ\Ë\Ç78wŸˆqI\ó|^9»8Q™V»:¨z)\òW©\Æ\Ç\à2Œ\àU-—\ÉB\Êÿ\0hd`£žü‹QoJÀdd=\Îf\ó–(\Zb½£>Á\èPc\ÔlXW\éX\õ/%\î2\ÇŒª\ÆæŒ…›H\å\È\ó\'\õÆ¿y²©,™£Š\î´is\÷¨?\êaµœy\ö‹Ç¤\à¹SÃ²\àCž\Í\ö†¦\ËFG&¯\ÆA\Ø~~¤\ö\ç\Ú\î\ÒV\á%\Õt¬\Ú\n\Ôw´Z\å½\ÙvÇ–ŠX¡\ËH\ò°s\ÞT\Ò+¡À\ë±ùc3(\ðû ˆ§\Ú	ƒ?\Ð\ÓD|\r|\ñÆ²¯ ƒ\\ú\à7\òjhÞ¢Ž\'|Ë³LY6k\n+o\'\Í\Æ\ZFršŽ’ª¢•˜0º|w¾˜\Ç\È\Ã	5RO\Z\ÆbRH$7\Ïû¸\Ç0ŒE\Ý\Z\È\0›\ë€\ö¾\Å\ñy&\ÏK\Ã\Þb‚A­4~\'\Å,{ž>TDBÀ\â]\r\Þc\Þ=5|k\ó\ð\Ç\ÆøT²ef\Ëæ¨£DÖ/s¿ ¿\ÏAÎ™C›Ë»6G3\ö½Ñ´mµ©ú‘Ò¬u8\rsas$¶A\n\Ë\ÚP¥bXo—3F±\æ\'\â-’/\Â\0iF™\ØhV\n\ZµW“¸Kˆ\ç3Q\æ\Ì\á\ßS.\ÈiY|Mnh\n\ç\ò¼/6¬þ@˜\Â8^\ÒWTMBtÑ²M—¸7xU\æ„c°Ž>\Õ\ÕË€„Š±¨m\Ë\Ã\Çfr\óed\Ñ*,r ·¿^fºc\É\ðh\Ý\Ò{¾hNùÅ‚–c$[\óV\ô\æ(\î>\÷\Ù9bŸ#b³™9×´†]U¤^\áZ¹\òÛ§_ \Ét;˜#v§u½$\Õm\ç¸\ë\×3Ó†e\ÒM“cq\Ë\å|\ïd+™\ÊHs9Gn\ì\ËZµV\á‡0\Ö6\Êu0\èÀ\õ49\ò\å\å¹ù`*\ße Yt\Ê\ÔMD\Ù\ç\\\÷\Ç3\r·fdt\ÕcVÆ¼=wÁ\'˜²):Y‘B’‚´‘]G?\Þ\ð°iv¥*=aYªÅ›?¡ù`9¬ÿ\0I±\Ü\Û\Çü˜\æÅ\n¼‰º°\05\îFý0lŽK1ž–,¶R.\ÖiK\0¨¦\Åm\Þ\èž;™ˆ\æcƒ2&²\ÈU¤jS¬µ\à\Ã\á¿JÇ \Èf²œ3‚E\ïnÝ£\ÒT.T²vÎ»žd\Ö\Þ\à=G³~\Îeø,+™\ÌVc8W¿%€°Š\ßGý\Ü\ñN;<gDŒ\Ù}Dè‘ˆ\r\÷€¾twª±½c\Ã?\Ìe\Ò>\Û0s”8‰‰ @$ž—^61™Å¸œ\ÜB4»ª\ÄHJbN\Ã~d\ÐßÀzi=£\ÈpL‹®] Ÿ3$·,²·i#m\Ý>cs½\õ¾§\ök5þ\õF–\Ì\r3’4\ê7È’Sµ“\Òù\ß/y9¸´R\ç»S“»x\â\ÌEy\Õyøc\ê|7‰\ðŽ#•1pÃ¢,´B\ãU\Ð\"A{jøy`\ö‹Žd=•\áSf	\rš\Ð;ld\è\ÅU“\èN>š\Î>o:ÙŒ\ä¢i\ÚFry¹\Þ4\Úµ\í\'\r\ÖS,Î™s\â¤ ³\æJ“\ñ\óM(n\Óoøž~w€\Ó\Ë\Éd\ô\Òv…¬]Ÿ Á\Ô+DAÓ§\å~ž¼±‹\Þ\Ûlw#\Z1M\Z$M\é—[\ÔP\ß\å½#°û8´X65\Ý\0Vÿ\0L9™H`P\é&BÊ¢ÀI>XX\"J²\æ¤aØ¶p!½\ÍC×–\í–\÷˜vb\èÐ“\ñk\ÓW\Ï\0\ð‘„vŽ”1\Ó\åbþ—¶=\ãÑ·	|¤\Ì\0(³\ÊÅ‹\Ç\Î\â\ÒÒ`„üXf9Z&}(N„\Ç+W\ðÀz¹\å„D]ÚµJ\ÇF®\éz‚6\å€\Ì{8g:&MvTÔ¦‡\ßc.xƒ{\ã¿8žM…ý\ÐM•\áÜ¶u3™\È2\ìB‡&¢\Û.\õ\è\0\Ì\â\ÌÉ­Œ\êv\Öµk¿¨\ãK\ÙiO\Í4Á$\Ü5\Ö\æT\ëZù\Ñ;Ž|¼1Œs1faI;Ë¤\çwd›\òÀ³²\ÂY&Á;\íT~?¦\ôo	\ÊÃ˜\ÊÇš\ÈI{‡f€\î(°À\õ=AG.búV3=¢\öq8u\æ\ò1†\ÊjV˜:\ÙJørý¼±\óO\öq\í\á\ö_>\Ù|Î·\á3eNf>š\Ôz\ó}q\÷–9|\ÎH\Ïa{&[Žu\ï\0\âüV¾‡\ñŒ\Ì.ª\ZŠ¨\ïl\ÚG¼ÿ\0/,A\î\î«\"º  \è~µ\Ïo×¥\ã\ß{K\ìþW.Nc-Wª\ì¹\îh·Ë\ôÇŽI%£_4\Ñ\0@û\Ä`Ù¾[mú\à2\î?þOá‰‹\Ðÿ\0•úŒwy\ÚcA¢‡x\Ë0U\nY5\ä{§—OÂ?n¹l¾M_&7\÷ŽÀ]6Â¢•Núz­t>¸s‡gYj\n\òw5\é>Ÿ^{y\à/>dG”L±Ž9#K1Ë¦þ/…\í\ð1Ÿ˜\ïF4šK\Ö\ô$\óü#ŠXœ7a\ÚTL	°Mm]y´«Ê‹DG‘£€	V‹\èv¬Y@nÓ´º‘\n=1©\æ6\Çe\ïCo.x	’s>\0\á¹—”‰¥\Ô	¤o·\×\é‹.G\'?øh=Bx\"	\Ñ\'k\ÇR\'˜¥Y³¸\óÀW\Ý\ò¡V¢Œj;œÿ\0’1\Ó¨\àŒ°\Ú\èm‹GÜŒ²V\ö\0=6çˆ«K¤7uºz`“-\Ä\á¢F\0j -\Ë\ðì¬‘ |¼Z™F©\Z\î\Ï]°\÷NÏ‡+!©\Z&/Ë©#\ò\\t¢ˆÖ¹\ï°\ðþo?	\Ëj¢´¾\ã\Z\ØP4q_\÷l}„¢9›\í€V\Ô9(61¡3F\ÖP°k$Š\ÅUNEš\æ0	ÀR5RÓ±\ïjªg²!¶‘‹!$j}D~@Ž6%M+DXÚ\Âÿ\0QŠA—\Õ4hT±wM\Õ\àN“\\«Arj2+p(‚/\Ãq·–~“*ÀŒ\ã\ÝW²fw\Z˜–¡\à:ùa§†4ˆ‹%‰V\ôn¾¿L	CFÅÕ¢›s}E~x\É}›v%c\Í)V\åK^Nü¾Xú±\Ð\ç¸›+2\öœ)šÀ\ò\ä\ï@r\ÓgoCX\ó\Ò\æ›Z4#WŒ\óQ\Êù|?<N\Ýrý½ \ÔÊŠh‘·3\õQ\óÀ}K?\Å=\Â\Õ\äC\Î\Ù\ìÁ·­ÔšÇŠ\ÍJcu™#–6 Ig+Èµ\×R¢\0\Ü|q¯\ìžqW1½œ\ÈT(r9\êù›°HÛ–À\íŒ\Þ%\ïi4¹¸\Ã0RH§\Ìr<Ç­øa‡\Û?\õÿ\0¿|w\íü\Û\îþ\Üs\0Ž»$8\Ü\ìkT\Ô‹VAa±=—\\.\ÒGß¶Ü“\×W˜«¬®Ú‰²¥o\Ä_\È\à:¯\ÙÈ’+•u:¯ºÀ\Øøí‰›\Ì,ˆ]+šµ³á¿–,\ó,¯dÈ»2yržc\Zý.\ìwþ\n,\å|.(\î· O,pŸÃ¤€F\Ê1%T£†6À\Ú\í¶\õ€\ì,UvFÇ–,\Ò\0µ\êø\Ö(hzV\Çù\0GBp;S]^ûœw´³B\Ï1\Ë1È“F†)\ÄX\ì\ä\Å<ª)t¤z\Z¼\Î:\öN‘5‚UAngp/\æ&™d59b£×–3\ó,Z4P—_\Î\ðÞ®ý\í\ð;`,µ\×\ÝÕµ\ð\ÈM\n»†ý\Ê\á3(\Ò\Ýlwk9MCHZ5g\Ã}°‘@î†´\0\ë™6R\å\ÍGÙ·j\'p+–iË„›5Ê¿†9\ì‚T!‘:•Ø¥sÿ\0-ý0Ì·uT\0  ;u\ÇP-Žt*T\ÒÕ‚A\ç\Ó|[74Y„’p)™´ªù›b<G\Òe\Ùw\Zl€\Ý\Û\ÆýNŒ¸^\ÂTan;\Ê4\ê;(x\ó\'Ê¼\÷ä¬¿gF\Ñ:‹úœs‡\Îr«\ïŸh[V„ h‚\r‘\á\Ï$/˜i Zš\ô¸Õ žµ`=\Í1\Õ,³·v\âtA¤ˆ·…&þ¶\ÃsH#3d8®b Ž9yŸ\ïHF­*§¨\î°„y„\Ì\Ì\ÑÈ¦]fÃ u,\ÎÇ¯\åwÖ¶8\×\â\Ù\Õ\Íe F—.\ò\ôL{ˆºuk<‚\ó6o–N\×\'ÿ\00ŸŽ&\íú¯\òLlT\"ƒÿ\0N\ö.ÿ\0\ñÖ‘¬.\Æ\ÖqR\ê\È4\Ýø\õÄ½Q\rLB†\å\×\Ãl™­APt\rÏŽ+hQ…\÷¨im\Ì_\ÓŒ¥YýŸ,q˜†H%O.Fë€±µµd ®\Í\äo&\Ûm·£‹;™–X\ßRNh^\àP\Ûb\Ýº\ñ±\ÜÖ¥!TxrÄ‘Ue\"\"\n\Þ\Ä\í‹Ç™³Ú†Ô¬§zü~·\ðÀ9\Æ\æCª¢\Ñ\ê(ŠÀš}¤g#T†\É\'rn\Î˜œ\öƒM/t\rºm€HSBQ\ï\Ù\r\ðÀ;&\í—a[Û›\éZ‡é™m\rt\r_$Dž>\ï{K#\Ý#\õÄ•\Ã*\Ë@w\Ð\ã\ñ;üp\rM |¬j\ÍÎ¢:\ê|´œ% \ð*7\Ó|\ð¬\'´™#i\Ùøt¿‘?<PjP…µ)a`Ÿ?¶\èû9s	!C0n@š¼w‹\É\"q<\Ò\Í&·‰\Ú\"\Ãk\ÑÝ¿ \Â\Ñ—µY\rý™\ÓW³tÀÎ \\J9¹\ç~x4r²\È7¦øg´\\Â¤Ži¢\ï¤m·\ò\Æ{½)x‚\ÇÂ† ,Á=M¨l®\ç\öÀj«\ÂG\Z²©c\Ù\r[‚zt\ç@|±Gw–%DŠ7}#“Û¦Û\õ8M%x\õ\ådp¨,=…m¾\ÛuÁ²\Õ\ÉK•rRp\\a\ÖÁ#ü£l&L’N©“²A\'º;¦¹Vûþ¸j\Ú..jH\àhš£T³bÁº¿Q\áu\áxÇžu\÷–}\00RP(oÈŸúaüÁ\nÈ¹™´e¤‰%uT!@øY\ó\ðÀ\ß\Æ/ý1ûc˜oÞ³~ÿ\0„~ø˜Á]4\Ónkÿ\0H\Ä\ÄÀq\ö&¶\ïX\í›þù\âb`	1—X2\0A\ë¾€	¤\0\0\Û\Ë\0´fÚŽ\âÿ\0\\9\ï~X˜˜\n7\Þøbÿ\0\â<LLŽOi\Ì\ò\È`\Ò\Ù{iý110g”&fP (Ð›_„`N\ð¹_ü£ÿ\0\èø˜˜ƒµ\õ¿\Ð\â3>n‰\Ú}¾m‰‰€„,øaü™>\ó“·o¯\ïc˜˜\ç\É\Ì\à\ï\'ÿ\0±Àr\ÔH¹úw\ÄÀp4HhXH\÷øaœ°>\\I\ß(+Vüª±10\ì¢þ­?\Â1110ÿ\Ù'),(6,5,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0‚\0­\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0=\0\0\0\0\0!1\"AQaq¡#2B‘3R±Á\Ñ\ðbr\á4C‚$%c“\ñÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0!\0\0\0\0\0\0\0\0\0\0!1A\"Qaÿ\Ú\0\0\0?\0\ó¸•3A\Î\âzŒt¯A\ì¯mµ\Écxi[\Çj2eŒ»(\ñ`*\Ï\ö&¼Ù·\ó Á<\íR¬&@Ž„\ÞF\æ>X\éü\Í$\Ì\Ù\ôv“­¶¡g\Þap@\äI\÷8\à|3RR@Ü“^)¡j\÷²º…¾™X7\î·0b=GxùW§vjù5M\ö\Ò\É+unó¨­¢\Ñ6j¢œ\ä`\×‹çŠRž£C_\ÇOEl|Ž¢3#g\0dü+7¦vç»ºI\Ê$Ÿ»\ÝÁ œ\n™\Ú\ËÇ²\Ðf’7\ØI	»øs^T·’\ì•aû\é™\÷:/\\?\ç‘\\ùrq•\íP\Þ	r6\àzb²Ý°×®tû¸ ’)”£,\ð·ˆ`Œ’1Ó§\Ç8ª+\ÓÏ¤$Í´\Æosž„ù\ç_\Z\Év\Ï\\¸\Õf2\Ê\à>;²•\ã9¡çŒ•.\Éleý\ìm\ö›U–X”\0\Â03¼\ç£s\åÏ­W-\çq*.!hÕ¼).X\æ<ªºIªŒ_8Àn¼T\r\Å\å%¼‰\'&¥F\öh\í³¾6\n]\ã»\Æ\ÐO9©G[º€¤‰4hSdŒ~8\Ý\äq\ðø\æ¨Y¢B\'‰›rsC˜~Wq\ìŸz*B£qÙŽ\Ò\\iw-\áI@!\ðž™\Ï#®A\÷\è:s^§c\Ú\íX­D\×i\r\Ä\Ñ\ï(\Ç!O˜\Í|û\á2´¦ˆ·SE\Ó\å-)E“a#§\\\ï\åT§(¢–¤¢\×\ôYV@—\ö\ÌPr\àzu\ëX.\Þ\öª\ÂV\ÚwS\Ç\îp €×›Ov€lvÜ­£&ƒy#³ªÆ®\ÌÇŸ¡e“);7Ýž\ílV¶\óCNÔ•\ämV\õ\ã\å[^\Ïj°k	\'y\÷\ê1\"#^n‹Bd/1`\\\å\æ+\Ñ\ô&º\Ó6\Ì\ZîƒŒ\÷ž\äyŽ*\á9s\ÛÐš6w²\Ú\Ú&û«”‰}Xâ˜¨’\"\É’Œ2¤¢¼û_½¸¿š\á\æx]az(\Îy¦³—:\îSs•Q\á<ž3\ôÿ\0š’\ïH8˜ÛÂ¿x\Òc\Ô\ñM]¤€\\0\È?*\Ü\ç’I\ç:°KY¥š$xZ5\Ï\æ\ô\óÿ\0=\é]\rŠÛ›H\ÏÙ®¦„2ø¶H@?!\Å\\hºÌ°©·S!VP’\Ç8\È?§ªn\á@\á\"}ëž˜\ÎO¥i{?¥Gkf.gWY\å\ÆcqŒ\õÀ\ôý+<™V\Äk#\í­ei¼W\ë\ÄpK\0\Ç\Ødƒœ~´»a\Ú;\\#\Ëê£’\ò\÷\\Œy<«1y\ö»\É9¡`Š\ÃÂ®sd\à\ôÀ I!žh´\ÉyPY\äÛ\ö\ñ\Ïæ±ŽY­\Ø]³\í§\í{¨\í,]\Ö\Ñ\02evøÿ\0W\ØX\Çn¢Q™$`|MŽ2j\Ø\Ë}35´qF…ƒ?V\Î?J±¶yž\ÉD\ë\Ý\ì\Î\òHü€\ÇÆŒ\Ò\æ¬\Zhn¡qq\â\å[Ç’yþýER\Þ\Ê0ž\'\Ï9\ò?\n±•ng†\Â@\Ú\0\ã\Ôüú\ÕdÇ¹ŽS&KŒq\åý)A$I\0;:\â×®qÖ‹om^\öY|Tu\ÇÆ<û\ÓÂ¸cÁ#üúWmÄ¤\ÝÀ\ã98>\Ü|kªw_´\î\àùœP’>ý¼\õÇ‹<:c\Í\÷ž0À\0zþQG˜\"F¨#ewgwJ}Á¸:s!Ž”¬n\n\\¸\0žI\æ£[©iT1©`uÛŸ…[K\Ù\ëˆnYSƒ’\Ê· f‡K±\Ñ\ÛY¾q—\\\í\ñcÊ‰q2ªƒ#…,GCü\óÖ§\è}ž’\êp\÷–\Ö\ï»j¤‹d\×¬eìœ³:o\Õ-» FUb~Ÿ¥J[eæ‹§F¶\Z<ü3­»>L³uýÖ¯d]{¹88\ó§i\Ö\ð5µ”\r¹b²<œÓ¨«­\\FL\É\ÈÛ¼\rž¹¡\Z’þ\îhT!X&Êž¹\ó\ÉuX[l¬ÿ\0úWûTÄ”Ú¾¦û\ÕJ1Û¹\Â\ä„$\×——´\×/3˜‚\í\Î:ùþµœ\ò\ð\ìM\Åvf4‰fkL¯#½1€qžF½]\\i\÷2Æ©\r«\î\'¨O\\Tk~[ˆXc\Ëz\â¬-¥;¹^KH¤:ã”¥vqé–‡D¾¶f¸¼´”,\\Žƒ\è9«E{»¥U\Êd\r¹~5a|\Ú\ÕÂ•H€\Ãzü\ó\Í\Þ\ÏZLª¸|cf\åÁ\ó>t¥\Ê{aP¿di\æ!­]±\Ü6“À\öÕc\0Gn\Ñ+/\ðmf\ägt\Å\\\\þØ\Ç\")é‹·\Ã\ñ\æsi<\Ë‰Y$\ê\èË•\éŒVt\Ð\Ü#\é™\Èlá´‘Ù¥†Sœd“Žs\å\éR	…£\î-\ÑQ¹ù\ÏùŠ¸¿³•\á=Â¼Ž0H`0~U\Ö\Î\ñ]$’\È)\Ç\åÁ\0û\óUrd5º²–\Ö\ö\å™-\î\Æ\ÂÞµY*\é7S\îb(ù\é\È ü+[\Z_ !”\'R\ç\õ¨“\è\â\ñ¾\Ó=¼‹q¿¨¹_|\æªk²”QAogh“)²Ó•‡#½`X\éC»{H[cYE·w\åO?\ðV½-L1\ÃLûWnÍ¸\Çž\rR^\è7:…\Æ\ÙHm\ó†\Ú<DUÅ¦\ö\Å8¯E]·6®\Öp€rwoÁ9ùùtâ¨µ˜Ì™’\Þ<ûŠ \01À\âµýŸ\ì\í\Ü3\\,[°‰\ãG Ž™\è}ø4û‹+\íE\Ømµx$\ï_$–t\Ãa@\'‚[oSŽ•\ÓÔ¬jgt}:+(–yÿ\0~\Ã c;s\å\ñ©\\¸91,\ÅsœcÒ¬\ï4{‰\ì\í.tÁs4³&\éVHÀ\é\ÉÏŸ5VýŸ\×$”b\ÚM\Ù\ÎIÀ\ëIü¶CL\ZÜµ´ùm\Üwd\ä\ñÿ\0«}7\\{y£icy#s\âŒOüûTY;1ª[\ÙC,Qo¸.á¢Œn\ãŒ\õúQ,{?©\ÜM›\ë9­\Óv\öo\Èÿ\0hÿ\0ŠUŠš5‰\Ú{I¦{2˜G\nF\ñ\ä+d ÿ\0¦^vŠ\æKd•¬¤ˆ\Çq\ÚdS¿s²\ã€1Òªm´ƒmv\ïoi2Dl\ï\"\à\ÊU\óøFŸ½N’\Ú\ÒKg¶\î/D%—\î\Ö\Ô\äm$¯;¼²z\ÓN‹±ýª–Qoz\ö\Èp·¸8#\n8øyV\âI\Ô\á$s\à\ó­\Õ\Ì+=Ä³K\ì½\áf15³r3\Ãpqü\êþj\ÒÅÁ‰3±£\\“\Î~œû\ÔI);%«.Õ¹\Ê\0U•3Ì¹¨!œ\ã\Ë=)\é,WŸa²gyü\ôƒ¢1û\Þ|\ÆzW,´««\Ñ3[Fd\îWqO9?Ò¼u\ëúU¥ \Ñ5.w\Ð\ä’\Îþ$©s‚a~ƒx`H\Ô|\Åm\Çy\ôRM•\Í2)\æ\\~”9î¶¯Ý¸s\îMHŽ\Îmf\Ög‹ÿ\0E®Zxg´ 5¼\ägg\å\Î1•\Ç\'Î¡°’\ãEY±·‘\îûe”‡J\õ\îÛ®9ÅžµhüY.˜ø?³†\öF;\"_\é€M<«M9„D¬œÊ¸Bxˆ>Ÿ\\T›Ayc}\ni“2‹¨h\Ü\ñ´\Í.WN	\ÝÓŠ&¥}\ò®¦ú{f\õ~ÌšxAÿ\0¸7‘„O0rOC\ñ¸øÊ¾Lj\Ù{—ˆ°\î?7dŒ\ôÏ¥Gk°[9\÷\Í\æ\Â\Þ\Æ\Ê\î8\ï\á3\é\Ë\Þ@rdEG<\ÛM‘\â^|?Ò·3´&\ÞEk{˜û\ËY\Æ\"p1,rúª\ä¶r\0rh~7\Ó\éŒûg<\r\Ý\Ú\î\å!Yd\n\ç\ÅÝŒ0P2p}}=\è\Ël­f\ó[ V1	#, ¶d`±=q–Ç°\õ\"›¨\Êm­\ïdŽl,O0\'¢*J£\ë?:P\ñ\é\Ûaü\ß\Ù8´Á\í\ì”\rƒ·\óŒ©l§\Â\Äœn4¯\ôˆ–\î[©\ÌažC#6’\Í\É\ëU:\äVÒˆ¼Yk‰\ãØ§i>2\às zž(–º\íÎ­ml$‹j\Æûd›q]\Û@Á¨\Ïu\Ó&—e\ÚD‹‹it\ënü)x³´\çªûüÿ\0\Ï*Šu\0WÂ ýh=§\×\Ö\ÇI	k&\ÝÄ™#(\ã>$\óÔŸRM\Z\Æ-=­Vb’0\rÝ¹#g¾rf\Ç\òM{2š\Ø¨H\\mN=1Gª£2¿<Sµ\ôt±\ï-\÷¼¶lŽnzg‘\ë\Ï\Ð\ÕU“C{m uª}\re(J;%¦¶OmN\"\Ä©¤5»yø\ZŠmNsœ\ãÚ¹\öb	a°çŠ‹\É\ÇRp\ð\Õ\\[\Ö©ùT³y˜\ÖÏž3z9?°¶Y\íQ\åOR\Î\Þh`‚qOt\ó¬‹,­d¸KM\öiorƒþ¢\Öf*F3µ\Ñ\Ç\ànO\'ƒ\Ó#I~cŸT\Z®›\Äzœc¶.\â8“œt`px\Ï56\àÛ‹ÿ\0°4R4\Ö\Ö\é+\Ï\0~\ö2\ç8<@co#Žj¿v±Z®ûž\ñ\áÄ±¼\ñ˜åžH8²8#>f½,_¤nž‹—\Ôm´¹\í59\'À‚{Ž¢X™AŠS\êp9\÷C]Š’û\\\Ó4Q\ßB$L\Ýx¶¾>˜\â+,²\Å$S\Å%\Ú_\è×›CÁ\Ýl\Î\Þ\ä\rùÊž„ƒ\ÐÔ»{›¦º³@ý«\Ze\Ãb¥\ãom\ØýMl˜™a*^¥¼’6Ã©\çwÿ\0\r”=zg>»4op5Y”I$¶\Ý\ñŒ\ô‚\Û8Š5_Y\öÈ¬|\Z“L\Ú|HXwú;\Ú\08\Ú\êÀ0úý+A¦<³YÁw(\Ù%\Ìvê‘ƒ\ÝF/?\ê30 SlW™·mCOž\ì[i‘&ýV\ëh2]Nü\ì_\\€)Ú‹\Ëqk{­X\Æ4ý»Ž\ÎdP\Ã`;q¸’ª1\ÔQµ\Ã\åÕ…µ\×ýº—}>:²ýd\0üƒwK\Õ\Þ\í\á\×{@gºŠk¦\Zf•	$3¨À!IÀU\È\0ú\ÒCeÕ¾«\÷S\ÏfHR\òI/;’\Þ5X”z\å\Ýq\\¿µ†\â´V]²!¶\Ëx²…oiŸsTz_y¢\ês\éÚ\Â5\Ù2L\Æ\Û\÷p»m}¡›\nYv©\ö Su‹°-»¯³Na‘\n\æ%L…8>§°¤\ó»Œ0Ã±QMª\ÝþÒº[Ibn\ó\Ã\Æ8{iA\È$G\ï0}U¬´±Š\Ö\Þ;ubvGS\æO¾sYm5$Ôµdk\Ëh§»k¾ ¤bE‚G\ñq\Ð\ô?\n\Ù‚~u\Ç\å\Ïj&lƒy£\Ú\Þ4f|¸F\r·>}\Å\ìQrp¿QCœ\×Cz\×#“d\Ñ´\ëv`L1\î›h\Í(\ì ‹ˆ\ÑWŒc\ô©D\ç\\ ¯CŸaE±P:“Mh2x8ùQŒéŸ5¥Áü>t¬TÅŠ\çuž›OÊž\Ò+ùL;|\è°8\ó\åNRbË^pG¥	rH\ÎO>T\\dx\ô\'±»\÷\÷S\Ü\Í!3_L\ÛÜŒ\à\ã <dP»_§$ML7„iv¹€,Š\Ð\ö^†~é˜®\ÅfÀ9\êx>µKr7ŠSÞž\ðºœp¨®\Ï\è¸\òe\Ý\"&‘¡\Ço	i\Õ\÷J¸Ùœq\ïS\çY£g›½\á&eo\ÄX(^\È\Z”²88\Ç×‘Oc\à\çŸ@+ši\é‡\"º=.\æ\Ú/ç·‰-\í®n$$¿U}\ÌH\ç¨ÿ\01Z}#\ZÕ¬1\Ås…\ðf\n\ò\Ñ\ð§\Zª} .¡¦¬b@\Ö\àD„qœÇ¯ùŠ“\Ù,® ±\ÇÊˆH\êx\0\n\ëþ’EtbûSa{û`\ÙC\Z\Ï,doü \à’Û‡a\ð>Ô¦†\æ\ÑQ\Ù~Ê––\Ñ\Ø\ÙIø°\äšEK\à6=\Ù|\ëY®\Ú\÷Z\Å\Ä\åI2ªþ!\åP%ˆ;,bIWpûC)/ù˜\ÇMþžþ\õ/3Y8‚–\Ê\æ‘\r¾‘v\è\Ð\ÛY\Þ,OqQ†8`Y¥$‚\í\Ð`Ž¹£v\Ú\àÈ\ØDH$\ð.\0<yþzI©WZ~œ4«\ËI¤‹¾š´Y<xÇ€yx\ò=H\É\ÍU\èZ¼w]žk\ÛKy5(vÚ¬\ò\Ås‘¸)\È\Î3Ï¿\Ñ\ÙR\r\Ùû%¶¶yþ\á\É<s\ï\õ«R¹¡À\Â0ƒÂ€WDƒ\óp>5\å\ä|¦Ù\ç\Æ\ì}\0\â¸0\ÍrS¹‹8\Å3Å´e—\çR „\ç¡Ç¹4\Ü\'\çC\"B6¿­p+’G\Èš\Ç\ä\î<R!˜øTŸ…4nœ`ù\ÓpÃ¯Ëš@qŽC\ÓÒš]¼‡\×\æÁ8$\æ—\Ì\Ó\n_CDÀC\â\Ç\ÌP\ðƒ\ß\Ø\ÓÔžI^*z¬Ú„q°Ž­‘œgŒ\ã\éU\Ð\íh£\Ã\\qƒÒ¥iwŸbÔ­\å1¶\î—#ú\Ô‹\Øm.Z\Ãqy\0\ã\çÚ¶«\ÆUhN\Ó\á\è~tŠ~bO\Õu\ÚHµ—À$\è8¦>¥t\Ùd\ì™|J\ÉFDšª¤ú\Ã\ÞH­d\âa¸<œ{\ç\ô¢\öf\è\Ë%\ÍÆŸ—Qm6À\ã+ u-Eˆ#J\ñ\Ï_ˆ\ÅX\ö\â\â\Êúú\Þ\ê\ÚD7°˜m\ÆÝªŒOLù‚»bÔŸeÝ³M\ÚI-¬\'l‡’\"zd\Ç\õª\ËW„\Ý\ÇÞº…\Þl¥E\ÖV\å{h\×\ñ\Ïk{$.¹*I\èq\Ó8¬}µý¤2G+Á7z\âRJ‘Ð~*g\ç\ÈM¤\Íoolžú\Ò‹x¤3D\å\0†\"Kdg\ÄGLc\ë\î3±\öJ4-c\íiú\ç-¿¨\õ\Î(\ÖÚ‡í˜žUo†@V>\é‡ƒŒprG\'\ç&«ûMokf\ñ\÷2¨™G\ÞZ¾s¸t\Ü˜\Ï>]k±\î%7£D¬²<y\Z^XyV.\Þ\Ê\õ\Çym)\É\0\íYø\Z“†³¿x•\÷c\ÎNµ\æ\Ë\Z¾Ì¹\Z¦a\á#g<\ÒR\\\0<qT)ûuT\r\ÈËŸ\ÌA\ÅJ‰\õ@¿{,£\Ï8\Ï\éQÆ½Žÿ\0=ûXŒ\â¹\á\ÇR	\÷ª\ñ=\ð?eF8\ç\ï½	µ\á{i ¹\Î)ql´\Ðü3L\ÞKeŠ\Õ|\ßh—b+\r\Ã>/A\ð©»Ø°\í\ã\"¦	„`IÁÁ=z\ÓN\ÑÔ‘\ð¦Á\Î:Zc³\Â~€\Ð‚\ãúSÃž6	ò®ƒˆ\Ã\×\Èú\Óm\Åp\ÇÎŽ 9$	ŸJEF\öw\\±\ê}h$\âP}O4\õU.F\ï\ñfšZ\0‹´¨\0yRe\È]\Ã\à\ô®&N%q\çƒE\î\Év$žG\0\Ò\â3›vŒ±\ãËœ\Z|l\èÁÔ‘&8>cÞ„€7\á\n:\õ§\î\Ú0¸\0˜\Å	P3\ô[»^\ïz\á\Ê>p\Ç\Ôs\×\çTm£‹€;\òˆ<\Ò4Ï­[Fí‚¯ž|4D#!¤·\Ë\Ï\éZ9É»+­4\åÓ¥[›CÌ ¸†RPA\â³3h\Ú\Ý\î«sy<2tËŽ§\ç[rW NIÀ\'m7ÁŒœ\ã<u\âª9§Bü2h7\ÈreXO“+\äŸÒ®\ô\ëY\í\Ð,\×-.|ASŠ Ë ‰\ä\ëDW\ÜH\ÚI\Ç_J™MË±%@\Äy_Qø}\ë¸\çzŒ‘šMœœƒ\ëÁ\ëNM¬ \ì\Ú\ÙÁ+Ö¤«L\âû¢šS8(p?‡ÖˆS\ð\ï9Ï™\\W\nø\ÈÇ =h1V\äHùI7nÏˆng@®p–<\é\0¹;\Û\ÜqJ…Dw\Ø\àwgw‡œL]\Ø\á\ÓûÔÁP\Ç\æ<«›€ÇŒ<–›\É!²sÒŸ%3\Í*U2\ìŸc\ÐøOû±\\ w‹Ç­*T™\ÐN:ù\Ñz;\è)R­¢\äˆ\Éƒ¸W\"ü\n>4©Pº$G\÷M\ó ß‘\ìiR¤\Ä\Ç0\é\àuÖˆ	\äymR¥I\ÐO„ç§ùP2{Ž¿\ÅJ•~ƒpi\È\Õ\ãø¿™¥J†$\'»n|ÿ\0½\0Á\à˜¥J©\rv>_Ÿ\â4\ö\0w¼~uþf¹J—²\Õ\0¾üµª\ñÀ\é\éJ•¢Yÿ\Ù');
/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos`
--

DROP TABLE IF EXISTS `pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos` (
  `posID` int NOT NULL,
  `wordID` int DEFAULT NULL,
  `part_of_speech` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`posID`),
  KEY `wordID` (`wordID`),
  CONSTRAINT `pos_ibfk_1` FOREIGN KEY (`wordID`) REFERENCES `word` (`wordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos`
--

LOCK TABLES `pos` WRITE;
/*!40000 ALTER TABLE `pos` DISABLE KEYS */;
INSERT INTO `pos` VALUES (1,1,'Adjective'),(2,2,'Noun'),(3,3,'Adjective'),(4,4,'Noun'),(5,4,'Verb'),(6,5,'Noun'),(7,6,'Verb'),(8,6,'Noun'),(9,7,'Noun'),(10,8,'Noun'),(11,8,'Adverb'),(12,9,'Noun'),(13,10,'Noun'),(14,10,'Verb'),(15,3,'Noun');
/*!40000 ALTER TABLE `pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synonym`
--

DROP TABLE IF EXISTS `synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synonym` (
  `synID` int NOT NULL,
  `posID` int DEFAULT NULL,
  `meanID` int DEFAULT NULL,
  `synonym` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`synID`),
  KEY `posID` (`posID`),
  KEY `meanID` (`meanID`),
  CONSTRAINT `synonym_ibfk_1` FOREIGN KEY (`posID`) REFERENCES `pos` (`posID`),
  CONSTRAINT `synonym_ibfk_2` FOREIGN KEY (`meanID`) REFERENCES `meaning` (`meanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonym`
--

LOCK TABLES `synonym` WRITE;
/*!40000 ALTER TABLE `synonym` DISABLE KEYS */;
INSERT INTO `synonym` VALUES (1,1,1,'paunchy, potbellied'),(2,2,2,''),(3,3,3,''),(4,15,4,'uv'),(5,4,5,'woods, timberland, woodland'),(6,4,6,'woods, timberland, woodland'),(7,5,7,'afforest'),(8,6,8,''),(9,7,9,'rain down'),(10,8,10,'pelting'),(11,8,11,'rainfall'),(12,8,12,'rainwater'),(13,9,13,'angleworm, crawler, dew worm, fishing worm, fishworm, nightcrawler, nightwalker, red worm, wiggler'),(14,10,14,''),(15,10,15,''),(16,11,16,''),(17,11,17,''),(18,12,18,''),(19,13,19,'sleep'),(20,13,20,'sleep'),(21,14,21,'sleep, kip');
/*!40000 ALTER TABLE `synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word` (
  `wordID` int NOT NULL,
  `word` varchar(50) DEFAULT NULL,
  `pronounciation` varchar(50) DEFAULT NULL,
  `syllable` varchar(50) DEFAULT NULL,
  `scientific_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`wordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,'Abdominous','Ã¦bËˆdÉ’m.É™.nÉ™s','abdomin-ous',''),(2,'Bacillus','bÉ™sÉªlÉ™s','ba-ci-lus',''),(3,'Ultraviolet','ÊŒltrÉ™vaÉªÉ™lÉªt','ul-tra-vi-o-let',''),(4,'Forest','fÉ”rÉ™st','for-est',''),(5,'Zebra','zibrÉ™','ze-bra','Equus quagga'),(6,'Rain','reÉªn','rain',''),(7,'Earthworm','ÉœrÎ¸wÉœrm','earth-worm','Lumbricina'),(8,'Yesterday','yÉ›stÉ™rdeÉª','yes-ter-day',''),(9,'Jasmine','dÊ’Ã¦zmÉ™n','jas-mine','Jasminum'),(10,'Slumber','slÊŒmbÉ™r','slum-ber','');
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28 22:08:32
