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
  `released` varchar(50) DEFAULT NULL,
  `runtime` varchar(50) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `director` varchar(50) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `actors` varchar(50) NOT NULL,
  `plot` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `awards` varchar(50) NOT NULL,
  `poster` longblob NOT NULL,
  `metascore` int(11) NOT NULL,
  `imdbrating` float NOT NULL,
  `imdbVotes` int(11) NOT NULL,
  `imdbid` varchar(50) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `response` tinyint(1) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ajsmoviedb` */

insert  into `ajsmoviedb`(`movieid`,`title`,`year`,`rated`,`released`,`runtime`,`genre`,`director`,`writer`,`actors`,`plot`,`language`,`country`,`awards`,`poster`,`metascore`,`imdbrating`,`imdbVotes`,`imdbid`,`type`,`response`,`status`,`created_at`,`updated_at`) values (1,'Frozen',2013,'PG','27 Nov 2013','102 min','Animation, Adventure, Comedy','Chris Buck, Jennifer Lee','Jennifer Lee (screenplay), Hans Christian Andersen','Kristen Bell, Idina Menzel, Jonathan Groff, Josh G','Anna, a fearless optimist, sets off on an epic journey - teaming up with rugged mountain man Kristoff and his loyal reindeer Sven - to find her sister Elsa, whose icy powers have trapped the kingdom of Arendelle in eternal winter. Encountering Everest-like conditions, mystical trolls and a hilarious snowman named Olaf, Anna and Kristoff battle the elements in a race to save the kingdom. From the outside Anna\'s sister, Elsa looks poised, regal and reserved, but in reality, she lives in fear as she wrestles with a mighty secret-she was born with the power to create ice and snow. It\'s a beautiful ability, but also extremely dangerous. Haunted by the moment her magic nearly killed her younger sister Anna, Elsa has isolated herself, spending every waking minute trying to suppress her growing powers. Her mounting emotions trigger the magic, accidentally setting off an eternal winter that she can\'t stop. She fears she\'s becoming a monster and that no one, not even her sister, can help her.','English, Icelandic','USA','Won 2 Oscars. Another 69 wins & 55 nominations.','http://ia.media-imdb.com/images/M/MV5BMTQ1MjQwMTE5OF5BMl5BanBnXkFtZTgwNjk3MTcyMDE@._V1_SX300.jpg',74,7.6,378,'tt2294629','movie',0,1,1449136117,1449136117);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
