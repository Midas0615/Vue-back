/*
SQLyog Community v12.3.2 (64 bit)
MySQL - 5.6.26 : Database - vue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vue` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vue`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `Idx` int(11) NOT NULL AUTO_INCREMENT,
  `CostcenterIdx` int(11) DEFAULT '0',
  `AccountIdx` varchar(15) DEFAULT NULL,
  `AccountName` varchar(90) DEFAULT NULL,
  `AccountNameKO` varchar(90) DEFAULT NULL,
  `AccountNameES` varchar(110) DEFAULT NULL,
  `LevelNo` tinyint(4) DEFAULT '0',
  `ParentIdx` int(11) DEFAULT '0',
  `ManualSortKey` varchar(15) DEFAULT NULL,
  `Distribute` int(11) DEFAULT '0',
  `DistributeWay` int(11) DEFAULT '0',
  `Division` int(11) DEFAULT '0',
  `IsUse` bit(1) DEFAULT b'1',
  `SubIdx` int(11) DEFAULT '0',
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `accounts` */

/*Table structure for table `codes` */

DROP TABLE IF EXISTS `codes`;

CREATE TABLE `codes` (
  `Idx` int(11) NOT NULL AUTO_INCREMENT,
  `Priority` int(11) NOT NULL DEFAULT '1',
  `Classification` varchar(20) NOT NULL,
  `Contents` varchar(200) DEFAULT NULL,
  `SubCode1` varchar(50) DEFAULT NULL,
  `SubCode2` varchar(50) DEFAULT NULL,
  `SubCode3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `codes` */

/*Table structure for table `constcenter` */

DROP TABLE IF EXISTS `constcenter`;

CREATE TABLE `constcenter` (
  `CostcenterIdx` int(11) NOT NULL AUTO_INCREMENT,
  `CostcenterName` varchar(30) NOT NULL,
  `IsUse` bit(1) DEFAULT b'1',
  PRIMARY KEY (`CostcenterIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `constcenter` */

/*Table structure for table `custacct.sql` */

DROP TABLE IF EXISTS `custacct.sql`;

CREATE TABLE `custacct.sql` (
  `Idx` int(11) NOT NULL AUTO_INCREMENT,
  `CustIdx` int(11) DEFAULT '0',
  `AccIdx` int(11) DEFAULT '0',
  `IsUse` bit(1) DEFAULT b'1',
  `Distribute` int(11) DEFAULT '0',
  `DistributeWay` int(11) DEFAULT '0',
  `SubIdx` int(11) DEFAULT '0',
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `custacct.sql` */

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `CustIdx` int(11) NOT NULL AUTO_INCREMENT,
  `ParentIdx` int(11) DEFAULT NULL,
  `CustName` varchar(90) DEFAULT NULL,
  `CustNameEN` varchar(90) DEFAULT NULL,
  `Classification` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `IsUse` bit(1) DEFAULT b'1',
  `iDate` datetime DEFAULT NULL,
  `uDate` datetime DEFAULT NULL,
  `POTableName` varchar(20) DEFAULT NULL,
  `GroupID` smallint(6) DEFAULT NULL,
  `MaxSize` tinyint(4) DEFAULT '0',
  `Currency` int(11) DEFAULT '0',
  `BusinessNo` varchar(20) DEFAULT NULL,
  `BankAccount` varchar(20) DEFAULT NULL,
  `AttnName` varchar(30) DEFAULT NULL,
  `Handler` int(11) DEFAULT '0',
  `Handler2` int(11) DEFAULT '0',
  `Handler3` int(11) DEFAULT '0',
  `Cad1` int(11) DEFAULT '0',
  `Cad2` int(11) DEFAULT '0',
  `Cad3` int(11) DEFAULT '0',
  `DocumentType` int(11) DEFAULT '0',
  `PurchaseType` int(11) DEFAULT '0',
  `Terms` smallint(6) DEFAULT '0',
  `CheckName` varchar(90) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Faxno` varchar(20) DEFAULT NULL,
  `CostRatesAdmin` decimal(10,0) DEFAULT '0',
  `Units` int(11) DEFAULT '0',
  `ProveedorType` int(11) DEFAULT '0',
  `Email` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`CustIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `DeptIdx` int(11) NOT NULL,
  `CostCenterIdx` int(11) NOT NULL,
  `DeptName` varchar(30) DEFAULT NULL,
  `IsUse` bit(1) DEFAULT b'1',
  `ReportNo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

/*Table structure for table `iorderactual` */

DROP TABLE IF EXISTS `iorderactual`;

CREATE TABLE `iorderactual` (
  `Idx` int(11) NOT NULL AUTO_INCREMENT,
  `DeptIdx` int(11) DEFAULT NULL,
  `Fileno` varchar(11) DEFAULT NULL,
  `Indate` datetime DEFAULT NULL,
  `Buyer` int(11) DEFAULT NULL,
  `Brand` varchar(25) DEFAULT NULL,
  `Pono` varchar(50) DEFAULT NULL,
  `Styleno` varchar(100) DEFAULT NULL,
  `Season` varchar(50) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `DeliveryDate` datetime DEFAULT NULL,
  `IndcDate` datetime DEFAULT NULL,
  `IsPrinting` int(11) DEFAULT NULL,
  `EmbelishId1` int(11) DEFAULT NULL,
  `EmbelishId2` int(11) DEFAULT NULL,
  `SizeGroupIdx` int(11) DEFAULT NULL,
  `OrderQty` int(11) DEFAULT NULL,
  `OrderPrice` float DEFAULT NULL,
  `OrderAmount` float DEFAULT NULL,
  `ShipTerm` int(11) DEFAULT NULL,
  `VsslAir` int(11) DEFAULT NULL,
  `Destination` int(11) DEFAULT NULL,
  `ShipCompleted` int(11) DEFAULT NULL,
  `BodyFabric` varchar(200) DEFAULT NULL,
  `Handler` int(11) DEFAULT NULL,
  `ModifiedUser` int(11) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT '0',
  `Remark` varchar(50) DEFAULT NULL,
  `Category` int(11) DEFAULT NULL,
  `TBD` tinyint(4) DEFAULT '0',
  `Concept` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iorderactual` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UserIdx` int(11) NOT NULL AUTO_INCREMENT,
  `CostcenterIdx` int(11) NOT NULL,
  `DeptIdx` int(11) DEFAULT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserId` varchar(30) NOT NULL,
  `Passwd` varchar(50) DEFAULT NULL,
  `PasswdInit` smallint(6) DEFAULT NULL,
  `UserImage` binary(1) DEFAULT NULL,
  `SignImage` binary(1) DEFAULT NULL,
  `MacAddr` varchar(20) DEFAULT NULL,
  `AuthCode` varchar(20) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsUse` bit(1) NOT NULL,
  `Connected` bit(1) NOT NULL DEFAULT b'0',
  `GroupIdx` tinyint(4) NOT NULL DEFAULT '0',
  `IsLeader` bit(1) NOT NULL DEFAULT b'0',
  `Position` int(11) DEFAULT '0',
  `ExceptionGroup` int(11) DEFAULT '0',
  `Nationality` int(11) DEFAULT '0',
  `Bank` int(11) DEFAULT '0',
  `BankAccount` varchar(20) DEFAULT NULL,
  `CheckName` varchar(50) DEFAULT NULL,
  `Point` int(11) DEFAULT '0',
  `PointYR` int(11) DEFAULT '0',
  PRIMARY KEY (`UserIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
