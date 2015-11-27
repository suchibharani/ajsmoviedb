/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.6.26 : Database - ajsmoviedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ajsmoviedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ajsmoviedb`;

/*Table structure for table `ajsmoviedb` */

DROP TABLE IF EXISTS `ajsmoviedb`;

CREATE TABLE `ajsmoviedb` (
  `movieid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `year` year(4) NOT NULL,
  `rated` varchar(50) NOT NULL,
  `released` datetime NOT NULL,
  `runtime` varchar(50) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `director` varchar(50) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `actors` varchar(50) NOT NULL,
  `plot` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `awards` varchar(50) NOT NULL,
  `metascore` int(11) NOT NULL,
  `imdbrating` float NOT NULL,
  `imdbid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `response` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ajsmoviedb` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
