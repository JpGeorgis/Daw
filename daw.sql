-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: daw
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL,
  `born_date` datetime NOT NULL,
  `rank` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `theme` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','admin@admin.fr','2022-05-05 21:23:51','2005-12-28 21:23:51',2,'admin','Administrateur','0102030405',0),(2,'prof','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','prof@prof.fr','2022-05-05 19:26:23','2022-05-05 19:26:23',1,'Prof','prof','0102030405',0),(3,'eleve','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','eleve@eleve.fr','2022-05-05 19:27:19','2022-05-05 19:27:19',0,'Eleve','eleve','0102030405',0),(4,'eleve2','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','eleve2@eleve.fr','2022-05-05 19:27:19','2022-05-05 19:27:19',0,'Eleve2','eleve2','0102030405',0),(5,'eleve3','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','eleve3@eleve.fr','2022-05-05 19:27:19','2022-05-05 19:27:19',0,'Eleve3','eleve3','0102030405',0),(6,'prof2','3145e9c3e5506b73477dada7e363eb33aa319bcf02131459961c19ee87eb9a30','prof2@prof.fr','2022-05-05 19:26:23','2022-05-05 19:26:23',1,'Prof2','prof2','0102030405',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `creation` datetime NOT NULL,
  `picture` varchar(255) NOT NULL,
  `subject_id` int(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (14,'Les mol??cules ',2,1,'2022-05-06 00:44:41','uploads/c51b5815441abcba21a4e3e9a0c0907a.jpeg',1,'Un cours sur les mol??cules ! '),(15,'Les ions',2,2,'2022-05-06 00:46:21','default.jpg',2,' Un cours qui manque un peu d\'??lectrons... '),(16,'La guerre de 100 ans',2,3,'2022-05-06 00:47:04','default.jpg',4,' Un maitre de conf??rence de l\'Universit?? de Bourgogne a r??sum?? celle-ci comme une &quot;simple bousculade ?? la mosqu??e&quot;.'),(17,'Des capitales ',1,2,'2022-05-06 00:48:24','uploads/2aa5225790eee60cd0eb1d81af913ff3.png',3,' Des capitales pas si simples ! '),(18,'Le Plasma ',1,3,'2022-05-06 00:50:21','uploads/fc1962ad88db968b581d4fc73ef65a4f.jpeg',6,'Un quatri??me ??tat de la mati??re ? Et oui.'),(19,'Descartes',1,2,'2022-05-06 00:52:02','uploads/d163c8a2469171e658fea1c55ce75118.jpeg',5,'Un grand auteur. \r\nUn grand philosophe.\r\nImpressionant.\r\nJe pense, donc je suis.'),(20,'Cours67',1,2,'2022-05-06 00:53:23','default.jpg',4,''),(21,'Stendhal',6,2,'2022-05-06 00:54:34','uploads/c4a76599a5ae4ea8d3e878d3b9f8139f.jpeg',5,''),(22,'Louis XV',6,2,'2022-05-06 00:55:14','uploads/b10a50d9a5f889386362b568be6b9fe3.jpeg',4,'');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (10,'Les capitales','d64e7df6ddf8ac4518c851ea03e3aa71.pdf','2022-05-07 14:13:28',17),(11,'Capitales bis','59918070432cdedfb60fc96973654575.pdf','2022-05-07 14:14:04',17),(12,'Le rouge et le noir','fe4e5abd68ef3b8a0dc5007f154f65c2.pdf','2022-05-07 14:15:38',21);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_message`
--

DROP TABLE IF EXISTS `forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL,
  `visible` int(11) NOT NULL,
  `thread_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_message`
--

LOCK TABLES `forum_message` WRITE;
/*!40000 ALTER TABLE `forum_message` DISABLE KEYS */;
INSERT INTO `forum_message` VALUES (21,1,' Je souhaite la bienvenue ?? tous les nouveaux membres ! Passez un agr??able moment ici !','2022-05-05 23:04:41',1,7),(22,3,'Vive l\'administrateur !','2022-05-05 23:06:19',1,7),(23,1,'Message qui sera supprim?? ','2022-05-06 14:08:56',0,7),(24,1,'Message qui sera supprim?? ','2022-05-06 14:09:05',0,7);
/*!40000 ALTER TABLE `forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_thread`
--

DROP TABLE IF EXISTS `forum_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `vues` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_thread`
--

LOCK TABLES `forum_thread` WRITE;
/*!40000 ALTER TABLE `forum_thread` DISABLE KEYS */;
INSERT INTO `forum_thread` VALUES (7,'Bienvenue sur le forum !','2022-05-05 23:04:41',1,1,1);
/*!40000 ALTER TABLE `forum_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcq`
--

DROP TABLE IF EXISTS `mcq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcq`
--

LOCK TABLES `mcq` WRITE;
/*!40000 ALTER TABLE `mcq` DISABLE KEYS */;
INSERT INTO `mcq` VALUES (5,'76bdfde9714915b09f709ba66a7023bc.xml',1,1),(6,'c744451d030cfcf5805ed8eafe1c0148.xml',2,1),(7,'e38fb7d8d659220632421ab7000a4d9b.xml',3,1),(8,'c3417921d5662a1902bd8842af5fe389.xml',4,1),(9,'893399d82d849485a2f19c0a39d2033a.xml',5,1),(10,'9dc333e73d85f0a8c9e39edc23ac0930.xml',6,1);
/*!40000 ALTER TABLE `mcq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Biologie','biologie.mp4','La biologie (du grec bios ?? la vie ?? et logos, ?? discours ??) est la science du vivant. Elle recouvre une partie des sciences de la nature et de l\'histoire naturelle des ??tres vivants. La vie se pr??sentant sous de nombreuses formes et ?? des ??chelles tr??s diff??rentes, la biologie s\'??tend du niveau mol??culaire, ?? celui de la cellule, puis de l\'organisme, jusqu\'au niveau de la population et de l\'??cosyst??me.'),(2,'Chimie','chimie.mp4','La chimie est une science de la nature exp??rimentale qui ??tudie la composition de la mati??re et ses transformations. La chimie s\'int??resse ainsi aux ??l??ments qui constituent la mati??re (atomes, ions, etc.), ?? leurs propri??t??s et aux liaisons chimiques qui peuvent se cr??er entre eux.'),(3,'G??ographie','geographie.mp4','a g??ographie (du grec ancien ?????????????????? ??? geographia, compos?? de ?? ?? ???? ?? (h?? g??) (la Terre) et ?? ?????????????? ?? (graphein) d??crire, puis du latin geographia, litt??ralement traduit par ?? dessin de la Terre ??) est une science centr??e sur le pr??sent, ayant pour objet la description de la Terre et en particulier l\'??tude des ph??nom??nes physiques, biologiques et humains qui se produisent sur le globe terrestre, ?? un certain niveau d\'abstraction relative qui s\'y pr??te, pluridisciplinarit?? comprise voire transdisciplinarit?? en un certain sens. Le portail de l\'information g??ographique du gouvernement du Qu??bec d??finit la g??ographie comme ?? une science de la connaissance de l\'aspect actuel, naturel et humain de la surface terrestre. Elle permet de comprendre l\'organisation spatiale de ph??nom??nes (physiques ou humains) qui se manifestent dans notre environnement et fa??onnent notre monde ??.'),(4,'Histoire','histoire.mp4','L???histoire, un mot souvent ??crit avec la premi??re lettre en majuscule, est ?? la fois l\'??tude et l\'??criture des faits et des ??v??nements pass??s quelles que soient leur vari??t?? et leur complexit??. L\'histoire est ??galement une science humaine et sociale. On d??signe aussi couramment sous le terme d\'histoire (par synecdoque) le pass?? lui-m??me, comme dans les le??ons de l\'histoire. L\'histoire est un r??cit ??crit par lequel des hommes et des femmes (les historiens et historiennes) s\'efforcent de faire conna??tre les temps r??volus. Ces tentatives ne sont jamais enti??rement ind??pendantes de conditionnements ??trangers au domaine telle que la vision du monde de leur auteur ou sa culture, mais elles sont cens??es ??tre ??labor??es ?? partir de sources plut??t que guid??es par la sp??culation ou l\'id??ologie.'),(5,'Litt??rature','litterature.mp4','La litt??rature est un ensemble d\'??uvres ??crites ou orales auxquelles on reconna??t une valeur esth??tique; c\'est un art exprimant un id??al de beaut??. Gr??ce aux productions litt??raires, elle permet de manifester des ??motions et de r??v??ler aux lecteurs ou aux auditeurs ce qu\'une personne a dans le c??ur. La litt??rature vise ?? ??duquer, ?? communiquer des pens??es, ?? influencer et m??me ?? s??duire. La litt??rature constitue un h??ritage patrimonial et peut concourir ?? la pr??servation du patrimoine d\'un pays, lorsqu\'elle en souligne les valeurs, la culture et la civilisation.'),(6,'Physique','physique.mp4','La physique est la science qui essaie de comprendre, de mod??liser et d\'expliquer les ph??nom??nes naturels de l\'Univers. Elle correspond ?? l\'??tude du monde qui nous entoure sous toutes ses formes, des lois de ses variations et de leur ??volution.\r\n\r\nLa physique d??veloppe des repr??sentations du monde exp??rimentalement v??rifiables dans un domaine de d??finition donn??. Elle produit plusieurs lectures du monde, chacune n\'??tant consid??r??e comme pr??cise que jusqu\'?? un certain point. La mod??lisation des syst??mes physiques peut inclure ou non les processus chimiques et biologiques.');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 22:15:13
