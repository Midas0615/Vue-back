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
  `Idx` int(11) NOT NULL,
  `CostcenterIdx` int(11) DEFAULT '0',
  `AccountIdx` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `AccountName` varchar(120) DEFAULT NULL,
  `AccountNameKO` varchar(120) DEFAULT NULL,
  `AccountNameES` varchar(120) DEFAULT NULL,
  `LevelNo` tinyint(4) DEFAULT '0',
  `ParentIdx` int(11) DEFAULT '0',
  `ManualSortKey` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `Distribute` int(11) DEFAULT '0',
  `DistributeWay` int(11) DEFAULT '0',
  `Division` int(11) DEFAULT '0',
  `IsUse` tinyint(3) DEFAULT '1',
  `SubIdx` int(11) DEFAULT '0',
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `accounts` */

insert  into `accounts`(`Idx`,`CostcenterIdx`,`AccountIdx`,`AccountName`,`AccountNameKO`,`AccountNameES`,`LevelNo`,`ParentIdx`,`ManualSortKey`,`Distribute`,`DistributeWay`,`Division`,`IsUse`,`SubIdx`) values 
(2051,1,'1','Activo','Activo','Activo',5,0,'',0,0,0,1,0),
(2052,1,'111','Corriente','Corriente','Corriente',3,0,'',0,0,0,1,0),
(2053,1,'11100','Caja','Caja','Caja',1,0,'',0,0,0,1,0),
(2054,1,'11100001','Caja General','Caja General','Caja General',0,0,'',0,0,0,1,0),
(2055,1,'11100002','Caja Chica Oficina','Caja Chica Oficina','Caja Chica Oficina',0,0,'',0,0,0,1,0),
(2056,1,'11100003','Caja Chica Planta','Caja Chica Planta','Caja Chica Planta',0,0,'',0,0,0,1,0),
(2057,1,'11200','Bancos','Bancos','Bancos',1,0,'',0,0,0,1,0),
(2058,1,'11200001','BI Monetaria Quetzales: 049-009989-2 (Oficina Central) / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q1)','BI Monetaria Quetzales: 049-009989-2 (Oficina Central) / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q1)','BI Monetaria Quetzales: 049-009989-2 (Oficina Central) / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q1)',0,0,'',0,0,0,1,0),
(2059,1,'11200002','BI Monetaria Dolares: 049-010197-9 / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($1)','BI Monetaria Dolares: 049-010197-9 / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($1)','BI Monetaria Dolares: 049-010197-9 / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($1)',0,0,'',0,0,0,1,0),
(2060,1,'11200003','Westrust Bank / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (WB)','Westrust Bank / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (WB)','Westrust Bank / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (WB)',0,0,'',0,0,0,1,0),
(2061,1,'11200004','Bank Of Hope Monetaria Dolares: 64-0011007-5   / 1655 W. Redondo Beach Blvd., #300, Gardena, CA 90247 (BOH)','Bank Of Hope Monetaria Dolares: 64-0011007-5   / 1655 W. Redondo Beach Blvd., #300, Gardena, CA 90247 (BOH)','Bank Of Hope Monetaria Dolares: 64-0011007-5   / 1655 W. Redondo Beach Blvd., #300, Gardena, CA 90247 (BOH)',0,0,'',0,0,0,1,0),
(2062,1,'11200005','Hanmi Bank Monetaria Dolares: 4378 / 3660 Wilshire Blvd. Ste PH-A Los Angeles, CA 90010 (HB)','Hanmi Bank Monetaria Dolares: 4378 / 3660 Wilshire Blvd. Ste PH-A Los Angeles, CA 90010 (HB)','Hanmi Bank Monetaria Dolares: 4378 / 3660 Wilshire Blvd. Ste PH-A Los Angeles, CA 90010 (HB)',0,0,'',0,0,0,1,0),
(2063,1,'11200006','G&T.Q.64-0010212-9 / 6ta. Avenida 9-08 zona 9, Guatemala, Guatemala. (PLANTA) ','G&T.Q.64-0010212-9 / 6ta. Avenida 9-08 zona 9, Guatemala, Guatemala. (PLANTA) ','G&T.Q.64-0010212-9 / 6ta. Avenida 9-08 zona 9, Guatemala, Guatemala. (PLANTA) ',0,0,'',0,0,0,1,0),
(2064,1,'11200007','Transitoria','Transitoria','Transitoria',0,0,'',0,0,0,1,0),
(2065,1,'11200008','BI Monetaria Quetzales:049-010966-7 (Oficina Central) /7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q2)','BI Monetaria Quetzales:049-010966-7 (Oficina Central) /7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q2)','BI Monetaria Quetzales:049-010966-7 (Oficina Central) /7a. Avenida 5-10 zona 4, Guatemala, Guatemala. (Q2)',0,0,'',0,0,0,1,0),
(2066,1,'11200009','BI Monetaria Dolares: 049-010967-5 (Oficina Central) / / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($2)','BI Monetaria Dolares: 049-010967-5 (Oficina Central) / / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($2)','BI Monetaria Dolares: 049-010967-5 (Oficina Central) / / 7a. Avenida 5-10 zona 4, Guatemala, Guatemala. ($2)',0,0,'',0,0,0,1,0),
(2067,1,'11200010','Depositos en Transito','Depositos en Transito','Depositos en Transito',0,0,'',0,0,0,1,0),
(2068,1,'11300','Cuentas por Cobrar','Cuentas por Cobrar','Cuentas por Cobrar',1,0,'',0,0,0,1,0),
(2069,1,'11300001','Clientes','Clientes','Clientes',0,0,'',0,0,0,1,0),
(2070,1,'11300002','Documentos por Cobrar','Documentos por Cobrar','Documentos por Cobrar',0,0,'',0,0,0,1,0),
(2071,1,'11300003','Clientes del Exterior','Clientes del Exterior','Clientes del Exterior',0,0,'',0,0,0,1,0),
(2072,1,'11300301','AL BARRAK LOGISTIC C/O VIBES INTERNATIONAL','AL BARRAK LOGISTIC C/O VIBES INTERNATIONAL','AL BARRAK LOGISTIC C/O VIBES INTERNATIONAL',0,0,'',0,0,0,1,0),
(2073,1,'11300302','ALL IN DEVELOPMENT CO LTD USA','ALL IN DEVELOPMENT CO LTD USA','ALL IN DEVELOPMENT CO LTD USA',0,0,'',0,0,0,1,0),
(2074,1,'11300304','COMERCIALIZADORA MEXICO AMERICANA S. DE R.L. DE C.V.','COMERCIALIZADORA MEXICO AMERICANA S. DE R.L. DE C.V.','COMERCIALIZADORA MEXICO AMERICANA S. DE R.L. DE C.V.',0,0,'',0,0,0,1,0),
(2075,1,'11300306','DESTINATION MATERNITY CORPORATION','DESTINATION MATERNITY CORPORATION','DESTINATION MATERNITY CORPORATION',0,0,'',0,0,0,1,0),
(2076,1,'11300307','EVY DC-MIDAS EXPRESS INC','EVY DC-MIDAS EXPRESS INC','EVY DC-MIDAS EXPRESS INC',0,0,'',0,0,0,1,0),
(2077,1,'11300308','EXPRESS LLC','EXPRESS LLC','EXPRESS LLC',0,0,'',0,0,0,1,0),
(2078,1,'11300309','I-MAR LLC','I-MAR LLC','I-MAR LLC',0,0,'',0,0,0,1,0),
(2079,1,'11300313','JC PENNEY PURCHASING CORPORATION','JC PENNEY PURCHASING CORPORATION','JC PENNEY PURCHASING CORPORATION',0,0,'',0,0,0,1,0),
(2080,1,'11300314','JERRY LEIGH ENTERTAIMENT APPAREL','JERRY LEIGH ENTERTAIMENT APPAREL','JERRY LEIGH ENTERTAIMENT APPAREL',0,0,'',0,0,0,1,0),
(2081,1,'11300315','KOHL\'S DEPARTMENT STORES, INC.','KOHL\'S DEPARTMENT STORES, INC.','KOHL\'S DEPARTMENT STORES, INC.',0,0,'',0,0,0,1,0),
(2082,1,'11300316','PREMIUM TEXTILE SUPPLIES, S.A.','PREMIUM TEXTILE SUPPLIES, S.A.','PREMIUM TEXTILE SUPPLIES, S.A.',0,0,'',0,0,0,1,0),
(2083,1,'11300317','SEARS, ROEBUCK AND CO','SEARS, ROEBUCK AND CO','SEARS, ROEBUCK AND CO',0,0,'',0,0,0,1,0),
(2084,1,'11300320','BELLA','BELLA','BELLA',0,0,'',0,0,0,1,0),
(2085,1,'11300321','CHICO\'S','CHICO\'S','CHICO\'S',0,0,'',0,0,0,1,0),
(2086,1,'11300325','LANE BRYANT','LANE BRYANT','LANE BRYANT',0,0,'',0,0,0,1,0),
(2087,1,'11300326','T.S.F.','T.S.F.','T.S.F.',0,0,'',0,0,0,1,0),
(2088,1,'11300329','TONG SIANG CO., LTD','TONG SIANG CO., LTD','TONG SIANG CO., LTD',0,0,'',0,0,0,1,0),
(2089,1,'11300330','CTI, S.A. DE C.V.','CTI, S.A. DE C.V.','CTI, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2090,1,'11300331','LUCKY BRAND','LUCKY BRAND','LUCKY BRAND',0,0,'',0,0,0,1,0),
(2091,1,'11300332','ONE JEANSWEAR','ONE JEANSWEAR','ONE JEANSWEAR',0,0,'',0,0,0,1,0),
(2092,1,'11300333','CATHERINE\'S','CATHERINE\'S','CATHERINE\'S',0,0,'',0,0,0,1,0),
(2093,1,'11300334','FABULOUS STITCHES','FABULOUS STITCHES','FABULOUS STITCHES',0,0,'',0,0,0,1,0),
(2094,1,'11300335','JUSTICE','JUSTICE','JUSTICE',0,0,'',0,0,0,1,0),
(2095,1,'11300336','ABERCROMBIE','ABERCROMBIE','ABERCROMBIE',0,0,'',0,0,0,1,0),
(2096,1,'11300337','ABFICO','ABFICO','ABFICO',0,0,'',0,0,0,1,0),
(2097,1,'11300338','AFH LOGISTICS','AFH LOGISTICS','AFH LOGISTICS',0,0,'',0,0,0,1,0),
(2098,1,'11300339','HILOS Y ALGOD?N','HILOS Y ALGOD?N','HILOS Y ALGOD?N',0,0,'',0,0,0,1,0),
(2099,1,'11300340','J. CREW','J. CREW','J. CREW',0,0,'',0,0,0,1,0),
(2100,1,'11300341','BELLA+CANVAS','BELLA+CANVAS','BELLA+CANVAS',0,0,'',0,0,0,1,0),
(2101,1,'11300004','Diferencial Cambiario Clientes del Exterior','Diferencial Cambiario Clientes del Exterior','Diferencial Cambiario Clientes del Exterior',0,0,'',0,0,0,1,0),
(2102,1,'11300005','Anticipos Cliente','Anticipos Cliente','Anticipos Cliente',0,0,'',0,0,0,1,0),
(2103,1,'11300006','Clientes Local','Clientes Local','Clientes Local',0,0,'',0,0,0,1,0),
(2104,1,'11300007','HILANDERIA TEXTIL INDUSTRIAL, S.A.','HILANDERIA TEXTIL INDUSTRIAL, S.A.','HILANDERIA TEXTIL INDUSTRIAL, S.A.',0,0,'',0,0,0,1,0),
(2105,1,'11400','Otras Cuentas por Cobrar','Otras Cuentas por Cobrar','Otras Cuentas por Cobrar',1,0,'',0,0,0,1,0),
(2106,1,'11400001','Otras Cuentas por Cobrar','Otras Cuentas por Cobrar','Otras Cuentas por Cobrar',0,0,'',0,0,0,1,0),
(2107,1,'11400002','Cuentas por Cobrar Empleados','Cuentas por Cobrar Empleados','Cuentas por Cobrar Empleados',0,0,'',0,0,0,1,0),
(2108,1,'11400003','Inversiones','Inversiones','Inversiones',0,0,'',0,0,0,1,0),
(2109,1,'11400004','Cuentas por Cobrar INT TRADING S,A','Cuentas por Cobrar INT TRADING S,A','Cuentas por Cobrar INT TRADING S,A',0,0,'',0,0,0,1,0),
(2110,1,'11400005','Cuentas Por Cobrar People & Arts','Cuentas Por Cobrar People & Arts','Cuentas Por Cobrar People & Arts',0,0,'',0,0,0,1,0),
(2111,1,'11400006','Cuentas Por Cobrar J S','Cuentas Por Cobrar J S','Cuentas Por Cobrar J S',0,0,'',0,0,0,1,0),
(2112,1,'11400007','CUENTAS POR COBRAR P&G ENTERPRISE','CUENTAS POR COBRAR P&G ENTERPRISE','CUENTAS POR COBRAR P&G ENTERPRISE',0,0,'',0,0,0,1,0),
(2113,1,'11400008','Cuentas por Cobrar INT TRADING - Servicios','Cuentas por Cobrar INT TRADING - Servicios','Cuentas por Cobrar INT TRADING - Servicios',0,0,'',0,0,0,1,0),
(2114,1,'11400009','Cuentas por Cobrar INT TRADING S,A - Aguinaldo y Bono','Cuentas por Cobrar INT TRADING S,A - Aguinaldo y Bono','Cuentas por Cobrar INT TRADING S,A - Aguinaldo y Bono',0,0,'',0,0,0,1,0),
(2115,1,'11400010','Cuenta por Cobrar INT TRADING - Facturas Pagadas a favor de Trading','Cuenta por Cobrar INT TRADING - Facturas Pagadas a favor de Trading','Cuenta por Cobrar INT TRADING - Facturas Pagadas a favor de Trading',0,0,'',0,0,0,1,0),
(2116,1,'11400011','Cuentas por Cobrar INT TRADING - Traslado Fondos','Cuentas por Cobrar INT TRADING - Traslado Fondos','Cuentas por Cobrar INT TRADING - Traslado Fondos',0,0,'',0,0,0,1,0),
(2117,1,'11400012','Cuentas por Cobrar INT TRADING - Servicio Outsourcing','Cuentas por Cobrar INT TRADING - Servicio Outsourcing','Cuentas por Cobrar INT TRADING - Servicio Outsourcing',0,0,'',0,0,0,1,0),
(2118,1,'11400013','Cuentas por Cobrar RECEPSA - Facturas','Cuentas por Cobrar RECEPSA - Facturas','Cuentas por Cobrar RECEPSA - Facturas',0,0,'',0,0,0,1,0),
(2119,1,'11400014','Cuentas por Cobrar RECEPSA - M?quina','Cuentas por Cobrar RECEPSA - M?quina','Cuentas por Cobrar RECEPSA - M?quina',0,0,'',0,0,0,1,0),
(2120,1,'11400015','Cuentas por Cobrar INT TRADING S,A - Indemnizaci?n','Cuentas por Cobrar INT TRADING S,A - Indemnizaci?n','Cuentas por Cobrar INT TRADING S,A - Indemnizaci?n',0,0,'',0,0,0,1,0),
(2121,1,'11400016','Cuentas por Cobrar RECEPSA - M?quina 2','Cuentas por Cobrar RECEPSA - M?quina 2','Cuentas por Cobrar RECEPSA - M?quina 2',0,0,'',0,0,0,1,0),
(2122,1,'11400017','Cuentas por Cobrar RECEPSA - Facturacion Intereses','Cuentas por Cobrar RECEPSA - Facturacion Intereses','Cuentas por Cobrar RECEPSA - Facturacion Intereses',0,0,'',0,0,0,1,0),
(2123,1,'11500','Impuestos por Cobrar','Impuestos por Cobrar','Impuestos por Cobrar',1,0,'',0,0,0,1,0),
(2124,1,'11500001','I. V. A. Credito Fiscal','I. V. A. Credito Fiscal','I. V. A. Credito Fiscal',0,0,'',0,0,0,1,0),
(2125,1,'11500002','I. S. R. por Cobrar Asalariados','I. S. R. por Cobrar Asalariados','I. S. R. por Cobrar Asalariados',0,0,'',0,0,0,1,0),
(2126,1,'11500003','I. S. O. por Cobrar','I. S. O. por Cobrar','I. S. O. por Cobrar',0,0,'',0,0,0,1,0),
(2127,1,'11500004','I. S. R. por Cobrar','I. S. R. por Cobrar','I. S. R. por Cobrar',0,0,'',0,0,0,1,0),
(2128,1,'11600','Cuentas por Liquidar','Cuentas por Liquidar','Cuentas por Liquidar',1,0,'',0,0,0,1,0),
(2129,1,'11600001','Cuentas por Liquidar Materia Prima','Cuentas por Liquidar Materia Prima','Cuentas por Liquidar Materia Prima',0,0,'',0,0,0,1,0),
(2130,1,'11600002','Cuentas por Liquidar Material de Empaque','Cuentas por Liquidar Material de Empaque','Cuentas por Liquidar Material de Empaque',0,0,'',0,0,0,1,0),
(2131,1,'11600003','Cuentas por Liquidar Transporte','Cuentas por Liquidar Transporte','Cuentas por Liquidar Transporte',0,0,'',0,0,0,1,0),
(2132,1,'11600004','Cuentas por Liquidar Seguro','Cuentas por Liquidar Seguro','Cuentas por Liquidar Seguro',0,0,'',0,0,0,1,0),
(2133,1,'11600005','Gastos varios pendientes de liquidar','Gastos varios pendientes de liquidar','Gastos varios pendientes de liquidar',0,0,'',0,0,0,1,0),
(2134,1,'11600006','Cuentas por Liquidar Coexportadores','Cuentas por Liquidar Coexportadores','Cuentas por Liquidar Coexportadores',0,0,'',0,0,0,1,0),
(2135,1,'11600007','Cuentas por Liquidar Importaciones','Cuentas por Liquidar Importaciones','Cuentas por Liquidar Importaciones',0,0,'',0,0,0,1,0),
(2136,1,'11600008','Cuentas por Liquidar Gastos de Import / Export','Cuentas por Liquidar Gastos de Import / Export','Cuentas por Liquidar Gastos de Import / Export',0,0,'',0,0,0,1,0),
(2137,1,'11600009','Cuentas por Liquidar MP Roytex','Cuentas por Liquidar MP Roytex','Cuentas por Liquidar MP Roytex',0,0,'',0,0,0,1,0),
(2138,1,'11600010','Cuentas por Liquidar Expeditors','Cuentas por Liquidar Expeditors','Cuentas por Liquidar Expeditors',0,0,'',0,0,0,1,0),
(2139,1,'11600011','Cuentas por Liquidar TGF','Cuentas por Liquidar TGF','Cuentas por Liquidar TGF',0,0,'',0,0,0,1,0),
(2140,1,'11600012','Cuentas por Liquidar Clarotex','Cuentas por Liquidar Clarotex','Cuentas por Liquidar Clarotex',0,0,'',0,0,0,1,0),
(2141,1,'11600013','Cuentas por Liquidar Corporacion Acro, S.A. (1151)','Cuentas por Liquidar Corporacion Acro, S.A. (1151)','Cuentas por Liquidar Corporacion Acro, S.A. (1151)',0,0,'',0,0,0,1,0),
(2142,1,'11700','Inventarios','Inventarios','Inventarios',1,0,'',0,0,0,1,0),
(2143,1,'11700001','Inventarios de Materia Prima','Inventarios de Materia Prima','Inventarios de Materia Prima',0,0,'',0,0,0,1,0),
(2144,1,'11700002','Inventarios de Accesorios','Inventarios de Accesorios','Inventarios de Accesorios',0,0,'',0,0,0,1,0),
(2145,1,'11700003','Inventarios de Material de Empaque','Inventarios de Material de Empaque','Inventarios de Material de Empaque',0,0,'',0,0,0,1,0),
(2146,1,'11700004','Inventarios de Producto en Proceso','Inventarios de Producto en Proceso','Inventarios de Producto en Proceso',0,0,'',0,0,0,1,0),
(2147,1,'11700005','Inventarios de Producto Terminado','Inventarios de Producto Terminado','Inventarios de Producto Terminado',0,0,'',0,0,0,1,0),
(2148,1,'11700006','Inventarios de Tintas/Productos de Serigraf?a','Inventarios de Tintas/Productos de Serigraf?a','Inventarios de Tintas/Productos de Serigraf?a',0,0,'',0,0,0,1,0),
(2149,1,'121','No Corriente','No Corriente','No Corriente',3,0,'',0,0,0,1,0),
(2150,1,'12100','Propiedad Planta y Equipo','Propiedad Planta y Equipo','Propiedad Planta y Equipo',1,0,'',0,0,0,1,0),
(2151,1,'12100001','Maquinaria y Equipo','Maquinaria y Equipo','Maquinaria y Equipo',0,0,'',0,0,0,1,0),
(2152,1,'12100002','Depreciaci?n Acumulada Maquinaria y Equipo','Depreciaci?n Acumulada Maquinaria y Equipo','Depreciaci?n Acumulada Maquinaria y Equipo',0,0,'',0,0,0,1,0),
(2153,1,'12100003','Mobiliario y Equipo','Mobiliario y Equipo','Mobiliario y Equipo',0,0,'',0,0,0,1,0),
(2154,1,'12100004','Depreciaci?n Acumulada Mobiliario y Equipo','Depreciaci?n Acumulada Mobiliario y Equipo','Depreciaci?n Acumulada Mobiliario y Equipo',0,0,'',0,0,0,1,0),
(2155,1,'12100005','Equipo de Computo','Equipo de Computo','Equipo de Computo',0,0,'',0,0,0,1,0),
(2156,1,'12100006','Depreciaci?n Acumulada Equipo de Computo','Depreciaci?n Acumulada Equipo de Computo','Depreciaci?n Acumulada Equipo de Computo',0,0,'',0,0,0,1,0),
(2157,1,'12100007','Vehiculos','Vehiculos','Vehiculos',0,0,'',0,0,0,1,0),
(2158,1,'12100008','Depreciaci?n Acumulada Vehiculos','Depreciaci?n Acumulada Vehiculos','Depreciaci?n Acumulada Vehiculos',0,0,'',0,0,0,1,0),
(2159,1,'12100009','Herramientas','Herramientas','Herramientas',0,0,'',0,0,0,1,0),
(2160,1,'12100010','Depreciaci?n Acumulada Herramientas','Depreciaci?n Acumulada Herramientas','Depreciaci?n Acumulada Herramientas',0,0,'',0,0,0,1,0),
(2161,1,'12100011','Instalaciones','Instalaciones','Instalaciones',0,0,'',0,0,0,1,0),
(2162,1,'12100012','Depreciaci?n Acumulada Instalaciones','Depreciaci?n Acumulada Instalaciones','Depreciaci?n Acumulada Instalaciones',0,0,'',0,0,0,1,0),
(2163,1,'12100013','Otros Activos Depreciables','Otros Activos Depreciables','Otros Activos Depreciables',0,0,'',0,0,0,1,0),
(2164,1,'12100014','Depreciaci?n Acumulada Otros Activos Depreciables','Depreciaci?n Acumulada Otros Activos Depreciables','Depreciaci?n Acumulada Otros Activos Depreciables',0,0,'',0,0,0,1,0),
(2165,1,'12100015','Sistemas de programas','Sistemas de programas','Sistemas de programas',0,0,'',0,0,0,1,0),
(2166,1,'12100016','Depreciacion Acumulada sistema de Programas','Depreciacion Acumulada sistema de Programas','Depreciacion Acumulada sistema de Programas',0,0,'',0,0,0,1,0),
(2167,1,'12100017','Mejoras en Propiedades Arrendadas','Mejoras en Propiedades Arrendadas','Mejoras en Propiedades Arrendadas',0,0,'',0,0,0,1,0),
(2168,1,'12100018','Depreciaci?n Acum. Mejoras en Propiedades Arrendadas','Depreciaci?n Acum. Mejoras en Propiedades Arrendadas','Depreciaci?n Acum. Mejoras en Propiedades Arrendadas',0,0,'',0,0,0,1,0),
(2169,1,'12200','Otros Activos','Otros Activos','Otros Activos',1,0,'',0,0,0,1,0),
(2170,1,'12200001','Gastos de Organizaci?n','Gastos de Organizaci?n','Gastos de Organizaci?n',0,0,'',0,0,0,1,0),
(2171,1,'12200002','Amortizaci?n Acumulada Gastos de Organizaci?n','Amortizaci?n Acumulada Gastos de Organizaci?n','Amortizaci?n Acumulada Gastos de Organizaci?n',0,0,'',0,0,0,1,0),
(2172,1,'12200003','Licencias y Programas','Licencias y Programas','Licencias y Programas',0,0,'',0,0,0,1,0),
(2173,1,'12200004','Amortizacion Acumulada Licencias y Programas','Amortizacion Acumulada Licencias y Programas','Amortizacion Acumulada Licencias y Programas',0,0,'',0,0,0,1,0),
(2174,1,'12300','Garantias','Garantias','Garantias',1,0,'',0,0,0,1,0),
(2175,1,'12300001','Deposito en garantia','Deposito en garantia','Deposito en garantia',0,0,'',0,0,0,1,0),
(2176,1,'2','Pasivo','Pasivo','Pasivo',5,0,'',0,0,0,1,0),
(2177,1,'21','Corriente','Corriente','Corriente',4,0,'',0,0,0,1,0),
(2178,1,'211','PROVEEDORES','PROVEEDORES','PROVEEDORES',3,0,'',0,0,0,1,0),
(2179,1,'21110000','PROVEEDORES LOCALES','PROVEEDORES LOCALES','PROVEEDORES LOCALES',0,0,'',0,0,0,1,0),
(2180,1,'21110001','ACABADOS Y SERIGRAFIA, S.A.','ACABADOS Y SERIGRAFIA, S.A.','ACABADOS Y SERIGRAFIA, S.A.',0,0,'',0,0,0,1,0),
(2181,1,'21110002','AT IMPRESOS, S.A.','AT IMPRESOS, S.A.','AT IMPRESOS, S.A.',0,0,'',0,0,0,1,0),
(2182,1,'21110003','BORDIK S.A. ETIQUETAS IMPRESAS','BORDIK S.A. ETIQUETAS IMPRESAS','BORDIK S.A. ETIQUETAS IMPRESAS',0,0,'',0,0,0,1,0),
(2183,1,'21110004','BUREAU VERITAS VERITAS CPS GUATEMALA','BUREAU VERITAS VERITAS CPS GUATEMALA','BUREAU VERITAS VERITAS CPS GUATEMALA',0,0,'',0,0,0,1,0),
(2184,1,'21110005','CAJAS INTERNATIONAL GUATEMALA, S.A.','CAJAS INTERNATIONAL GUATEMALA, S.A.','CAJAS INTERNATIONAL GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2185,1,'21110006','CALL PRINT, S.A.','CALL PRINT, S.A.','CALL PRINT, S.A.',0,0,'',0,0,0,1,0),
(2186,1,'21110007','CARLYLE, S.A.','CARLYLE, S.A.','CARLYLE, S.A.',0,0,'',0,0,0,1,0),
(2187,1,'21110008','CASATEX, S.A.','CASATEX, S.A.','CASATEX, S.A.',0,0,'',0,0,0,1,0),
(2188,1,'21110009','CELIO, S.A.','CELIO, S.A.','CELIO, S.A.',0,0,'',0,0,0,1,0),
(2189,1,'21110010','CLAROTEX GUATEMALA, S.A.','CLAROTEX GUATEMALA, S.A.','CLAROTEX GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2190,1,'21110011','CLAUDIA MONICA VALDEZ MORALES (COIMPRO)','CLAUDIA MONICA VALDEZ MORALES (COIMPRO)','CLAUDIA MONICA VALDEZ MORALES (COIMPRO)',0,0,'',0,0,0,1,0),
(2191,1,'21110012','COLOR ART CORGUA, S.A.','COLOR ART CORGUA, S.A.','COLOR ART CORGUA, S.A.',0,0,'',0,0,0,1,0),
(2192,1,'21110013','COMPLEMENTOS PARA LA INDUSTRIA TEXTIL. S.A.','COMPLEMENTOS PARA LA INDUSTRIA TEXTIL. S.A.','COMPLEMENTOS PARA LA INDUSTRIA TEXTIL. S.A.',0,0,'',0,0,0,1,0),
(2193,1,'21110014','CORPORACION ACRO, S.A','CORPORACION ACRO, S.A','CORPORACION ACRO, S.A',0,0,'',0,0,0,1,0),
(2194,1,'21110015','DK PRINTING, S.A.','DK PRINTING, S.A.','DK PRINTING, S.A.',0,0,'',0,0,0,1,0),
(2195,1,'21110016','DTM TEXTILES, S.A.','DTM TEXTILES, S.A.','DTM TEXTILES, S.A.',0,0,'',0,0,0,1,0),
(2196,1,'21110017','DTSOLUTIONS, S.A.','DTSOLUTIONS, S.A.','DTSOLUTIONS, S.A.',0,0,'',0,0,0,1,0),
(2197,1,'21110018','DUO PRODUCTOS Y SERVICIOS S.A.','DUO PRODUCTOS Y SERVICIOS S.A.','DUO PRODUCTOS Y SERVICIOS S.A.',0,0,'',0,0,0,1,0),
(2198,1,'21110019','EBENEZER INTERNACIONAL, S.A.','EBENEZER INTERNACIONAL, S.A.','EBENEZER INTERNACIONAL, S.A.',0,0,'',0,0,0,1,0),
(2199,1,'21110020','ELASTICOS UNIVERSALES, S.A.','ELASTICOS UNIVERSALES, S.A.','ELASTICOS UNIVERSALES, S.A.',0,0,'',0,0,0,1,0),
(2200,1,'21110021','ELECTRONIC SHOP, S.A.','ELECTRONIC SHOP, S.A.','ELECTRONIC SHOP, S.A.',0,0,'',0,0,0,1,0),
(2201,1,'21110022','EMPAQUES Y COMPLEMENTOS','EMPAQUES Y COMPLEMENTOS','EMPAQUES Y COMPLEMENTOS',0,0,'',0,0,0,1,0),
(2202,1,'21110023','ETIQUETAS Y BORDADOS DE GUATEMALA, S.A.','ETIQUETAS Y BORDADOS DE GUATEMALA, S.A.','ETIQUETAS Y BORDADOS DE GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2203,1,'21110024','FABRICA DE BOTONES DEL VALLE POLYFORMAS, S.A.','FABRICA DE BOTONES DEL VALLE POLYFORMAS, S.A.','FABRICA DE BOTONES DEL VALLE POLYFORMAS, S.A.',0,0,'',0,0,0,1,0),
(2204,1,'21110025','GLOBAL SCREEN PRINTING, S.A.','GLOBAL SCREEN PRINTING, S.A.','GLOBAL SCREEN PRINTING, S.A.',0,0,'',0,0,0,1,0),
(2205,1,'21110026','GRAND APPAREL, S.A.','GRAND APPAREL, S.A.','GRAND APPAREL, S.A.',0,0,'',0,0,0,1,0),
(2206,1,'21110027','GRUPO S.J. S.A.','GRUPO S.J. S.A.','GRUPO S.J. S.A.',0,0,'',0,0,0,1,0),
(2207,1,'21110028','GTC TRIM,S.A.','GTC TRIM,S.A.','GTC TRIM,S.A.',0,0,'',0,0,0,1,0),
(2208,1,'21110029','HILO TRIMS S.A.','HILO TRIMS S.A.','HILO TRIMS S.A.',0,0,'',0,0,0,1,0),
(2209,1,'21110030','IMPRESIONES INDUSTRIALES COMETT, S.A.','IMPRESIONES INDUSTRIALES COMETT, S.A.','IMPRESIONES INDUSTRIALES COMETT, S.A.',0,0,'',0,0,0,1,0),
(2210,1,'21110031','INDUSTRIAL HANA, S.A.','INDUSTRIAL HANA, S.A.','INDUSTRIAL HANA, S.A.',0,0,'',0,0,0,1,0),
(2211,1,'21110032','INTERTEK DE GUATEMALA, S.A','INTERTEK DE GUATEMALA, S.A','INTERTEK DE GUATEMALA, S.A',0,0,'',0,0,0,1,0),
(2212,1,'21110033','J&J GLOBAL, S.A.','J&J GLOBAL, S.A.','J&J GLOBAL, S.A.',0,0,'',0,0,0,1,0),
(2213,1,'21110034','JCA GUATEMALA S.A.','JCA GUATEMALA S.A.','JCA GUATEMALA S.A.',0,0,'',0,0,0,1,0),
(2214,1,'21110035','JINA TEXTIL, S.A.','JINA TEXTIL, S.A.','JINA TEXTIL, S.A.',0,0,'',0,0,0,1,0),
(2215,1,'21110036','JNB TRADING, S.A.','JNB TRADING, S.A.','JNB TRADING, S.A.',0,0,'',0,0,0,1,0),
(2216,1,'21110037','JS INTERNATIONAL, S.A.','JS INTERNATIONAL, S.A.','JS INTERNATIONAL, S.A.',0,0,'',0,0,0,1,0),
(2217,1,'21110038','JS PRINT GUATEMALA, S.A.','JS PRINT GUATEMALA, S.A.','JS PRINT GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2218,1,'21110039','JS TEXTILE, S.A.','JS TEXTILE, S.A.','JS TEXTILE, S.A.',0,0,'',0,0,0,1,0),
(2219,1,'21110040','K.V. TEXTILES, S.A.','K.V. TEXTILES, S.A.','K.V. TEXTILES, S.A.',0,0,'',0,0,0,1,0),
(2220,1,'21110041','KL TEXTIL, S.A.','KL TEXTIL, S.A.','KL TEXTIL, S.A.',0,0,'',0,0,0,1,0),
(2221,1,'21110042','KNITOPIA, S.A.','KNITOPIA, S.A.','KNITOPIA, S.A.',0,0,'',0,0,0,1,0),
(2222,1,'21110043','LACETEX S.A','LACETEX S.A','LACETEX S.A',0,0,'',0,0,0,1,0),
(2223,1,'21110044','LEE CHO TEXTILE, S.A.','LEE CHO TEXTILE, S.A.','LEE CHO TEXTILE, S.A.',0,0,'',0,0,0,1,0),
(2224,1,'21110045','MASPARACON, S.A.','MASPARACON, S.A.','MASPARACON, S.A.',0,0,'',0,0,0,1,0),
(2225,1,'21110046','MEGACOLOR','MEGACOLOR','MEGACOLOR',0,0,'',0,0,0,1,0),
(2226,1,'21110047','MODAS MARU, S.A.','MODAS MARU, S.A.','MODAS MARU, S.A.',0,0,'',0,0,0,1,0),
(2227,1,'21110048','MODAS TAE HO, S.A.','MODAS TAE HO, S.A.','MODAS TAE HO, S.A.',0,0,'',0,0,0,1,0),
(2228,1,'21110049','MT TEXTIL, S.A.','MT TEXTIL, S.A.','MT TEXTIL, S.A.',0,0,'',0,0,0,1,0),
(2229,1,'21110050','NEXGEN PACKAGING LIMITADA','NEXGEN PACKAGING LIMITADA','NEXGEN PACKAGING LIMITADA',0,0,'',0,0,0,1,0),
(2230,1,'21110051','OK MODAS, S.A.','OK MODAS, S.A.','OK MODAS, S.A.',0,0,'',0,0,0,1,0),
(2231,1,'21110052','ORINSTAR GUATEMALA, S.A.','ORINSTAR GUATEMALA, S.A.','ORINSTAR GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2232,1,'21110053','P&G ENTERPRISE,S.A.','P&G ENTERPRISE,S.A.','P&G ENTERPRISE,S.A.',0,0,'',0,0,0,1,0),
(2233,1,'21110054','P&K DYEHOUSE, S.A','P&K DYEHOUSE, S.A','P&K DYEHOUSE, S.A',0,0,'',0,0,0,1,0),
(2234,1,'21110055','PANAMERICAN TEXTIL II, S.A','PANAMERICAN TEXTIL II, S.A','PANAMERICAN TEXTIL II, S.A',0,0,'',0,0,0,1,0),
(2235,1,'21110056','PEOPLE & ARTS','PEOPLE & ARTS','PEOPLE & ARTS',0,0,'',0,0,0,1,0),
(2236,1,'21110057','POLICINTAS S.A.','POLICINTAS S.A.','POLICINTAS S.A.',0,0,'',0,0,0,1,0),
(2237,1,'21110058','RECEPTOR INDUSTRIAL, S.A.','RECEPTOR INDUSTRIAL, S.A.','RECEPTOR INDUSTRIAL, S.A.',0,0,'',0,0,0,1,0),
(2238,1,'21110059','ROYTEX, S.A.','ROYTEX, S.A.','ROYTEX, S.A.',0,0,'',0,0,0,1,0),
(2239,1,'21110060','S.P. GUATEMALA, S.A.','S.P. GUATEMALA, S.A.','S.P. GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2240,1,'21110061','SAMS & RUDIA, S.A','SAMS & RUDIA, S.A','SAMS & RUDIA, S.A',0,0,'',0,0,0,1,0),
(2241,1,'21110062','SEROM TRIMS','SEROM TRIMS','SEROM TRIMS',0,0,'',0,0,0,1,0),
(2242,1,'21110063','SERVICIOS INTEGRADOS MANY','SERVICIOS INTEGRADOS MANY','SERVICIOS INTEGRADOS MANY',0,0,'',0,0,0,1,0),
(2243,1,'21110064','SGS CENTRAL AMERICA, S.A.','SGS CENTRAL AMERICA, S.A.','SGS CENTRAL AMERICA, S.A.',0,0,'',0,0,0,1,0),
(2244,1,'21110065','SHARON APPAREL, S.A.','SHARON APPAREL, S.A.','SHARON APPAREL, S.A.',0,0,'',0,0,0,1,0),
(2245,1,'21110066','SILSARANG AMERICA, S.A.','SILSARANG AMERICA, S.A.','SILSARANG AMERICA, S.A.',0,0,'',0,0,0,1,0),
(2246,1,'21110067','SMARTCO GUATEMALA, S.A.','SMARTCO GUATEMALA, S.A.','SMARTCO GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2247,1,'21110068','SOE WON INTERNATIONAL, S.A.','SOE WON INTERNATIONAL, S.A.','SOE WON INTERNATIONAL, S.A.',0,0,'',0,0,0,1,0),
(2248,1,'21110069','SONBADAK, S.A.','SONBADAK, S.A.','SONBADAK, S.A.',0,0,'',0,0,0,1,0),
(2249,1,'21110070','SUMAFLEX INTERNACIONAL, S.A.','SUMAFLEX INTERNACIONAL, S.A.','SUMAFLEX INTERNACIONAL, S.A.',0,0,'',0,0,0,1,0),
(2250,1,'21110071','SUMINISTROS ARYEL S,A','SUMINISTROS ARYEL S,A','SUMINISTROS ARYEL S,A',0,0,'',0,0,0,1,0),
(2251,1,'21110072','TAE YOUNG WORLD, S.A','TAE YOUNG WORLD, S.A','TAE YOUNG WORLD, S.A',0,0,'',0,0,0,1,0),
(2252,1,'21110073','TEJIDOS CORPORATIVOS, S.A.','TEJIDOS CORPORATIVOS, S.A.','TEJIDOS CORPORATIVOS, S.A.',0,0,'',0,0,0,1,0),
(2253,1,'21110074','TEXTILES COLOR REAL, S.A','TEXTILES COLOR REAL, S.A','TEXTILES COLOR REAL, S.A',0,0,'',0,0,0,1,0),
(2254,1,'21110075','TEXTILES DEL SUR INTERNACIONAL, S.A.','TEXTILES DEL SUR INTERNACIONAL, S.A.','TEXTILES DEL SUR INTERNACIONAL, S.A.',0,0,'',0,0,0,1,0),
(2255,1,'21110076','TEXTILES GRAN FE, S.A','TEXTILES GRAN FE, S.A','TEXTILES GRAN FE, S.A',0,0,'',0,0,0,1,0),
(2256,1,'21110077','TEXTILES YOUM KWANG, S.A','TEXTILES YOUM KWANG, S.A','TEXTILES YOUM KWANG, S.A',0,0,'',0,0,0,1,0),
(2257,1,'21110078','W.J. GUATEMALA, S.A.','W.J. GUATEMALA, S.A.','W.J. GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2258,1,'21110079','WINSTONE, S.A','WINSTONE, S.A','WINSTONE, S.A',0,0,'',0,0,0,1,0),
(2259,1,'21110080','Y&P TEXTILES, S.A','Y&P TEXTILES, S.A','Y&P TEXTILES, S.A',0,0,'',0,0,0,1,0),
(2260,1,'21110081','OSCAR EFRAIN GARCIA','OSCAR EFRAIN GARCIA','OSCAR EFRAIN GARCIA',0,0,'',0,0,0,1,0),
(2261,1,'21110082','SERVI TRANSPORTES, S.A.','SERVI TRANSPORTES, S.A.','SERVI TRANSPORTES, S.A.',0,0,'',0,0,0,1,0),
(2262,1,'21110083','SUMINISTRO DE PAPEL, S.A.','SUMINISTRO DE PAPEL, S.A.','SUMINISTRO DE PAPEL, S.A.',0,0,'',0,0,0,1,0),
(2263,1,'21110084','EDGAR LEONEL ESTRADA','EDGAR LEONEL ESTRADA','EDGAR LEONEL ESTRADA',0,0,'',0,0,0,1,0),
(2264,1,'21110085','FEDEX TRANSPORTES EXPRESOS (GUATEMALA), LIMITADA.','FEDEX TRANSPORTES EXPRESOS (GUATEMALA), LIMITADA.','FEDEX TRANSPORTES EXPRESOS (GUATEMALA), LIMITADA.',0,0,'',0,0,0,1,0),
(2265,1,'21110086','SEGUROS UNIVERSALES, S.A.','SEGUROS UNIVERSALES, S.A.','SEGUROS UNIVERSALES, S.A.',0,0,'',0,0,0,1,0),
(2266,1,'21110087','DHL, S.A.','DHL, S.A.','DHL, S.A.',0,0,'',0,0,0,1,0),
(2267,1,'21110088','SEGUROS G&T, S.A.','SEGUROS G&T, S.A.','SEGUROS G&T, S.A.',0,0,'',0,0,0,1,0),
(2268,1,'21110089','MAVILIA MANGLORI LOPEZ LOPEZ DE MIRANDA','MAVILIA MANGLORI LOPEZ LOPEZ DE MIRANDA','MAVILIA MANGLORI LOPEZ LOPEZ DE MIRANDA',0,0,'',0,0,0,1,0),
(2269,1,'21110090','MANUEL EDUARDO SANTIZO DE LA CRUZ','MANUEL EDUARDO SANTIZO DE LA CRUZ','MANUEL EDUARDO SANTIZO DE LA CRUZ',0,0,'',0,0,0,1,0),
(2270,1,'21110091','ALDO MAURICIO PARDUCCI MARCHUCA','ALDO MAURICIO PARDUCCI MARCHUCA','ALDO MAURICIO PARDUCCI MARCHUCA',0,0,'',0,0,0,1,0),
(2271,1,'21110092','SEGURIDAD 2614, S.A.','SEGURIDAD 2614, S.A.','SEGURIDAD 2614, S.A.',0,0,'',0,0,0,1,0),
(2272,1,'21110093','MASHALA, S.A.','MASHALA, S.A.','MASHALA, S.A.',0,0,'',0,0,0,1,0),
(2273,1,'21110094','JOSE MANUEL MENDEZ VARGAS','JOSE MANUEL MENDEZ VARGAS','JOSE MANUEL MENDEZ VARGAS',0,0,'',0,0,0,1,0),
(2274,1,'21110095','EXPEDITORS GUATEMALA, S.A.','EXPEDITORS GUATEMALA, S.A.','EXPEDITORS GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2275,1,'21110096','PROTECCION MAXIMA, S.A.','PROTECCION MAXIMA, S.A.','PROTECCION MAXIMA, S.A.',0,0,'',0,0,0,1,0),
(2276,1,'21110097','APL, LOGISTICS DE GUATEMALA, S.A.','APL, LOGISTICS DE GUATEMALA, S.A.','APL, LOGISTICS DE GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2277,1,'21110098','DISDEL, S.A.','DISDEL, S.A.','DISDEL, S.A.',0,0,'',0,0,0,1,0),
(2278,1,'21110099','CARTONES DE VILLA NUEVA, S.A.','CARTONES DE VILLA NUEVA, S.A.','CARTONES DE VILLA NUEVA, S.A.',0,0,'',0,0,0,1,0),
(2279,1,'21110100','ALMACOSA, S.A.','ALMACOSA, S.A.','ALMACOSA, S.A.',0,0,'',0,0,0,1,0),
(2280,1,'21110101','BEK, S.A.','BEK, S.A.','BEK, S.A.',0,0,'',0,0,0,1,0),
(2281,1,'21110102','CA LOGISTIC\'S, S.A.','CA LOGISTIC\'S, S.A.','CA LOGISTIC\'S, S.A.',0,0,'',0,0,0,1,0),
(2282,1,'21110103','CESAR FERNANDEZ RENTERIA COPROPIEDAD','CESAR FERNANDEZ RENTERIA COPROPIEDAD','CESAR FERNANDEZ RENTERIA COPROPIEDAD',0,0,'',0,0,0,1,0),
(2283,1,'21110104','CLAUDIA LORENA CARRANZA ROQUE','CLAUDIA LORENA CARRANZA ROQUE','CLAUDIA LORENA CARRANZA ROQUE',0,0,'',0,0,0,1,0),
(2284,1,'21110105','CORPORACION ALDANA, S.A.','CORPORACION ALDANA, S.A.','CORPORACION ALDANA, S.A.',0,0,'',0,0,0,1,0),
(2285,1,'21110106','DAMARIS SUSANA GONZALEZ PEREZ','DAMARIS SUSANA GONZALEZ PEREZ','DAMARIS SUSANA GONZALEZ PEREZ',0,0,'',0,0,0,1,0),
(2286,1,'21110107','HYUNJIN PARK (INK PAIS)','HYUNJIN PARK (INK PAIS)','HYUNJIN PARK (INK PAIS)',0,0,'',0,0,0,1,0),
(2287,1,'21110108','IMPRESOS COMTEXSA SOCIEDAD ANONIMA','IMPRESOS COMTEXSA SOCIEDAD ANONIMA','IMPRESOS COMTEXSA SOCIEDAD ANONIMA',0,0,'',0,0,0,1,0),
(2288,1,'21110109','MARIO ALFONSO VALDEZ MELENDEZ','MARIO ALFONSO VALDEZ MELENDEZ','MARIO ALFONSO VALDEZ MELENDEZ',0,0,'',0,0,0,1,0),
(2289,1,'21110110','NELSON ESAU BARAHONA REYES','NELSON ESAU BARAHONA REYES','NELSON ESAU BARAHONA REYES',0,0,'',0,0,0,1,0),
(2290,1,'21110111','NORA ANGELICA AGUILAR MONTENEGRO','NORA ANGELICA AGUILAR MONTENEGRO','NORA ANGELICA AGUILAR MONTENEGRO',0,0,'',0,0,0,1,0),
(2291,1,'21110112','SOVEREIGN LOGISTICS, S.A.','SOVEREIGN LOGISTICS, S.A.','SOVEREIGN LOGISTICS, S.A.',0,0,'',0,0,0,1,0),
(2292,1,'21110113','UPS SCS GUATEMALA LIMITADA','UPS SCS GUATEMALA LIMITADA','UPS SCS GUATEMALA LIMITADA',0,0,'',0,0,0,1,0),
(2293,1,'21110114','EBENEZER FLEXIGRAFICOS, S.A.','EBENEZER FLEXIGRAFICOS, S.A.','EBENEZER FLEXIGRAFICOS, S.A.',0,0,'',0,0,0,1,0),
(2294,1,'21110115','WORLD SERIGRAFIA, S.A.','WORLD SERIGRAFIA, S.A.','WORLD SERIGRAFIA, S.A.',0,0,'',0,0,0,1,0),
(2295,1,'21110116','ECONOENERGIA, S.A.','ECONOENERGIA, S.A.','ECONOENERGIA, S.A.',0,0,'',0,0,0,1,0),
(2296,1,'21110117','SINAI REPUESTOS Y MAQUINAS, S.A.','SINAI REPUESTOS Y MAQUINAS, S.A.','SINAI REPUESTOS Y MAQUINAS, S.A.',0,0,'',0,0,0,1,0),
(2297,1,'21110118','KAESER COMPRESORES DE GUATEMALA Y CIA. LTDA.','KAESER COMPRESORES DE GUATEMALA Y CIA. LTDA.','KAESER COMPRESORES DE GUATEMALA Y CIA. LTDA.',0,0,'',0,0,0,1,0),
(2298,1,'21110119','FLOR DE MARIA PEREZ GRAMAJO','FLOR DE MARIA PEREZ GRAMAJO','FLOR DE MARIA PEREZ GRAMAJO',0,0,'',0,0,0,1,0),
(2299,1,'21110120','GENETICA FORESTAL TERRABOSQUE, S.A.','GENETICA FORESTAL TERRABOSQUE, S.A.','GENETICA FORESTAL TERRABOSQUE, S.A.',0,0,'',0,0,0,1,0),
(2300,1,'21110121','EDNA ELIZABETH CASTELLANOS MARTINEZ DE ORDO?EZ','EDNA ELIZABETH CASTELLANOS MARTINEZ DE ORDO?EZ','EDNA ELIZABETH CASTELLANOS MARTINEZ DE ORDO?EZ',0,0,'',0,0,0,1,0),
(2301,1,'21110122','CONSTRUCCIONES Y RENTAS, S.A.','CONSTRUCCIONES Y RENTAS, S.A.','CONSTRUCCIONES Y RENTAS, S.A.',0,0,'',0,0,0,1,0),
(2302,1,'21110123','UNIMARCK, S.A.','UNIMARCK, S.A.','UNIMARCK, S.A.',0,0,'',0,0,0,1,0),
(2303,1,'21110124','CUSTOMS MANAGEMENT CONSULTANTS, S.A.','CUSTOMS MANAGEMENT CONSULTANTS, S.A.','CUSTOMS MANAGEMENT CONSULTANTS, S.A.',0,0,'',0,0,0,1,0),
(2304,1,'21110125','CARGO EXPRESO, S.A.','CARGO EXPRESO, S.A.','CARGO EXPRESO, S.A.',0,0,'',0,0,0,1,0),
(2305,1,'21110126','NOBO, S.A.','NOBO, S.A.','NOBO, S.A.',0,0,'',0,0,0,1,0),
(2306,1,'21110127','J.H. TRADING, S.A.','J.H. TRADING, S.A.','J.H. TRADING, S.A.',0,0,'',0,0,0,1,0),
(2307,1,'21110128','MYEONG SUK KIM (INK PAIS)','MYEONG SUK KIM (INK PAIS)','MYEONG SUK KIM (INK PAIS)',0,0,'',0,0,0,1,0),
(2308,1,'21110129','JD INTERNATIONAL, S.A.','JD INTERNATIONAL, S.A.','JD INTERNATIONAL, S.A.',0,0,'',0,0,0,1,0),
(2309,1,'21110130','SIONPRINT, S.A.','SIONPRINT, S.A.','SIONPRINT, S.A.',0,0,'',0,0,0,1,0),
(2310,1,'21110131','ARRENDAMIENTOS ESPECIALIZADOS, S.A.','ARRENDAMIENTOS ESPECIALIZADOS, S.A.','ARRENDAMIENTOS ESPECIALIZADOS, S.A.',0,0,'',0,0,0,1,0),
(2311,1,'21110132','CONDOMINIO TIKAL FUTURA','CONDOMINIO TIKAL FUTURA','CONDOMINIO TIKAL FUTURA',0,0,'',0,0,0,1,0),
(2312,1,'21110133','NEGOCIOS INDUSTRIALES TEXTILES, S.A.','NEGOCIOS INDUSTRIALES TEXTILES, S.A.','NEGOCIOS INDUSTRIALES TEXTILES, S.A.',0,0,'',0,0,0,1,0),
(2313,1,'21110134','INDUSTRIAS G, S.A.','INDUSTRIAS G, S.A.','INDUSTRIAS G, S.A.',0,0,'',0,0,0,1,0),
(2314,1,'21110135','CARIBEX WORLDWIDE GUATEMALA, S.A.','CARIBEX WORLDWIDE GUATEMALA, S.A.','CARIBEX WORLDWIDE GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2315,1,'21110136','SOO NAM, KIM JIN (RHINESTONE)','SOO NAM, KIM JIN (RHINESTONE)','SOO NAM, KIM JIN (RHINESTONE)',0,0,'',0,0,0,1,0),
(2316,1,'21110137','MEGATECNO, S.A.','MEGATECNO, S.A.','MEGATECNO, S.A.',0,0,'',0,0,0,1,0),
(2317,1,'21110138','JORGE LUIS BUCARO CIFUENTES','JORGE LUIS BUCARO CIFUENTES','JORGE LUIS BUCARO CIFUENTES',0,0,'',0,0,0,1,0),
(2318,1,'21110139','BEST LABEL INT., S.A.','BEST LABEL INT., S.A.','BEST LABEL INT., S.A.',0,0,'',0,0,0,1,0),
(2319,1,'21110140','CARLOS F. CALDERON C. (F.Q.L.)','CARLOS F. CALDERON C. (F.Q.L.)','CARLOS F. CALDERON C. (F.Q.L.)',0,0,'',0,0,0,1,0),
(2320,1,'21110141','COMUNICACIONES CELULARES, S.A.','COMUNICACIONES CELULARES, S.A.','COMUNICACIONES CELULARES, S.A.',0,0,'',0,0,0,1,0),
(2321,1,'21110142','ENERGIA INMEDIATA, S.A.','ENERGIA INMEDIATA, S.A.','ENERGIA INMEDIATA, S.A.',0,0,'',0,0,0,1,0),
(2322,1,'21110143','WOONG JIN PRINTING, S.A.','WOONG JIN PRINTING, S.A.','WOONG JIN PRINTING, S.A.',0,0,'',0,0,0,1,0),
(2323,1,'21110144','MEGAPOLY, S.A.','MEGAPOLY, S.A.','MEGAPOLY, S.A.',0,0,'',0,0,0,1,0),
(2324,1,'21110145','TENNAT, S.A.','TENNAT, S.A.','TENNAT, S.A.',0,0,'',0,0,0,1,0),
(2325,1,'21110146','ALBERTINA HYPATIA MIROSLAVA GARCIA MORALES DE VALDEZ','ALBERTINA HYPATIA MIROSLAVA GARCIA MORALES DE VALDEZ','ALBERTINA HYPATIA MIROSLAVA GARCIA MORALES DE VALDEZ',0,0,'',0,0,0,1,0),
(2326,1,'21110147','J.W. TEXTILES, S.A.','J.W. TEXTILES, S.A.','J.W. TEXTILES, S.A.',0,0,'',0,0,0,1,0),
(2327,1,'21110148','DHL GLOBAL FORWARDING (GUATEMALA) S.A.','DHL GLOBAL FORWARDING (GUATEMALA) S.A.','DHL GLOBAL FORWARDING (GUATEMALA) S.A.',0,0,'',0,0,0,1,0),
(2328,1,'21110149','JAE SUNG INTERNACIONAL TEXTILES, S.A.','JAE SUNG INTERNACIONAL TEXTILES, S.A.','JAE SUNG INTERNACIONAL TEXTILES, S.A.',0,0,'',0,0,0,1,0),
(2329,1,'21110150','CENTEXSA, S.A.','CENTEXSA, S.A.','CENTEXSA, S.A.',0,0,'',0,0,0,1,0),
(2330,1,'21110151','TRANSPORTES INTERNACIONALES TICAL S.A.','TRANSPORTES INTERNACIONALES TICAL S.A.','TRANSPORTES INTERNACIONALES TICAL S.A.',0,0,'',0,0,0,1,0),
(2331,1,'21110152','EMPAQUES Y MAS, S.A.','EMPAQUES Y MAS, S.A.','EMPAQUES Y MAS, S.A.',0,0,'',0,0,0,1,0),
(2332,1,'21110153','WILLIAM ROBERTO NAVARRO MANCILLA','WILLIAM ROBERTO NAVARRO MANCILLA','WILLIAM ROBERTO NAVARRO MANCILLA',0,0,'',0,0,0,1,0),
(2333,1,'21110154','SEABOARD MARINE LIMITED','SEABOARD MARINE LIMITED','SEABOARD MARINE LIMITED',0,0,'',0,0,0,1,0),
(2334,1,'21110156','SERIGRAFICA INTERNACIONAL, S.A.','SERIGRAFICA INTERNACIONAL, S.A.','SERIGRAFICA INTERNACIONAL, S.A.',0,0,'',0,0,0,1,0),
(2335,1,'21110157','MONICA CECILIA AGUILAR GONZALEZ DE ARAGON (DISTRIBUIDORA A Y A)','MONICA CECILIA AGUILAR GONZALEZ DE ARAGON (DISTRIBUIDORA A Y A)','MONICA CECILIA AGUILAR GONZALEZ DE ARAGON (DISTRIBUIDORA A Y A)',0,0,'',0,0,0,1,0),
(2336,1,'21110158','NATCO GUATEMALA, S.A.','NATCO GUATEMALA, S.A.','NATCO GUATEMALA, S.A.',0,0,'',0,0,0,1,0),
(2337,1,'2112','PROVEEDORES DEL EXTERIOR','PROVEEDORES DEL EXTERIOR','PROVEEDORES DEL EXTERIOR',2,0,'',0,0,0,1,0),
(2338,1,'21120001','AVERY DENNISON RETAIL INFORMATION SERVICES EL SALVADOR S.A. DE C.V.','AVERY DENNISON RETAIL INFORMATION SERVICES EL SALVADOR S.A. DE C.V.','AVERY DENNISON RETAIL INFORMATION SERVICES EL SALVADOR S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2339,1,'21120002','AVERY DENNISON RIS HONDURAS, S. DE R.L.','AVERY DENNISON RIS HONDURAS, S. DE R.L.','AVERY DENNISON RIS HONDURAS, S. DE R.L.',0,0,'',0,0,0,1,0),
(2340,1,'21120003','BEST CAJAS, S.A.','BEST CAJAS, S.A.','BEST CAJAS, S.A.',0,0,'',0,0,0,1,0),
(2341,1,'21120004','BOBIN INTERNACIONAL, S.A.','BOBIN INTERNACIONAL, S.A.','BOBIN INTERNACIONAL, S.A.',0,0,'',0,0,0,1,0),
(2342,1,'21120005','BUHLER QUALITY YARNS CORP.','BUHLER QUALITY YARNS CORP.','BUHLER QUALITY YARNS CORP.',0,0,'',0,0,0,1,0),
(2343,1,'21120006','FREUDENBERG TEXTILE TECHNOLOGIES, S.A.','FREUDENBERG TEXTILE TECHNOLOGIES, S.A.','FREUDENBERG TEXTILE TECHNOLOGIES, S.A.',0,0,'',0,0,0,1,0),
(2344,1,'21120007','GUATEMALA THREAD COMPANY, S.A.','GUATEMALA THREAD COMPANY, S.A.','GUATEMALA THREAD COMPANY, S.A.',0,0,'',0,0,0,1,0),
(2345,1,'21120008','HANGERS UNLIMITED, INC.','HANGERS UNLIMITED, INC.','HANGERS UNLIMITED, INC.',0,0,'',0,0,0,1,0),
(2346,1,'21120009','HERMANN BUHLER AG','HERMANN BUHLER AG','HERMANN BUHLER AG',0,0,'',0,0,0,1,0),
(2347,1,'21120010','J.H. TEXTILES, INC. ','J.H. TEXTILES, INC. ','J.H. TEXTILES, INC. ',0,0,'',0,0,0,1,0),
(2348,1,'21120011','ALPINE, S.A.','ALPINE, S.A.','ALPINE, S.A.',0,0,'',0,0,0,1,0),
(2349,1,'21120012','JUAN FERNANDO MANDUJANO SAENZ','JUAN FERNANDO MANDUJANO SAENZ','JUAN FERNANDO MANDUJANO SAENZ',0,0,'',0,0,0,1,0),
(2350,1,'21120013','AVERY DENNISON PAXAR (CHINA) LIMITED','AVERY DENNISON PAXAR (CHINA) LIMITED','AVERY DENNISON PAXAR (CHINA) LIMITED',0,0,'',0,0,0,1,0),
(2351,1,'21120014','PLASTIC UNI, S.A.','PLASTIC UNI, S.A.','PLASTIC UNI, S.A.',0,0,'',0,0,0,1,0),
(2352,1,'21120015','ALVANON HK, LTD.','ALVANON HK, LTD.','ALVANON HK, LTD.',0,0,'',0,0,0,1,0),
(2353,1,'21120016','YKK EL SALVADOR, S.A. DE C.V.','YKK EL SALVADOR, S.A. DE C.V.','YKK EL SALVADOR, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2354,1,'21120017','AVERY DENNISON CONVERTED PRODUCTOS DE MEXICO S.A. DE C.V.','AVERY DENNISON CONVERTED PRODUCTOS DE MEXICO S.A. DE C.V.','AVERY DENNISON CONVERTED PRODUCTOS DE MEXICO S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2355,1,'21120018','ARTCO GLOBAL GROUP','ARTCO GLOBAL GROUP','ARTCO GLOBAL GROUP',0,0,'',0,0,0,1,0),
(2356,1,'21120019','CARTONES GLOBAL, S.A.','CARTONES GLOBAL, S.A.','CARTONES GLOBAL, S.A.',0,0,'',0,0,0,1,0),
(2357,1,'21120020','CS CENTRAL AMERICA S.A. DE C.V.','CS CENTRAL AMERICA S.A. DE C.V.','CS CENTRAL AMERICA S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2358,1,'21120021','DELTATRADE CENTRAL AMERICA, INC','DELTATRADE CENTRAL AMERICA, INC','DELTATRADE CENTRAL AMERICA, INC',0,0,'',0,0,0,1,0),
(2359,1,'21120022','FINOS TEXTILES DE EL SALVADOR S.A. DE C.V.','FINOS TEXTILES DE EL SALVADOR S.A. DE C.V.','FINOS TEXTILES DE EL SALVADOR S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2360,1,'21120023','H.B. TRIM EL SALVADOR, S.A. DE C.V.','H.B. TRIM EL SALVADOR, S.A. DE C.V.','H.B. TRIM EL SALVADOR, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2361,1,'21120024','INDUSTRIAS FLORENZI, S.A. DE C.V.','INDUSTRIAS FLORENZI, S.A. DE C.V.','INDUSTRIAS FLORENZI, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2362,1,'21120025','PREMIUM TEXTILE SUPLLIES, S.A.','PREMIUM TEXTILE SUPLLIES, S.A.','PREMIUM TEXTILE SUPLLIES, S.A.',0,0,'',0,0,0,1,0),
(2363,1,'21120026','PRINTCRAFT CENTRAL AMERICA, S.A. DE C.V.','PRINTCRAFT CENTRAL AMERICA, S.A. DE C.V.','PRINTCRAFT CENTRAL AMERICA, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2364,1,'21120027','HILOS Y ALGOD?N, S.A.','HILOS Y ALGOD?N, S.A.','HILOS Y ALGOD?N, S.A.',0,0,'',0,0,0,1,0),
(2365,1,'21120028','AVERY DENNISON HONG KONG B.V.','AVERY DENNISON HONG KONG B.V.','AVERY DENNISON HONG KONG B.V.',0,0,'',0,0,0,1,0),
(2366,1,'21120029','BRANDGENETIX LIMITED','BRANDGENETIX LIMITED','BRANDGENETIX LIMITED',0,0,'',0,0,0,1,0),
(2367,1,'21120030','CARGILL COTTON','CARGILL COTTON','CARGILL COTTON',0,0,'',0,0,0,1,0),
(2368,1,'21120031','CHECK POINT','CHECK POINT','CHECK POINT',0,0,'',0,0,0,1,0),
(2369,1,'21120032','COLOR IMAGE APPAREL','COLOR IMAGE APPAREL','COLOR IMAGE APPAREL',0,0,'',0,0,0,1,0),
(2370,1,'21120033','COLORMAX SYSTEM / DATACOLOR','COLORMAX SYSTEM / DATACOLOR','COLORMAX SYSTEM / DATACOLOR',0,0,'',0,0,0,1,0),
(2371,1,'21120034','VERNON, CA / LAGUNA FABRICS','VERNON, CA / LAGUNA FABRICS','VERNON, CA / LAGUNA FABRICS',0,0,'',0,0,0,1,0),
(2372,1,'21120035','DELTA TOWER, 8TH FLOOR','DELTA TOWER, 8TH FLOOR','DELTA TOWER, 8TH FLOOR',0,0,'',0,0,0,1,0),
(2373,1,'21120036','DESPEPITADORA EL LLANO S.P.R. DE R.L. DE C.V.','DESPEPITADORA EL LLANO S.P.R. DE R.L. DE C.V.','DESPEPITADORA EL LLANO S.P.R. DE R.L. DE C.V.',0,0,'',0,0,0,1,0),
(2374,1,'21120037','DISPROTEX INTERNACIONAL','DISPROTEX INTERNACIONAL','DISPROTEX INTERNACIONAL',0,0,'',0,0,0,1,0),
(2375,1,'21120038','EASTERN SHORES PRINTING CO.','EASTERN SHORES PRINTING CO.','EASTERN SHORES PRINTING CO.',0,0,'',0,0,0,1,0),
(2376,1,'21120039','ESQUEL ENTERPRISES LIMITED','ESQUEL ENTERPRISES LIMITED','ESQUEL ENTERPRISES LIMITED',0,0,'',0,0,0,1,0),
(2377,1,'21120040','EVY OF CALIFORNIA','EVY OF CALIFORNIA','EVY OF CALIFORNIA',0,0,'',0,0,0,1,0),
(2378,1,'21120041','EXPORTADORA TEXTUTIL, S.A. DE C.V.','EXPORTADORA TEXTUTIL, S.A. DE C.V.','EXPORTADORA TEXTUTIL, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2379,1,'21120042','EXPRESS','EXPRESS','EXPRESS',0,0,'',0,0,0,1,0),
(2380,1,'21120043','FINE LINE TECHNOLOGIES INC.','FINE LINE TECHNOLOGIES INC.','FINE LINE TECHNOLOGIES INC.',0,0,'',0,0,0,1,0),
(2381,1,'21120044','HILANDERIAS DE EXPORTACION, S.A.','HILANDERIAS DE EXPORTACION, S.A.','HILANDERIAS DE EXPORTACION, S.A.',0,0,'',0,0,0,1,0),
(2382,1,'21120045','HUVIS CORPORATION','HUVIS CORPORATION','HUVIS CORPORATION',0,0,'',0,0,0,1,0),
(2383,1,'21120046','HYOSUNG CORPORATION','HYOSUNG CORPORATION','HYOSUNG CORPORATION',0,0,'',0,0,0,1,0),
(2384,1,'21120047','IMAR','IMAR','IMAR',0,0,'',0,0,0,1,0),
(2385,1,'21120048','LABELTEX MILLS INC.','LABELTEX MILLS INC.','LABELTEX MILLS INC.',0,0,'',0,0,0,1,0),
(2386,1,'21120049','MANSFIELD TEXTILES, INC.','MANSFIELD TEXTILES, INC.','MANSFIELD TEXTILES, INC.',0,0,'',0,0,0,1,0),
(2387,1,'21120050','NANJING BELY GARMENT CO  LTD','NANJING BELY GARMENT CO  LTD','NANJING BELY GARMENT CO  LTD',0,0,'',0,0,0,1,0),
(2388,1,'21120051','NEXGEN PACKAGING LTD','NEXGEN PACKAGING LTD','NEXGEN PACKAGING LTD',0,0,'',0,0,0,1,0),
(2389,1,'21120052','OAK H&F INC','OAK H&F INC','OAK H&F INC',0,0,'',0,0,0,1,0),
(2390,1,'21120053','R-PAC HONG KONG LTD.','R-PAC HONG KONG LTD.','R-PAC HONG KONG LTD.',0,0,'',0,0,0,1,0),
(2391,1,'21120054','SML (HONG KONG) LIMITED','SML (HONG KONG) LIMITED','SML (HONG KONG) LIMITED',0,0,'',0,0,0,1,0),
(2392,1,'21120055','SML EL SALVADOR S.A. DE C.V.','SML EL SALVADOR S.A. DE C.V.','SML EL SALVADOR S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2393,1,'21120056','SOLTEX S. DE R.L.','SOLTEX S. DE R.L.','SOLTEX S. DE R.L.',0,0,'',0,0,0,1,0),
(2394,1,'21120057','TAG-IT PACIFIC LTD.','TAG-IT PACIFIC LTD.','TAG-IT PACIFIC LTD.',0,0,'',0,0,0,1,0),
(2395,1,'21120058','TEXTUFIL, S.A. DE C.V.','TEXTUFIL, S.A. DE C.V.','TEXTUFIL, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2396,1,'21120059','THE STAR GROUP ASIA, LTD','THE STAR GROUP ASIA, LTD','THE STAR GROUP ASIA, LTD',0,0,'',0,0,0,1,0),
(2397,1,'21120060','TOP LABEL, S.A. DE C.V.','TOP LABEL, S.A. DE C.V.','TOP LABEL, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2398,1,'21120061','TRIM EL SALVADOR S.A. DE C.V.','TRIM EL SALVADOR S.A. DE C.V.','TRIM EL SALVADOR S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2399,1,'21120062','TRIM SOLUTIONS INTERNATIONAL','TRIM SOLUTIONS INTERNATIONAL','TRIM SOLUTIONS INTERNATIONAL',0,0,'',0,0,0,1,0),
(2400,1,'21120063','V-MARK TEXTILES LIMITED','V-MARK TEXTILES LIMITED','V-MARK TEXTILES LIMITED',0,0,'',0,0,0,1,0),
(2401,1,'21120064','REGINA APPAREL ACCESSORIES LIMITED','REGINA APPAREL ACCESSORIES LIMITED','REGINA APPAREL ACCESSORIES LIMITED',0,0,'',0,0,0,1,0),
(2402,1,'21120065','HILOS A&E DE EL SALVADOR, S.A. DE C.V.','HILOS A&E DE EL SALVADOR, S.A. DE C.V.','HILOS A&E DE EL SALVADOR, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2403,1,'21120066','DESTINATION MATERNITY CORPORATION','DESTINATION MATERNITY CORPORATION','DESTINATION MATERNITY CORPORATION',0,0,'',0,0,0,1,0),
(2404,1,'21120067','MILLIKEN & COMPANY','MILLIKEN & COMPANY','MILLIKEN & COMPANY',0,0,'',0,0,0,1,0),
(2405,1,'21120068','KEYSTONE TEXTILE, INC.','KEYSTONE TEXTILE, INC.','KEYSTONE TEXTILE, INC.',0,0,'',0,0,0,1,0),
(2406,1,'21120069','SAE-A SPINNING, S.R.L.','SAE-A SPINNING, S.R.L.','SAE-A SPINNING, S.R.L.',0,0,'',0,0,0,1,0),
(2407,1,'21120070','UNION KING ENTERPRISE LIMITED','UNION KING ENTERPRISE LIMITED','UNION KING ENTERPRISE LIMITED',0,0,'',0,0,0,1,0),
(2408,1,'21120071','UNIFI MANUFACTURING, INC.','UNIFI MANUFACTURING, INC.','UNIFI MANUFACTURING, INC.',0,0,'',0,0,0,1,0),
(2409,1,'21120072','UNIFI CENTRAL AMERICA LTDA DE CV','UNIFI CENTRAL AMERICA LTDA DE CV','UNIFI CENTRAL AMERICA LTDA DE CV',0,0,'',0,0,0,1,0),
(2410,1,'21120073','AVERY DENNISON UNITED STATES','AVERY DENNISON UNITED STATES','AVERY DENNISON UNITED STATES',0,0,'',0,0,0,1,0),
(2411,1,'21120074','S & S DE HONDURAS, S.A.','S & S DE HONDURAS, S.A.','S & S DE HONDURAS, S.A.',0,0,'',0,0,0,1,0),
(2412,1,'21120075','JOINTAK INDUSTRIAL COMPANY LIMITED','JOINTAK INDUSTRIAL COMPANY LIMITED','JOINTAK INDUSTRIAL COMPANY LIMITED',0,0,'',0,0,0,1,0),
(2413,1,'21120076','PLASTICOS DELFIN, S.A.','PLASTICOS DELFIN, S.A.','PLASTICOS DELFIN, S.A.',0,0,'',0,0,0,1,0),
(2414,1,'21120077','PLASTI-FORM DE HONDURAS, S. DE R.L.','PLASTI-FORM DE HONDURAS, S. DE R.L.','PLASTI-FORM DE HONDURAS, S. DE R.L.',0,0,'',0,0,0,1,0),
(2415,1,'21120078','GERBER TECHNOLOGY, S.A. DE C.V.','GERBER TECHNOLOGY, S.A. DE C.V.','GERBER TECHNOLOGY, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2416,1,'21120079','ALL-TAG','ALL-TAG','ALL-TAG',0,0,'',0,0,0,1,0),
(2417,1,'21120080','CHARIS INT\'L CO.','CHARIS INT\'L CO.','CHARIS INT\'L CO.',0,0,'',0,0,0,1,0),
(2418,1,'21120081','LECTRA SYSTEMES SA DE CV','LECTRA SYSTEMES SA DE CV','LECTRA SYSTEMES SA DE CV',0,0,'',0,0,0,1,0),
(2419,1,'21120082','CF COROPORATION','CF COROPORATION','CF COROPORATION',0,0,'',0,0,0,1,0),
(2420,1,'21120083','JERRY LEIGH OF CALIFORNIA','JERRY LEIGH OF CALIFORNIA','JERRY LEIGH OF CALIFORNIA',0,0,'',0,0,0,1,0),
(2421,1,'21120084','SOLID SUBLIMATION PRINTING','SOLID SUBLIMATION PRINTING','SOLID SUBLIMATION PRINTING',0,0,'',0,0,0,1,0),
(2422,1,'21120085','SWISSTEX DIRECT','SWISSTEX DIRECT','SWISSTEX DIRECT',0,0,'',0,0,0,1,0),
(2423,1,'21120086','AMTEX DE EL SALVADOR, S.A. DE C.V.','AMTEX DE EL SALVADOR, S.A. DE C.V.','AMTEX DE EL SALVADOR, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2424,1,'21120087','FILDAN ACCESSORIES (H.K.) LIMITED','FILDAN ACCESSORIES (H.K.) LIMITED','FILDAN ACCESSORIES (H.K.) LIMITED',0,0,'',0,0,0,1,0),
(2425,1,'21120088','IKAR USA LLC','IKAR USA LLC','IKAR USA LLC',0,0,'',0,0,0,1,0),
(2426,1,'21120089','YEONJIN TRADING CO., LTD','YEONJIN TRADING CO., LTD','YEONJIN TRADING CO., LTD',0,0,'',0,0,0,1,0),
(2427,1,'21120090','COAST PAD','COAST PAD','COAST PAD',0,0,'',0,0,0,1,0),
(2428,1,'21120091','NATCO SHANGAI PACKAGING AND TRIM CO., LTD','NATCO SHANGAI PACKAGING AND TRIM CO., LTD','NATCO SHANGAI PACKAGING AND TRIM CO., LTD',0,0,'',0,0,0,1,0),
(2429,1,'21120092','ALPEN-TEC, INC.','ALPEN-TEC, INC.','ALPEN-TEC, INC.',0,0,'',0,0,0,1,0),
(2430,1,'21120093','C.I. ESTRADA VELASQUEZ','C.I. ESTRADA VELASQUEZ','C.I. ESTRADA VELASQUEZ',0,0,'',0,0,0,1,0),
(2431,1,'21120094','ASHER FABRIC CONCPTS / SHALOM','ASHER FABRIC CONCPTS / SHALOM','ASHER FABRIC CONCPTS / SHALOM',0,0,'',0,0,0,1,0),
(2432,1,'21120095','AMERICAN & EFIRD LLC','AMERICAN & EFIRD LLC','AMERICAN & EFIRD LLC',0,0,'',0,0,0,1,0),
(2433,1,'21120096','TEXKNOWLEDGE CORPORATION, S.A.','TEXKNOWLEDGE CORPORATION, S.A.','TEXKNOWLEDGE CORPORATION, S.A.',0,0,'',0,0,0,1,0),
(2434,1,'21120097','JINSUNG FASHION BUTTON','JINSUNG FASHION BUTTON','JINSUNG FASHION BUTTON',0,0,'',0,0,0,1,0),
(2435,1,'21120098','DYSTAR','DYSTAR','DYSTAR',0,0,'',0,0,0,1,0),
(2436,1,'21120099','PANTONE, LLC','PANTONE, LLC','PANTONE, LLC',0,0,'',0,0,0,1,0),
(2437,1,'21120100','R-PAC CENTRAL AMERICA, S.A. DE C.V.','R-PAC CENTRAL AMERICA, S.A. DE C.V.','R-PAC CENTRAL AMERICA, S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2438,1,'21120101','THE REVOLUTION GROUP COMPANY LIMITED','THE REVOLUTION GROUP COMPANY LIMITED','THE REVOLUTION GROUP COMPANY LIMITED',0,0,'',0,0,0,1,0),
(2439,1,'21120102','ZHEJIANG WEIXING IMP.&EXP. CO.LTD.','ZHEJIANG WEIXING IMP.&EXP. CO.LTD.','ZHEJIANG WEIXING IMP.&EXP. CO.LTD.',0,0,'',0,0,0,1,0),
(2440,1,'21120103','REGAL COLLECTION INC.','REGAL COLLECTION INC.','REGAL COLLECTION INC.',0,0,'',0,0,0,1,0),
(2441,1,'21120104','DESING KNIT, INC.','DESING KNIT, INC.','DESING KNIT, INC.',0,0,'',0,0,0,1,0),
(2442,1,'21120105','SCOTTEX INC','SCOTTEX INC','SCOTTEX INC',0,0,'',0,0,0,1,0),
(2443,1,'21120106','ZABIN INDUSTRIES (HONG KONG) LTD.','ZABIN INDUSTRIES (HONG KONG) LTD.','ZABIN INDUSTRIES (HONG KONG) LTD.',0,0,'',0,0,0,1,0),
(2444,1,'21120107','NINGBO LG INDUSTRY CO, LTD.','NINGBO LG INDUSTRY CO, LTD.','NINGBO LG INDUSTRY CO, LTD.',0,0,'',0,0,0,1,0),
(2445,1,'21120108','TIC GROUP USA LLC','TIC GROUP USA LLC','TIC GROUP USA LLC',0,0,'',0,0,0,1,0),
(2446,1,'21120109','MEGA PLASTIC, S.A. / MEGAPOLY, S.A.','MEGA PLASTIC, S.A. / MEGAPOLY, S.A.','MEGA PLASTIC, S.A. / MEGAPOLY, S.A.',0,0,'',0,0,0,1,0),
(2447,1,'21120110','FUNCTIONAL THINKING','FUNCTIONAL THINKING','FUNCTIONAL THINKING',0,0,'',0,0,0,1,0),
(2448,1,'21120111','STYLETELLING & COMPANY, LLC.','STYLETELLING & COMPANY, LLC.','STYLETELLING & COMPANY, LLC.',0,0,'',0,0,0,1,0),
(2449,1,'21120112','EU DESING HK LTD','EU DESING HK LTD','EU DESING HK LTD',0,0,'',0,0,0,1,0),
(2450,1,'21120113','SAN HE PRINTOPIA','SAN HE PRINTOPIA','SAN HE PRINTOPIA',0,0,'',0,0,0,1,0),
(2451,1,'21120114','SHAOXING BAI JI IMP & EXP CO., LTD','SHAOXING BAI JI IMP & EXP CO., LTD','SHAOXING BAI JI IMP & EXP CO., LTD',0,0,'',0,0,0,1,0),
(2452,1,'21120115','JIANGSU GUOTAI INT`L GROUP GUOMAO CO., LTD.','JIANGSU GUOTAI INT`L GROUP GUOMAO CO., LTD.','JIANGSU GUOTAI INT`L GROUP GUOMAO CO., LTD.',0,0,'',0,0,0,1,0),
(2453,1,'21120116','SUNBIRD CO., LTD','SUNBIRD CO., LTD','SUNBIRD CO., LTD',0,0,'',0,0,0,1,0),
(2454,1,'21120117','X-RITE INC.','X-RITE INC.','X-RITE INC.',0,0,'',0,0,0,1,0),
(2455,1,'21120118','DATACOLOR, INC.','DATACOLOR, INC.','DATACOLOR, INC.',0,0,'',0,0,0,1,0),
(2456,1,'21120119','SG KNITS','SG KNITS','SG KNITS',0,0,'',0,0,0,1,0),
(2457,1,'21120120','LACE & GARMENT ACCESSORIES (BRIGHTSUN)','LACE & GARMENT ACCESSORIES (BRIGHTSUN)','LACE & GARMENT ACCESSORIES (BRIGHTSUN)',0,0,'',0,0,0,1,0),
(2458,1,'21120121','MS VARDHMAN POLYTEX, LTD.','MS VARDHMAN POLYTEX, LTD.','MS VARDHMAN POLYTEX, LTD.',0,0,'',0,0,0,1,0),
(2459,1,'21120122','RETAL SOLUTIONS WORLDWIDE (MAINETTI)','RETAL SOLUTIONS WORLDWIDE (MAINETTI)','RETAL SOLUTIONS WORLDWIDE (MAINETTI)',0,0,'',0,0,0,1,0),
(2460,1,'21120123','DAENOGN CORPORATION','DAENOGN CORPORATION','DAENOGN CORPORATION',0,0,'',0,0,0,1,0),
(2461,1,'21120124','NORTH AMERICAN TEXTILE COMPANY, LLC','NORTH AMERICAN TEXTILE COMPANY, LLC','NORTH AMERICAN TEXTILE COMPANY, LLC',0,0,'',0,0,0,1,0),
(2462,1,'21120125','GILSAN HONGKONGCO., LIMITED','GILSAN HONGKONGCO., LIMITED','GILSAN HONGKONGCO., LIMITED',0,0,'',0,0,0,1,0),
(2463,1,'21120126','QUICK SERVICE TEXTILE GUATEMALA LIMITADA','QUICK SERVICE TEXTILE GUATEMALA LIMITADA','QUICK SERVICE TEXTILE GUATEMALA LIMITADA',0,0,'',0,0,0,1,0),
(2464,1,'21120127','SML RALEIGH LLC','SML RALEIGH LLC','SML RALEIGH LLC',0,0,'',0,0,0,1,0),
(2465,1,'21120128','SOKOL PACKAGING, (H.K.) LTD.','SOKOL PACKAGING, (H.K.) LTD.','SOKOL PACKAGING, (H.K.) LTD.',0,0,'',0,0,0,1,0),
(2466,1,'21120129','SML RALEIGH LLC','SML RALEIGH LLC','SML RALEIGH LLC',0,0,'',0,0,0,1,0),
(2467,1,'21120130','AMERICAN ZABIN INTERNATIONAL','AMERICAN ZABIN INTERNATIONAL','AMERICAN ZABIN INTERNATIONAL',0,0,'',0,0,0,1,0),
(2468,1,'21120131','NANOCIS, CO., LTD.','NANOCIS, CO., LTD.','NANOCIS, CO., LTD.',0,0,'',0,0,0,1,0),
(2469,1,'21120132','JAMES WORLDWIDE, INC.','JAMES WORLDWIDE, INC.','JAMES WORLDWIDE, INC.',0,0,'',0,0,0,1,0),
(2470,1,'21120133','CROWLEY LATIN AMERICA SERVICES','CROWLEY LATIN AMERICA SERVICES','CROWLEY LATIN AMERICA SERVICES',0,0,'',0,0,0,1,0),
(2471,1,'21120134','IDEAL FASTENER ASIA LTD.','IDEAL FASTENER ASIA LTD.','IDEAL FASTENER ASIA LTD.',0,0,'',0,0,0,1,0),
(2472,1,'21120135','SOVEREIGN CONTAINER LINE, INC.','SOVEREIGN CONTAINER LINE, INC.','SOVEREIGN CONTAINER LINE, INC.',0,0,'',0,0,0,1,0),
(2473,1,'21120136','CLO VIRTUAL FASHION INC.','CLO VIRTUAL FASHION INC.','CLO VIRTUAL FASHION INC.',0,0,'',0,0,0,1,0),
(2474,1,'21120137','SAS TEXTILES','SAS TEXTILES','SAS TEXTILES',0,0,'',0,0,0,1,0),
(2475,1,'21120138','MAERSK LINE','MAERSK LINE','MAERSK LINE',0,0,'',0,0,0,1,0),
(2476,1,'21120139','BROS SPINNING (SHENZEN) CO., LTD','BROS SPINNING (SHENZEN) CO., LTD','BROS SPINNING (SHENZEN) CO., LTD',0,0,'',0,0,0,1,0),
(2477,1,'21120140','MATCHMASTER','MATCHMASTER','MATCHMASTER',0,0,'',0,0,0,1,0),
(2478,1,'21120141','EDICATE BUTTON & GARMENT ACCESORIES MFY. LTD.','EDICATE BUTTON & GARMENT ACCESORIES MFY. LTD.','EDICATE BUTTON & GARMENT ACCESORIES MFY. LTD.',0,0,'',0,0,0,1,0),
(2479,1,'21120142','ANTEX KNITTING MILLS','ANTEX KNITTING MILLS','ANTEX KNITTING MILLS',0,0,'',0,0,0,1,0),
(2480,1,'21120143','NATCO ASIA LIMITED','NATCO ASIA LIMITED','NATCO ASIA LIMITED',0,0,'',0,0,0,1,0),
(2481,1,'21120144','SAMIL SPINNING CO., LTD.','SAMIL SPINNING CO., LTD.','SAMIL SPINNING CO., LTD.',0,0,'',0,0,0,1,0),
(2482,1,'21120145','SOVEREIGN LOGISTICS, INC.','SOVEREIGN LOGISTICS, INC.','SOVEREIGN LOGISTICS, INC.',0,0,'',0,0,0,1,0),
(2483,1,'21120146','GLOBAL TRIM SALES, INC.','GLOBAL TRIM SALES, INC.','GLOBAL TRIM SALES, INC.',0,0,'',0,0,0,1,0),
(2484,1,'21120147','BUMIL TEXTILE','BUMIL TEXTILE','BUMIL TEXTILE',0,0,'',0,0,0,1,0),
(2485,1,'21120148','ST INTERNATIONAL','ST INTERNATIONAL','ST INTERNATIONAL',0,0,'',0,0,0,1,0),
(2486,1,'21120149','DENIMATRIX, S.A.','DENIMATRIX, S.A.','DENIMATRIX, S.A.',0,0,'',0,0,0,1,0),
(2487,1,'21120151','NEXGEN HK','NEXGEN HK','NEXGEN HK',0,0,'',0,0,0,1,0),
(2488,1,'21120152','PT. ELEGANT TEXTILE INDUSTRY','PT. ELEGANT TEXTILE INDUSTRY','PT. ELEGANT TEXTILE INDUSTRY',0,0,'',0,0,0,1,0),
(2489,1,'21120153','BELLA+CANVAS, LLC','BELLA+CANVAS, LLC','BELLA+CANVAS, LLC',0,0,'',0,0,0,1,0),
(2490,1,'21120154','PEIXIAN HAIYUN TEXTILE CO., LTD.','PEIXIAN HAIYUN TEXTILE CO., LTD.','PEIXIAN HAIYUN TEXTILE CO., LTD.',0,0,'',0,0,0,1,0),
(2491,1,'21120155','S & S INDUSTRIES S. DE R.L.','S & S INDUSTRIES S. DE R.L.','S & S INDUSTRIES S. DE R.L.',0,0,'',0,0,0,1,0),
(2492,1,'21120156','ACCORDIA GLOBAL COMPLIANCE GROUP, INC.','ACCORDIA GLOBAL COMPLIANCE GROUP, INC.','ACCORDIA GLOBAL COMPLIANCE GROUP, INC.',0,0,'',0,0,0,1,0),
(2493,1,'21120157','JET GOAL ENTERPRISES CO., LTD.','JET GOAL ENTERPRISES CO., LTD.','JET GOAL ENTERPRISES CO., LTD.',0,0,'',0,0,0,1,0),
(2494,1,'21120158','WRAP','WRAP','WRAP',0,0,'',0,0,0,1,0),
(2495,1,'21120159','TULIP ELASTICS INTERNATIONAL','TULIP ELASTICS INTERNATIONAL','TULIP ELASTICS INTERNATIONAL',0,0,'',0,0,0,1,0),
(2496,1,'21120160','CONTINENTAL COLLECTION (HK) LIMITED','CONTINENTAL COLLECTION (HK) LIMITED','CONTINENTAL COLLECTION (HK) LIMITED',0,0,'',0,0,0,1,0),
(2497,1,'21120161','TALON INTERNATIONAL, INC.','TALON INTERNATIONAL, INC.','TALON INTERNATIONAL, INC.',0,0,'',0,0,0,1,0),
(2498,1,'21120162','RUDHOLM GROUP','RUDHOLM GROUP','RUDHOLM GROUP',0,0,'',0,0,0,1,0),
(2499,1,'21120163','DHL GLOBAL FORWARDING (EL SALVADOR) S.A. DE C.V.','DHL GLOBAL FORWARDING (EL SALVADOR) S.A. DE C.V.','DHL GLOBAL FORWARDING (EL SALVADOR) S.A. DE C.V.',0,0,'',0,0,0,1,0),
(2500,1,'21120164','UL VERIFICATION SERVICES INC.','UL VERIFICATION SERVICES INC.','UL VERIFICATION SERVICES INC.',0,0,'',0,0,0,1,0),
(2501,1,'21120165','UL VS HONG KONG LIMITED','UL VS HONG KONG LIMITED','UL VS HONG KONG LIMITED',0,0,'',0,0,0,1,0),
(2502,1,'21120166','PRECISION CUSTOM COATINGS LLC','PRECISION CUSTOM COATINGS LLC','PRECISION CUSTOM COATINGS LLC',0,0,'',0,0,0,1,0),
(2503,1,'21120167','BRAIFORM (HK) LIMITED','BRAIFORM (HK) LIMITED','BRAIFORM (HK) LIMITED',0,0,'',0,0,0,1,0),
(2504,1,'21120168','MIRACLE SOURCING LIMITED','MIRACLE SOURCING LIMITED','MIRACLE SOURCING LIMITED',0,0,'',0,0,0,1,0),
(2505,1,'21120169','DESICCA, LLC.','DESICCA, LLC.','DESICCA, LLC.',0,0,'',0,0,0,1,0),
(2506,1,'21120170','TECHLINK INTERNATIONAL, LLC','TECHLINK INTERNATIONAL, LLC','TECHLINK INTERNATIONAL, LLC',0,0,'',0,0,0,1,0),
(2507,1,'21120171','UTL INTERNATONAL, INC.','UTL INTERNATONAL, INC.','UTL INTERNATONAL, INC.',0,0,'',0,0,0,1,0),
(2508,1,'21120172','E-LONG ASIA LIMITED','E-LONG ASIA LIMITED','E-LONG ASIA LIMITED',0,0,'',0,0,0,1,0),
(2509,1,'21120173','TEXOLLINI','TEXOLLINI','TEXOLLINI',0,0,'',0,0,0,1,0),
(2510,1,'21120174','WGSN INC','WGSN INC','WGSN INC',0,0,'',0,0,0,1,0),
(2511,1,'21120175','UPS SUPPLY CHAIN SOLUTIONS, INC.','UPS SUPPLY CHAIN SOLUTIONS, INC.','UPS SUPPLY CHAIN SOLUTIONS, INC.',0,0,'',0,0,0,1,0),
(2512,1,'21120176','JINDAL POLYBUTTONS PVT. LTD.','JINDAL POLYBUTTONS PVT. LTD.','JINDAL POLYBUTTONS PVT. LTD.',0,0,'',0,0,0,1,0),
(2513,1,'21120177','CHECKPOINT APPAREL LABELLING SOLUTIONS ASIA LIMITED','CHECKPOINT APPAREL LABELLING SOLUTIONS ASIA LIMITED','CHECKPOINT APPAREL LABELLING SOLUTIONS ASIA LIMITED',0,0,'',0,0,0,1,0),
(2514,1,'21120178','JOINTAK LABELS COMPANY LIMITED','JOINTAK LABELS COMPANY LIMITED','JOINTAK LABELS COMPANY LIMITED',0,0,'',0,0,0,1,0),
(2515,1,'21120179','HBL (ASIA) LIMITED','HBL (ASIA) LIMITED','HBL (ASIA) LIMITED',0,0,'',0,0,0,1,0),
(2516,1,'21120180','ZABIN INDUSTRIES HONG KONG LIMITED','ZABIN INDUSTRIES HONG KONG LIMITED','ZABIN INDUSTRIES HONG KONG LIMITED',0,0,'',0,0,0,1,0),
(2517,1,'21120181','WFL PACKAGING LTD.','WFL PACKAGING LTD.','WFL PACKAGING LTD.',0,0,'',0,0,0,1,0),
(2518,1,'21200','Impuestos','Impuestos','Impuestos',1,0,'',0,0,0,1,0),
(2519,1,'21200001','I. V. A. Debito Fiscal','I. V. A. Debito Fiscal','I. V. A. Debito Fiscal',0,0,'',0,0,0,1,0),
(2520,1,'21200002','I. S. R. Por Pagar','I. S. R. Por Pagar','I. S. R. Por Pagar',0,0,'',0,0,0,1,0),
(2521,1,'21200003','I. S. R. 5% Retenido','I. S. R. 5% Retenido','I. S. R. 5% Retenido',0,0,'',0,0,0,1,0),
(2522,1,'21200004','I. S. R. Retenci?n Asalariados','I. S. R. Retenci?n Asalariados','I. S. R. Retenci?n Asalariados',0,0,'',0,0,0,1,0),
(2523,1,'21200005','Cuota Laboral por Pagar','Cuota Laboral por Pagar','Cuota Laboral por Pagar',0,0,'',0,0,0,1,0),
(2524,1,'21200006','Cuota Patronal por Pagar','Cuota Patronal por Pagar','Cuota Patronal por Pagar',0,0,'',0,0,0,1,0),
(2525,1,'21200007','I. S. R. No Domiciliado','I. S. R. No Domiciliado','I. S. R. No Domiciliado',0,0,'',0,0,0,1,0),
(2526,1,'21200008','I. S. R. Devoluci?n Asalariados','I. S. R. Devoluci?n Asalariados','I. S. R. Devoluci?n Asalariados',0,0,'',0,0,0,1,0),
(2527,1,'21200009','I. S. R. Capital Mensual 10%','I. S. R. Capital Mensual 10%','I. S. R. Capital Mensual 10%',0,0,'',0,0,0,1,0),
(2528,1,'21300','Prestaciones Laborales','Prestaciones Laborales','Prestaciones Laborales',1,0,'',0,0,0,1,0),
(2529,1,'21300001','Sueldos Por Pagar','Sueldos Por Pagar','Sueldos Por Pagar',0,0,'',0,0,0,1,0),
(2530,1,'21300002','Bono 14','Bono 14','Bono 14',0,0,'',0,0,0,1,0),
(2531,1,'21300003','Aguinaldo','Aguinaldo','Aguinaldo',0,0,'',0,0,0,1,0),
(2532,1,'21300004','Vacaciones','Vacaciones','Vacaciones',0,0,'',0,0,0,1,0),
(2533,1,'21300005','Indemnizaci?n','Indemnizaci?n','Indemnizaci?n',0,0,'',0,0,0,1,0),
(2534,1,'214','OTROS PASIVOS','OTROS PASIVOS','OTROS PASIVOS',3,0,'',0,0,0,1,0),
(2535,1,'21400001','DIFERENCIAL CAMBIARIO PROVEEDORES DEL EXTERIOR','DIFERENCIAL CAMBIARIO PROVEEDORES DEL EXTERIOR','DIFERENCIAL CAMBIARIO PROVEEDORES DEL EXTERIOR',0,0,'',0,0,0,1,0),
(2536,1,'21400002','OTRAS CUENTAS POR PAGAR','OTRAS CUENTAS POR PAGAR','OTRAS CUENTAS POR PAGAR',0,0,'',0,0,0,1,0),
(2537,1,'21400003','PR?STAMOS SOCIOS','PR?STAMOS SOCIOS','PR?STAMOS SOCIOS',0,0,'',0,0,0,1,0),
(2538,1,'21400004','SOBREGIRO BANCARIO','SOBREGIRO BANCARIO','SOBREGIRO BANCARIO',0,0,'',0,0,0,1,0),
(2539,1,'21400005','ANTICIPO PROVEEDORES','ANTICIPO PROVEEDORES','ANTICIPO PROVEEDORES',0,0,'',0,0,0,1,0),
(2540,1,'21400006','CUENTA POR PAGAR INT TRADING','CUENTA POR PAGAR INT TRADING','CUENTA POR PAGAR INT TRADING',0,0,'',0,0,0,1,0),
(2541,1,'21400007','CUENTA POR PAGAR PRETEXSA','CUENTA POR PAGAR PRETEXSA','CUENTA POR PAGAR PRETEXSA',0,0,'',0,0,0,1,0),
(2542,1,'21400008','CUENTA POR PAGAR RECEPSA','CUENTA POR PAGAR RECEPSA','CUENTA POR PAGAR RECEPSA',0,0,'',0,0,0,1,0),
(2543,1,'21400009','ANTICIPO DE CLIENTES','ANTICIPO DE CLIENTES','ANTICIPO DE CLIENTES',0,0,'',0,0,0,1,0),
(2544,1,'21400010','CUENTA POR PAGAR PEOPLE & ARTS','CUENTA POR PAGAR PEOPLE & ARTS','CUENTA POR PAGAR PEOPLE & ARTS',0,0,'',0,0,0,1,0),
(2545,1,'21400011','CUENTA POR PAGAR INT TRADING - COEXPORTADOR','CUENTA POR PAGAR INT TRADING - COEXPORTADOR','CUENTA POR PAGAR INT TRADING - COEXPORTADOR',0,0,'',0,0,0,1,0),
(2546,1,'21400012','CUENTA POR PAGAR INT TRADING - FONDOS RECIBIDOS','CUENTA POR PAGAR INT TRADING - FONDOS RECIBIDOS','CUENTA POR PAGAR INT TRADING - FONDOS RECIBIDOS',0,0,'',0,0,0,1,0),
(2547,1,'21400013','CUENTA POR PAGAR INT TRADING - FACTURAS PAGADAS POR TRADING','CUENTA POR PAGAR INT TRADING - FACTURAS PAGADAS POR TRADING','CUENTA POR PAGAR INT TRADING - FACTURAS PAGADAS POR TRADING',0,0,'',0,0,0,1,0),
(2548,1,'21400014','CUENTA POR PAGAR INT TRADING - FACTURAS COBRADAS A CUENTA DE TRADING','CUENTA POR PAGAR INT TRADING - FACTURAS COBRADAS A CUENTA DE TRADING','CUENTA POR PAGAR INT TRADING - FACTURAS COBRADAS A CUENTA DE TRADING',0,0,'',0,0,0,1,0),
(2549,1,'21400015','CUENTA POR PAGAR INT TRADING - TRASLADO DE INVENTARIOS DE MATERIA PRIMA','CUENTA POR PAGAR INT TRADING - TRASLADO DE INVENTARIOS DE MATERIA PRIMA','CUENTA POR PAGAR INT TRADING - TRASLADO DE INVENTARIOS DE MATERIA PRIMA',0,0,'',0,0,0,1,0),
(2550,1,'21400016','INGRESOS POR IDENTIFICAR','INGRESOS POR IDENTIFICAR','INGRESOS POR IDENTIFICAR',0,0,'',0,0,0,1,0),
(2551,1,'21400017','CUENTA POR PAGAR INT TRADING - TRASLADO DE MAQUINARIA','CUENTA POR PAGAR INT TRADING - TRASLADO DE MAQUINARIA','CUENTA POR PAGAR INT TRADING - TRASLADO DE MAQUINARIA',0,0,'',0,0,0,1,0),
(2552,1,'21400018','CUENTAS POR PAGAR COREANOS - CONSUMO MES','CUENTAS POR PAGAR COREANOS - CONSUMO MES','CUENTAS POR PAGAR COREANOS - CONSUMO MES',0,0,'',0,0,0,1,0),
(2553,1,'21400019','CUENTAS POR PAGAR GUATEMALTECOS - CONSUMO MES','CUENTAS POR PAGAR GUATEMALTECOS - CONSUMO MES','CUENTAS POR PAGAR GUATEMALTECOS - CONSUMO MES',0,0,'',0,0,0,1,0),
(2554,1,'21400020','PRESTACIONES LABORALES POR PAGAR','PRESTACIONES LABORALES POR PAGAR','PRESTACIONES LABORALES POR PAGAR',0,0,'',0,0,0,1,0),
(2555,1,'221','No Corriente','No Corriente','No Corriente',3,0,'',0,0,0,1,0),
(2556,1,'22100','Cuentas por Pagar Largo Plazo','Cuentas por Pagar Largo Plazo','Cuentas por Pagar Largo Plazo',1,0,'',0,0,0,1,0),
(2557,1,'22100001','Pr?stamos Bancarios','Pr?stamos Bancarios','Pr?stamos Bancarios',0,0,'',0,0,0,1,0),
(2558,1,'22100002','Otros Pr?stamos Largo Plazo','Otros Pr?stamos Largo Plazo','Otros Pr?stamos Largo Plazo',0,0,'',0,0,0,1,0),
(2559,1,'3','Capital','Capital','Capital',5,0,'',0,0,0,1,0),
(2560,1,'311','Capital','Capital','Capital',3,0,'',0,0,0,1,0),
(2561,1,'31100','Capital Social','Capital Social','Capital Social',1,0,'',0,0,0,1,0),
(2562,1,'31100001','Capital Autorizado','Capital Autorizado','Capital Autorizado',0,0,'',0,0,0,1,0),
(2563,1,'31100002','Acciones por Suscribir','Acciones por Suscribir','Acciones por Suscribir',0,0,'',0,0,0,1,0),
(2564,1,'31100003','Capital Suscrito y Pagado','Capital Suscrito y Pagado','Capital Suscrito y Pagado',0,0,'',0,0,0,1,0),
(2565,1,'31100004','Anticipos Futuros Aumentos de Capital','Anticipos Futuros Aumentos de Capital','Anticipos Futuros Aumentos de Capital',0,0,'',0,0,0,1,0),
(2566,1,'31200','Reservas','Reservas','Reservas',1,0,'',0,0,0,1,0),
(2567,1,'31200001','Reserva Legal','Reserva Legal','Reserva Legal',0,0,'',0,0,0,1,0),
(2568,1,'31200002','Otras Reservas','Otras Reservas','Otras Reservas',0,0,'',0,0,0,1,0),
(2569,1,'31300','Utilidades y Perdidas','Utilidades y Perdidas','Utilidades y Perdidas',1,0,'',0,0,0,1,0),
(2570,1,'31300001','Utilidades Acumuladas','Utilidades Acumuladas','Utilidades Acumuladas',0,0,'',0,0,0,1,0),
(2571,1,'31300002','P?rdidas Acumuladas','P?rdidas Acumuladas','P?rdidas Acumuladas',0,0,'',0,0,0,1,0),
(2572,1,'31300003','Resultado del Ejercicio 2016','Resultado del Ejercicio 2016','Resultado del Ejercicio 2016',0,0,'',0,0,0,1,0),
(2573,1,'31300004','P?rdidas Acumuladas 2014','P?rdidas Acumuladas 2014','P?rdidas Acumuladas 2014',0,0,'',0,0,0,1,0),
(2574,1,'31300005','P?rdidas Acumuladas 2015','P?rdidas Acumuladas 2015','P?rdidas Acumuladas 2015',0,0,'',0,0,0,1,0),
(2575,1,'4','Ingresos','Ingresos','Ingresos',5,0,'',0,0,0,1,0),
(2576,1,'411','Ingresos','Ingresos','Ingresos',3,0,'',0,0,0,1,0),
(2577,1,'41100','Locales','Locales','Locales',1,0,'',0,0,0,1,0),
(2578,1,'41100001','Prendas','Prendas','Prendas',0,0,'',0,0,0,1,0),
(2579,1,'41100002','Hilaza','Hilaza','Hilaza',0,0,'',0,0,0,1,0),
(2580,1,'41100003','Accesorios','Accesorios','Accesorios',0,0,'',0,0,0,1,0),
(2581,1,'41100004','Devoluciones y Rebajas','Devoluciones y Rebajas','Devoluciones y Rebajas',0,0,'',0,0,0,1,0),
(2582,1,'41100005','Desechos y Retazos','Desechos y Retazos','Desechos y Retazos',0,0,'',0,0,0,1,0),
(2583,1,'41200','Exportaciones','Exportaciones','Exportaciones',1,0,'',0,0,0,1,0),
(2584,1,'41200001','Prendas','Prendas','Prendas',0,0,'',0,0,0,1,0),
(2585,1,'41200002','Hilaza','Hilaza','Hilaza',0,0,'',0,0,0,1,0),
(2586,1,'41200003','Accesorios','Accesorios','Accesorios',0,0,'',0,0,0,1,0),
(2587,1,'41200004','Devoluciones y Rebajas','Devoluciones y Rebajas','Devoluciones y Rebajas',0,0,'',0,0,0,1,0),
(2588,1,'41300','Servicios y Otros Ingresos','Servicios y Otros Ingresos','Servicios y Otros Ingresos',1,0,'',0,0,0,1,0),
(2589,1,'41300001','Servicios 29-89','Servicios 29-89','Servicios 29-89',0,0,'',0,0,0,1,0),
(2590,1,'41300002','Otros Ingresos','Otros Ingresos','Otros Ingresos',0,0,'',0,0,0,1,0),
(2591,1,'41300003','Servicios','Servicios','Servicios',0,0,'',0,0,0,1,0),
(2592,1,'5','Costo de Ventas','Costo de Ventas','Costo de Ventas',5,0,'',0,0,0,1,0),
(2593,1,'511','Materiales Directos','Materiales Directos','Materiales Directos',3,0,'',0,0,0,1,0),
(2594,1,'51100','Locales','Locales','Locales',1,0,'',0,0,0,1,0),
(2595,1,'51100001','Materia Prima','Materia Prima','Materia Prima',0,0,'',0,0,0,1,0),
(2596,1,'51100002','Hilaza','Hilaza','Hilaza',0,0,'',0,0,0,1,0),
(2597,1,'51100003','Accesorios','Accesorios','Accesorios',0,0,'',0,0,0,1,0),
(2598,1,'51100004','Material de Empaque','Material de Empaque','Material de Empaque',0,0,'',0,0,0,1,0),
(2599,1,'51100005','OTROS DESCUENTOS','OTROS DESCUENTOS','OTROS DESCUENTOS',0,0,'',0,0,0,1,0),
(2600,1,'512','Importados','Importados','Importados',3,0,'',0,0,0,1,0),
(2601,1,'51200001','Materia Prima','Materia Prima','Materia Prima',0,0,'',0,0,0,1,0),
(2602,1,'51200002','Hilaza','Hilaza','Hilaza',0,0,'',0,0,0,1,0),
(2603,1,'51200003','Accesorios','Accesorios','Accesorios',0,0,'',0,0,0,1,0),
(2604,1,'51200004','Descuentos sobre compras','Descuentos sobre compras','Descuentos sobre compras',0,0,'',0,0,0,1,0),
(2605,1,'6','Costo de Producci?n','Costo de Producci?n','Costo de Producci?n',5,0,'',0,0,0,1,0),
(2606,1,'611','Costos Directos de Fabricaci?n','Costos Directos de Fabricaci?n','Costos Directos de Fabricaci?n',3,0,'',0,0,0,1,0),
(2607,1,'61100','Mano de Obra','Mano de Obra','Mano de Obra',1,0,'',0,0,0,1,0),
(2608,1,'61100001','Salarios Ordinarios','Salarios Ordinarios','Salarios Ordinarios',0,0,'',0,0,0,1,0),
(2609,1,'61100002','Salarios Extraordinarios','Salarios Extraordinarios','Salarios Extraordinarios',0,0,'',0,0,0,1,0),
(2610,1,'61100003','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001',0,0,'',0,0,0,1,0),
(2611,1,'61100004','Bonificaci?n de Productividad','Bonificaci?n de Productividad','Bonificaci?n de Productividad',0,0,'',0,0,0,1,0),
(2612,1,'61100005','Aguinaldo','Aguinaldo','Aguinaldo',0,0,'',0,0,0,1,0),
(2613,1,'61100006','Bonificaci?n Anual 14','Bonificaci?n Anual 14','Bonificaci?n Anual 14',0,0,'',0,0,0,1,0),
(2614,1,'61100007','Indemnizaci?n','Indemnizaci?n','Indemnizaci?n',0,0,'',0,0,0,1,0),
(2615,1,'61100008','Vacaciones','Vacaciones','Vacaciones',0,0,'',0,0,0,1,0),
(2616,1,'61100009','Cuota Patronal','Cuota Patronal','Cuota Patronal',0,0,'',0,0,0,1,0),
(2617,1,'61200','Otros costos de Produccion','Otros costos de Produccion','Otros costos de Produccion',1,0,'',0,0,0,1,0),
(2618,1,'61200001','Servicios de Coexportadores','Servicios de Coexportadores','Servicios de Coexportadores',0,0,'',0,0,0,1,0),
(2619,1,'61200002','Tr?mites Aduanales','Tr?mites Aduanales','Tr?mites Aduanales',0,0,'',0,0,0,1,0),
(2620,1,'61200003','Transporte Aereo','Transporte Aereo','Transporte Aereo',0,0,'',0,0,0,1,0),
(2621,1,'61200004','Transporte Mar?timo','Transporte Mar?timo','Transporte Mar?timo',0,0,'',0,0,0,1,0),
(2622,1,'61200005','Accesorios','Accesorios','Accesorios',0,0,'',0,0,0,1,0),
(2623,1,'61200006','Servicios de Serigraf?a','Servicios de Serigraf?a','Servicios de Serigraf?a',0,0,'',0,0,0,1,0),
(2624,1,'61200007','Etiquetas y otros','Etiquetas y otros','Etiquetas y otros',0,0,'',0,0,0,1,0),
(2625,1,'61200008','Confecci?n de Prendas','Confecci?n de Prendas','Confecci?n de Prendas',0,0,'',0,0,0,1,0),
(2626,1,'61200009','Tejedoras','Tejedoras','Tejedoras',0,0,'',0,0,0,1,0),
(2627,1,'61200010','Lavado y Te?ido','Lavado y Te?ido','Lavado y Te?ido',0,0,'',0,0,0,1,0),
(2628,1,'61200011','Dise?os','Dise?os','Dise?os',0,0,'',0,0,0,1,0),
(2629,1,'61200012','Gesti?n y atenci?n clientes','Gesti?n y atenci?n clientes','Gesti?n y atenci?n clientes',0,0,'',0,0,0,1,0),
(2630,1,'61200013','Estampados y procesos especiales en tela','Estampados y procesos especiales en tela','Estampados y procesos especiales en tela',0,0,'',0,0,0,1,0),
(2631,1,'61200014','Bordados','Bordados','Bordados',0,0,'',0,0,0,1,0),
(2632,1,'61200015','Gastos varios de producci?n','Gastos varios de producci?n','Gastos varios de producci?n',0,0,'',0,0,0,1,0),
(2633,1,'61200016','Servicios varios de producci?n','Servicios varios de producci?n','Servicios varios de producci?n',0,0,'',0,0,0,1,0),
(2634,1,'61200017','Tintas y Materiales de Serigrafia','Tintas y Materiales de Serigrafia','Tintas y Materiales de Serigrafia',0,0,'',0,0,0,1,0),
(2635,1,'61200018','Servicio de Bisuteria','Servicio de Bisuteria','Servicio de Bisuteria',0,0,'',0,0,0,1,0),
(2636,1,'61200019','Servicios Extraordinarios Temp','Servicios Extraordinarios Temp','Servicios Extraordinarios Temp',0,0,'',0,0,0,1,0),
(2637,1,'621','Costos Indirectos de Fabricaci?n','Costos Indirectos de Fabricaci?n','Costos Indirectos de Fabricaci?n',3,0,'',0,0,0,1,0),
(2638,1,'62100','Administraci?n','Administraci?n','Administraci?n',1,0,'',0,0,0,1,0),
(2639,1,'62100001','Salarios Ordinarios','Salarios Ordinarios','Salarios Ordinarios',0,0,'',0,0,0,1,0),
(2640,1,'62100002','Salarios Extraordinarios','Salarios Extraordinarios','Salarios Extraordinarios',0,0,'',0,0,0,1,0),
(2641,1,'62100003','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001',0,0,'',0,0,0,1,0),
(2642,1,'62100004','Bonificaci?n Productividad','Bonificaci?n Productividad','Bonificaci?n Productividad',0,0,'',0,0,0,1,0),
(2643,1,'62100005','Aguinaldo','Aguinaldo','Aguinaldo',0,0,'',0,0,0,1,0),
(2644,1,'62100006','Bonificaci?n Anual 14','Bonificaci?n Anual 14','Bonificaci?n Anual 14',0,0,'',0,0,0,1,0),
(2645,1,'62100007','Indemnizaci?n','Indemnizaci?n','Indemnizaci?n',0,0,'',0,0,0,1,0),
(2646,1,'62100008','Vacaciones','Vacaciones','Vacaciones',0,0,'',0,0,0,1,0),
(2647,1,'62100009','Cuota Patronal','Cuota Patronal','Cuota Patronal',0,0,'',0,0,0,1,0),
(2648,1,'62100010','Atenci?n a Empleados','Atenci?n a Empleados','Atenci?n a Empleados',0,0,'',0,0,0,1,0),
(2649,1,'62100011','Utencilios de Limpieza','Utencilios de Limpieza','Utencilios de Limpieza',0,0,'',0,0,0,1,0),
(2650,1,'62100012','Combustibles y Lubricantes','Combustibles y Lubricantes','Combustibles y Lubricantes',0,0,'',0,0,0,1,0),
(2651,1,'62100013','Gas Propano','Gas Propano','Gas Propano',0,0,'',0,0,0,1,0),
(2652,1,'62100014','I. D. P.','I. D. P.','I. D. P.',0,0,'',0,0,0,1,0),
(2653,1,'62100015','Uniformes','Uniformes','Uniformes',0,0,'',0,0,0,1,0),
(2654,1,'62100016','Papeler?a y ?tiles','Papeler?a y ?tiles','Papeler?a y ?tiles',0,0,'',0,0,0,1,0),
(2655,1,'62100017','Vi?ticos','Vi?ticos','Vi?ticos',0,0,'',0,0,0,1,0),
(2656,1,'62100018','Capacitaciones','Capacitaciones','Capacitaciones',0,0,'',0,0,0,1,0),
(2657,1,'62100019','Servicios Profesionales y T?cnicos','Servicios Profesionales y T?cnicos','Servicios Profesionales y T?cnicos',0,0,'',0,0,0,1,0),
(2658,1,'62100020','Extracci?n de Basura','Extracci?n de Basura','Extracci?n de Basura',0,0,'',0,0,0,1,0),
(2659,1,'62100021','Fumigaci?n','Fumigaci?n','Fumigaci?n',0,0,'',0,0,0,1,0),
(2660,1,'62100022','Tel?fono','Tel?fono','Tel?fono',0,0,'',0,0,0,1,0),
(2661,1,'62100023','Energ?a El?ctrica','Energ?a El?ctrica','Energ?a El?ctrica',0,0,'',0,0,0,1,0),
(2662,1,'62100024','Arrendamientos','Arrendamientos','Arrendamientos',0,0,'',0,0,0,1,0),
(2663,1,'62100025','Mobiliario y Equipo Gasto','Mobiliario y Equipo Gasto','Mobiliario y Equipo Gasto',0,0,'',0,0,0,1,0),
(2664,1,'62100026','Depreciaciones','Depreciaciones','Depreciaciones',0,0,'',0,0,0,1,0),
(2665,1,'62100027','Amortizaciones','Amortizaciones','Amortizaciones',0,0,'',0,0,0,1,0),
(2666,1,'62100028','Multas y Recargos','Multas y Recargos','Multas y Recargos',0,0,'',0,0,0,1,0),
(2667,1,'62100029','Agua Potable','Agua Potable','Agua Potable',0,0,'',0,0,0,1,0),
(2668,1,'62100030','Mantenimientos y Reparaciones','Mantenimientos y Reparaciones','Mantenimientos y Reparaciones',0,0,'',0,0,0,1,0),
(2669,1,'62100031','Materiales y Repuestos','Materiales y Repuestos','Materiales y Repuestos',0,0,'',0,0,0,1,0),
(2670,1,'62100032','Alquiler de Equipo','Alquiler de Equipo','Alquiler de Equipo',0,0,'',0,0,0,1,0),
(2671,1,'62100033','Seguro M?dico y Vida','Seguro M?dico y Vida','Seguro M?dico y Vida',0,0,'',0,0,0,1,0),
(2672,1,'62100034','Seguros','Seguros','Seguros',0,0,'',0,0,0,1,0),
(2673,1,'62100035','Gastos No Deducibles','Gastos No Deducibles','Gastos No Deducibles',0,0,'',0,0,0,1,0),
(2674,1,'62100036','Convivios','Convivios','Convivios',0,0,'',0,0,0,1,0),
(2675,1,'62100037','Almacenaje Materia Prima','Almacenaje Materia Prima','Almacenaje Materia Prima',0,0,'',0,0,0,1,0),
(2676,1,'62100038','An?lisis Laboratorio','An?lisis Laboratorio','An?lisis Laboratorio',0,0,'',0,0,0,1,0),
(2677,1,'62100039','I. U. S. I.','I. U. S. I.','I. U. S. I.',0,0,'',0,0,0,1,0),
(2678,1,'62100040','Servicio de Seguridad','Servicio de Seguridad','Servicio de Seguridad',0,0,'',0,0,0,1,0),
(2679,1,'62100041','Autoconsumo','Autoconsumo','Autoconsumo',0,0,'',0,0,0,1,0),
(2680,1,'62100042','Gastos Generales','Gastos Generales','Gastos Generales',0,0,'',0,0,0,1,0),
(2681,1,'62100043','Gastos de Importaci?n','Gastos de Importaci?n','Gastos de Importaci?n',0,0,'',0,0,0,1,0),
(2682,1,'62100044','Gastos de Exportaci?n','Gastos de Exportaci?n','Gastos de Exportaci?n',0,0,'',0,0,0,1,0),
(2683,1,'62100045','Entregas y Env?os','Entregas y Env?os','Entregas y Env?os',0,0,'',0,0,0,1,0),
(2684,1,'62100046','Fletes','Fletes','Fletes',0,0,'',0,0,0,1,0),
(2685,1,'62100047','Servicio de Parqueo','Servicio de Parqueo','Servicio de Parqueo',0,0,'',0,0,0,1,0),
(2686,1,'62100048','Servicio de Cable','Servicio de Cable','Servicio de Cable',0,0,'',0,0,0,1,0),
(2687,1,'62100049','Internet','Internet','Internet',0,0,'',0,0,0,1,0),
(2688,1,'62100050','Mensajer?a','Mensajer?a','Mensajer?a',0,0,'',0,0,0,1,0),
(2689,1,'62100051','Cafeter?a','Cafeter?a','Cafeter?a',0,0,'',0,0,0,1,0),
(2690,1,'62100052','Servicios extraordinarios','Servicios extraordinarios','Servicios extraordinarios',0,0,'',0,0,0,1,0),
(2691,1,'62100053','Comidas y pasajes','Comidas y pasajes','Comidas y pasajes',0,0,'',0,0,0,1,0),
(2692,1,'62100054','Atenciones varias','Atenciones varias','Atenciones varias',0,0,'',0,0,0,1,0),
(2693,1,'62100055','Medicinas','Medicinas','Medicinas',0,0,'',0,0,0,1,0),
(2694,1,'62100056','Atenci?n a Clientes','Atenci?n a Clientes','Atenci?n a Clientes',0,0,'',0,0,0,1,0),
(2695,1,'62100057','Servicios Extraordinarios K','Servicios Extraordinarios K','Servicios Extraordinarios K',0,0,'',0,0,0,1,0),
(2696,1,'62100058','Gastos de Fumigaci?n','Gastos de Fumigaci?n','Gastos de Fumigaci?n',0,0,'',0,0,0,1,0),
(2697,1,'62100059','ISR Gasto','ISR Gasto','ISR Gasto',0,0,'',0,0,0,1,0),
(2698,1,'62100060','SEGUROS Y FIANZAS','SEGUROS Y FIANZAS','SEGUROS Y FIANZAS',0,0,'',0,0,0,1,0),
(2699,1,'62100061','Repuestos y Accesorios','Repuestos y Accesorios','Repuestos y Accesorios',0,0,'',0,0,0,1,0),
(2700,1,'62100063','Gastos Evaluacion Ambiental','Gastos Evaluacion Ambiental','Gastos Evaluacion Ambiental',0,0,'',0,0,0,1,0),
(2701,1,'62100064','Publicidad','Publicidad','Publicidad',0,0,'',0,0,0,1,0),
(2702,1,'62100065','Herramientas Gasto','Herramientas Gasto','Herramientas Gasto',0,0,'',0,0,0,1,0),
(2703,1,'61100010','Cuota Patronal IRTRA','Cuota Patronal IRTRA','Cuota Patronal IRTRA',0,0,'',0,0,0,1,0),
(2704,1,'61100011','Cuota Patronal INTECAP','Cuota Patronal INTECAP','Cuota Patronal INTECAP',0,0,'',0,0,0,1,0),
(2705,1,'7','Gastos','Gastos','Gastos',5,0,'',0,0,0,1,0),
(2706,1,'711','Gastos de Operaci?n y Administraci?n','Gastos de Operaci?n y Administraci?n','Gastos de Operaci?n y Administraci?n',3,0,'',0,0,0,1,0),
(2707,1,'71100','Gastos Administraci?n','Gastos Administraci?n','Gastos Administraci?n',1,0,'',0,0,0,1,0),
(2708,1,'71100001','Salarios Ordinarios','Salarios Ordinarios','Salarios Ordinarios',0,0,'',0,0,0,1,0),
(2709,1,'71100002','Salarios Extraordinarios','Salarios Extraordinarios','Salarios Extraordinarios',0,0,'',0,0,0,1,0),
(2710,1,'71100003','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001','Bonificaci?n Dto 37-2001',0,0,'',0,0,0,1,0),
(2711,1,'71100004','Bonificaci?n Productividad','Bonificaci?n Productividad','Bonificaci?n Productividad',0,0,'',0,0,0,1,0),
(2712,1,'71100005','Aguinaldo','Aguinaldo','Aguinaldo',0,0,'',0,0,0,1,0),
(2713,1,'71100006','Bonificaci?n Anual 14','Bonificaci?n Anual 14','Bonificaci?n Anual 14',0,0,'',0,0,0,1,0),
(2714,1,'71100007','Indemnizaci?n','Indemnizaci?n','Indemnizaci?n',0,0,'',0,0,0,1,0),
(2715,1,'71100008','Vacaciones','Vacaciones','Vacaciones',0,0,'',0,0,0,1,0),
(2716,1,'71100009','Cuota Patronal','Cuota Patronal','Cuota Patronal',0,0,'',0,0,0,1,0),
(2717,1,'71100010','Atenci?n a Empleados','Atenci?n a Empleados','Atenci?n a Empleados',0,0,'',0,0,0,1,0),
(2718,1,'71100011','Utencilios de Limpieza','Utencilios de Limpieza','Utencilios de Limpieza',0,0,'',0,0,0,1,0),
(2719,1,'71100012','Combustibles y Lubricantes','Combustibles y Lubricantes','Combustibles y Lubricantes',0,0,'',0,0,0,1,0),
(2720,1,'71100013','Gas Propano','Gas Propano','Gas Propano',0,0,'',0,0,0,1,0),
(2721,1,'71100014','I. D. P.','I. D. P.','I. D. P.',0,0,'',0,0,0,1,0),
(2722,1,'71100015','Uniformes','Uniformes','Uniformes',0,0,'',0,0,0,1,0),
(2723,1,'71100016','Papeler?a y ?tiles','Papeler?a y ?tiles','Papeler?a y ?tiles',0,0,'',0,0,0,1,0),
(2724,1,'71100017','Vi?ticos','Vi?ticos','Vi?ticos',0,0,'',0,0,0,1,0),
(2725,1,'71100018','Capacitaciones','Capacitaciones','Capacitaciones',0,0,'',0,0,0,1,0),
(2726,1,'71100019','Servicios Profesionales y T?cnicos','Servicios Profesionales y T?cnicos','Servicios Profesionales y T?cnicos',0,0,'',0,0,0,1,0),
(2727,1,'71100020','Extacci?n de Basura','Extacci?n de Basura','Extacci?n de Basura',0,0,'',0,0,0,1,0),
(2728,1,'71100021','Fumigaci?n','Fumigaci?n','Fumigaci?n',0,0,'',0,0,0,1,0),
(2729,1,'71100022','Tel?fono','Tel?fono','Tel?fono',0,0,'',0,0,0,1,0),
(2730,1,'71100023','Energ?a El?ctrica','Energ?a El?ctrica','Energ?a El?ctrica',0,0,'',0,0,0,1,0),
(2731,1,'71100024','Arrendamientos','Arrendamientos','Arrendamientos',0,0,'',0,0,0,1,0),
(2732,1,'71100025','Mobiliario y Equipo Gasto','Mobiliario y Equipo Gasto','Mobiliario y Equipo Gasto',0,0,'',0,0,0,1,0),
(2733,1,'71100026','Depreciaciones','Depreciaciones','Depreciaciones',0,0,'',0,0,0,1,0),
(2734,1,'71100027','Amortizaciones','Amortizaciones','Amortizaciones',0,0,'',0,0,0,1,0),
(2735,1,'71100028','Multas y Recargos','Multas y Recargos','Multas y Recargos',0,0,'',0,0,0,1,0),
(2736,1,'71100029','Agua Potable','Agua Potable','Agua Potable',0,0,'',0,0,0,1,0),
(2737,1,'71100030','Mantenimiento y Reparacion','Mantenimiento y Reparacion','Mantenimiento y Reparacion',0,0,'',0,0,0,1,0),
(2738,1,'71100031','Materiales y Repuestos','Materiales y Repuestos','Materiales y Repuestos',0,0,'',0,0,0,1,0),
(2739,1,'71100032','Alquiler de Equipo','Alquiler de Equipo','Alquiler de Equipo',0,0,'',0,0,0,1,0),
(2740,1,'71100033','Seguro M?dico y Vida','Seguro M?dico y Vida','Seguro M?dico y Vida',0,0,'',0,0,0,1,0),
(2741,1,'71100034','Seguros','Seguros','Seguros',0,0,'',0,0,0,1,0),
(2742,1,'71100035','Gastos No Deducibles','Gastos No Deducibles','Gastos No Deducibles',0,0,'',0,0,0,1,0),
(2743,1,'71100036','Convivios','Convivios','Convivios',0,0,'',0,0,0,1,0),
(2744,1,'71100037','Almacenaje Materia Prima','Almacenaje Materia Prima','Almacenaje Materia Prima',0,0,'',0,0,0,1,0),
(2745,1,'71100038','An?lisis Laboratorio','An?lisis Laboratorio','An?lisis Laboratorio',0,0,'',0,0,0,1,0),
(2746,1,'71100039','I. U. S. I.','I. U. S. I.','I. U. S. I.',0,0,'',0,0,0,1,0),
(2747,1,'71100040','Servicio de Seguridad','Servicio de Seguridad','Servicio de Seguridad',0,0,'',0,0,0,1,0),
(2748,1,'71100041','Autoconsumo','Autoconsumo','Autoconsumo',0,0,'',0,0,0,1,0),
(2749,1,'71100042','Gastos Generales','Gastos Generales','Gastos Generales',0,0,'',0,0,0,1,0),
(2750,1,'71100043','Impuestos y Contribuciones','Impuestos y Contribuciones','Impuestos y Contribuciones',0,0,'',0,0,0,1,0),
(2751,1,'71100044','Cuentas Incobrables','Cuentas Incobrables','Cuentas Incobrables',0,0,'',0,0,0,1,0),
(2752,1,'71100045','Alquiler Veh?culos','Alquiler Veh?culos','Alquiler Veh?culos',0,0,'',0,0,0,1,0),
(2753,1,'71100046','Suscripciones y Publicaciones','Suscripciones y Publicaciones','Suscripciones y Publicaciones',0,0,'',0,0,0,1,0),
(2754,1,'71100047','Gastos de Representaci?n','Gastos de Representaci?n','Gastos de Representaci?n',0,0,'',0,0,0,1,0),
(2755,1,'71100048','Mantenimiento Veh?culos','Mantenimiento Veh?culos','Mantenimiento Veh?culos',0,0,'',0,0,0,1,0),
(2756,1,'71100049','Gastos de Viaje','Gastos de Viaje','Gastos de Viaje',0,0,'',0,0,0,1,0),
(2757,1,'71100050','Entregas y Env?os','Entregas y Env?os','Entregas y Env?os',0,0,'',0,0,0,1,0),
(2758,1,'71100051','Fletes','Fletes','Fletes',0,0,'',0,0,0,1,0),
(2759,1,'71100052','Servicio de Parqueo','Servicio de Parqueo','Servicio de Parqueo',0,0,'',0,0,0,1,0),
(2760,1,'71100053','Servicio de Cable','Servicio de Cable','Servicio de Cable',0,0,'',0,0,0,1,0),
(2761,1,'71100054','Internet','Internet','Internet',0,0,'',0,0,0,1,0),
(2762,1,'71100055','Mensajer?a','Mensajer?a','Mensajer?a',0,0,'',0,0,0,1,0),
(2763,1,'71100056','Cafeter?a','Cafeter?a','Cafeter?a',0,0,'',0,0,0,1,0),
(2764,1,'71100057','Servicios extraordinarios','Servicios extraordinarios','Servicios extraordinarios',0,0,'',0,0,0,1,0),
(2765,1,'71100058','Comidas y pasajes','Comidas y pasajes','Comidas y pasajes',0,0,'',0,0,0,1,0),
(2766,1,'71100059','Atenciones varias','Atenciones varias','Atenciones varias',0,0,'',0,0,0,1,0),
(2767,1,'71100060','Medicinas','Medicinas','Medicinas',0,0,'',0,0,0,1,0),
(2768,1,'71100061','Atenci?n a Clientes','Atenci?n a Clientes','Atenci?n a Clientes',0,0,'',0,0,0,1,0),
(2769,1,'71100062','Servicios Extraordinarios K','Servicios Extraordinarios K','Servicios Extraordinarios K',0,0,'',0,0,0,1,0),
(2770,1,'71100063','Gastos de Fumigaci?n','Gastos de Fumigaci?n','Gastos de Fumigaci?n',0,0,'',0,0,0,1,0),
(2771,1,'71100064','Licencias y Programas Gasto','Licencias y Programas Gasto','Licencias y Programas Gasto',0,0,'',0,0,0,1,0),
(2772,1,'71100065','Donaciones','Donaciones','Donaciones',0,0,'',0,0,0,1,0),
(2773,1,'71100066','Cuota Patronal IRTRA','Cuota Patronal IRTRA','Cuota Patronal IRTRA',0,0,'',0,0,0,1,0),
(2774,1,'71100067','Cuota Patronal INTECAP','Cuota Patronal INTECAP','Cuota Patronal INTECAP',0,0,'',0,0,0,1,0),
(2775,1,'71100068','I.S.R. GASTO','I.S.R. GASTO','I.S.R. GASTO',0,0,'',0,0,0,1,0),
(2776,1,'8','Otros Ingresos y Gastos Financieros','Otros Ingresos y Gastos Financieros','Otros Ingresos y Gastos Financieros',5,0,'',0,0,0,1,0),
(2777,1,'811','Otros Ingresos y Gastos Financieros','Otros Ingresos y Gastos Financieros','Otros Ingresos y Gastos Financieros',3,0,'',0,0,0,1,0),
(2778,1,'81100','Otros Ingresos','Otros Ingresos','Otros Ingresos',1,0,'',0,0,0,1,0),
(2779,1,'81100001','Intereses Producto','Intereses Producto','Intereses Producto',0,0,'',0,0,0,1,0),
(2780,1,'81100002','Otros ingresos no facturados','Otros ingresos no facturados','Otros ingresos no facturados',0,0,'',0,0,0,1,0),
(2781,1,'81100003','Diferencial Cambiario (Producto)','Diferencial Cambiario (Producto)','Diferencial Cambiario (Producto)',0,0,'',0,0,0,1,0),
(2782,1,'81100004','Ganancia o P?rdida de Capital','Ganancia o P?rdida de Capital','Ganancia o P?rdida de Capital',0,0,'',0,0,0,1,0),
(2783,1,'81100005','Intereses Producto (Prestamos)','Intereses Producto (Prestamos)','Intereses Producto (Prestamos)',0,0,'',0,0,0,1,0),
(2784,1,'81200','Otros Gastos','Otros Gastos','Otros Gastos',1,0,'',0,0,0,1,0),
(2785,1,'81200001','Intereses Gasto','Intereses Gasto','Intereses Gasto',0,0,'',0,0,0,1,0),
(2786,1,'81200002','Comisi?n Bancaria','Comisi?n Bancaria','Comisi?n Bancaria',0,0,'',0,0,0,1,0),
(2787,1,'81200003','Otros Gastos Financieros','Otros Gastos Financieros','Otros Gastos Financieros',0,0,'',0,0,0,1,0),
(2788,1,'81200004','Diferencial Cambiario (Gasto)\r','Diferencial Cambiario (Gasto)\r','Diferencial Cambiario (Gasto)\r',0,0,'',0,0,0,1,0);

/*Table structure for table `codes` */

DROP TABLE IF EXISTS `codes`;

CREATE TABLE `codes` (
  `Idx` int(11) NOT NULL,
  `Priority` int(11) NOT NULL DEFAULT '1',
  `Classification` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Contents` varchar(200) DEFAULT NULL,
  `SubCode1` varchar(50) DEFAULT NULL,
  `SubCode2` varchar(50) DEFAULT NULL,
  `SubCode3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `codes` */

insert  into `codes`(`Idx`,`Priority`,`Classification`,`Contents`,`SubCode1`,`SubCode2`,`SubCode3`) values 
(1,1,'Server Type','Database','','',''),
(2,2,'Server Type','Azure Storage','','',''),
(3,3,'Server Type','Local Dev','','',''),
(4,1,'IsPrinting','No','','',''),
(5,2,'IsPrinting','Fabric Print','','',''),
(12,1,'IsPrinting','Screen Print','','',''),
(13,1,'ShipTerm','EXW','','',''),
(14,1,'ShipTerm','FOB','','',''),
(15,1,'ShipTerm','LDP','','',''),
(16,1,'VsslAir','LAND','','',''),
(17,1,'VsslAir','VSSL','','',''),
(18,1,'VsslAir','AIR','','',''),
(19,0,'Destination','Mexico','MX','147',''),
(20,0,'Destination','Ohio','','76',''),
(21,0,'Destination','Dallas, TX','','76',''),
(22,0,'Destination','LA','','76',''),
(23,0,'Destination','Europe','','1',''),
(24,1,'Customer Class','Buyer','','',''),
(25,1,'Customer Class','Embellishment','','',''),
(26,1,'Customer Class','Knit','Knit','',''),
(27,1,'Customer Class','Yarn Supplier','','',''),
(28,1,'Customer Class','Bank','','',''),
(29,1,'Customer Class','Trim','','',''),
(30,1,'Customer Class','Sew','Costura','',''),
(31,1,'Customer Class','Print','','',''),
(32,1,'Customer Class','Dye','Dye','',''),
(33,1,'Customer Class','Wash','Wash','',''),
(34,0,'IsPrinting','Stone','','',''),
(35,0,'IsPrinting','Sublimation','','',''),
(36,0,'Program','Sales','All','',''),
(37,0,'Program','Yarn','All','',''),
(83,0,'IsPrinting','Embroidery','','',''),
(84,0,'IsPrinting','Etc.','','',''),
(85,0,'IsPrinting','Screen Print + Embroidery','','',''),
(86,0,'ShipTerm','DDP','','',''),
(87,0,'Destination','ETNA','EA','1',''),
(88,0,'Destination','GC','','1',''),
(89,0,'Destination','Georgia','','76',''),
(90,0,'Destination','Indiana','','76',''),
(91,0,'Destination','Kentucky','','76',''),
(92,0,'Destination','Miami','','76',''),
(93,0,'Destination','Monetti','','1',''),
(94,0,'Destination','Orlando','','76',''),
(95,0,'Destination','Philadelphia','','76',''),
(96,0,'Destination','Van Nuys','','76',''),
(97,0,'Destination','Winder','','1',''),
(98,0,'Program','System','All','',''),
(99,0,'Package','interp','','',''),
(100,0,'Package','intsample','','',''),
(101,0,'Package','intsystem','','',''),
(102,0,'Customer Class','Trim (Sewing Thread)','','',''),
(109,0,'Origin','Guatemala, C.A.','','',''),
(110,1,'Operation','Pattern','2','',''),
(111,2,'Operation','Cut','3','',''),
(112,3,'Operation','Print','4','',''),
(113,4,'Operation','Embroidery','5','',''),
(114,5,'Operation','Sew','6','',''),
(115,6,'Operation','Inspection','9','',''),
(116,0,'Operation','Fabric','1','',''),
(117,0,'Fabric Type','Single Jersey','','',''),
(118,0,'Fabric Type','Rib','','',''),
(119,0,'PO Category','MH BTM','23','',''),
(120,0,'PO Category','MH TOP','23','',''),
(121,0,'PO Category','MH PLS BTM','23','',''),
(122,0,'PO Category','MH PLS TOP','23','',''),
(123,0,'PO Category','APIP BTM','23','',''),
(124,0,'PO Category','APIP TOP','23','',''),
(125,0,'DB Column Type','NVARCHAR','Str','',''),
(126,0,'DB Column Type','INT','Num','',''),
(127,0,'DB Column Type','BIT','True ','',''),
(128,0,'DB Column Type','DATETIME','Date ','',''),
(129,0,'DB Column Type','REAL','Money','',''),
(130,0,'VsslAir','Boat','','',''),
(131,0,'Destination','New Jersey','','76',''),
(132,0,'Program','Fabric','All','',''),
(133,0,'Program','Production','All','',''),
(134,0,'Program','Outbound','All','',''),
(135,1,'Program','Codes','All','',''),
(136,1,'Program','Accounting','All','',''),
(137,1,'Program','Closing','All','',''),
(138,0,'Program','EIS','All','',''),
(139,0,'Program','Pattern','All','',''),
(140,0,'Destination','Lynchburg','','76',''),
(141,0,'Destination','VA','VA','76',''),
(142,0,'IsPrinting','Washing','','',''),
(143,0,'Warehouse','Fabric','','',''),
(144,0,'Warehouse','Accessories','','',''),
(145,0,'Warehouse','Finish','','',''),
(146,0,'Customer Class','Fabric','','',''),
(147,0,'Fabric Type','Slub Single','','',''),
(148,0,'PO Category','Normal','21','',''),
(149,0,'PO Category','Big & Tall','21','',''),
(150,0,'Destination','Dubai','','1',''),
(151,0,'Destination','Hong Kong','HK','104',''),
(152,0,'Destination','Netherlands','NL','167',''),
(153,0,'Destination','Shanghai','','1',''),
(155,0,'ShipTerm','FCA','','',''),
(156,0,'Fabric Type','Rib 1x1','','',''),
(157,0,'Fabric Type','Rib 2x2','','',''),
(158,0,'Operation','Wash','8','',''),
(160,0,'Operation','Stone','6','',''),
(161,0,'IsPrinting','Screen Print + Washing','','',''),
(162,0,'Destination','Singapore','','1',''),
(163,0,'Operation','Shipment','10','',''),
(164,0,'Color Sub Option','Tubo','','',''),
(165,0,'Color Sub Option','Panel','','',''),
(166,0,'Color Sub Option','Strike Off','','',''),
(167,0,'Currency','USD','$','',''),
(168,0,'Currency','QTZ','Q','',''),
(169,0,'Document Type','Factura','','',''),
(170,0,'Document Type','Recibo','','',''),
(171,0,'Document Type','Invoice','','',''),
(172,0,'Document Type','Nota Credito','','',''),
(173,0,'Document Type','Nota Debito','','',''),
(174,0,'Document Type','Pequeno Contribuyente','','',''),
(175,0,'Document Type','Factura Insumos','','',''),
(176,0,'Document Type','Factura Importacion','','',''),
(177,0,'Purchase Type','Bien','','',''),
(178,0,'Purchase Type','Servicio','','',''),
(179,0,'Purchase Type','Combustible Super','','',''),
(180,0,'Purchase Type','Combustible Regular','','',''),
(181,0,'Purchase Type','Combustible Diesel','','',''),
(182,0,'Purchase Type','Gas Propano','','',''),
(183,0,'App IsNotify','1','','',''),
(184,0,'App IsNotifyDelay','1','','',''),
(185,0,'App LimitDelay','30','','',''),
(186,0,'App MaxApprover','5','','',''),
(187,0,'App Debit Class','Ingreso','1','매출',''),
(188,0,'App Debit Class','Hilaza','2','원사',''),
(189,0,'App Debit Class','Tela','3','원단가공',''),
(190,0,'App Debit Class','Importacion de Tela','4','원단사입',''),
(191,0,'App Debit Class','Material','5','부자재',''),
(192,0,'App Debit Class','Import Export','6','수출입',''),
(193,0,'App Debit Class','Gastos General','7','일반경비',''),
(194,0,'App Debit Class','Otros','8','기타',''),
(195,0,'Debit Division','Egreso','Debit','',''),
(196,0,'Debit Division','Ingreso','Credi','',''),
(197,0,'Acc Distribute','Gastos Directos','직접비','',''),
(198,0,'Acc Distribute','Gastos Indirectos (Departamento)','간접비 (부서)','',''),
(199,0,'Acc Distribute','Gastos Indirectos (Com?n)','간접비 (공통)','',''),
(200,0,'Acc DistributeWay','Por Cantidad de Orden','','',''),
(201,0,'Acc DistributeWay','Por Monto de Orden','','',''),
(202,0,'Cost Rates of Admin','9','관리비%','',''),
(203,0,'Acc DistributeWay','Por Cantidad de Exportacion','','',''),
(204,0,'Acc DistributeWay','Por Monto de Exportacion','','',''),
(205,0,'Units','Pcs','87','1',''),
(206,0,'Units','EA','','1',''),
(207,0,'Units','Kgs','80','38',''),
(208,0,'Units','Yds','','8',''),
(209,0,'Units','M','','',''),
(210,0,'Units','Cm','','',''),
(211,0,'Units','mm','','',''),
(212,0,'Acc Payment Method','Wire','','',''),
(213,0,'Acc Payment Method','Check','','',''),
(214,0,'Acc Payment Method','Cash','','',''),
(215,0,'Acc Dates','In Date','','',''),
(216,0,'Acc Dates','Due Date','','',''),
(217,0,'Acc Dates','Confirm Date','','',''),
(218,0,'Acc Dates','Plan Date','','',''),
(219,0,'Acc Dates','Paid Date','','',''),
(220,0,'Acc Dates','Close Date','','',''),
(221,1,'App Position','President','사장','',''),
(222,2,'App Position','Senior Executive Vice President','부사장','',''),
(223,3,'App Position','Senior Managing Director','전무','',''),
(224,4,'App Position','Managing Director','상무','',''),
(225,6,'App Position','General Manager','부장','',''),
(226,7,'App Position','Deputy General Manager','차장','',''),
(227,8,'App Position','General Manager','실장','',''),
(228,9,'App Position','Manager','과장','',''),
(229,10,'App Position','Assistant Manager','대리','',''),
(230,11,'App Position','Chief','계장','',''),
(231,12,'App Position','Staff','사원','',''),
(232,5,'App Position','Director','이사','',''),
(233,0,'Exception Group','Team Manager Group','팀장급','',''),
(234,0,'Nationality','Guatemala','','',''),
(235,0,'Nationality','South Korea','','',''),
(236,0,'Program','Purchase','All','',''),
(237,0,'Trim1','Sewing Trim','봉제','',''),
(238,0,'Trim1','Packing Trim','완성','',''),
(239,0,'Customer Class','Yarn Warehouse','','',''),
(240,0,'Customer Class','Yarn Maker','','',''),
(241,0,'Program','Inventory','All','',''),
(242,0,'Program','Payment','All','',''),
(243,0,'Fabric Type','French Terry','','',''),
(244,0,'Fabric Type','Pique','','',''),
(245,0,'Trim2','Hilo','8','',''),
(246,0,'Trim2','Main Label','11','',''),
(247,0,'Trim2','Size Label','13','',''),
(248,0,'Trim2','Care Label','2','',''),
(249,0,'Trim2','Id','9','',''),
(250,0,'Trim2','Elastico','5','',''),
(251,0,'Trim2','Boton','1','',''),
(252,0,'Trim2','Transfer','16','',''),
(253,0,'Trim2','Hanger Loop','7','',''),
(254,0,'Trim2','Twill Tape','17','',''),
(255,0,'Trim2','Snap','15','',''),
(256,0,'Trim2','Slaider','14','',''),
(257,0,'Trim2','Draw Cord','3','',''),
(258,0,'Trim2','Grommets','6','',''),
(259,0,'Trim2','D-ring','4','',''),
(260,0,'Trim2','Interfacing','10','',''),
(261,0,'Trim2','Mobilon','12','',''),
(262,0,'Trim2','-','18','',''),
(263,0,'Trim2','-','19','',''),
(264,0,'Trim2','-','20','',''),
(265,0,'Fabric Type','Thermal','','',''),
(266,0,'Fabric Type','Mini Zurry','','',''),
(267,0,'Fabric Type','Rib 2x1','','',''),
(268,0,'Fabric Type','Rib 4x2','','',''),
(269,0,'Fabric Type','Yoko','','',''),
(270,0,'Fabric Type','Interlock','','',''),
(271,0,'Fabric Type','Baby Pointel','','',''),
(272,0,'Fabric Type','Fleece','','',''),
(273,0,'Program','Impexp','All','',''),
(274,0,'PO Category','MIMI','23','',''),
(275,0,'Fabric Type','Rib 3x3','','',''),
(276,0,'Fabric Type','Burnout','','',''),
(277,0,'Fabric Type','Drop Needle','','',''),
(278,0,'Period Time','5 Minutes','300000','',''),
(279,0,'Period Time','10 Minutes','600000','',''),
(280,0,'Period Time','30 Minutes','1800000','',''),
(281,0,'Period Time','60 Minutes','3600000','',''),
(282,0,'Period Time','3 Hours','10800000','',''),
(283,0,'Period Time','6 Hours','21600000','',''),
(284,0,'Period Time','12 Hours','43200000','',''),
(285,0,'Pattern Type','Muestra','','',''),
(286,0,'Pattern Type','Grading','','',''),
(287,0,'Pattern Type','Para Planta','','',''),
(288,0,'Pattern Type','Cliente','','',''),
(289,0,'Pattern Type','Reorden','','',''),
(290,0,'Pattern Type','Modification','','',''),
(291,0,'Pattern Type','E-PTTN','','',''),
(292,0,'Pattern Type','3D','','',''),
(293,0,'Destination','Guatemala','GT','1',''),
(294,0,'Destination','United States of America','US','76',''),
(295,0,'Units','Mt2','83','18',''),
(301,0,'Proveedor Type','Co-Ex','','',''),
(302,0,'Proveedor Type','SubContratista','','',''),
(303,0,'Destination','Afghanistan','AF','1',''),
(305,0,'Destination','Albania','AL','1',''),
(306,0,'Destination','Algeria','DZ','1',''),
(307,0,'Destination','American Samoa','AS','1',''),
(308,0,'Destination','Andorra','AD','1',''),
(309,0,'Destination','Angola','AO','1',''),
(310,0,'Destination','Anguilla','AI','1',''),
(311,0,'Destination','Antarctica','AQ','1',''),
(312,0,'Destination','Antigua and Barbuda','AG','1',''),
(313,0,'Destination','Argentina','AR','1',''),
(314,0,'Destination','Armenia','AM','1',''),
(315,0,'Destination','Aruba','AW','1',''),
(316,0,'Destination','Australia','AU','1',''),
(317,0,'Destination','Austria','AT','1',''),
(318,0,'Destination','Azerbaijan','AZ','1',''),
(319,0,'Destination','Bahamas','BS','1',''),
(320,0,'Destination','Bahrain','BH','1',''),
(321,0,'Destination','Bangladesh','BD','1',''),
(322,0,'Destination','Barbados','BB','1',''),
(323,0,'Destination','Belarus','BY','1',''),
(324,0,'Destination','Belgium','BE','1',''),
(325,0,'Destination','Belize','BZ','1',''),
(326,0,'Destination','Benin','BJ','1',''),
(327,0,'Destination','Bermuda','BM','1',''),
(328,0,'Destination','Bhutan','BT','1',''),
(329,0,'Destination','Bolivia (Plurinational State of)','BO','1',''),
(331,0,'Destination','Bosnia and Herzegovina','BA','1',''),
(332,0,'Destination','Botswana','BW','1',''),
(333,0,'Destination','Bouvet Island','BV','1',''),
(334,0,'Destination','Brazil','BR','1',''),
(335,0,'Destination','British Indian Ocean Territory','IO','1',''),
(336,0,'Destination','Brunei Darussalam','BN','1',''),
(337,0,'Destination','Bulgaria','BG','1',''),
(338,0,'Destination','Burkina Faso','BF','1',''),
(339,0,'Destination','Burundi','BI','1',''),
(340,0,'Destination','Cabo Verde','CV','1',''),
(341,0,'Destination','Cambodia','KH','1',''),
(342,0,'Destination','Cameroon','CM','1',''),
(343,0,'Destination','Canada','CA','43',''),
(344,0,'Destination','Cayman Islands','KY','1',''),
(345,0,'Destination','Central African Republic','CF','1',''),
(346,0,'Destination','Chad','TD','1',''),
(347,0,'Destination','Chile','CL','1',''),
(348,0,'Destination','China','CN','48',''),
(349,0,'Destination','Christmas Island','CX','1',''),
(350,0,'Destination','Cocos (Keeling) Islands','CC','1',''),
(351,0,'Destination','Colombia','CO','1',''),
(352,0,'Destination','Comoros','KM','1',''),
(353,0,'Destination','Congo','CG','1',''),
(354,0,'Destination','Congo (Democratic Republic of the)','CD','1',''),
(355,0,'Destination','Cook Islands','CK','1',''),
(356,0,'Destination','Costa Rica','CR','1',''),
(357,0,'Destination','C?te d\'Ivoire','CI','1',''),
(358,0,'Destination','Croatia','HR','1',''),
(359,0,'Destination','Cuba','CU','1',''),
(360,0,'Destination','Cura?ao','CW','1',''),
(361,0,'Destination','Cyprus','CY','1',''),
(362,0,'Destination','Czechia','CZ','1',''),
(363,0,'Destination','Denmark','DK','1',''),
(364,0,'Destination','Djibouti','DJ','1',''),
(365,0,'Destination','Dominica','DM','1',''),
(366,0,'Destination','Dominican Republic','DO','1',''),
(367,0,'Destination','Ecuador','EC','1',''),
(368,0,'Destination','Egypt','EG','1',''),
(369,0,'Destination','El Salvador','SV','69',''),
(370,0,'Destination','Equatorial Guinea','GQ','1',''),
(371,0,'Destination','Eritrea','ER','1',''),
(372,0,'Destination','Estonia','EE','1',''),
(373,0,'Destination','Ethiopia','ET','1',''),
(374,0,'Destination','Falkland Islands (Malvinas)','FK','1',''),
(375,0,'Destination','Faroe Islands','FO','1',''),
(376,0,'Destination','Fiji','FJ','1',''),
(377,0,'Destination','Finland','FI','1',''),
(378,0,'Destination','France','FR','1',''),
(379,0,'Destination','French Guiana','GF','1',''),
(380,0,'Destination','French Polynesia','PF','1',''),
(381,0,'Destination','French Southern Territories','TF','1',''),
(382,0,'Destination','Gabon','GA','1',''),
(383,0,'Destination','Gambia','GM','1',''),
(384,0,'Destination','Georgia','GE','1',''),
(385,0,'Destination','Germany','DE','1',''),
(386,0,'Destination','Ghana','GH','1',''),
(387,0,'Destination','Gibraltar','GI','1',''),
(388,0,'Destination','Greece','GR','1',''),
(389,0,'Destination','Greenland','GL','1',''),
(390,0,'Destination','Grenada','GD','1',''),
(391,0,'Destination','Guadeloupe','GP','1',''),
(392,0,'Destination','Guam','GU','1',''),
(394,0,'Destination','Guernsey','GG','1',''),
(395,0,'Destination','Guinea','GN','1',''),
(396,0,'Destination','Guinea-Bissau','GW','1',''),
(397,0,'Destination','Guyana','GY','1',''),
(398,0,'Destination','Haiti','HT','1',''),
(399,0,'Destination','Heard Island and McDonald Islands','HM','1',''),
(400,0,'Destination','Holy See','VA','1',''),
(401,0,'Destination','Honduras','HN','1',''),
(403,0,'Destination','Hungary','HU','1',''),
(404,0,'Destination','Iceland','IS','1',''),
(405,0,'Destination','India','IN','1',''),
(406,0,'Destination','Indonesia','ID','1',''),
(407,0,'Destination','Iran (Islamic Republic of)','IR','1',''),
(408,0,'Destination','Iraq','IQ','1',''),
(409,0,'Destination','Ireland','IE','1',''),
(410,0,'Destination','Isle of Man','IM','1',''),
(411,0,'Destination','Israel','IL','1',''),
(412,0,'Destination','Italy','IT','1',''),
(413,0,'Destination','Jamaica','JM','1',''),
(414,0,'Destination','Japan','JP','1',''),
(416,0,'Destination','Jordan','JO','1',''),
(417,0,'Destination','Kazakhstan','KZ','1',''),
(418,0,'Destination','Kenya','KE','1',''),
(419,0,'Destination','Kiribati','KI','1',''),
(421,0,'Destination','Korea (Republic of)','KR','1',''),
(422,0,'Destination','Kuwait','KW','1',''),
(423,0,'Destination','Kyrgyzstan','KG','1',''),
(424,0,'Destination','Lao People\'s Democratic Republic','LA','122',''),
(425,0,'Destination','Latvia','LV','1',''),
(426,0,'Destination','Lebanon','LB','1',''),
(427,0,'Destination','Lesotho','LS','1',''),
(428,0,'Destination','Liberia','LR','1',''),
(429,0,'Destination','Libya','LY','1',''),
(430,0,'Destination','Liechtenstein','LI','1',''),
(431,0,'Destination','Lithuania','LT','1',''),
(432,0,'Destination','Luxembourg','LU','1',''),
(433,0,'Destination','Macao','MO','1',''),
(434,0,'Destination','Macedonia (the former Yugoslav Republic of)','MK','1',''),
(435,0,'Destination','Madagascar','MG','1',''),
(436,0,'Destination','Malawi','MW','1',''),
(437,0,'Destination','Malaysia','MY','1',''),
(438,0,'Destination','Maldives','MV','1',''),
(439,0,'Destination','Mali','ML','1',''),
(440,0,'Destination','Malta','MT','1',''),
(441,0,'Destination','Marshall Islands','MH','1',''),
(442,0,'Destination','Martinique','MQ','1',''),
(443,0,'Destination','Mauritania','MR','1',''),
(444,0,'Destination','Mauritius','MU','1',''),
(445,0,'Destination','Mayotte','YT','1',''),
(447,0,'Destination','Micronesia (Federated States of)','FM','1',''),
(448,0,'Destination','Moldova (Republic of)','MD','1',''),
(449,0,'Destination','Monaco','MC','1',''),
(450,0,'Destination','Mongolia','MN','1',''),
(451,0,'Destination','Montenegro','ME','1',''),
(452,0,'Destination','Montserrat','MS','1',''),
(453,0,'Destination','Morocco','MA','1',''),
(454,0,'Destination','Mozambique','MZ','1',''),
(455,0,'Destination','Myanmar','MM','1',''),
(456,0,'Destination','Namibia','NA','1',''),
(457,0,'Destination','Nauru','NR','1',''),
(458,0,'Destination','Nepal','NP','1',''),
(461,0,'Destination','NewZealand','NZ','1',''),
(462,0,'Destination','Nicaragua','NI','1',''),
(463,0,'Destination','Niger','NE','1',''),
(464,0,'Destination','Nigeria','NG','1',''),
(465,0,'Destination','Niue','NU','1',''),
(466,0,'Destination','Norfolk Island','NF','1',''),
(467,0,'Destination','Northern Mariana Islands','MP','1',''),
(468,0,'Destination','Norway','NO','1',''),
(469,0,'Destination','Oman','OM','1',''),
(470,0,'Destination','Pakistan','PK','1',''),
(471,0,'Destination','Palau','PW','1',''),
(473,0,'Destination','Panama','PA','1',''),
(474,0,'Destination','Papua New Guinea','PG','1',''),
(475,0,'Destination','Paraguay','PY','1',''),
(476,0,'Destination','Peru','PE','1',''),
(477,0,'Destination','Philippines','PH','1',''),
(478,0,'Destination','Pitcairn','PN','1',''),
(479,0,'Destination','Poland','PL','1',''),
(480,0,'Destination','Portugal','PT','1',''),
(481,0,'Destination','Puerto Rico','PR','1',''),
(482,0,'Destination','Qatar','QA','1',''),
(483,0,'Destination','R?union','RE','1',''),
(484,0,'Destination','Romania','RO','1',''),
(485,0,'Destination','Russian Federation','RU','1',''),
(486,0,'Destination','Rwanda','RW','1',''),
(494,0,'Destination','Samoa','WS','1',''),
(495,0,'Destination','San Marino','SM','1',''),
(496,0,'Destination','Sao Tome and Principe','ST','1',''),
(497,0,'Destination','Saudi Arabia','SA','1',''),
(498,0,'Destination','Senegal','SN','1',''),
(499,0,'Destination','Serbia','RS','1',''),
(500,0,'Destination','Seychelles','SC','1',''),
(501,0,'Destination','Sierra Leone','SL','1',''),
(502,0,'Destination','Singapore','SG','201',''),
(503,0,'Destination','Sint Maarten (Dutch part)','SX','1',''),
(504,0,'Destination','Slovakia','SK','1',''),
(505,0,'Destination','Slovenia','SI','1',''),
(506,0,'Destination','Solomon Islands','SB','1',''),
(507,0,'Destination','Somalia','SO','1',''),
(508,0,'Destination','South Africa','ZA','1',''),
(509,0,'Destination','South Georgia and the South Sandwich Islands','GS','1',''),
(510,0,'Destination','South Sudan','SS','1',''),
(511,0,'Destination','Spain','ES','1',''),
(512,0,'Destination','Sri Lanka','LK','1',''),
(513,0,'Destination','Sudan','SD','1',''),
(514,0,'Destination','Suriname','SR','1',''),
(515,0,'Destination','Svalbard and Jan Mayen','SJ','1',''),
(516,0,'Destination','Swaziland','SZ','1',''),
(517,0,'Destination','Sweden','SE','1',''),
(518,0,'Destination','Switzerland','CH','1',''),
(519,0,'Destination','Syrian Arab Republic','SY','1',''),
(520,0,'Destination','Taiwan','TW','1',''),
(521,0,'Destination','Tajikistan','TJ','1',''),
(523,0,'Destination','Thailand','TH','1',''),
(524,0,'Destination','Timor-Leste','TL','1',''),
(525,0,'Destination','Togo','TG','1',''),
(526,0,'Destination','Tokelau','TK','1',''),
(527,0,'Destination','Tonga','TO','1',''),
(528,0,'Destination','Trinidad and Tobago','TT','1',''),
(529,0,'Destination','Tunisia','TN','1',''),
(530,0,'Destination','Turkey','TR','1',''),
(531,0,'Destination','Turkmenistan','TM','1',''),
(532,0,'Destination','Turks and Caicos Islands','TC','1',''),
(533,0,'Destination','Tuvalu','TV','1',''),
(534,0,'Destination','Uganda','UG','229',''),
(535,0,'Destination','Ukraine','UA','1',''),
(536,0,'Destination','United Arab Emirates','AE','70',''),
(537,0,'Destination','United Kingdom of Great Britain and Northern Ireland','GB','1',''),
(540,0,'Destination','Uruguay','UY','1',''),
(541,0,'Destination','Uzbekistan','UZ','1',''),
(542,0,'Destination','Vanuatu','VU','1',''),
(543,0,'Destination','Venezuela (Bolivarian Republic of)','VE','1',''),
(544,0,'Destination','Viet Nam','VN','1',''),
(545,0,'Destination','Virgin Islands (British)','VG','1',''),
(546,0,'Destination','Virgin Islands (U.S.)','VI','1',''),
(547,0,'Destination','Wallis and Futuna','WF','1',''),
(548,0,'Destination','Western Sahara','EH','1',''),
(549,0,'Destination','Yemen','YE','1',''),
(550,0,'Destination','Zambia','ZM','1',''),
(551,0,'Destination','Zimbabwe','ZW','1','\r\n'),
(552,0,'Partida HSCode','BLUSA PARA DAMA TEJIDO ALGODON ','6106100000','339',''),
(553,0,'Partida HSCode','BLUSA PARA DAMA TEJIDO SINTETICO ','6106200000','639',''),
(554,0,'Partida HSCode','BODY PARA DAMA TEJIDO SINTETICO ','6114300000','639',''),
(555,0,'Partida HSCode','CAMISETA PARA CABALLERO TEJIDO ALGODON ','6109100000','338',''),
(556,0,'Partida HSCode','CAMISETA PARA CABALLERO TEJIDO SINTETICO ','6109900000','638',''),
(557,0,'Partida HSCode','CAMISETA PARA DAMA TEJIDO ALGODON ','6109100000','339',''),
(558,0,'Partida HSCode','CAMISETA PARA DAMA TEJIDO SINTETICO ','6109900000','639',''),
(559,0,'Partida HSCode','CARDIGAN DAMA TEJIDO ALGODON ','6110200000','639',''),
(560,0,'Partida HSCode','CARDIGAN DAMA TEJIDO SINTETICO ','6110300000','639',''),
(561,0,'Partida HSCode','CHAQUETA PARA CABALLERO TEJIDO ALGODON ','6101200000','345',''),
(562,0,'Partida HSCode','CHAQUETA PARA CABALLERO TEJIDO SINTETICO ','6101300000','645',''),
(563,0,'Partida HSCode','CHAQUETA PARA DAMA TEJIDO ALGODN ','6102200000','345',''),
(564,0,'Partida HSCode','CHAQUETA PARA DAMA TEJIDO SINTETICO ','6104390000','635',''),
(565,0,'Partida HSCode','CHAQUETA PARA DAMA TEJIDO SINTETICO ','6102300000','345',''),
(566,0,'Partida HSCode','DESPERDICIO DE ALGODON (BORRA) ','5201000000','0',''),
(567,0,'Partida HSCode','DESPERDICIO DE ALGODON (NOIL) ','5201000000','0',''),
(568,0,'Partida HSCode','FALDA PARA DAMA TEJIDO ALGODON ','6104520000','342',''),
(569,0,'Partida HSCode','FALDA PARA DAMA TEJIDO SINTETICO ','6104530000','642',''),
(570,0,'Partida HSCode','HILADO DE ALGODON (RE-EXPORT)','9999999999','1',''),
(571,0,'Partida HSCode','HILADO SINTETICOS (RE-EXPORT)','9999999999','3',''),
(572,0,'Partida HSCode','PANTALON PARA DAMA TEJIDO SINTETICO ','6104690000','648',''),
(573,0,'Partida HSCode','PANTALON/PANTALONETA PARA CABALLERO/NINO TEJIDO ALGODON ','6103420000','347',''),
(574,0,'Partida HSCode','PANTALONETA PARA CABALLERO / NINO TEJIDO SINTETICO ','6103430000','647',''),
(575,0,'Partida HSCode','PANTALONETA PARA DAMA TEJIDO ALGODON ','6104620000','348',''),
(576,0,'Partida HSCode','PANTALONETA PARA DAMA TEJIDO 648 SINTETICO ','6104630000','648',''),
(577,0,'Partida HSCode','PANTS PARA CABALLERO TEJIDO ALGODON ','6103420000','347',''),
(578,0,'Partida HSCode','PANTS/ LEGGINGS DAMA / NINA TEJIDO SINTETICO ','6104630000','648',''),
(579,0,'Partida HSCode','PANTS/LEGGINGS DAMA / NINA TEJIDO ALGODON ','6104620000','348',''),
(580,0,'Partida HSCode','PIJAMA DAMA TEJIDO ALGODON ','6108910000','650',''),
(581,0,'Partida HSCode','PIJAMA PARA DAMA TEJIDO SINTETICO ','6108320000','651',''),
(582,0,'Partida HSCode','PLAYERA TIPO SUDADERO PARA CABALLERO TEJIDO SINTETICO ','6110300000','638',''),
(583,0,'Partida HSCode','PLAYERA / CAMISETA PARA CABALLERO TEJIDO ALGODON ','6109100000','338',''),
(584,0,'Partida HSCode','PLAYERA / CAMISETA PARA CABALLERO TEJIDO SINTETICO ','6109900000','638',''),
(585,0,'Partida HSCode','PLAYERA / CAMISETA PARA DAMA TEJIDO ALGODON ','6109100000','339',''),
(586,0,'Partida HSCode','PLAYERA / CAMISETA PARA DAMA TEJIDO SINTETICO ','6109900000','639',''),
(587,0,'Partida HSCode','PLAYERA DE MATERNIDAD TEJIDO ALGODON ','6114200000','339',''),
(588,0,'Partida HSCode','PLAYERA DE MATERNIDAD TEJIDO SINTETICO ','6114300000','639',''),
(589,0,'Partida HSCode','PLAYERA HOMBRE TEJIDO SINTETICO (PULLOVERS) ','6110300000','638',''),
(590,0,'Partida HSCode','PLAYERA PARA CABALLERO TEJIDO ALGODON ','6109100000','338',''),
(591,0,'Partida HSCode','PLAYERA PARA CABALLERO TEJIDO ALGODON (PULLOVERS) ','6110200000','338',''),
(592,0,'Partida HSCode','PLAYERA PARA CABALLERO TEJIDO SINTETICO ','6109900000','638',''),
(593,0,'Partida HSCode','PLAYERA PARA DAMA / NINA TEJIDO ALGODON (PULLOVERS) ','6110200000','339',''),
(594,0,'Partida HSCode','PLAYERA PARA DAMA / NINA TEJIDO SINTETICO (PULLOVERS) ','6110300000','639',''),
(595,0,'Partida HSCode','PLAYERA PARA DAMA TEJIDO DE ALGODON ','6109100000','339',''),
(596,0,'Partida HSCode','PLAYERA PARA DAMA TEJIDO SINTETICO ','6109900000','639',''),
(597,0,'Partida HSCode','PLAYERA TIPO POLO DAMA TEJIDO SINTETICO ','6106200000','639',''),
(598,0,'Partida HSCode','PLAYERA TIPO POLO PARA CABALLERO TEJIDO ALGODON ','6105100000','338',''),
(599,0,'Partida HSCode','PLAYERA TIPO POLO PARA CABALLERO TEJIDO SINTETICO ','6105200000','638',''),
(600,0,'Partida HSCode','PLAYERA TIPO POLO PARA DAMA TEJIDO ALGODON ','6106100000','339',''),
(601,0,'Partida HSCode','PLAYERA TIPO SUDADERO PARA DAMA TEJIDO ALGODON ','6110200000','339',''),
(602,0,'Partida HSCode','PLAYERA TIPO SUDADERO PARA DAMA TEJIDO SINTETICO ','6110300000','639',''),
(603,0,'Partida HSCode','PLAYERA TIPO SUDADERO PARA CABALLERO TEJIDO ALGODON ','6110200000','338',''),
(604,0,'Partida HSCode','ROPA PARA BEBE TEJIDO ALGODON ','6111200000','239',''),
(605,0,'Partida HSCode','SUDADERO / SUETER PARA CABALLERO TEJIDO ALGODON ','6110200000','345',''),
(606,0,'Partida HSCode','SUDADERO / SUETER PARA CABALLERO TEJIDO SINTETICO ','6110300000','645',''),
(607,0,'Partida HSCode','TRAJE DE VERANO PARA DAMA TEJIDO SINTETICO TIPO MAMELUCO ','6114300000','237',''),
(608,0,'Partida HSCode','VESTIDO PARA DAMA TEJIDO ALGODON ','6104420000','336',''),
(609,0,'Partida HSCode','VESTIDO PARA DAMA TEJIDO SINTETICO ','6104440000','636','\r\n'),
(610,0,'Customer Class','Consignatario','','',''),
(611,0,'Customer Class','Shipper','','',''),
(612,0,'Customer Class','Exporter','','',''),
(613,0,'IE Tipo Documento','MI','I','152',''),
(614,0,'IE Tipo Documento','MR','E','157',''),
(615,0,'Fabric Type','Waffle','','',''),
(616,0,'Customer Class','Embroidery','','',''),
(624,0,'IsPrinting','Washing + Embroidery','','',''),
(625,0,'Partida HSCode','BOLSAS PLASTICAS','3923219000','',''),
(626,0,'Partida HSCode','ETIQUETAS DE PAPEL','4821100000','',''),
(627,0,'Partida HSCode','ETIQUETAS DE TELA','5807100000','',''),
(628,0,'Partida HSCode','ACCESORIOS DE PLASTICO','3926909900','',''),
(629,0,'Partida HSCode','TEJIDO DE RAYON Y/O POLYESTER (MUESTRAS)','6003900000','',''),
(630,0,'Partida HSCode','HILO DE COSER','5508101000','',''),
(631,0,'Partida HSCode','HILADO DE FILAMENTOS SINTETICOS','5402330000','',''),
(632,0,'Partida HSCode','CALCOMANIAS','4908900000','',''),
(633,0,'Partida HSCode','TEJIDO SINTETICO','6003300000','',''),
(634,0,'Partida HSCode','ETIQUETAS DE TRANSFERENCIA TERMICA','4821900000','',''),
(635,0,'Partida HSCode','HILO DE ALGODON','5204110000','',''),
(636,0,'Partida HSCode','HILO SINTETICO','5508102000','',''),
(637,0,'Partida HSCode','HILO SINTETICO','5401102000','',''),
(638,0,'Partida HSCode','HILADO DE POLYESTER','5509530000','',''),
(639,0,'Partida HSCode','HILADO DE ALGODON','5205240000','',''),
(640,0,'Partida HSCode','HILADO DE ALGODON','5205230000','',''),
(641,0,'Partida HSCode','HILADO DE POLYESTER','5402443000','',''),
(642,0,'Partida HSCode','ETIQUETAS ADHESIVAS IMPRESAS','3919101000','',''),
(643,0,'Partida HSCode','RIBBONS DE TRANSFERENCIA TERMICA','9612109000','',''),
(644,0,'Partida HSCode','ETIQUETAS TEXTILES IMPRESAS','5807900000','',''),
(645,0,'Partida HSCode','FIBRA DE POLYESTER','5503200000','',''),
(646,0,'Partida HSCode','JUEGOS DE PIEZAS CORTADOS PARA T-SHIRT','6109900000','',''),
(647,0,'Partida HSCode','JUEGOS DE PIEZAS CORTADOS PARA T-SHIRT','6109100000','',''),
(648,0,'Partida HSCode','MANUFACTURAS DE METAL','8308900000','',''),
(649,0,'Partida HSCode','BOTONES','9606210000','',''),
(650,0,'Partida HSCode','ZIPPERS','9607190000','',''),
(651,0,'Partida HSCode','CORDELES','5607500000','',''),
(652,0,'Partida HSCode','BOLSAS PLASTICAS','3923299000','',''),
(653,0,'Partida HSCode','CAJAS PARA EMPAQUE','4819100000','',''),
(654,0,'Partida HSCode','TEJIDO RAYON','5408100000','',''),
(655,0,'Partida HSCode','HILADOS SENCILLOS SIN TORSION','5402449000','',''),
(656,0,'Partida HSCode','ENTRETELA','5603920000','',''),
(657,0,'Partida HSCode','ENCAJE','5804290000','',''),
(658,0,'Partida HSCode','MANUFACTURAS DE METAL','8308100000','',''),
(659,0,'Partida HSCode','ENCAJE','5804210000','',''),
(660,0,'Partida HSCode','ELASTICO','5806200000','',''),
(661,0,'Partida HSCode','HILADOS SENCILLOS','5510110000','',''),
(662,0,'Partida HSCode','HILOS MEZCLADOS EXCLUSIVA O PRINCIPALMENTE CON ALGODON','5510300000','',''),
(663,0,'Partida HSCode','PANCITA DE TELA PARA ROPA DE MATERNIDAD','6307909000','',''),
(664,0,'Partida HSCode','ALGODON SIN CARDAR NI PEINAR','5201000000','',''),
(665,0,'Partida HSCode','CINTA DE TELA','5806390000','',''),
(666,0,'Partida HSCode','TINTA PARA IMPRESION DE ETIQUETAS','3215119000','',''),
(667,0,'Partida HSCode','COPAS DE ESPONJA PARA BRASIERES','6212900000','',''),
(668,0,'Partida HSCode','TEJIDO TERMOPLASTICOS','5903901000','',''),
(669,0,'Partida HSCode','HILADOS DE POLYESTER','5509210000','',''),
(670,0,'Partida HSCode','HILADOS DE ALGODON','5206240000','',''),
(671,0,'Partida HSCode','HILADOS DE ALGODON','5206230000','',''),
(672,0,'Partida HSCode','HILAZA DE ALGODON','5205260000','',''),
(673,0,'Partida HSCode','CARTON A MEDIDA','4823909900','',''),
(674,0,'Partida HSCode','CIERRES DE CREMALLERAS DE METAL','9607110000','',''),
(675,0,'Partida HSCode','HILADOS DE POLYESTER','5509510000','',''),
(676,0,'Partida HSCode','HILADOS DE MODAL','5403310000','',''),
(677,0,'Partida HSCode','HILADOS DE ALGODON','5205130000','',''),
(678,0,'Partida HSCode','TEJIDO DE POLYESTER','6006320000','',''),
(679,0,'Partida HSCode','TEJIDO DE ALGODON','6006220000','',''),
(680,0,'Partida HSCode','TEJIDO DE POLYESTER','5515110000','',''),
(681,0,'Partida HSCode','TEJIDO TENCEL','5311009000','',''),
(682,0,'Partida HSCode','HILAZA DE ALGODON','5205220000','',''),
(683,0,'Partida HSCode','CORDELES','5604100000','',''),
(684,0,'Partida HSCode','TEJIDO DE RAYON','6006420000','',''),
(685,0,'Partida HSCode','IMPRESORA DE TRANSFERENCIA TERMICA','8443390000','',''),
(686,0,'Partida HSCode','MUESTRAS DE TELA','6003200000','',''),
(687,0,'Partida HSCode','HILAZA DE POLYRAYON','5510900000','',''),
(688,0,'Partida HSCode','HILADOS DE SENCILLOS','5510110000','',''),
(689,0,'Partida HSCode','TEJIDO DE NYLON','5407100000','',''),
(690,0,'Partida HSCode','TEJIDO DE POLYESTER','5515120000','',''),
(691,0,'Partida HSCode','HOMBRERAS PARA MUJER','6217900000','',''),
(692,0,'Partida HSCode','TEJIDO DE POLYESTER','5515190000','',''),
(693,0,'Partida HSCode','HILADO DE ALGODON','5206130000','',''),
(694,0,'Partida HSCode','HILAZA DE ALGODON','5205480000','','\r\n'),
(695,0,'Dept Group','Team1A','11','',''),
(696,1,'Dept Group','Team1B','12','',''),
(697,1,'Dept Group','Team1C','13','',''),
(698,1,'Dept Group','Team2A','21','',''),
(699,1,'Dept Group','Team2B','22','',''),
(700,1,'Dept Group','Team2C','23','',''),
(701,1,'Dept Group','Team3A','31','',''),
(702,1,'Dept Group','Team3B','32','',''),
(703,1,'Dept Group','Team3C','33','',''),
(705,0,'Reject Dev Reasons','Missing Teckpack','','',''),
(706,0,'Reject Dev Reasons','Missing Files','','',''),
(707,0,'Reject Dev Reasons','Different Size','','',''),
(708,0,'Reject Dev Reasons','Style# Error','','',''),
(709,0,'Reject Dev Reasons','Process Error','','',''),
(710,0,'Reject Dev Reasons','Delivery Error','','',''),
(712,0,'Barcode109','6.35E+11','KCMH71633','Black','XS'),
(713,0,'Barcode109','6.35E+11','KCMH71633','Black','S'),
(714,0,'Barcode109','6.35E+11','KCMH71633','Black','M'),
(715,0,'Barcode109','6.35E+11','KCMH71633','Black','L'),
(716,0,'Barcode109','6.35E+11','KCMH71633','Black','XL'),
(717,0,'Barcode109','6.35E+11','KCMH71633','Heather Grey','XS'),
(718,0,'Barcode109','6.35E+11','KCMH71633','Heather Grey','S'),
(719,0,'Barcode109','6.35E+11','KCMH71633','Heather Grey','M'),
(720,0,'Barcode109','6.35E+11','KCMH71633','Heather Grey','L'),
(721,0,'Barcode109','6.35E+11','KCMH71633','Heather Grey','XL'),
(722,0,'Barcode109','6.35E+11','KCMH71635','Heather Grey','XS'),
(723,0,'Barcode109','6.35E+11','KCMH71635','Heather Grey','S'),
(724,0,'Barcode109','6.35E+11','KCMH71635','Heather Grey','M'),
(725,0,'Barcode109','6.35E+11','KCMH71635','Heather Grey','L'),
(726,0,'Barcode109','6.35E+11','KCMH71635','Heather Grey','XL'),
(727,0,'Barcode109','6.35E+11','KCMH71635','Mystic','XS'),
(728,0,'Barcode109','6.35E+11','KCMH71635','Mystic','S'),
(729,0,'Barcode109','6.35E+11','KCMH71635','Mystic','M'),
(730,0,'Barcode109','6.35E+11','KCMH71635','Mystic','L'),
(731,0,'Barcode109','6.35E+11','KCMH71635','Mystic','XL'),
(732,0,'Barcode109','6.35E+11','KCMH71635','Papaya Peach','XS'),
(733,0,'Barcode109','6.35E+11','KCMH71635','Papaya Peach','S'),
(734,0,'Barcode109','6.35E+11','KCMH71635','Papaya Peach','M'),
(735,0,'Barcode109','6.35E+11','KCMH71635','Papaya Peach','L'),
(736,0,'Barcode109','6.35E+11','KCMH71635','Papaya Peach','XL'),
(737,0,'Barcode109','6.35E+11','KCMH71636','Black','XS'),
(738,0,'Barcode109','6.35E+11','KCMH71636','Black','S'),
(739,0,'Barcode109','6.35E+11','KCMH71636','Black','M'),
(740,0,'Barcode109','6.35E+11','KCMH71636','Black','L'),
(741,0,'Barcode109','6.35E+11','KCMH71636','Black','XL'),
(742,0,'Barcode109','6.35E+11','KCMH71636','Mystic','XS'),
(743,0,'Barcode109','6.35E+11','KCMH71636','Mystic','S'),
(744,0,'Barcode109','6.35E+11','KCMH71636','Mystic','M'),
(745,0,'Barcode109','6.35E+11','KCMH71636','Mystic','L'),
(746,0,'Barcode109','6.35E+11','KCMH71636','Mystic','XL'),
(747,0,'Barcode109','6.35E+11','KCMH71636','Papaya Peach','XS'),
(748,0,'Barcode109','6.35E+11','KCMH71636','Papaya Peach','S'),
(749,0,'Barcode109','6.35E+11','KCMH71636','Papaya Peach','M'),
(750,0,'Barcode109','6.35E+11','KCMH71636','Papaya Peach','L'),
(751,0,'Barcode109','6.35E+11','KCMH71636','Papaya Peach','XL'),
(752,1,'Acc Tipo Documento','Factura','','',''),
(753,1,'Acc Tipo Documento','Factura Insumos','','',''),
(754,1,'Acc Tipo Documento','Pequeno Contribuyente','','',''),
(755,1,'Acc Tipo Documento','Nota Debito','','',''),
(756,1,'Acc Tipo Documento','Nota Credito','','',''),
(757,1,'Acc Tipo Documento','Invoice','','',''),
(758,1,'Acc Tipo Documento','Recibo','','',''),
(760,1,'Acc Tipo Documento','Factura Importacion','','',''),
(761,1,'Acc Tipo Compra','Bien','','',''),
(762,1,'Acc Tipo Compra','Servicio','','',''),
(763,1,'Acc Tipo Compra','Combustible Super','','',''),
(764,1,'Acc Tipo Compra','Combustible Regular','','',''),
(765,1,'Acc Tipo Compra','Combustible Diesel','','',''),
(766,1,'Acc Tipo Compra','Gas Propano','','',''),
(767,0,'Customer Class','Temp','','',''),
(768,0,'Aduanas','ADUANA CENTRAL','SC','',''),
(769,1,'Aduanas','ZONA FRANCA ZETA LA UNION','ZZ','',''),
(770,1,'Aduanas','ZONA FRANCA SADINSA','ZS1','',''),
(771,1,'Aduanas','ZONA FRANCA CROWLEY','ZL','',''),
(772,1,'Aduanas','ZONA FRANCA CENTRO INDUSTRIAL PARA','ZE','',''),
(773,1,'Aduanas','ZOFRACO','ZF','',''),
(774,1,'Aduanas','VALLE NUEVO','VN','',''),
(775,1,'Aduanas','TECUN UMAN','TUII','',''),
(776,1,'Aduanas','SANTO TOMAS DE CASTILLA','ST','',''),
(777,1,'Aduanas','PUERTO QUETZAL','PQ','',''),
(778,1,'Aduanas','PUERTO BARRIOS','PB','',''),
(779,1,'Aduanas','PEDRO DE ALVARADO','PA','',''),
(780,1,'Aduanas','INCOINSA','INCO','',''),
(781,1,'Aduanas','EXPRESS AEREO','EA','',''),
(782,1,'Aduanas','CENTRAL DE GUATEMALA','CG','',''),
(783,1,'Aduanas','AGUA CALIENTE','AC','',''),
(784,1,'Aduanas','ZONA FRANCA ZOFRACSA','ZG1','',''),
(785,1,'Status Debit','Todos','1','',''),
(786,2,'Status Debit','Creado','2','',''),
(787,4,'Status Debit','Confirmado','4','',''),
(788,5,'Status Debit','Planificado','5','',''),
(789,6,'Status Debit','Pagado','6','',''),
(790,7,'Status Debit','Cerrado','7','',''),
(791,3,'Status Debit','Impreso Voucher','3','',''),
(792,0,'Yarn Composition','Composition1','','',''),
(793,0,'Yarn Count','Count1','','',''),
(794,0,'Yarn Contents','Contents3','','',''),
(795,0,'Yarn Method','Method3','','',''),
(796,0,'Yarn Type','Type3','','',''),
(797,0,'Yarn Special','Special1','','',''),
(798,1,'Yarn Special','Special2','','',''),
(799,1,'Yarn Special','Special3','','',''),
(800,1,'Yarn Type','Type1','','',''),
(801,1,'Yarn Type','Type2','','',''),
(802,1,'Yarn Method','Method1','','',''),
(803,1,'Yarn Method','Method2','','',''),
(804,1,'Yarn Contents','Contents1','','',''),
(805,1,'Yarn Contents','Contents2','','',''),
(806,1,'Yarn Count','Count2','','',''),
(807,1,'Yarn Count','Count3','','',''),
(808,1,'Yarn Composition','Composition2','','',''),
(809,1,'Yarn Composition','Composition3','','',''),
(810,1,'Yarn Composition','','','',''),
(811,1,'Yarn Composition','','','',''),
(812,1,'Yarn Composition','','','',''),
(813,1,'Yarn Composition','','','',''),
(814,1,'Yarn Special','','','',''),
(815,1,'Yarn Contents','','','',''),
(816,1,'Yarn Count','','','',''),
(817,1,'Yarn Type','','','',''),
(818,0,'Acc Tipo Documento','Otro','','',''),
(819,0,'Acc Tipo Documento','Factura Coexportador','','',''),
(820,0,'Acc Tipo Compra','Combustible','','',''),
(821,0,'Customer Class','Accesorios','','',''),
(822,0,'Customer Class','Telefono','','',''),
(823,0,'Customer Class','Alquiler de Equipo','','',''),
(824,0,'Customer Class','Analisis de Laboratorio','','',''),
(825,0,'Customer Class','Arrendamientos','','',''),
(826,1,'IE Tipo Documento','DI','I','23',''),
(827,1,'IE Tipo Documento','ID','I','23',''),
(828,1,'IE Tipo Documento','DL','I','152',''),
(829,1,'IE Tipo Documento','ZC','I','23',''),
(830,1,'IE Tipo Documento','PC','I','23',''),
(831,1,'IE Tipo Documento','MD','I','23',''),
(832,1,'IE Tipo Documento','MC','I','23',''),
(833,1,'IE Tipo Documento','LZ','I','23',''),
(834,1,'IE Tipo Documento','ZN','E','22',''),
(835,1,'IE Tipo Documento','ED','E','22',''),
(836,1,'IE Tipo Documento','DT','N','24',''),
(837,1,'IE Tipo Documento','DZ','N','24',''),
(838,1,'IE Tipo Documento','TO','N','24',''),
(839,1,'IE Tipo Documento','ZT','N','24',''),
(840,1,'IE Tipo Documento','DA','I','150',''),
(841,1,'IE Tipo Documento','DX','I','150',''),
(843,1,'IE Tipo Documento','DS','I','152',''),
(844,1,'IE Tipo Documento','PI','I','152',''),
(845,1,'IE Tipo Documento','ZP','I','152',''),
(846,1,'IE Tipo Documento','NP','E','153',''),
(847,1,'IE Tipo Documento','ZF','E','153',''),
(848,1,'IE Tipo Documento','NE','E','155',''),
(849,1,'IE Tipo Documento','DC','I','151',''),
(850,1,'IE Tipo Documento','LC','I','151',''),
(851,1,'IE Tipo Documento','LX','I','151',''),
(852,1,'IE Tipo Documento','DV','I','151',''),
(853,1,'IE Tipo Documento','MA','I','151',''),
(854,1,'IE Tipo Documento','ZI','I','156',''),
(855,1,'IE Tipo Documento','ZX','I','156',''),
(856,1,'IE Tipo Documento','DP','E','157',''),
(857,1,'IE Tipo Documento','DR','E','157',''),
(858,1,'IE Tipo Documento','LR','E','157',''),
(859,1,'IE Tipo Documento','MF','E','157',''),
(861,1,'IE Tipo Documento','MS','E','157',''),
(862,1,'IE Tipo Documento','PE','E','157',''),
(863,1,'IE Tipo Documento','ZE','E','157',''),
(864,1,'IE Tipo Documento','ZQ','E','157',''),
(865,1,'IE Tipo Documento','ZR','E','157',''),
(871,0,'Fabric Type','Damboru','','',''),
(873,0,'Fabric Type','Sakariba','','',''),
(874,0,'Partida HSCode','DESPERDICIO DE ALGODON (BORRA)','5202990000','',''),
(875,0,'Partida HSCode','DESPERDICIO DE ALGODON (BARREDURA)','5202990000','',''),
(876,0,'Partida HSCode','DESPERDICIO DE ALGODON PEINADO (NOIL)','5203000000','',''),
(877,0,'ShipTerm','','','',''),
(878,0,'IE Tipo Documento','MQ','I','',''),
(879,1,'Partida HSCode','PLAYERA PARA CABALLERO / NINO TEJIDO ALGODON','6109100000','338',''),
(880,1,'Partida HSCode','PLAYERA PARA CABALLERO / NINO TEJIDO SINTETICO','6109900000','638',''),
(881,1,'Partida HSCode','BLUSA PARA DAMA TEJIDO ALGODON','6114200000','339',''),
(882,1,'Partida HSCode','BLUSA PARA DAMA TEJIDO SINTETICO','6114300000','639',''),
(883,1,'Partida HSCode','VESTIDO PARA NINA TEJIDO ALGODON','6104420000','',''),
(884,1,'Partida HSCode','VESTIDO PARA NINA TEJIDO SINTETICO','6104440000','',''),
(885,1,'Partida HSCode','PLAYERA PARA NINA TEJIDO DE ALGODON','6109100000','',''),
(886,1,'Partida HSCode','PLAYERA PARA NINA TEJIDO SINTETICO','6109900000','',''),
(887,0,'Partida HSCode','JACKET PARA CABALLERO TEJIDO ALGODON','6110200000','',''),
(888,0,'Partida HSCode','JACKET PARA CABALLERO TEJIDO SINTETICO','6110300000','',''),
(889,0,'Trims','Hilo','1','',''),
(890,1,'Trims','Caja','11','',''),
(891,1,'Trims','Mobilon','2','',''),
(892,1,'Trims','Care Label','3','',''),
(893,1,'Trims','ID Label','4','',''),
(894,1,'Trims','Size Label','5','',''),
(895,1,'Trims','Main Label','6','',''),
(896,1,'Trims','Price Ticket','7','',''),
(897,1,'Trims','Size Sticker','8','',''),
(898,1,'Trims','Tagpin','9','',''),
(899,1,'Trims','Ploybag','10','',''),
(900,0,'VsslAir','VSSL/AIR','','',''),
(901,0,'Fabric Type','Retazo','','',''),
(902,0,'Fabric Type','Stripe Slub Single','','',''),
(903,0,'Fabric Type','Stripe Single Jersey','','','');

/*Table structure for table `costcenter` */

DROP TABLE IF EXISTS `costcenter`;

CREATE TABLE `costcenter` (
  `CostcenterIdx` int(11) NOT NULL,
  `CostcenterName` varchar(30) NOT NULL,
  `IsUse` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`CostcenterIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `costcenter` */

insert  into `costcenter`(`CostcenterIdx`,`CostcenterName`,`IsUse`) values 
(1,'Head Office',1),
(3,'JS International, S.A.',1),
(4,'Development',1),
(5,'Sewing Factory 1',1),
(6,'Partner',1),
(7,'People & Arts, S.A.',1),
(8,'INT Bodega',1),
(9,'Recepsa',1),
(10,'Recepsa Bodega',1);

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
  `CustIdx` int(11) NOT NULL,
  `ParentIdx` int(11) DEFAULT '0',
  `CustName` varchar(90) DEFAULT NULL,
  `CustNameEN` varchar(90) DEFAULT NULL,
  `Classification` int(11) DEFAULT '0',
  `address` varchar(200) DEFAULT NULL,
  `IsUse` tinyint(3) DEFAULT '1',
  `iDate` datetime DEFAULT NULL,
  `uDate` datetime DEFAULT NULL,
  `POTableName` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `GroupID` smallint(6) DEFAULT '0',
  `MaxSize` tinyint(4) DEFAULT '0',
  `Currency` int(11) DEFAULT '0',
  `BusinessNo` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `BankAccount` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `AttnName` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `Handler` int(11) DEFAULT '0',
  `Handler2` int(11) DEFAULT '0',
  `Handler3` int(11) DEFAULT '0',
  `Cad1` int(11) DEFAULT '0',
  `Cad2` int(11) DEFAULT '0',
  `Cad3` int(11) DEFAULT '0',
  `DocumentType` int(11) DEFAULT '0',
  `PurchaseType` int(11) DEFAULT '0',
  `Terms` smallint(6) DEFAULT '0',
  `CheckName` varchar(90) CHARACTER SET latin1 DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Faxno` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CostRatesAdmin` decimal(10,0) DEFAULT '0',
  `Units` int(11) DEFAULT '0',
  `ProveedorType` int(11) DEFAULT '0',
  `Email` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`CustIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customers` */

insert  into `customers`(`CustIdx`,`ParentIdx`,`CustName`,`CustNameEN`,`Classification`,`address`,`IsUse`,`iDate`,`uDate`,`POTableName`,`GroupID`,`MaxSize`,`Currency`,`BusinessNo`,`BankAccount`,`AttnName`,`Handler`,`Handler2`,`Handler3`,`Cad1`,`Cad2`,`Cad3`,`DocumentType`,`PurchaseType`,`Terms`,`CheckName`,`Phone`,`Faxno`,`CostRatesAdmin`,`Units`,`ProveedorType`,`Email`) values 
(1,1,'Catherines','Catherines',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',312,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(2,2,'Bella+Canvas','BELLA + CANVAS, LLC.',24,'6670 FLOTILLA STREET CITY \r\nOF COMMERCE, CA 90040',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',111,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(3,3,'Li&Fung (Express)','EXPRESS LLC',24,'ONE LIMITED PARWAY COLUMBUS, \rOH 43230, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',131,8,0,'','','',85,86,129,67,34,130,0,0,0,'','','',0,0,0,''),
(4,0,'Banco Industrial','Banco Industrial',28,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(5,0,'People & Arts, S.A.','People & Arts, S.A.',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(6,0,'서울나염','Seoul Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(7,0,'JS Print','JS Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(8,0,'ACSA','ACSA',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(9,0,'Printopia','Printopia',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(10,0,'Call Print','Call Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(11,0,'월드나염','World Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(14,14,'Chico\'s FAS','CHICO\'S DISTRIBUTION SERVICES, LLC (DC1)',24,'1020 BARROW INDUSTRIAL PARKWAY\r\nWinder, GA 30680, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',121,8,0,'','','',86,129,0,67,34,130,0,0,0,'','','',0,0,0,''),
(15,15,'Destination Maternity','Destination Maternity Corporation',24,'1000 JOHN GALT WAY \r\nBURLINGTON, NJ 08016, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','POStatus_DM',231,8,0,'','','',87,0,0,67,34,69,0,0,0,'','','',0,0,0,''),
(16,16,'Hybrid (Evy)','Hybrid (Evy)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',322,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(17,17,'I-Mar','I-MAR LLC',24,'5150 RANCHO RD.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',241,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(18,18,'JCPenney','JC PENNEY PURSHASING CORPORATION',24,'6501 LEGACY DRIVE PLANO.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(19,19,'Jerry Leigh','JERRY LEIGH OF CALIFORNIA INC.',24,'7860 NELSON ROAD VAN NUYS \r\nCA 91402, UNITED STATES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',211,8,0,'','','',90,0,0,67,34,69,0,0,0,'','','',0,0,0,''),
(20,20,'Li&Fung (Kohl\'s)','KOHL\'S DEPARTMENT STORES, INC',24,'N56 W17000 RIDGEWOOD DRIVE, MENOMONEE FALLS, WI \r\n53051 U.S.A.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','POStatus_Kohls',221,8,0,'','','',89,0,0,67,34,69,0,0,0,'','','',0,0,0,''),
(21,21,'Lane Bryant','LANE BRYANT PURCHASING CORP.',24,'344 MORSE CROSSING \r\nCOLUMBUS OHIO 43219',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',311,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(22,22,'Li&Fung (Lucky Brand)','LUCKY BRAND DUNGAREES LLC.',24,'540 SOUTH SANTA FE AVENUE \r\nLOS ANGELES, CA 90013',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',113,8,0,'','','',88,85,129,67,34,130,0,0,0,'','','',0,0,0,''),
(24,24,'TSF (Guess)','GUESS INC.',24,'1444 S. ALAMEDA ST, \r\nLOS ANGELES, CA 90021 USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',321,8,0,'','','',87,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(25,25,'Walmart Mexico','Walmart Mexico',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(26,26,'OJG (William Rast)','One Jeans Group',24,'180 RITTENHOUSE CIRCLE KEYSTONE INDUSTRIAL PARK, \r\nBRISTOL, PA 19007, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',132,8,0,'','','',90,0,0,67,34,68,0,0,0,'','','',0,0,0,''),
(27,2,'Bella+Canvas (Ch98)','Bella+Canvas Ch98',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',112,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(28,0,'JCrew','JCrew',24,'770 BROADWAY\r\nNEW YORK, NY 10003, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',122,8,0,'','','',86,129,0,67,34,130,0,0,0,'','','',0,0,0,''),
(29,0,'Justice','Justice',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',223,9,0,'','','',89,0,0,67,34,68,0,0,0,'','','',0,0,0,''),
(30,0,'Color & Art','Color & Art',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(33,0,'삼보나염','Sambo Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(34,0,'Denim Metrix','Denim Metrix',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(35,0,'Orinstar','Orinstar',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(36,0,'Smartco Guatemala S.A.','Smartco Guatemala S.A.',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(37,0,'Tae Ho','Tae Ho',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(38,0,'Winstone','Winstone',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(39,0,'Winsublimation','Winsublimation',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(40,0,'Woojoo','Woojoo',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(41,0,'태호자수','Taeho Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,761,30,'','','',0,0,0,''),
(52,0,'INT Stock','INT Stock',102,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(53,0,'Silsarang America, S.A.','Silsarang America S.A.',102,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,167,'5267523-8','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(68,0,'INT Sewing Factory 1','INT Sewing Factory 1',30,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(69,0,'Acro','Acro',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(70,0,'Textiles Gran Fe, S.A.','Textiles Gran Fe, S.A.',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(73,0,'Textiles Color Real, S.A','Textiles Color Real, S.A',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(76,0,'Gran Fe Print','Gran Fe Print',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(77,0,'Abercrombie&Fitch','Abercrombie&Fitch Trading Co.',24,'COLUMBUS, OH 43218\r\nAFTRD P.O.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',222,8,0,'','','',89,0,0,67,34,69,0,0,0,'','','',0,0,0,''),
(78,0,'Fanastics','Fanastics',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',242,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(79,0,'Maurices','Maurices',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',313,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(80,0,'Jose (Fabric Stock)','Jose (Fabric Stock)',146,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(81,0,'Fabric Customer2','Fabric Customer2',146,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(82,0,'J-H Textiles','J-H Textiles',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(83,0,'People & Art, S.A.','People & Art, S.A.',146,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(84,0,'Tae Ho / Woojoo','Tae Ho / Woojoo',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(85,0,'Call / 삼보 / Printopia','Call / Sambo / Printopia',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(86,0,'INT Development','INT Development',30,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(87,0,'INT Sewing Factory 2 (JS)','INT Sewing Factory 2 (JS)',30,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(88,0,'Bimini Bay Outfitters','Bimini Bay Outfitters',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(89,0,'Southern Shirts','Southern Shirts',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(90,0,'Oficina de INT','Oficina de INT',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(91,0,'Banco BAC','Banco BAC',28,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(92,0,'Li&Fung (American Eagle)','Li&Fung (American Eagle)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',90,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(93,0,'INT Showroom','INT Showroom',30,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(94,0,'INT Office','INT Office',30,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(95,0,'Sharon Apparel S.A.','Sharon Apparel S.A.',25,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(96,0,'Sion Print','Sion Print',25,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'9149604-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(97,0,'Belk','Belk International, INC.',24,'2801 WEST TYVOLA, INC.\r\nCHARLOTTE N.C. 28217-4500, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',87,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(98,0,'Coats','Coats',102,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(99,0,'B&Y Global (Delta)','B&Y Global (Delta)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(102,0,'INT Planta','INT Planta',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(103,0,'JS International, S.A.','JS International, S.A.',33,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'8300007-0','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(104,0,'Dress Barn','Dress Barn',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(105,0,'Li&Fung (Torrid)','Li&Fung (Torrid)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',90,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(106,0,'Sleepwear','Sleepwear',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(107,0,'Clarotex, S.A.','Clarotex, S.A.',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(108,0,'JS Print','JS Print',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(109,0,'Li&Fung/GBG (Kenneth Cole)','Li&Fung/GBG (Kenneth Cole)',24,'',0,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',85,86,0,67,34,68,0,0,0,'','','',0,0,0,''),
(110,0,'Li&Fung (Under Amour)','Li&Fung (Under Amour)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',90,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(111,0,'Golden Touch Imports','Golden Touch Imports',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(112,0,'Sanmar','Sanmar',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(113,0,'INT TRADING USA, LLC.','INT TRADING USA, LLC.',24,'261 WEST 35TH STREET SUITE 1100 \r\nNEW YORK, NY 10001, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(114,0,'INT','INT',611,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(118,0,'J.H. Trading, S.A.','J.H. Trading, S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8999834-0','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,'samsungyklee@gmail.com'),
(119,0,'Ebenezer Internacional, S.A.','Ebenezer Internacional S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7577720-7','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(121,0,'KV Textiles S.A.','KV Textiles S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(122,0,'Grand Apparel, S.A.','Grand Apparel S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8267001-3','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(123,0,'Tae Sung S.A.','Tae Sung S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9240110-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(125,0,'Shin Won Ace S.A.','Shin Won Ace S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(126,0,'Hanah Trading S.A.','Hanah Trading S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(127,0,'JW Textiles S.A.','JW Textiles S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(128,0,'Jina Textiles, S.A.','Jina Textiles S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5943293-4','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(129,0,'Soe Won','Soe Won',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(130,0,'YE TEX S.A.','YE TEX S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(131,0,'JNB Trading S.A.','JNB Trading S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(132,0,'KL Textil S.A.','KL Textil S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(133,0,'OK Modas S.A','OK Modas S.A',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(134,0,'Y&P Textiles S.A.','Y&P Textiles S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,302,''),
(135,0,'Cartones de Villa Nueva S.A.','Cartones de Villa Nueva S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(136,0,'KYONG GI, S.A.','KYONG GI',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8851440-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(139,0,'Cajas International Guatemala, S.A.','Cajas International Guatemala S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3679489-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(140,0,'Carlyle S.A.','Carlyle S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(141,0,'Clarotex Guatemala S.A.','Clarotex Guatemala S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(142,0,'Color Art Corgua S.A.','Color Art Corgua S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(143,0,'COTTONTEX/ TEXTILASA','COTTONTEX/ TEXTILASA',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(144,0,'DTM Textiles, S.A.','DTM Textiles S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6320586-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(145,0,'Elasticos Universales S.A.','Elasticos Universales S.A.',616,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4336318-0','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(146,0,'Global Screen Printing, S.A.','Global Screen Printing',25,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7987876-8','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(147,0,'KNITOPIA S.A.','KNITOPIA S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(149,0,'JS Textile S.A.','JS Textile S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(150,0,'Lee Cho Textil S.A.','Lee Cho Textil S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(151,0,'Masparacon','Masparacon',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(152,0,'MT Textil S.A. (Imperial)','MT Textil S.A. (Imperial)',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(153,0,'Modas Tae Ho S.A.','Modas Tae Ho S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(154,0,'P & K Dyehouse S.a.','P & K Dyehouse S.a.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(155,0,'P&G Enterprise, S.A.','P&G Enterprise S.A.',616,'SERVICIO DE BISUTERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6242126-3','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(157,0,'Receptor Industrial S.A.','Receptor Industrial S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(158,0,'ROYTEX','ROYTEX (Liztex)',0,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(159,0,'Serom Trims','Serom Trims',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(162,0,'Tejidos Corporativos S.A.','Tejidos Corporativos S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(164,0,'Textiles Del Sur Internacional S.A.','Textiles Del Sur Internacional S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(166,0,'Textiles Youm Kwang S.A.','Textiles Youm Kwang S.A.',616,'MATERIA PRIMA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3888798-3','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(167,0,'World Serigrafia S.A.','World Serigrafia S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(168,0,'Rhinestone','Rhinestone',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(169,0,'NOBO S.A.','NOBO S.A.',616,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9085441-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(170,0,'Orange ETT','Orange ETT',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(171,0,'Y. Kwang Thread Guatemala','Y. Kwang Thread Guatemala',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(172,0,'SP Guatemala S.A.','SP Guatemala S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(173,0,'TENNAT, S.A.','TENNAT S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(174,0,'Centro Tex Guatemala, S.A.','Centrotex s.a.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(175,0,'Sangbo International, S.A.','Sangbo International s.a.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(176,0,'Woong Jin Printing ','Woong Jin Printing ',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(177,0,'A T IMPRESOS','A T IMPRESOS',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(178,0,'Corporacion Acro S.A.','Corporacion Acro S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(179,0,'DK PRINTING S.A.','DK PRINTING S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(180,0,'GTC TRIM S.A.','GTC TRIM S.A.',616,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7537122-7','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(181,0,'Hilotrims S.A.','Hilotrims S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(182,0,'Moda Sport','Moda Sport',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(184,0,'Sams & Rudia S.A.','Sams & Rudia S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(186,0,'Tae Young World S.A.','Tae Young World S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(187,0,'Textiles Inbawca S.A.','Textiles Inbawca S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(188,0,'Top Knitting S.A.','Top Knitting S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(189,0,'Welltex Global S.A.','Welltex Global S.A.',616,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(191,0,'WJ Guatemala S.A.','WJ Guatemala S.A.',33,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(192,0,'Notify Company','',612,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,8,'','','',0,0,0,0,0,0,0,0,30,'','','',0,0,0,''),
(193,0,'Homage','Homage',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',134,8,0,'','','',85,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(1477,0,'LF LOGISTICS (HK) LTD','LF LOGISTICS (HK) LTD',24,'C/O AFH HONG KONG LT. ATL LOGISTICS CENTRE HK \r\nUNITS W6-W11 ON 9/F ATL LOGISTICS CENTRE B KW',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1478,0,'AFH BLP HK Limited','AFH BLP HK Limited',24,'SUITES 1808-1817, 18/F THE METRO PLAZA TOWER 1223\r\nHING FONG ROAD KWAI FONG, N.T. HONG KONG, CN CHINA PEOPLES REP.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1479,0,'AFH Logistics DWC-LLC','AFH Logistics DWC-LLC',24,'PLOT NUMBER WF-07, DUBAI AVIATION CITY \r\nLOGISTICS CITY DUBAI - UAE AE, AFZAE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1480,0,'Associated Carriage & Warehousing (S) PTE Ltd','Associated Carriage & Warehousing (S) PTE Ltd',24,'20 PENJURU LANE 05-01 \r\nSINGAPORE 609193',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1481,0,'EAST COAST MODAS S.A. DE C.V.','EAST COAST MODAS S.A. DE C.V.',24,'BLVD. MANUEL AVILA CAMACHO NO. 5 TORRE C. PISO \r\nCOLONIA LOMAS DE SOTELO NAUCALPAN DE JUAREZ',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1482,0,'GUESS ASIA LIMITED','GUESS ASIA LIMITED',24,'17/F Towe 6 China Hong Kong City \r\n33 Canton Road Tsimshatsui Kowloon null 10852 HK',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1483,0,'GRUPO GUESS, S de R.L. de C.V.','GRUPO GUESS, S de R.L. de C.V.',24,'Boulevard Manuel Avilla Camacko No. 5 Torre C. \r\nPiso22 Col. Loma de Sotelo Naucalpan de Juarez, MX-MEXICO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(1484,0,'GUESS CANADA DISTRIBUTION','GUESS CANADA DISTRIBUTION',24,'8275 19Th Avenue \r\nMontreal, QC H1Z 4k2 CA-CANADA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2197,0,'&CAFE, S.A.','&CAF?, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3703341-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2198,0,'A.T IMPRESOS, S.A.','A.T IMPRESOS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5210384-6','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2199,0,'ACABADOS Y SERIGRAFIA, S.A.','ACABADOS Y SERIGRAFIA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7718962-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2200,0,'ADELSO GARCIA ZEPEDA','ADELSO GARCIA ZEPEDA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6299558-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2201,0,'ADMINISTRADORA DE PARQUEOS, S.A.','ADMINISTRADORA DE PARQUEOS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5595415-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2202,0,'ADMINISTRADORA DE RESTAURANTES, S.A.','ADMINISTRADORA DE RESTAURANTES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'780142-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2203,0,'AEROEXPRESS, S.A.','AEROEXPRESS, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'804592-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2204,0,'AGUNSA GUATEMALA, S.A.','AGUNSA GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5741741-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2205,0,'AGUSTIN ARGUETA ALVAREZ','AGUSTIN ARGUETA ALVAREZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8544284-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2206,0,'AIDA LISSETE PEZZAROSSI RODRIGUEZ','AIDA LISSETE PEZZAROSSI RODRIGUEZ',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'591460-4','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2207,0,'ALBERTINA HYPATIA MIROSLAVA GARCIA MORALES DE VALDEZ','ALBERTINA HYPATIA MIROSLAVA GARCIA MORALES DE VALDEZ',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5011773-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2208,0,'ALCATEXTIL, S.A.','ALCATEXTIL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3425917-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2209,0,'ALDO MAURICIO PARDUCCI MARCHUCA','ALDO MAURICIO PARDUCCI MARCHUCA',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7489231-2','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2210,0,'ALEJANDRO GONZALEZ GARCIA','ALEJANDRO GONZALEZ GARCIA',767,'EXTRACCION DE BASURA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'304188-3','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2211,0,'ALICIA DENNISSE GALINDO TEYUL','ALICIA DENNISSE GALINDO TEYUL',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9560444-8','','',0,0,0,0,0,0,754,762,0,'','','',0,0,0,''),
(2212,0,'ALIMENTOS CASEROS, S.A.','ALIMENTOS CASEROS, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'723453-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2213,0,'ALIMENTOS ILIMITADOS, S.A.','ALIMENTOS ILIMITADOS, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8818623-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2214,0,'ALIMENTOS NACIONALES, S.A.','ALIMENTOS NACIONALES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3222137-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2215,0,'ALIMENTOS XELAPAN, S.A.','ALIMENTOS XELAPAN, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'589799-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2216,0,'ALIMENTOS Y BEBIDAS M.A.R.S.A.','ALIMENTOS Y BEBIDAS M.A.R.S.A.',767,'GASTOS NO DEDUCIBLES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7798988-0','','',0,0,0,0,0,0,758,761,0,'','','',0,0,0,''),
(2217,0,'ALIMORI DE GUATEMALA, S.A.','ALIMORI DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9392090-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2218,0,'Almacosa, S.A.','Almacosa, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4649623-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2219,0,'ALPINE, S.A.','ALPINE, S.A.',767,'\"ALPINE, S.A.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8603395-6','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2220,0,'ALTURISA GUATEMALA, S.A.','ALTURISA GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3535591-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2221,0,'ALVARO ROCAEL MERIDA SANAN','ALVARO ROCAEL MERIDA SANAN',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1951013-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2222,0,'AMANDA QUAN LAU VDA DE LAY Y CD?OS','AMANDA QUAN LAU VDA DE LAY Y CD?OS',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'321374-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2223,0,'AMERICA GL, S.A.','AMERICA GL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8365017-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2224,0,'AMERICAN AIRLINES INC','AMERICAN AIRLINES INC',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'552731-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2225,0,'AMTEX DE EL SALVADOR, S.A. DE C.V.','AMTEX DE EL SALVADOR, S.A. DE C.V.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-191007-101-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2226,0,'ANA MARITZA MORALES ORTIZ','ANA MARITZA MORALES ORTIZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'597102-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2227,0,'ANDREA MARIE ASTURIAS SIMONS','ANDREA MARIE ASTURIAS SIMONS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'46208-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2228,0,'APL, LOGISTICS DE GUATEMALA, S.A.','APL, LOGISTICS DE GUATEMALA, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2673004-9','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2229,0,'APLICACIONES TECNICAS, S.A.','APLICACIONES TECNICAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1494170-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2230,0,'APPELETOWN, S.A.','APPELETOWN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3331431-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2231,0,'ARANKENE, S.A.','ARANKENE, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7074627-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2232,0,'ARCA DE NOE, S.A.','ARCA DE NOE, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'122174-4','','',0,0,0,0,0,0,818,761,0,'','','',0,0,0,''),
(2233,0,'ARCADIA GOLF, S.A.','ARCADIA GOLF, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7742630-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2234,0,'ARNOLDO SAMAYOA','ARNOLDO SAMAYOA',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'846457-K','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2235,0,'ARRENDAMIENTOS ESPECIALIZADOS, S.A.','ARRENDAMIENTOS ESPECIALIZADOS, S.A.',767,'ARRENDAMIENTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7018708-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2236,0,'ARRIAGAS, S.A.','ARRIAGAS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9003522-4','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2237,0,'Aseguradora General, S.A.','Aseguradora General, S.A.',767,'SEGUROS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'74455-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2238,0,'ASESOR?A Y SERVICIOS AL COMERCIO EXTERIOR, S.A.','ASESOR?A Y SERVICIOS AL COMERCIO EXTERIOR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2642372-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2239,0,'ASOCIACION ALTA VISTA & TENIS CLUB','ASOCIACION ALTA VISTA & TENIS CLUB',767,'Gastos Generales',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'750630-9','','',0,0,0,0,0,0,818,762,0,'','','',0,0,0,''),
(2240,0,'ASOCIACION DE COREANOS EN GUATEMALA','ASOCIACION DE COREANOS EN GUATEMALA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8379960-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2241,0,'ASOCIACION DE PROPIETARIOS Y USUARIOS DEL CAMPO DE GOLF LA REUNION DE ANTIGUA','ASOCIACION DE PROPIETARIOS Y USUARIOS DEL CAMPO DE GOLF LA REUNION DE ANTIGUA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6960756-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2242,0,'ASOCIACION GUATEMALTECA DE EXPORTADORES','ASOCIACION GUATEMALTECA DE EXPORTADORES',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'516348-K','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2243,0,'ATLAPAC, S.A.','ATLAPAC, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'488403-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2244,0,'AUDIO SHOP, S.A.','AUDIO SHOP, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3931471-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2245,0,'AUTOKIA DE GUATEMALA, S.A.','AUTOKIA DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2955286-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2246,0,'AVERY DENNISON COMERCIAL EL SALVADOR S.A. DE C.V.','AVERY DENNISON COMERCIAL EL SALVADOR S.A. DE C.V.',767,'AVERY DENNISON RETAIL INFORMATION SERVICES EL SALVADOR S.A. DE C.V.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-300513-103-8','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2247,0,'AVERY DENNISON EL SALVADOR','AVERY DENNISON EL SALVADOR',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-081106-101-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2248,0,'BALLACK, S.A.','BALLACK, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7190247-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2249,0,'BANCO EMPRESARIAL, S.A.','BANCO EMPRESARIAL, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'628609-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2250,0,'BARZEL, S.A.','BARZEL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6792853-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2251,0,'BEK, S.A.','BEK, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'794956-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2252,0,'BELLUNO, S.A.','BELLUNO, S.A.',767,'ATENCION A CLIENTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'555973-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2253,0,'BEST LABEL INT., S.A.','BEST LABEL INT., S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9148672-6','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2254,0,'BIAS Y CINTURONES INDUSTRIALES, S.A.','BIAS Y CINTURONES INDUSTRIALES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6660218-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2255,0,'BIENES RAICES EL IMPERIO, S.A.','BIENES RAICES EL IMPERIO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2385457-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2256,0,'BIOTECH GROUP, S.A.','BIOTECH GROUP, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9175890-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2257,0,'BLUE ELECTRONICS, S.A.','BLUE ELECTRONICS, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9459440-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2258,0,'BLUELICIOUS, S.A.','BLUELICIOUS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7652286-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2259,0,'BOBBIN INTERNACIONAL, S.A.','BOBBIN INTERNACIONAL, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7456527-3','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2260,0,'BORDIK-S.A.','BORDIK-S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7118480-5','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2261,0,'BRAIFORM (HK) LIMITED','BRAIFORM (HK) LIMITED',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9504-241199-101-2','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2262,0,'BROADCLOTH, S.A.','BROADCLOTH, S.A.',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2431245-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2263,0,'BUEN PROVECHO, S.A.','BUEN PROVECHO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2248307-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2264,0,'BUHLER QUALITY YARNS CORP.','BUHLER QUALITY YARNS CORP.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'58-2210874','','',0,0,0,0,0,0,757,761,0,'','','',0,0,0,''),
(2265,0,'BUREAU VERITAS CPS GUATEMALA, S.A.','BUREAU VERITAS CPS GUATEMALA, S.A.',767,'ANALISIS DE LABORATORIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3139889-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2266,0,'BUSINESS SOLUTIONS PARTNERS, S.A.','BUSINESS SOLUTIONS PARTNERS, S.A.',767,'COMBUSTIBLE SUPER',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4692789-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2267,0,'BYUNGJOO KIM','BYUNGJOO KIM',767,'MATERIAL DE EMPAQUE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7454093-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2268,0,'C.A. LOGISTIC\'S, S.A.','C.A. LOGISTIC\'S, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7802456-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2269,0,'C.I. ESTRADA VELASQUEZ Y CIA SAS','C.I. ESTRADA VELASQUEZ Y CIA SAS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'890926617-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2270,0,'CAF? BAR, S.A.','CAF? BAR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1251937-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2273,0,'CAMARA DE COMERCIO DE GUATEMALA','CAMARA DE COMERCIO DE GUATEMALA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'35159-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2274,0,'CAMBIO EMPRESARIAL, S.A.','CAMBIO EMPRESARIAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4200804-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2275,0,'CAMILO ANTONIO AVILEZ CHAVARRIA','CAMILO ANTONIO AVILEZ CHAVARRIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9341831-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2276,0,'CANELLA, S.A.','CANELLA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32561-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2277,0,'CANON DE PALIN, S.A.','CANON DE PALIN, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5631203-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2278,0,'CANTANA, S.A.','CANTANA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7027581-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2279,0,'CARBURANTES DEL ATLANTICO, S.A.','CARBURANTES DEL ATLANTICO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4532241-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2280,0,'CARGO EXPRESO, S.A.','CARGO EXPRESO, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'575081-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2281,0,'CARIBEX WORLDWIDE GUATEMALA, S.A.','CARIBEX WORLDWIDE GUATEMALA, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2824396-K','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2282,0,'CARLOS ENRIQUE ARGUETA ALVAREZ','CARLOS ENRIQUE ARGUETA ALVAREZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'246078-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2283,0,'CARLOS ERNESTO ANTILLON SUCS','CARLOS ERNESTO ANTILLON SUCS',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'338942-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2284,0,'CARLOS F. CALDERON C.','CARLOS F. CALDERON C.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1728651-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2285,0,'CARLYLE, S.A.','CARLYLE, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4426096-2','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2286,0,'CARMEN YOLANDA VALENZUELA DIAZ DE ESPINOZA','CARMEN YOLANDA VALENZUELA DIAZ DE ESPINOZA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1794051-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2287,0,'CARNICA, S.A.','CARNICA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7599589-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2288,0,'CARPIMUNDO, S.A.','CARPIMUNDO, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3816739-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2289,0,'CARTONES DE VILLA NUEVA, S.A.','CARTONES DE VILLA NUEVA, S.A.',767,'MATERIAL DE EMPAQUE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8967490-1','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2290,0,'CARTONES GLOBAL, S.A.','CARTONES GLOBAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7387381-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2291,0,'CASATEX, S.A.','CASATEX, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6832982-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2292,0,'CBS TEK, S.A.','CBS TEK, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8603552-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2293,0,'CECILIA DEL ROSARIO QUIEZA ANDRADE','CECILIA DEL ROSARIO QUIEZA ANDRADE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'209129-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2294,0,'CEFALU, S.A.','CEFALU, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6743859-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2295,0,'CELASA, INGENIERIA Y EQUIPOS, S.A.','CELASA, INGENIERIA Y EQUIPOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'153916-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2296,0,'CELCOMER, S.A.','CELCOMER, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'560962-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2297,0,'CELIO, S.A.','CELIO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1251601-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2298,0,'CESAR FERNANDEZ RENTERIA COPROPIEDAD','CESAR FERNANDEZ RENTERIA COPROPIEDAD',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3778709-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2299,0,'CESAR HUMBERTO DUBON ARITA','CESAR HUMBERTO DUBON ARITA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'568473-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2300,0,'CETANOS, S.A.','CETANOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7539876-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2301,0,'CHIVAS STEAK HOUSE, S.A.','CHIVAS STEAK HOUSE, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9113267-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2302,0,'CHOCOMUSEO, S.A.','CHOCOMUSEO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7725252-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2303,0,'CHOFERES, S.A.','CHOFERES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'814620-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2304,0,'CLAROTEX GUATEMALA, S.A.','CLAROTEX GUATEMALA, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8544024-8','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2305,0,'CLAUDIA LORENA CARRANZA ROQUE','CLAUDIA LORENA CARRANZA ROQUE',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1379001-3','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2306,0,'CLAUDIA MARIA VALLADARES CHACON','CLAUDIA MARIA VALLADARES CHACON',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4326552-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2307,0,'CLAUDIA MONICA VALDEZ MORALES','CLAUDIA MONICA VALDEZ MORALES',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2439233-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2308,0,'CLAUDIA PATRICIA ESCOBEDO OLIVA','CLAUDIA PATRICIA ESCOBEDO OLIVA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'543230-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2309,0,'CMA CGM GUATEMALA, S.A.','CMA CGM GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8817127-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2310,0,'COCINAS DE AUTOR, S.A.','COCINAS DE AUTOR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8336022-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2311,0,'COINSCLA, S.A.','COINSCLA, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'153653-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2312,0,'COLOR ART CORGUA, S.A.','COLOR ART CORGUA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7977425-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2313,0,'COLORMAX SYSTEMS, S.A.','COLORMAX SYSTEMS, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6977944-9','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2314,0,'COMBEX-IM','COMBEX-IM',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5244909-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2315,0,'COMBUSTIBLES ALTAMIRA, S.A.','COMBUSTIBLES ALTAMIRA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7474465-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2316,0,'COMBUSTIBLES DE CALIDAD, S.A.','COMBUSTIBLES DE CALIDAD, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8251866-6','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2317,0,'COMBUSTIBLES DE CONFIANZA, S.A.','COMBUSTIBLES DE CONFIANZA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6963353-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2318,0,'COMBUSTIBLES ECONOMICOS, S.A.','COMBUSTIBLES ECONOMICOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8067310-4','','',0,0,0,0,0,0,752,820,0,'','','',0,0,0,''),
(2319,0,'COMBUSTIBLES EL PAJONAL, S.A.','COMBUSTIBLES EL PAJONAL, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8222838-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2320,0,'COMBUSTIBLES Y LUBRICANTES M.A.R.S.A.','COMBUSTIBLES Y LUBRICANTES M.A.R.S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7798402-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2321,0,'COMBUSTIBLES Y SERVICIOS, S.A.','COMBUSTIBLES Y SERVICIOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8937042-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2322,0,'Comco de Guatemala, S.A.','Comco de Guatemala, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2460689-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2323,0,'COMERCIAL EL ANGEL, S.A.','COMERCIAL EL ANGEL, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5663832-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2324,0,'COMERCIAL SMILIST, S.A.','COMERCIAL SMILIST, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8571826-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2325,0,'COMERCIALIZADORA ATLANTICO REPRESENTACIONES, S.A.','COMERCIALIZADORA ATLANTICO REPRESENTACIONES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'579779-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2326,0,'COMERCIALIZADORA INTELIGENTE DE TIENDAS, S.A.','COMERCIALIZADORA INTELIGENTE DE TIENDAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5992622-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2327,0,'COMPA??A COMERCIAL GESTALFER, S.A.','COMPA??A COMERCIAL GESTALFER, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7932103-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2328,0,'COMPA??A DE LOGISTICA Y TRANSPORTE, S.A.','COMPA??A DE LOGISTICA Y TRANSPORTE, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2713855-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2329,0,'COMPANIA DISTRIBUIDORA DE TABACOS, S.A.','COMPANIA DISTRIBUIDORA DE TABACOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'443767-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2330,0,'COMPA??A GUATEMALTECA DE ALMACENES GRALES DE DEPOSITO, S.A.','COMPA??A GUATEMALTECA DE ALMACENES GRALES DE DEPOSITO, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,' 78328-5 ','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2331,0,'COMPA??A IMPERIAL, S.A.','COMPA??A IMPERIAL, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'678878-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2332,0,'COMPA??A INTERNACIONAL DE HOTELES, S.A.','COMPA??A INTERNACIONAL DE HOTELES, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2399458-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2333,0,'COMPA??A INTERNACIONAL DE PRODUCTOS Y SERVICIOS, S.A.','COMPA??A INTERNACIONAL DE PRODUCTOS Y SERVICIOS, S.A.',767,'ALQUILER DE EQUIPO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'486346-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2334,0,'COMPA??A PANAME?A DE AVIACION, S.A.','COMPA??A PANAME?A DE AVIACION, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'107869-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2335,0,'COMPA??A UNIVERSAL DE REFRIGERACI?N, S.A.','COMPA??A UNIVERSAL DE REFRIGERACI?N, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'449036-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2336,0,'COMPLEMENTOS PARA LA INDUSTRIA TEXTIL, S.A.','COMPLEMENTOS PARA LA INDUSTRIA TEXTIL, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4292090-6','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2337,0,'COMPU-ACCESORIOS, S.A.','COMPU-ACCESORIOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'674338-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2338,0,'COMSEDI PALMERAS, S.A.','COMSEDI PALMERAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6991547-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2339,0,'COMUNICACIONES CELULARES, S.A.','COMUNICACIONES CELULARES, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'549810-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2340,0,'CONECTION, S.A.','CONECTION, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2704633-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2341,0,'CONFORT TOURS, S.A.','CONFORT TOURS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'713434-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2342,0,'CONSOLIDADOS 807, S.A.','CONSOLIDADOS 807, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'596674-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2343,0,'CONSTRUCCION, NEGOCIOS Y SERVICIOS, S.A.','CONSTRUCCION, NEGOCIOS Y SERVICIOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'582487-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2344,0,'CONSTRUCCIONES Y RENTAS, S.A.','CONSTRUCCIONES Y RENTAS, S.A.',767,'ARRENDAMIENTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6955472-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2345,0,'CONSTRUCTORA MARHNOS, S.A.','CONSTRUCTORA MARHNOS, S.A.',767,'IMPUESTOS Y CONTRIBUCIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'980928-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2346,0,'CONTACTENOS, S.A.','CONTACTENOS, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4436888-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2347,0,'CORPORACION ACRO, S.A.','CORPORACION ACRO, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3807481-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(2348,0,'CORPORACION ALDANA, S.A.','CORPORACION ALDANA, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5372932-3','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2349,0,'CORPORACION CONESCO, S.A.','CORPORACION CONESCO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4943186-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2350,0,'CORPORACION DISTRIBUIDORA DE COMBUSTIBLES DISCOMSA, S.A.','CORPORACION DISTRIBUIDORA DE COMBUSTIBLES DISCOMSA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7748458-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2351,0,'CORPORACION MERINO, S.A.','CORPORACION MERINO, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'652115-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2352,0,'CORPORACION MONTECARLO GUATEMALA, S.A.','CORPORACION MONTECARLO GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7830327-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2353,0,'CORPORACION NACIONAL PRIME PC, S.A.','CORPORACION NACIONAL PRIME PC, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8115619-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2354,0,'CORPORACION VISVERSA, S.A.','CORPORACION VISVERSA, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6918123-3','','',0,0,0,0,0,0,818,761,0,'','','',0,0,0,''),
(2355,0,'CROWLEY LATIN AMERICA SERVICES, LLC','CROWLEY LATIN AMERICA SERVICES, LLC',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6398626-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2356,0,'CS CENTRAL AMERICA, S.A. DE C.V.','CS CENTRAL AMERICA, S.A. DE C.V.',767,'CS CENTRAL AMERICA S.A. DE C.V.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-220905-102-9','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2357,0,'CUSTOMS MANAGEMENT CONSULTANTS, S.A.','CUSTOMS MANAGEMENT CONSULTANTS, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7688255-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2358,0,'DA-BIT, S.A.','DA-BIT, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6556613-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2359,0,'DAMARIS SUSANA GONZALEZ PEREZ','DAMARIS SUSANA GONZALEZ PEREZ',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'816518-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2360,0,'DAPUR, S.A.','DAPUR, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9173965-9','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2361,0,'DAVID RAFAEL DE JESUS MERIDA REYES','DAVID RAFAEL DE JESUS MERIDA REYES',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'128098-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2362,0,'DE ALTON, S.A.','DE ALTON, S.A.',767,'ATENCION A CLIENTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'726205-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2363,0,'DEAJIN, S.A.','DEAJIN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6492485-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2364,0,'DELIA FLORIDALMA FLORES OSORIO DE ALVARADO','DELIA FLORIDALMA FLORES OSORIO DE ALVARADO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'165866-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2365,0,'DELLCATESSEN LA ESTANCIA, S.A.','DELLCATESSEN LA ESTANCIA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2328524-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2366,0,'DENIMATRIX, S.A.','DENIMATRIX, S.A.',767,'\"DENIMATRIX, S.A.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5833494-7','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2367,0,'DEPORTES Y DIVERSIONES DIVERSAS, S.A.','DEPORTES Y DIVERSIONES DIVERSAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'988842-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2368,0,'DESARROLLO COMERCIAL GUATEMALTECO, S.A.','DESARROLLO COMERCIAL GUATEMALTECO, S.A.',767,'ATENCION EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'735121-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2369,0,'DESARROLLO SERVICIOS COMERCIO, S.A.','DESARROLLO SERVICIOS COMERCIO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'583273-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2370,0,'DESBAL, S.A.','DESBAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7376250-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2371,0,'DESPACHO EXACTO, S.A.','DESPACHO EXACTO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9356451-1','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2372,0,'DETALLISTA DE UNOPETROL GUATEMALA, S.A.','DETALLISTA DE UNOPETROL GUATEMALA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'126364-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2373,0,'DHL GLOBAL FORWARDING (EL SALVADOR) S.A. DE C.V.','DHL GLOBAL FORWARDING (EL SALVADOR) S.A. DE C.V.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-010395-101-0','','',0,0,0,0,0,0,760,762,0,'','','',0,0,0,''),
(2374,0,'DHL GLOBAL FORWARDING (GUATEMALA) S.A.','DHL GLOBAL FORWARDING (GUATEMALA) S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1277571-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2375,0,'DHL, S.A.','DHL, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1252273-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2376,0,'DICELTEC, S.A.','DICELTEC, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4846730-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2377,0,'DIEGO LOPEZ PASTOR','DIEGO LOPEZ PASTOR',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'211777-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2378,0,'DISDEL, S.A.','DISDEL, S.A.',767,'UTENSILIOS DE LIMPIEZA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4630629-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2379,0,'DISERMO, S.A.','DISERMO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5220497-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2380,0,'DISTRIBUCIONES VISIONARIAS LYM, S.A','DISTRIBUCIONES VISIONARIAS LYM, S.A',767,'TELEFONO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6135996-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2381,0,'DISTRIBUIDORA ALCAZAREN, S.A.','DISTRIBUIDORA ALCAZAREN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'827025-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2382,0,'DISTRIBUIDORA DE COMPONENTES BP, S.A.','DISTRIBUIDORA DE COMPONENTES BP, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7807959-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2383,0,'DISTRIBUIDORA DE VEHICULOS IMPORTADOS, S.A.','DISTRIBUIDORA DE VEHICULOS IMPORTADOS, S.A.',767,'MANTENIMIENTO VEHICULOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'742155-9','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2384,0,'DISTRIBUIDORA DEL CARIBE DE GUATEMALA, S.A.','DISTRIBUIDORA DEL CARIBE DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'636700-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2385,0,'DISTRIBUIDORA ELECTRONICA, S.A.','DISTRIBUIDORA ELECTRONICA, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'97976-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2386,0,'DISTRIBUIDORA ERGOS, S.A.','DISTRIBUIDORA ERGOS, S.A.',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'489072-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2387,0,'DISTRIBUIDORA HALCON, S.A.','DISTRIBUIDORA HALCON, S.A.',767,'CAFETERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2487809-K','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2388,0,'DISTRIBUIDORA MILANO, S.A.','DISTRIBUIDORA MILANO, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'569990-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2389,0,'DOBLADAS SAN CARLOS, SOCIEDAD ANONIMA','DOBLADAS SAN CARLOS, SOCIEDAD ANONIMA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5492604-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2390,0,'DOLLARCITY GUATEMALA, S.A.','DOLLARCITY GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7399950-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2391,0,'DON JOAQUIN, S.A.','DON JOAQUIN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7918141-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2392,0,'DONG JOON, KIM LEE','DONG JOON, KIM LEE',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'658990-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2393,0,'DQB, S.A.','DQB, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7248504-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2395,0,'DTSOLUTIONS, S.A.','DTSOLUTIONS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3296702-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2396,0,'DUO PRODUCTOS Y SERVICIOS, S.A.','DUO PRODUCTOS Y SERVICIOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6729014-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2397,0,'EBENEZER FLEXIGRAFICOS, S.A.','EBENEZER FLEXIGRAFICOS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9150822-3','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2399,0,'Eco Termo De Centro America, S.A.','Eco Termo De Centro America, S.A.',767,'EXTRACCION DE BASURA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2667834-9','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2400,0,'Econoenergia, S.A.','Econoenergia, S.A.',767,'ENERGIA ELECTRICA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4859414-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2401,0,'EDGAR EDUARDO MORALES CURRUCHICHE','EDGAR EDUARDO MORALES CURRUCHICHE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'399503-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2402,0,'EDGAR LEONEL ESTRADA','EDGAR LEONEL ESTRADA',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'570588-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2403,0,'EDGE GUATEMALA,  S.A.','EDGE GUATEMALA,  S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4937376-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2404,0,'EDIN ESTUARDO GONZALEZ CAL','EDIN ESTUARDO GONZALEZ CAL',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4227940-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2405,0,'EDNA ELIZABETH CASTELLANOS MARTINEZ DE ORDO?EZ','EDNA ELIZABETH CASTELLANOS MARTINEZ DE ORDO?EZ',767,'EQUIPO DE COMPUTO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5595881-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2406,0,'EDWIN RAFAEL VASQUEZ GONZALEZ','EDWIN RAFAEL VASQUEZ GONZALEZ',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'686326-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2407,0,'EDWIN ROLANDO LE?N IXCOL','EDWIN ROLANDO LE?N IXCOL',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'761558-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2408,0,'EL CHINITO VELOZ, S.A.','EL CHINITO VELOZ, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'818597-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2409,0,'EL CORTIJO, S.A.','EL CORTIJO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5291711-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2410,0,'EL GRAN JAGUAR, S.A.','EL GRAN JAGUAR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'616792-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2411,0,'EL INJERTO, S.A.','EL INJERTO, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'803428-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2413,0,'Electro Materiales, S.A.','Electro Materiales, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'402340-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2414,0,'ELECTRONICA PAN AMERICANA, S.A.','ELECTRONICA PAN AMERICANA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'523013-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2415,0,'EMERSON AUGUSTO BARRIOS GOMEZ','EMERSON AUGUSTO BARRIOS GOMEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1827378-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2416,0,'EMPAQUES Y COMPLEMENTOS, S.A.','EMPAQUES Y COMPLEMENTOS, S.A.',767,'MATERIAL DE EMPAQUE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'849727-3','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2417,0,'EMPAQUES Y MAS, S.A.','EMPAQUES Y MAS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2592440-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2418,0,'EMPRESA ELECTRICA DE GUATEMALA, S.A.','EMPRESA ELECTRICA DE GUATEMALA, S.A.',767,'ENERGIA ELECTRICA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32644-5','','',0,0,0,0,0,0,818,762,0,'','','',0,0,0,''),
(2419,0,'EMPRESA MARITIMA Y TERRESTRE DE SERVICIOS SOCIEDAD ANONIMA','EMPRESA MARITIMA Y TERRESTRE DE SERVICIOS SOCIEDAD ANONIMA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2439111-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2420,0,'EMPRESA MUNICIPAL DE AGUA','EMPRESA MUNICIPAL DE AGUA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'330651-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2421,0,'EMPRESAS TANDY, S.A.','EMPRESAS TANDY, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'558173-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2422,0,'ENERGIA CONSOLIDADA, S.A.','ENERGIA CONSOLIDADA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7833267-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2423,0,'ENERGIA INMEDIATA, S.A.','ENERGIA INMEDIATA, S.A.',767,'ENERGIA ELECTRICA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7847682-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2424,0,'ENERGIA Y COMBUSTIBLES, S.A.','ENERGIA Y COMBUSTIBLES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9189059-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2425,0,'ENOTECA TOSCANA, S.A.','ENOTECA TOSCANA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3524317-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2426,0,'ENVY FASHION, S.A.','ENVY FASHION, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8374499-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2427,0,'ERDOL GROUP, S.A.','ERDOL GROUP, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9539180-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2428,0,'ERVIN ROLANDO CACERES ARIZANDIETA','ERVIN ROLANDO CACERES ARIZANDIETA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7225268-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2429,0,'ESPACIO MODERNO, S.A.','ESPACIO MODERNO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6489663-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2430,0,'ESSEX INVERSIONES, S.A.','ESSEX INVERSIONES, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'574203-K','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2431,0,'ESTACION DE SERVICIO M&S','ESTACION DE SERVICIO M&S',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'71879-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2432,0,'ESTACION EL PUENTE Y CIA. LIMITADA','ESTACION EL PUENTE Y CIA. LIMITADA',767,'COMBUSTIBLE SUPER',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2382776-9','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2433,0,'ESTACIONAMIENTO IC, S.A.','ESTACIONAMIENTO IC, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2740645-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2434,0,'ESTACIONES DE COMBUSTIBLES, S.A.','ESTACIONES DE COMBUSTIBLES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6926640-9','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2435,0,'Estaciones de Servicio Optima, S.A.','Estaciones de Servicio Optima, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7699087-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2436,0,'ESTACIONES DE SERVICIO, S.A.','ESTACIONES DE SERVICIO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'522537-K','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2437,0,'ETIQUETAS Y BORDADOS DE GUATEMALA, S.A.','ETIQUETAS Y BORDADOS DE GUATEMALA, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'779542-4','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2438,0,'EUIJEONG GU','EUIJEONG GU',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5595088-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2439,0,'EUNMI SHIN','EUNMI SHIN',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9011648-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2440,0,'EURO MANTENIMIENTOS, S.A.','EURO MANTENIMIENTOS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2624488-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2441,0,'EVA CORP, S.A.','EVA CORP, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8760547-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2442,0,'EXPEDITORS GUATEMALA, S.A.','EXPEDITORS GUATEMALA, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4940651-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2443,0,'EXPENDIO EXPORTADORA E IMPORTADORA DE COMBUSTIBLES Y SUMINISTROS DE GUATEMALA, S.A.','EXPENDIO EXPORTADORA E IMPORTADORA DE COMBUSTIBLES Y SUMINISTROS DE GUATEMALA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4223307-0','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2444,0,'FARMACIA CRUZ VERDE LAS BRISAS','FARMACIA CRUZ VERDE LAS BRISAS',767,'ATENCION A CLIENTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'475112-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2445,0,'FARMACIA FARMATIK, S.A.','FARMACIA FARMATIK, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'801378-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2446,0,'FASE I, S.A.','FASE I, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5540781-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2447,0,'FEDEX TRANSPORTES EXPRESOS GUATEMALA, LIMITADA','FEDEX TRANSPORTES EXPRESOS GUATEMALA, LIMITADA',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2418449-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2448,0,'FELUCA, S.A.','FELUCA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5784727-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2449,0,'FENIX CARGO, S.A.','FENIX CARGO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2985876-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2450,0,'FERRETERIA DE LA CONSTRUCCION, S.A.','FERRETERIA DE LA CONSTRUCCION, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'710057-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2451,0,'FERRETERIA EPA, S.A.','FERRETERIA EPA, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8176617-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2452,0,'FGV, S.A.','FGV, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7890978-3','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2453,0,'FIME & HERMANOS, S.A.','FIME & HERMANOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8213352-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2454,0,'FINANCIAL TAX & CONSULTING GROUP, S.A.','FINANCIAL TAX & CONSULTING GROUP, S.A.',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8024125-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2455,0,'FINOS TEXTILES DE EL SALVADOR, S.A. DE C.V.','FINOS TEXTILES DE EL SALVADOR, S.A. DE C.V.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-131103-105-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2456,0,'FINOS, S.A.','FINOS, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'560831-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2457,0,'FLOR DE MARIA P?REZ GRAMAJO','FLOR DE MARIA P?REZ GRAMAJO',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9469901-1','','',0,0,0,0,0,0,754,762,0,'','','',0,0,0,''),
(2458,0,'FOODCOO DE CA, S.A.','FOODCOO DE CA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8952424-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2459,0,'Fraccionamiento Industrial Mixco Norte & Copropiedad','Fraccionamiento Industrial Mixco Norte & Copropiedad',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'604416-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2460,0,'FRANBO, S.A.','FRANBO, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1185610-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2461,0,'FRANCISCO ROBERTO ESTACUY LETONA','FRANCISCO ROBERTO ESTACUY LETONA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'386435-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2462,0,'FRANQUICIA DE LIMPIEZA, SERVICIO Y CALIDAD, S.A.','FRANQUICIA DE LIMPIEZA, SERVICIO Y CALIDAD, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6814246-3','','',0,0,0,0,0,0,818,761,0,'','','',0,0,0,''),
(2463,0,'FREUDENBERG TEXTILE TECHNOLOGIES, S.A.','FREUDENBERG TEXTILE TECHNOLOGIES, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7144343-6','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2464,0,'FU LAI, S.A.','FU LAI, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8253123-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2465,0,'FUNCIONES, S.A.','FUNCIONES, S.A.',767,'GASTOS VARIOS DE PRODUCCION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'540679-K','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2466,0,'FUTSAL WORLD, S.A.','FUTSAL WORLD, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7742590-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2467,0,'GABRIELA ALEJANDRA MIJANGOS ROBLES','GABRIELA ALEJANDRA MIJANGOS ROBLES',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'972983-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2468,0,'GAS, S.A.','GAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8057566-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2469,0,'GASABISA, S.A.','GASABISA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9175492-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2470,0,'GASOLINAS ECONOMICAS, S.A.','GASOLINAS ECONOMICAS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5045053-0','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2471,0,'GASOLINERA LA SANARATECA, S.A.','GASOLINERA LA SANARATECA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6895650-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2472,0,'GASOLINERA PAMPICHIN, S.A.','GASOLINERA PAMPICHIN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8027845-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2473,0,'GASOLINERAS AZULES, S.A.','GASOLINERAS AZULES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8713986-3','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2474,0,'GASOLINERAS EXCLUSIVAS, S.A.','GASOLINERAS EXCLUSIVAS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5124381-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2475,0,'GASOLINERAS LOS PLANES, S.A.','GASOLINERAS LOS PLANES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7347209-3','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2476,0,'GASOLINERAS LUNA, S.A.','GASOLINERAS LUNA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8156834-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2477,0,'GASOLINERAS PRETOX, S.A.','GASOLINERAS PRETOX, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7862466-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2478,0,'GASOLINERAS Y DERIVADOS, S.A.','GASOLINERAS Y DERIVADOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6923010-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2479,0,'GASOLINERAS Y MAS, S.A.','GASOLINERAS Y MAS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5991538-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2480,0,'GELEN BEATRIZ GUTIERREZ PINEDA','GELEN BEATRIZ GUTIERREZ PINEDA',767,'GASTOS VARIOS DE PRODUCCION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5176399-0','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2481,0,'GENETICA FORESTAL TERRABOSQUE, S.A.','GENETICA FORESTAL TERRABOSQUE, S.A.',767,'ARRENDAMIENTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7588939-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2482,0,'GEOTELEMATICA DE CENTROAMERICA, S.A.','GEOTELEMATICA DE CENTROAMERICA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7487106-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2483,0,'GERBER ROBERTO MORALES QUI?ONEZ','GERBER ROBERTO MORALES QUI?ONEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6829281-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2484,0,'GESCHAFT GROUP, S.A.','GESCHAFT GROUP, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9539017-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2485,0,'GESTORA DE NEGOCIOS OH, S.A.','GESTORA DE NEGOCIOS OH, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6361744-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2486,0,'GILBERTO EDUARDO ARREAGA ROHR','GILBERTO EDUARDO ARREAGA ROHR',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'100229-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2487,0,'GILMAR JOSELITO RAMIREZ SILIEZAR, DORALDINA GARCIA Y COPROPIEDAD','GILMAR JOSELITO RAMIREZ SILIEZAR, DORALDINA GARCIA Y COPROPIEDAD',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7696072-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2488,0,'GILMER ADAN ESPINA RUIZ','GILMER ADAN ESPINA RUIZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'718183-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2489,0,'GLADIS SILVANA ALFARO MORALES','GLADIS SILVANA ALFARO MORALES',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2713980-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2490,0,'GLADYS LEONORA RECINOS GARCIA','GLADYS LEONORA RECINOS GARCIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'796766-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2492,0,'GLORIA ESPERANZA AGUILAR DE MARTINEZ','GLORIA ESPERANZA AGUILAR DE MARTINEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1811689-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2493,0,'GOGAS, S.A.','GOGAS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7951933-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2495,0,'GREEN TEA, S.A.','GREEN TEA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8826353-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2496,0,'GRUPO AB, S.A.','GRUPO AB, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'709004-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2497,0,'GRUPO AQUA, S.A.','GRUPO AQUA, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3826615-6','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2498,0,'GRUPO BC, S.A.','GRUPO BC, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2635898-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2499,0,'GRUPO BT COMBUSTIBLES, S.A.','GRUPO BT COMBUSTIBLES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6166407-3','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2500,0,'GRUPO CJ, S.A.','GRUPO CJ, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8181753-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2501,0,'GRUPO CULINARIO, S.A.','GRUPO CULINARIO, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9406465-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2502,0,'GRUPO DAAC DE GUATEMALA, S.A.','GRUPO DAAC DE GUATEMALA, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8231965-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2503,0,'Grupo Denver, S.A.','Grupo Denver, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5114277-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2504,0,'GRUPO DISPERSA, S.A.','GRUPO DISPERSA, S.A.',767,'CAFETERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2422276-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2505,0,'GRUPO EMPRESARIAL DE IMPORTACIONES, S.A.','GRUPO EMPRESARIAL DE IMPORTACIONES, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3966465-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2506,0,'GRUPO FIME & ASOCIADOS, S.A.','GRUPO FIME & ASOCIADOS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7801978-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2507,0,'GRUPO FRANCE, S.A.','GRUPO FRANCE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7622276-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2508,0,'GRUPO NIXO, S.A.','GRUPO NIXO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7802410-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2509,0,'GRUPO NKG, S.A.','GRUPO NKG, S.A.',767,'CAFETERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8012188-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2510,0,'GRUPO NOUS, S.A.','GRUPO NOUS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2237420-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2511,0,'GRUPO PTR SOCIEDAD ANONIMA','GRUPO PTR SOCIEDAD ANONIMA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8613290-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2512,0,'GRUPO ROMA, S.A.','GRUPO ROMA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7925670-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2513,0,'GRUPO S.J. S.A.','GRUPO S.J. S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5633823-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2514,0,'GRUPO SOCA, S.A.','GRUPO SOCA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8421140-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2515,0,'GS1 GUATEMALA','GS1 GUATEMALA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3002162-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2517,0,'GUALBERTO ANTONIO CARIAS','GUALBERTO ANTONIO CARIAS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4596852-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2518,0,'GUATE INMUEBLES Y SERVICIOS HOSPITALARIOS, S.A.','GUATE INMUEBLES Y SERVICIOS HOSPITALARIOS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8751441-9','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2519,0,'GUATEMALA THREAD COMPANY, S.A.','GUATEMALA THREAD COMPANY, S.A.',767,'\"GUATEMALA THREAD COMPANY, S.A.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8743445-8','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2520,0,'GUENARI, S.A.','GUENARI, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3500885-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2521,0,'GUILMA AZUCENA, MENDEZ GIRON DE LOZANO','GUILMA AZUCENA, MENDEZ GIRON DE LOZANO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'165041-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2522,0,'GUMERCINDO MELCHOR SOLIS','GUMERCINDO MELCHOR SOLIS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'484813-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2523,0,'H.B. TRIM EL SALVADOR, S.A. DE C.V.','H.B. TRIM EL SALVADOR, S.A. DE C.V.',767,'\"H.B. TRIM EL SALVADOR, S.A. DE C.V.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-110204-104-0','','',0,0,0,0,0,0,760,762,0,'','','',0,0,0,''),
(2524,0,'HACC, S.A.','HACC, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5502879-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2525,0,'HAK BAE KIM DO','HAK BAE KIM DO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4961546-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2526,0,'HAMBURG S?D GUATEMALA, S.A.','HAMBURG S?D GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6328490-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2527,0,'HANINILBO, S.A.','HANINILBO, S.A.',767,'SUSCRIPCIONES Y PUBLICACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3227829-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2528,0,'H-BISTRO, S.A.','H-BISTRO, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8079344-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2529,0,'HECTOR RAFAEL MENDEZ GONZALEZ','HECTOR RAFAEL MENDEZ GONZALEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5071906-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2530,0,'HEE KYUNG, LEE DE CHO','HEE KYUNG, LEE DE CHO',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4814299-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2531,0,'HELEN CABATO MOISES','HELEN CABATO MOISES',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4395139-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2532,0,'HIDROFAM, S. A.','HIDROFAM, S. A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4469880-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2533,0,'HILERA TEXTIL, S.A.','HILERA TEXTIL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'521844-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2534,0,'HILOS A&E DE EL SALVADOR, S.A. DE C.V.','HILOS A&E DE EL SALVADOR, S.A. DE C.V.',767,'\"HILOS A&E DE EL SALVADOR, S.A. DE C.V.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-081298-103-8','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2535,0,'HILOS Y ALGOD?N, S.A.','HILOS Y ALGOD?N, S.A.',767,'DESCUENTOS SOBRE COMPRAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9002848-1','','',0,0,0,0,0,0,818,761,0,'','','',0,0,0,''),
(2536,0,'HOTEL CAMINO REAL, S.A.','HOTEL CAMINO REAL, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32207-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2537,0,'HOTEL FUTURA, S.A.','HOTEL FUTURA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8737458-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2538,0,'HWA YOUNG KIM','HWA YOUNG KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9139348-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2539,0,'HYANG-I, S.A.','HYANG-I, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7862153-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2540,0,'HYUNG SUN KIM','HYUNG SUN KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6966487-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2541,0,'HYUNJIN PARK','HYUNJIN PARK',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7869250-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2542,0,'IDGL, S.A.','IDGL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8943978-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2543,0,'IL CORPO, S.A.','IL CORPO, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4544026-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2544,0,'IMAGINOVA, S.A.','IMAGINOVA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6972312-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2545,0,'IMPERIAL FASHION, S.A.','IMPERIAL FASHION, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4398057-0','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(2546,0,'IMPORTADORA MYLIN, S.A.','IMPORTADORA MYLIN, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1493879-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2547,0,'IMPRESIONES INDUSTRIALES COMETT, S.A.','IMPRESIONES INDUSTRIALES COMETT, S.A.',767,'MATERIAL DE EMPAQUE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'161033-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2548,0,'IMPRESOS COMTEXSA, S.A.','IMPRESOS COMTEXSA, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9155816-6','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2549,0,'INCOVER, S.A.','INCOVER, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7698946-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2550,0,'Indalo Inversiones, S.A.','Indalo Inversiones, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'581249-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2551,0,'INDUSTRIA CENTROAMERICANA DE SANITARIOS, S.A.','INDUSTRIA CENTROAMERICANA DE SANITARIOS, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'107876-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2552,0,'INDUSTRIA CHINA, S.A.','INDUSTRIA CHINA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'371806-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2553,0,'Industria de Comercio y Productos Orientales','Industria de Comercio y Productos Orientales',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3880268-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2554,0,'INDUSTRIA DE HAMBURGUESAS, S.A.','INDUSTRIA DE HAMBURGUESAS, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'452158-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2555,0,'INDUSTRIAS G, S.A.','INDUSTRIAS G, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1191879-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2556,0,'INDUSTRIAS MONTE PLATA, S.A.','INDUSTRIAS MONTE PLATA, S.A.',767,'CAFETERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6060703-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2557,0,'INMOBILIARIA ELITE, S.A.','INMOBILIARIA ELITE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'593967-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2558,0,'INMOBILIARIA GODOY, S.A.','INMOBILIARIA GODOY, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'539321-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2559,0,'Inmobiliaria Master','Inmobiliaria Master',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'50643-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2560,0,'INMOBILIARIA SUMMA, S.A.','INMOBILIARIA SUMMA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'121323-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2561,0,'INSTALACIONES MODERNAS, S.A.','INSTALACIONES MODERNAS, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'84846-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2562,0,'INSTITUTO TECNICO DE CAPACITACION Y PRODUCTIVIDAD INTECAP','INSTITUTO TECNICO DE CAPACITACION Y PRODUCTIVIDAD INTECAP',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'344071-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2563,0,'INT TRADING, S.A.','INT TRADING, S.A.',767,'INVENTARIOS DE MATERIA PRIMA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3401321-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,301,''),
(2564,0,'INTELAF, S.A.','INTELAF, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'538207-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2565,0,'INTELASE, S.A.','INTELASE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7528856-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2566,0,'INTER MANTENIMIENTO, S.A.','INTER MANTENIMIENTO, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7186731-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2567,0,'INTERDONAS DE GUATEMALA, S.A.','INTERDONAS DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7257797-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2568,0,'INTERTEK DE GUATEMALA, S.A.','INTERTEK DE GUATEMALA, S.A.',767,'ANALISIS DE LABORATORIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4445960-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2569,0,'INV. ENERGETICAS AMATITLAN, S.A.','INV. ENERGETICAS AMATITLAN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7062255-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2570,0,'INVERMEDICS, S.A.','INVERMEDICS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'827563-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2571,0,'INVERSION DE FRANQUICIAS COMO VISTO, S.A.','INVERSION DE FRANQUICIAS COMO VISTO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8012992-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2572,0,'INVERSIONES CASA INSTRUMENTAL, S.A.','INVERSIONES CASA INSTRUMENTAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'821743-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2573,0,'INVERSIONES FLIKA, S.A.','INVERSIONES FLIKA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5668705-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2574,0,'INVERSIONES HACIENDA DE TECPAN, S.A.','INVERSIONES HACIENDA DE TECPAN, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8109488-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2575,0,'INVERSIONES HERMANOS BERCIAN, S.A.','INVERSIONES HERMANOS BERCIAN, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3464676-0','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2576,0,'INVERSIONES INMOBILIARIAS, S.A.','INVERSIONES INMOBILIARIAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'627692-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2577,0,'INVERSIONES Y NEGOCIOS MULTIPLES, S.A.','INVERSIONES Y NEGOCIOS MULTIPLES, S.A.',767,'COMBUSTIBLE REGULAR',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3464661-2','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2578,0,'ITALLANA DE ALIMENTOS, S.A.','ITALLANA DE ALIMENTOS, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6926413-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2579,0,'J&J GLOBAL, S.A.','J&J GLOBAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7074762-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2581,0,'J.W. TEXTILES, S.A.','J.W. TEXTILES, S.A.',767,'TEJEDORAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8385207-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(2582,0,'JAE SUNG INTERNACIONAL TEXTILES, S.A.','JAE SUNG INTERNACIONAL TEXTILES, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9522850-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,301,''),
(2583,0,'JCA GUATEMALA, S.A.','JCA GUATEMALA, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7831779-7','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2584,0,'JEONGYEE KIM','JEONGYEE KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9184860-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2585,0,'JIMMY, MATUS DEL CARMEN (MONTUFAR)','JIMMY, MATUS DEL CARMEN (MONTUFAR)',767,'COMBUSTIBLE SUPER',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'24639-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2587,0,'JNB TRADING, S.A.','JNB TRADING, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8630935-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2588,0,'JOF, S.A.','JOF, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4542713-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2589,0,'JOHN ANDRE GARCIA GARCIA/URI JOSUE GARCIA GARCIA','JOHN ANDRE GARCIA GARCIA/URI JOSUE GARCIA GARCIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4530614-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2590,0,'JONG BAE CHOI','JONG BAE CHOI',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7376768-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2591,0,'JONG YEON SHIN','JONG YEON SHIN',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3122628-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2592,0,'JOONG IL, AN JI','JOONG IL, AN JI',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2688681-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2593,0,'JORGE HOMERO MORALES CASTILLO','JORGE HOMERO MORALES CASTILLO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'101879-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2594,0,'JORGE LUIS BUCARO CIFUENTES','JORGE LUIS BUCARO CIFUENTES',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'125580-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2595,0,'JORGE, XON REN','JORGE, XON REN',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'475419-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2596,0,'JOSE EFRAIN, DUARTE BEZA','JOSE EFRAIN, DUARTE BEZA',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'165631-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2597,0,'JOSE LUIS ANTONIO VALDEAVELLANO ARDON','JOSE LUIS ANTONIO VALDEAVELLANO ARDON',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'336432-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2598,0,'JOSE LUIS COGUOX TZUL','JOSE LUIS COGUOX TZUL',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1816524-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2599,0,'JOSE MANUEL MENDEZ VARGAS','JOSE MANUEL MENDEZ VARGAS',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7413842-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2600,0,'JOSE MIGUEL GARCIA ESTRADA','JOSE MIGUEL GARCIA ESTRADA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'666124-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2601,0,'JOSE RUFINO ALVARADO FLORES','JOSE RUFINO ALVARADO FLORES',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'785449-8','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2602,0,'JOSUE FRANCISCO CRUZ RAMIREZ','JOSUE FRANCISCO CRUZ RAMIREZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'374330-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2604,0,'JS PRINT GUATEMALA, S.A.','JS PRINT GUATEMALA, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8640395-8','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2605,0,'JS TEXTILE, S.A.','JS TEXTILE, S.A.',767,'OTROS DESCUENTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7813713-6','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2606,0,'JUAN JOS? FRANCO ALVAREZ','JUAN JOS? FRANCO ALVAREZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'488015-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2607,0,'JUAN PABLO MEJIA MENENDEZ','JUAN PABLO MEJIA MENENDEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'593106-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2608,0,'JUANA RUBIDIA VALDEZ ALVARADO','JUANA RUBIDIA VALDEZ ALVARADO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1207432-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2609,0,'JULIA ISABEL, VILLATORO ALVARADO DE GARCIA','JULIA ISABEL, VILLATORO ALVARADO DE GARCIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'610447-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2610,0,'JUM SOO KIM','JUM SOO KIM',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6160325-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2611,0,'JUNG SIG, PARK','JUNG SIG, PARK',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4254696-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2612,0,'JUNGO, S.A.','JUNGO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8159830-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2613,0,'JYUNG MOOK KIM KIM, SARA LIM W/O KIM COPROPIEDAD','JYUNG MOOK KIM KIM, SARA LIM W/O KIM COPROPIEDAD',767,'GASTOS DE VIAJE',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7235580-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2614,0,'K.V. TEXTILES, S.A.','K.V. TEXTILES, S.A.',767,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8449534-0','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(2615,0,'KAESER COMPRESORES DE GUATEMALA Y COMPA??A LIMITADA','KAESER COMPRESORES DE GUATEMALA Y COMPA??A LIMITADA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3292078-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2616,0,'KI SUN JUN','KI SUN JUN',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2237979-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2617,0,'KLIMP AMERICA, S.A.','KLIMP AMERICA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'700158-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2618,0,'KNITOPIA, S.A.','KNITOPIA, S.A.',767,'OTROS DESCUENTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7818520-3','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(2619,0,'Kolor Pibs, S.A.','Kolor Pibs, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7541164-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2621,0,'KYU JUNG YEUN','KYU JUNG YEUN',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4574063-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2622,0,'KYUNG SOOK JUNG','KYUNG SOOK JUNG',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4150493-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2623,0,'LA BOQUERIA, S.A.','LA BOQUERIA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5038379-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2624,0,'LA BUONA AUBERGINA, S.A.','LA BUONA AUBERGINA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6717508-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2625,0,'LA PANADERIA, S.A.','LA PANADERIA, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2815510-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2626,0,'LA RESTINGA, S.A.','LA RESTINGA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8494656-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2627,0,'LABORATORIO ECOLOGICO Y QUIMICO, S.A.','LABORATORIO ECOLOGICO Y QUIMICO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5457088-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2628,0,'LANCIANO, S.A.','LANCIANO, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9344646-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2629,0,'LARUD, S.A.','LARUD, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9487724-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2630,0,'LAS DELICIAS DE GUATEMALA, S.A.','LAS DELICIAS DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'701372-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2631,0,'LAS MERCEDES, S.A.','LAS MERCEDES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'817588-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2632,0,'LAS TRES CONDESAS, S.A.','LAS TRES CONDESAS, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'667338-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2633,0,'LEE CHOTEXTILE, S.A.','LEE CHOTEXTILE, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6380324-0','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2634,0,'LIBRER?A LA HELVETIA, S.A.','LIBRER?A LA HELVETIA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'66838-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2635,0,'LIDIAN ROXANA, ORDO?EZ DE ESCOBAR','LIDIAN ROXANA, ORDO?EZ DE ESCOBAR',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7306655-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2636,0,'LILIAN HAYDEE TOBAR MURILLO','LILIAN HAYDEE TOBAR MURILLO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4360853-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2637,0,'LIQUIGAS, S.A.','LIQUIGAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7770592-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2638,0,'LUCAFE, S.A.','LUCAFE, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4825394-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2639,0,'LUCILLE, S.A.','LUCILLE, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3859895-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2640,0,'LUIS ALBERTO RODAS DEL VALLE','LUIS ALBERTO RODAS DEL VALLE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'182395-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2641,0,'LUIS FERNANDO OROZCO SANTIZO','LUIS FERNANDO OROZCO SANTIZO',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'425868-1','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2642,0,'LUKA','LUKA',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8594737-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2643,0,'MACROSISTEMAS, S.A.','MACROSISTEMAS, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2643494-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2644,0,'MAGNOLIA IMPORTACIONES, S.A.','MAGNOLIA IMPORTACIONES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8004546-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2645,0,'MANFREDO MENDE PEREZ','MANFREDO MENDE PEREZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'676746-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2646,0,'MANO DE OBRA PARA EL DESARROLLO LOCAL, S.A.','MANO DE OBRA PARA EL DESARROLLO LOCAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6131227-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2647,0,'Maquinas de Coser, Repuestos y Mas, S.A.','Maquinas de Coser, Repuestos y Mas, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3886510-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2648,0,'MAQUINAS DE VIDEO-BINGO, S.A.','MAQUINAS DE VIDEO-BINGO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6306372-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2649,0,'MARCO ANTONIO ROSALES','MARCO ANTONIO ROSALES',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'325522-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2650,0,'MARCO TULIO OROZCO COLINDRES','MARCO TULIO OROZCO COLINDRES',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'707021-7','','',0,0,0,0,0,0,754,762,0,'','','',0,0,0,''),
(2651,0,'MARCO VINICIO ARENAS MENENDEZ','MARCO VINICIO ARENAS MENENDEZ',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'740489-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2652,0,'MARCOS ALFARO OLIVA','MARCOS ALFARO OLIVA',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'456701-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2653,0,'MARIA LUCIA MARROQUIN GONZALEZ','MARIA LUCIA MARROQUIN GONZALEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2500198-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2654,0,'MARIA OLIVIA RUIZ CASTA?EDA DE AQUINO','MARIA OLIVIA RUIZ CASTA?EDA DE AQUINO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'236756-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2655,0,'MARIO ALEJANDRO DE JESUS CONTRERAS MARROQUIN','MARIO ALEJANDRO DE JESUS CONTRERAS MARROQUIN',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'130616-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2656,0,'MARIO ALFONSO VALDEZ MELENDEZ','MARIO ALFONSO VALDEZ MELENDEZ',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'854866-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2657,0,'MARIO ARTURO SOTO SOTO','MARIO ARTURO SOTO SOTO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'145085-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2658,0,'MARIO ESTUARDO SANTOS RAMIRES','MARIO ESTUARDO SANTOS RAMIRES',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4364445-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2659,0,'MARIO HUMBERTO VICENTE SOLIS','MARIO HUMBERTO VICENTE SOLIS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1653216-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2660,0,'MARITIMA EXPRESS, S.A.','MARITIMA EXPRESS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6607702-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2661,0,'MARLON ANTONIO ZAYDEN MEJIA','MARLON ANTONIO ZAYDEN MEJIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3839416-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2662,0,'MARLON IVAN PINEDA CASTRO','MARLON IVAN PINEDA CASTRO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4728571-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2663,0,'MARTA JOSEFINA BARNEOD CASTRO','MARTA JOSEFINA BARNEOD CASTRO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'755059-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2664,0,'MARTHA RAFAEL OVALLE MALDONADO DE RODAS','MARTHA RAFAEL OVALLE MALDONADO DE RODAS',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2745055-4','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2665,0,'MASHALA, S.A.','MASHALA, S.A.',767,'MOBILIARIO Y EQUIPO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7777432-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2666,0,'MASICENTER, S.A.','MASICENTER, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6247220-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2667,0,'MASPARACON, S.A.','MASPARACON, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6442946-6','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2668,0,'MATALLANA, S.A.','MATALLANA, S.A.',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6724710-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2669,0,'MAURO OLIVERIO CASTA?EDA ROLDAN','MAURO OLIVERIO CASTA?EDA ROLDAN',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1689521-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2670,0,'MAVILIA MANGLORI LOPEZ LOPEZ DE MIRANDA','MAVILIA MANGLORI LOPEZ LOPEZ DE MIRANDA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1240501-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2671,0,'Mayorpit, S.A.','Mayorpit, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'536565-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2672,0,'MAYRA YANETH HERNANDEZ ALVARADO DE LOPEZ','MAYRA YANETH HERNANDEZ ALVARADO DE LOPEZ',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4140698-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2673,0,'MDT INTERNACIONAL, S.A.','MDT INTERNACIONAL, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2524827-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2674,0,'MEGAESTACIONES DE SERVICIO, S.A.','MEGAESTACIONES DE SERVICIO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6921407-7','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2675,0,'MEGAPLASTIC, S.A.','MEGAPLASTIC, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4965422-5','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2676,0,'MEGAPOLY, S.A.','MEGAPOLY, S.A.',767,'\"MEGAPOLY, S.A.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8066422-9','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2677,0,'MEGATECNO, S.A.','MEGATECNO, S.A.',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6149642-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2678,0,'MEJORES INGREDIENTES, S.A.','MEJORES INGREDIENTES, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8129533-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2679,0,'MELMUR, S.A.','MELMUR, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8415817-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2680,0,'MENLO PARK, SOCIEDAD ANONIMA','MENLO PARK, SOCIEDAD ANONIMA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7900020-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2681,0,'METROBOLICHE, S.A.','METROBOLICHE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'780931-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2682,0,'MIN HWA KIM LEE','MIN HWA KIM LEE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2702292-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2683,0,'MODA SPORT, S.A.','MODA SPORT, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2970727-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2684,0,'MODAS MARU, S.A.','MODAS MARU, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5777492-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2685,0,'MODAS TAE HO, S.A.','MODAS TAE HO, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8434872-0','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2686,0,'MODESTO CULAJAY CAMEY','MODESTO CULAJAY CAMEY',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5768656-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2687,0,'MONICA CECILIA AGUILAR GONZALEZ DE ARAGON','MONICA CECILIA AGUILAR GONZALEZ DE ARAGON',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3973347-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2688,0,'MOON HWAN, KIM','MOON HWAN, KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3171680-6','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2689,0,'MT TEXTIL, S.A.','MT TEXTIL, S.A.',767,'MATERIA PRIMA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8026020-9','','',0,0,0,0,0,0,819,761,0,'','','',0,0,301,''),
(2690,0,'MULTISERVICIOS PETROLEROS, S.A.','MULTISERVICIOS PETROLEROS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7609080-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2691,0,'MYEONG SUK KIM','MYEONG SUK KIM',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4002868-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2692,0,'NACIONALES, S.A.','NACIONALES, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'549233-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2693,0,'NAIS, S.A.','NAIS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'106940-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2694,0,'NATCO GUATEMALA, S.A.','NATCO GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8830904-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(2695,0,'NEGOCIOS INDUSTRIALES TEXTILES, S.A.','NEGOCIOS INDUSTRIALES TEXTILES, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8802383-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2696,0,'NELSON ESAU BARAHONA REYES','NELSON ESAU BARAHONA REYES',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3165517-3','','',0,0,0,0,0,0,754,762,0,'','','',0,0,0,''),
(2697,0,'NEPRO, S.A.','NEPRO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8689553-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2698,0,'NERY ANIBAL CHAVARRIA SIGUENZA','NERY ANIBAL CHAVARRIA SIGUENZA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'679069-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2699,0,'NEXGEN PACKAGIN LIMITADA','NEXGEN PACKAGIN LIMITADA',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8339237-8','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2701,0,'NORA ANGELICA AGUILAR MONTENEGRO','NORA ANGELICA AGUILAR MONTENEGRO',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2010017-5','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2702,0,'NORMA ELIZABETH RIVERA YALIBAT DE MERIDA','NORMA ELIZABETH RIVERA YALIBAT DE MERIDA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1646832-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2703,0,'NOVAFOAM, S.A.','NOVAFOAM, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3510995-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2704,0,'NOVEX, S.A.','NOVEX, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2591757-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2705,0,'NOVOS, S.A.','NOVOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9013412-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2706,0,'NUEVOS ALMACENES, S.A.','NUEVOS ALMACENES, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3237591-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2707,0,'NUN KUK, S.A.','NUN KUK, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6733141-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2708,0,'OD GUATEMALA Y COMPA??A LIMITADA','OD GUATEMALA Y COMPA??A LIMITADA',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5590541-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2709,0,'OH HEUNG KWON','OH HEUNG KWON',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3425528-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2710,0,'OIL\'S MK, S.A.','OIL\'S MK, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6706984-3','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2711,0,'OK JA, OH DE AN','OK JA, OH DE AN',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2651225-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2712,0,'OKRA, S.A.','OKRA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9414040-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2713,0,'OLMAR WILLIAM RODRIGUEZ GALVEZ','OLMAR WILLIAM RODRIGUEZ GALVEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1237645-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2714,0,'OMAR SANZOGNI ZARATE','OMAR SANZOGNI ZARATE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'60494-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2715,0,'OPERACIONES VARIAS, S.A.','OPERACIONES VARIAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'652923-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2716,0,'OPERADORA DE CALIDAD, S.A.','OPERADORA DE CALIDAD, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1494609-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2717,0,'OPERADORA DE CENTROS DE ALIMENTOS, S.A.','OPERADORA DE CENTROS DE ALIMENTOS, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3699162-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2718,0,'OPERADORA DE SERVICIOS VIALES, S.A.','OPERADORA DE SERVICIOS VIALES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1494668-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2719,0,'OPERADORA DE TIENDAS, S.A.','OPERADORA DE TIENDAS, S.A.',767,'CAFETERIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'737810-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2720,0,'Operadora Servicentro Santa Monica, S.A.','Operadora Servicentro Santa Monica, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7473287-0','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2721,0,'ORGANIZACI?N RIMTE, S.A.','ORGANIZACI?N RIMTE, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2893341-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2722,0,'ORIENTAL TOWN, S.A.','ORIENTAL TOWN, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9287055-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2723,0,'ORINSTAR GUATEMALA, S.A.','ORINSTAR GUATEMALA, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3847208-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2724,0,'ORLANDO SIERRA LEON COPROPIEDAD','ORLANDO SIERRA LEON COPROPIEDAD',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'820842-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2725,0,'OSCAR EFRAIN GARCIA','OSCAR EFRAIN GARCIA',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'584006-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2726,0,'OSCAR EMILIO DUARTE SANDOVAL','OSCAR EMILIO DUARTE SANDOVAL',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7814780-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2727,0,'OSCAR RAFAEL RIVERA MEJ?A','OSCAR RAFAEL RIVERA MEJ?A',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'978840-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2729,0,'P&K DYEHOUSE, S.A.','P&K DYEHOUSE, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4796476-6','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(2730,0,'PALACE, S.A.','PALACE, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'476106-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2731,0,'PANACAFE DE GUATEMALA, S.A.','PANACAFE DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6860334-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2732,0,'PAOLO FERNANDO DAVILA CANTORAL','PAOLO FERNANDO DAVILA CANTORAL',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3196070-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2733,0,'PAPELERIA ARRIOLA, S.A.','PAPELERIA ARRIOLA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3823142-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2734,0,'PARQUEO LA AURORA','PARQUEO LA AURORA',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5488505-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2735,0,'PARQUEO MAJADAS, S.A.','PARQUEO MAJADAS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8128118-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2736,0,'Parqueo Publico 6-38','Parqueo Publico 6-38',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'739398-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2737,0,'PARQUEOS DE ANTIGUA, S.A.','PARQUEOS DE ANTIGUA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2629976-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2738,0,'PARQUEOS INTERNACIONALES, S.A.','PARQUEOS INTERNACIONALES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4217475-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2739,0,'PARQUEOS, S.A.','PARQUEOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'597576-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2740,0,'PASTELERIAS HOLANDESA, S.A.','PASTELERIAS HOLANDESA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8033885-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2741,0,'PATSY, S.A.','PATSY, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'546406-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2742,0,'PCSCA, S.A.','PCSCA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7982942-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2743,0,'PECUARIA EXPORTADORA, S.A.','PECUARIA EXPORTADORA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'571043-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2744,0,'PEOPLE & ARTS, S.A.','PEOPLE & ARTS, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8322852-7','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2745,0,'PETROLEOS DEL PAIS, S.A.','PETROLEOS DEL PAIS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5297244-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2746,0,'PIDELO YA PUNTO COM, S.A.','PIDELO YA PUNTO COM, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7566776-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2747,0,'PINCAR, S.A.','PINCAR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8793054-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2748,0,'PINTURERIAS DE GUATEMALA, S.A.','PINTURERIAS DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'980540-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2749,0,'POLICINTAS, S.A.','POLICINTAS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5436493-0','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2750,0,'POLLO BRUJO DE CENTROAMERICA, S.A.','POLLO BRUJO DE CENTROAMERICA, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'568686-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2751,0,'POLLO CAMPERO, S.A.','POLLO CAMPERO, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'90494-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2752,0,'POLYFORMAS, S.A.','POLYFORMAS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'140130-0','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2753,0,'PREMIERE SPA, S.A.','PREMIERE SPA, S.A.',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9542553-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2754,0,'PREMIUM TEXTILE SUPPLIES, S.A.','PREMIUM TEXTILE SUPPLIES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7041843-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2755,0,'PRENSA LIBRE, S.A.','PRENSA LIBRE, S.A.',767,'GASTOS GENERALES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'73384-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2756,0,'PRICESMART (GUATEMALA), S.A.','PRICESMART (GUATEMALA), S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1494045-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2757,0,'PRINTCRAFT CENTRAL AMERICA, S.A DE C.V.','PRINTCRAFT CENTRAL AMERICA, S.A DE C.V.',767,'\"PRINTCRAFT CENTRAL AMERICA, S.A. DE C.V.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-060910-102-2','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2758,0,'PROCESOS ESPECIALES, S.A.','PROCESOS ESPECIALES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'585978-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2759,0,'PRODEPSA SOLUCIONES DEPORTIVAS, S.A.','PRODEPSA SOLUCIONES DEPORTIVAS, S.A.',767,'ATENCION A EMPLEADOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5862159-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2760,0,'PRODUCCIONES DE TELA, S.A.','PRODUCCIONES DE TELA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'678786-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2761,0,'PRODUCTOS EN FRIO, S.A.','PRODUCTOS EN FRIO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1251232-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2762,0,'Productos MAR, S.A.','Productos MAR, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7608479-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2763,0,'PRODUCTOS Y EMPAQUES INDUSTRIALES, S.A.','PRODUCTOS Y EMPAQUES INDUSTRIALES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4177570-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2764,0,'Promo Autos, S.A.','Promo Autos, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8632923-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2765,0,'PROMOCIONES SANTA FE, S.A.','PROMOCIONES SANTA FE, S.A.',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3004155-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2766,0,'PROMOCIONES Y NEGOCIOS, S.A.','PROMOCIONES Y NEGOCIOS, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'414697-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2767,0,'PROMOTORA DE CLUBS, S.A.','PROMOTORA DE CLUBS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1198452-K','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2768,0,'PROMOTORA INTERNACIONAL EL TRIANGULO, S.A.','PROMOTORA INTERNACIONAL EL TRIANGULO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'589201-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2769,0,'PROPA. MARIAN ELENA GANDARA RIVEIRO DE RAMAZZINI','PROPA. MARIAN ELENA GANDARA RIVEIRO DE RAMAZZINI',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'52474-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2770,0,'PROTECCION MAXIMA, S.A.','PROTECCION MAXIMA, S.A.',767,'SERVICIO DE SEGURIDAD',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'852144-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2771,0,'PROVEEDORA EL PARAISO, S.A.','PROVEEDORA EL PARAISO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'555798-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2772,0,'PROYECTOS SANTA FE, S.A.','PROYECTOS SANTA FE, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'737432-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2773,0,'PULVERIZADORA LAS CRUCES, S.A.','PULVERIZADORA LAS CRUCES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4005423-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2774,0,'PUNTO DE ARTE, S.A.','PUNTO DE ARTE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8083707-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2775,0,'QUERUTEK, S.A.','QUERUTEK, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7138354-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2776,0,'QUICK SERVICE TEXTILE GUATEMALA, SOCIEDAD DE RESPONSABILIDAD LIMITADA','QUICK SERVICE TEXTILE GUATEMALA, SOCIEDAD DE RESPONSABILIDAD LIMITADA',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7694577-4','','',0,0,0,0,0,0,760,762,0,'','','',0,0,0,''),
(2777,0,'R&M, S.A. DE C.V.','R&M, S.A. DE C.V.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-120304-101-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2778,0,'RAICES Y FRUTOS, S.A.','RAICES Y FRUTOS, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4166470-1','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2779,0,'RALON ORELLANA & ASOCIADOS ASESORIA DE NEGOCIOS, S.A.','RALON ORELLANA & ASOCIADOS ASESORIA DE NEGOCIOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3257574-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2780,0,'RBBS, S.A.','RBBS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8733305-8','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2781,0,'RBGN, S.A.','RBGN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6956103-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2782,0,'RBHP, S.A.','RBHP, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8944320-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2783,0,'RBMO, S.A.','RBMO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6957465-0','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2784,0,'RBPP, S.A.','RBPP, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6956055-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2785,0,'RBRV, S.A.','RBRV, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8211772-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2786,0,'RBSJ, S.A.','RBSJ, S.A.',767,'COMBUSTIBLE SUPER',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7983081-1','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2787,0,'RBSL, S.A.','RBSL, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6957436-7','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2788,0,'RBSS, S.A.','RBSS, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6956384-5','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2789,0,'RBVH, S.A.','RBVH, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6956170-2','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2790,0,'RECEPTOR INDUSTRIAL, S.A.','RECEPTOR INDUSTRIAL, S.A.',767,'SERVICIO DE COEXPORTADORES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6804632-4','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(2791,0,'REPRESENTACIONES R&R S.A.','REPRESENTACIONES R&R S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7408099-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2792,0,'RESTAURANTES DE GUATEMALA, S.A.','RESTAURANTES DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'745797-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2793,0,'RESTAURANTES GLOBAL GUATEMALA, S.A.','RESTAURANTES GLOBAL GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9212083-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2794,0,'RESTAURANTES SARITA, S.A.','RESTAURANTES SARITA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3044990-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2795,0,'RESTAURANTES Y SERVICIOS, S.A.','RESTAURANTES Y SERVICIOS, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'388231-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2796,0,'ROBERT MANOLO DIAZ LOPEZ','ROBERT MANOLO DIAZ LOPEZ',767,'BIEN',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2620095-3','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2797,0,'RONY ELMER CORADO CASASOLA','RONY ELMER CORADO CASASOLA',767,'SERVICIOS PROFESIONALES Y TECNICOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3569673-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2798,0,'RONY ORLANDO HERNANDEZ MU?OZ','RONY ORLANDO HERNANDEZ MU?OZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1757452-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2799,0,'ROSSEMERY DAYADIRA ALONZO VASQUEZ','ROSSEMERY DAYADIRA ALONZO VASQUEZ',767,'MANTENIMIENTOS Y REPARACIONES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1839161-3','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2800,0,'R-PAC CENTRAL AMERICA, S.A. DE C.V.','R-PAC CENTRAL AMERICA, S.A. DE C.V.',767,'DESCUENTOS SOBRE COMPRAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-050613-104-7','','',0,0,0,0,0,0,818,761,0,'','','',0,0,0,''),
(2801,0,'RPC Administracion S.A.','RPC Administracion S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3096910-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2802,0,'RUBIAL, S.A.','RUBIAL, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7871991-7','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2803,0,'RUDY WALTER MERIDA FERNANDEZ','RUDY WALTER MERIDA FERNANDEZ',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9280-0','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2804,0,'RUTILIA ESTHER SAGASTUME DIAZ DE ROMAN','RUTILIA ESTHER SAGASTUME DIAZ DE ROMAN',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'471263-3','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2805,0,'SACBE, S.A.','SACBE, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4844783-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2806,0,'SAM KYUN CHOI','SAM KYUN CHOI',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3809349-9','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2807,0,'SAMS & RUDIA, S.A.','SAMS & RUDIA, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6717791-3','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2808,0,'SAN MIGUEL, S.A.','SAN MIGUEL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'582006-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2809,0,'SANG, BONG PARK','SANG, BONG PARK',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1204866-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2810,0,'Sanmar, S.A.','Sanmar, S.A.',767,'SERVICIO DE SEGURIDAD',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'614123-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2811,0,'SANTIAGO SABAN GONZALEZ','SANTIAGO SABAN GONZALEZ',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'354346-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2812,0,'SARA JUDITH ORANTES SEIJAS','SARA JUDITH ORANTES SEIJAS',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'583065-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2813,0,'SEABOARD MARINE LIMITED','SEABOARD MARINE LIMITED',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'439131-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2814,0,'SEBASTIAN AGUILAR OSORIO','SEBASTIAN AGUILAR OSORIO',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4675141-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2815,0,'Seguridad 2614, S.A.','Seguridad 2614, S.A.',767,'SERVICIO DE SEGURIDAD',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'834329-2','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2816,0,'SEGUROS G&T, S.A.','SEGUROS G&T, S.A.',767,'SEGUROS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32173-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2817,0,'SEGUROS UNIVERSALES, S.A.','SEGUROS UNIVERSALES, S.A.',767,'SEGUROS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32439-6','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2818,0,'SELECTPHARMA, S.A.','SELECTPHARMA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2430172-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2819,0,'SEON NYEO KIM','SEON NYEO KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5537359-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2820,0,'SEPRA, S.A.','SEPRA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5121061-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2821,0,'SEREGNO, S.A.','SEREGNO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7958459-4','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2822,0,'SERIGRAFICA INTERNACIONAL, S.A.','SERIGRAFICA INTERNACIONAL, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'528440-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2823,0,'SEROM TRIMS, S.A.','SEROM TRIMS, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7938184-7','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2824,0,'SERVI PARQUEO, S.A.','SERVI PARQUEO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6967508-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2825,0,'SERVI TRANSPORTES, S.A.','SERVI TRANSPORTES, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'474569-8','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2826,0,'SERVICIO DE COMBUSTIBLE CIPRESALES, S.A.','SERVICIO DE COMBUSTIBLE CIPRESALES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8966902-9','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2827,0,'SERVICIOS COMERCIALES, S.A.','SERVICIOS COMERCIALES, S.A.',767,'SERVICIO DE PARQUEO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6216138-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2828,0,'SERVICIOS DE ALIMENTOS, S.A.','SERVICIOS DE ALIMENTOS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6486336-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2829,0,'SERVICIOS INNOVADORES DE COMUNICACI?N Y ENTRETENIMIENTO, S.A.','SERVICIOS INNOVADORES DE COMUNICACI?N Y ENTRETENIMIENTO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7485900-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2830,0,'SERVICIOS MULTIPLES CIUDAD VIEJA, S.A.','SERVICIOS MULTIPLES CIUDAD VIEJA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'412185-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2831,0,'SERVICIOS Y NEGOCIOS SMA, S.A.','SERVICIOS Y NEGOCIOS SMA, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8525285-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2832,0,'SERVICIOS Y TRANSPORTES DELTAPAN, S.A.','SERVICIOS Y TRANSPORTES DELTAPAN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'126127-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2833,0,'SHARON APPAREL, S.A.','SHARON APPAREL, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6718046-9','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2834,0,'SHINWON ACE, S.A.','SHINWON ACE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8304711-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2836,0,'Sinai Respuestos y Maquinas, S.A.','Sinai Respuestos y Maquinas, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3910233-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2838,0,'SISTEMAS INTEGRADOS Y AUTOMATIZADOS DE GUATEMALA','SISTEMAS INTEGRADOS Y AUTOMATIZADOS DE GUATEMALA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1657842-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2839,0,'SML EL SALVADOR, S.A. DE C.V.','SML EL SALVADOR, S.A. DE C.V.',767,'SML EL SALVADOR S.A. DE C.V.',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-210503-103-4','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2840,0,'SOEWON INTERNATIONAL, S.A.','SOEWON INTERNATIONAL, S.A.',767,'CONFECCION DE PRENDAS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6803459-8','','',0,0,0,0,0,0,819,762,0,'','','',0,0,302,''),
(2841,0,'SOLUCIONES TOTALES EN ELECTRONICA, S.A.','SOLUCIONES TOTALES EN ELECTRONICA, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7807017-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2842,0,'SONBADAK, S.A.','SONBADAK, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7972720-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2843,0,'SONTRES, S.A.','SONTRES, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4032422-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2844,0,'SOO HEE LIM DE SHIN','SOO HEE LIM DE SHIN',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8649528-3','','',0,0,0,0,0,0,754,761,0,'','','',0,0,0,''),
(2845,0,'SOO NAM, KIM JIN','SOO NAM, KIM JIN',767,'SERVICIO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2666280-9','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2846,0,'SOON NAM, KIM DE KIM','SOON NAM, KIM DE KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6873304-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2847,0,'SOONHWA KWON','SOONHWA KWON',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9124041-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2848,0,'SOVEREIGN LOGISTICS, S.A.','SOVEREIGN LOGISTICS, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2432903-7','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2849,0,'SP GUATEMALA, S.A.','SP GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5808143-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(2850,0,'SUBWAY DE GUATEMALA, S.A.','SUBWAY DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'799376-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2851,0,'Sumaflex Internacional, S.A.','Sumaflex Internacional, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7562433-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2852,0,'SUMINISTRO DE PAPEL, S.A.','SUMINISTRO DE PAPEL, S.A.',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'443502-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2853,0,'SUMINISTROS ARYEL, S.A.','SUMINISTROS ARYEL, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7388612-2','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2854,0,'SUNG HEE GYE DE PARK','SUNG HEE GYE DE PARK',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4671388-3','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2855,0,'SUNHEE OH','SUNHEE OH',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6712460-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2856,0,'SUN-JA KIM LEE','SUN-JA KIM LEE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4114638-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2857,0,'SUPER NEGOCIOS HM, S.A.','SUPER NEGOCIOS HM, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7284599-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2858,0,'SUPERMERCADOS DE TEXTILES, S.A.','SUPERMERCADOS DE TEXTILES, S.A.',767,'GASTOS VARIOS DE PRODUCCION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7774827-1','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2859,0,'SUR COLOR, S.A.','SUR COLOR, S.A.',767,'MATERIALES Y REPUESTOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'553120-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2860,0,'TABLAYESO, S.A.','TABLAYESO, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'107852-6','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2861,0,'TACA INTERNATIONAL AIRLINES, S.A.','TACA INTERNATIONAL AIRLINES, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32457-4','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2863,0,'TAHOE, S.A.','TAHOE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1194150-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2864,0,'TEJIDOS CORPORATIVOS, S.A.','TEJIDOS CORPORATIVOS, S.A.',767,'MATERIA PRIMA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5088681-9','','',0,0,0,0,0,0,819,761,0,'','','',0,0,0,''),
(2865,0,'TELECOMUNICACIONES DE GUATEMALA, S.A.','TELECOMUNICACIONES DE GUATEMALA, S.A.',767,'TELEFONO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'992929-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2866,0,'TEXAS RIBS DE GUATEMALA, S.A.','TEXAS RIBS DE GUATEMALA, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6485783-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2867,0,'TEXTILES COLOR REAL, S.A.','TEXTILES COLOR REAL, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5399338-1','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2868,0,'TEXTILES GRAN FE, S.A.','TEXTILES GRAN FE, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7778495-2','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2870,0,'TEXTUFIL, S.A. DE C.V.','TEXTUFIL, S.A. DE C.V.',767,'\"TEXTUFIL, S.A. DE C.V.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-181171-003-9','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2871,0,'THOR-ODIN TRANSACCIONES COMERCIALES, S.A.','THOR-ODIN TRANSACCIONES COMERCIALES, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7733131-1','','',0,0,0,0,0,0,752,820,0,'','','',0,0,0,''),
(2872,0,'TIENDA CONTINENTAL, S.A.','TIENDA CONTINENTAL, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3846087-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2873,0,'Tienda El Rodeo, S.A.','Tienda El Rodeo, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5620836-7','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2874,0,'TODO IMAGEN, S.A.','TODO IMAGEN, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6354150-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2875,0,'TRANSCONTAINER, S.A.','TRANSCONTAINER, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3717752-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2876,0,'TRANSPORTES AEREOS DE COURIER Y CARGA, S.A.','TRANSPORTES AEREOS DE COURIER Y CARGA, S.A.',767,'GASTOS DE IMPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4538452-5','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2877,0,'TRANSPORTES INTERNACIONALES TICAL, S.A.','TRANSPORTES INTERNACIONALES TICAL, S.A.',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3498564-6','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2878,0,'TRANSPORTES Y COMERCIOS DE GUATEMALA, S.A.','TRANSPORTES Y COMERCIOS DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8690025-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2879,0,'TREFRA GROUP, S.A.','TREFRA GROUP, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7779164-9','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2880,0,'TRES PIZZAS, S.A.','TRES PIZZAS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1191141-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2881,0,'TRIM NETWORK TRADING DE GUATEMALA, S.A.','TRIM NETWORK TRADING DE GUATEMALA, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7351560-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2882,0,'TROPIGAS DE GUATEMALA, S.A.','TROPIGAS DE GUATEMALA, S.A.',767,'GAS PROPANO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'283911-3','','',0,0,0,0,0,0,752,766,0,'','','',0,0,0,''),
(2883,0,'UNIFI CENTRAL AMERICA LTDA DE CV','UNIFI CENTRAL AMERICA LTDA DE CV',767,'UNIFI CENTRAL AMERICA LTDA DE CV',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'0614-301109-102-1','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2884,0,'UNIMARCK, S.A.','UNIMARCK, S.A.',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5219515-5','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2885,0,'UNISUPER, S.A.','UNISUPER, S.A.',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2653247-6','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2886,0,'UNIVERSAL PRINTT, S.A.','UNIVERSAL PRINTT, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8368570-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2887,0,'UNO GUATEMALA, S.A.','UNO GUATEMALA, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'32105-2','','',0,0,0,0,0,0,752,765,0,'','','',0,0,0,''),
(2888,0,'UNOPETROL, S.A.','UNOPETROL, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3437351-9','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2889,0,'UPS SCS GUATEMALA LIMITADA','UPS SCS GUATEMALA LIMITADA',767,'GASTOS DE EXPORTACION',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2653883-0','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2890,0,'URI JOSUE GARCIA GARCIA','URI JOSUE GARCIA GARCIA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2853232-5','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2891,0,'VALDEMORO, S.A.','VALDEMORO, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9036697-2','','',0,0,0,0,0,0,752,764,0,'','','',0,0,0,''),
(2892,0,'VEHICULOS RECREATIVOS, S.A.','VEHICULOS RECREATIVOS, S.A.',767,'MANTENIMIENTO VEHICULOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6225010-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2893,0,'VESTA LOGISTIC, S.A.','VESTA LOGISTIC, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6722607-8','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2894,0,'VICTOR EDUARDO LEONARDO GONZALEZ','VICTOR EDUARDO LEONARDO GONZALEZ',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'5009970-1','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2895,0,'VICTOR MANUEL NU?EZ VELASQUEZ','VICTOR MANUEL NU?EZ VELASQUEZ',767,'PAPELERIA Y UTILES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'721157-0','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2896,0,'VILMA AZUCENA LINARES SANDOVAL','VILMA AZUCENA LINARES SANDOVAL',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'4385239-4','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2897,0,'VINOTECA, S.A.','VINOTECA, S.A.',767,'ATENCION A CLIENTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'2968550-8','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2898,0,'WILLIAM ROBERTO NAVARRO MANCILLA','WILLIAM ROBERTO NAVARRO MANCILLA',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1198763-4','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2899,0,'WINSTONE, S.A.','WINSTONE, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7750958-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2900,0,'WJ GUATEMALA, S.A.','WJ GUATEMALA, S.A.',767,'LAVADO Y TE?IDO',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'7107327-2','','',0,0,0,0,0,0,819,762,0,'','','',0,0,0,''),
(2901,0,'WOONG JIN PRINTING, S.A.','WOONG JIN PRINTING, S.A.',767,'ACCESORIOS',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'6633463-2','','',0,0,0,0,0,0,752,761,0,'','','',0,0,0,''),
(2902,0,'WORLD BRANDS INTERNATIONALS, S.A.','WORLD BRANDS INTERNATIONALS, S.A.',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8207488-7','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2903,0,'WORLD SERIGRAFIA, S.A.','WORLD SERIGRAFIA, S.A.',767,'SERVICIO DE SERIGRAFIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'8996958-8','','',0,0,0,0,0,0,819,762,0,'','','',0,0,301,''),
(2904,0,'YEON SIL KIM','YEON SIL KIM',767,'COMIDAS Y PASAJES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9086304-6','','',0,0,0,0,0,0,752,762,0,'','','',0,0,0,''),
(2905,0,'YEUN KUN LEE','YEUN KUN LEE',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3413792-0','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2906,0,'YI-HOU SOCIEDAD ANONIMA','YI-HOU SOCIEDAD ANONIMA',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'3658560-2','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2907,0,'YKK EL SALVADOR, S.A. DE C.V.','YKK EL SALVADOR, S.A. DE C.V.',767,'\"YKK EL SALVADOR, S.A. DE C.V.\"',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'1822478-4','','',0,0,0,0,0,0,760,761,0,'','','',0,0,0,''),
(2908,0,'ZALEC, S.A.','ZALEC, S.A.',767,'COMBUSTIBLES Y LUBRICANTES',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'9191642-9\r\n','','',0,0,0,0,0,0,752,763,0,'','','',0,0,0,''),
(2910,0,'Li&Fung (GBG)','Li&Fung (GBG)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',133,8,0,'','','',85,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(2911,0,'Banana Republic','Banana Republic',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(2912,0,'Li&Fung (Aerie)','Li&Fung (Aerie)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(2913,0,'New Buyer','New Buyer',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',241,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2914,0,'YK Wang Thread Guatemala, S.A.','',0,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(2915,0,'Sayo Trading','',0,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,301,''),
(2916,0,'ZELANDO SE ','ZELANDO SE ',24,'ACCOUTING \r\n11501 BERLIN, GERMANY ',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2917,0,'PACIFIC ALLIANCE USA INC.','PACIFIC ALLIANCE USA INC.',24,'350 5TH AVENUE 9TH FLOOR \r\nNEW YORK, NY 10118, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2918,0,'COMERCIAL TECNICA INTERNACIONAL, S.A. DE C.V.','COMERCIAL TECNICA INTERNACIONAL, S.A. DE C.V.',24,'KM. 28.5 CARRETERA A COMALAPA, # 8,\r\nZONA FRANCA INTERNACIONAL, OLOCUILTA, LA PAZ, EL SALVADOR',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2919,22,'IMPORTADORA PRIMEX, S.A. DE C.V.','IMPORTADORA PRIMEX, S.A. DE C.V.',24,'BLVD. MAGNOCENTRO NO. 4 COL. SAN FERNANDO LA HERRADURA \r\nHUIXQUILUCAN, EDO DE MEXICO, MEXICO. C.P. 52765',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2920,22,'MARSHALLS CANADA','MARSHALLS CANADA',24,'55 WIST DRIVE, BRAMPTON, ON \r\nCANADA L6T 4A1',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2921,22,'WINNERS APPAREL LTD','WINNERS APPAREL LTD',24,'55 WIST DRIVE, BRAMPTON, ON \r\nCANADA L6T 4A1',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2922,21,'ASCENA RETAIL GROUP','ASCENA RETAIL GROUP',24,'200 HERITAGE DR, PATASKALA \r\nOH 43062, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2923,21,'ASCENA RETAIL GROUP','ASCENA RETAIL GROUP',24,'1901 E. ESTATE ROAD \r\nGREENCASTLE, IN 46135 USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2924,0,'Carter\'s','Carter\'s',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',89,0,0,67,34,65,0,0,0,'','','',0,0,0,''),
(2925,0,'ABFICO NETHERLANDS DISTRIBUTION B.V.','ABFICO NETHERLANDS DISTRIBUTION B.V.',24,'BLECKMANN NEDERLAND B.V. LEEGHWATERWEG 2-4-6 BERGEN OP ZOOM 4612 RD NL',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2926,0,'Lucky Brand (Costco)','Lucky Brand (Costco)',24,'',0,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',85,0,0,67,34,66,0,0,0,'','','',0,0,0,''),
(2927,0,'J. CREW C/O YUSEN LOGISTICS','J. CREW C/O YUSEN LOGISTICS',24,'21/F., GOODMAN INTERLINK 39 TSING YI ROAD \r\nTSING YI, KWAI CHUNG, NEW TERRITORIES, HK',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2928,0,'Plastic Uni','Plastic Uni',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,752,0,0,'','','',0,0,0,''),
(2929,0,'Best Cajas','Best Cajas',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2930,0,'Sokol Packaging','Sokol Packaging',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2931,0,'Fineline','Fineline',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2932,0,'JH Textile','JH Textile',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2933,0,'Global Trim','Global Trim',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2934,0,'Checkpoint','Checkpoint',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2935,0,'Zabin','Zabin',767,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2936,0,'The Folsom of Florida','The Folsom of Florida',24,'1851 GUNN HIGHWAY, ODESA, FL.,',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2937,0,'SCI','SCI',24,'6580 MILLCREEK DRIVE \r\nMISSISSAUGA, ON, L5N8B3, CANADA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2938,0,'VOS LOGISTICS OSS BV','VOS LOGISTICS OSS BV',24,'CARE OF COLOR IMAGE APPAREL, INC WAALKADE 12 5347 \r\nKS 0SS THE NETHERLANDS ',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2939,0,'HILOS Y ALGOD?N, S.A.','HILOS Y ALGOD?N, S.A.',24,'BODEGA 27A KM. 30.5 CARRETERA CA NUEVE SUR, PARQUE INDUSTRIAL \r\nZ LA UNION, AMATITLAN, GUATEMALA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2940,0,'The Folsom Corporation','The Folsom Corporation',24,'43 Mckee Drive, Mahwah, NJ 07430',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','201-529-3550','',0,0,0,''),
(2941,0,'Li&Fung (Lucky Brand Mens)','Li&Fung (Lucky Brand Mens)',24,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',85,129,0,67,34,130,0,0,0,'','','',0,0,0,''),
(2942,0,'J. CREW C/O YUSEN LOGISTICS','J. CREW C/O YUSEN LOGISTICS',24,'1, 2, 21, 22/F. GOODMAN INTERL 39,\r\nTSING YI ROAD, TSING YI, HK',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2943,0,'Banco G&T Continental','',28,'',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2944,0,'J Crew Retail DC','J Crew Retail DC',24,'Brookfield Place, 250 Vesey St., Suite 111\r\nNew York, NY 10281',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2945,0,'TORRID MERCHANDISING, INC.','TORRID MERCHANDISING, INC.',24,'18501 E. SAN JOSE AVE. CITY OF\r\nINDUSTRY, CA 91748  USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2946,0,'AFH INTERNATIONAL TRADING (SHANGHAI)','AFH INTERNATIONAL TRADING (SHANGHAI)',24,'Suite 1808-1817 18th Floor, Baowan International Logistics Park Block M, \r\nDistricenter, No. 388, Tieli Road, Baoshan Diestrict Shanghai 201900 China\r\nCNECTC: Dennis Sun   TEL: +86.21.6032 1071',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2947,0,'COSTCO AUSTRALIA','COSTCO AUSTRALIA',24,'17-21 PARRAMATTA RD.\r\nLIDCOMBE, NSW 2141, AUSTRALIA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2948,0,'GUESS CANADA CORP','GUESS CANADA CORP',24,'8275 19th Avenue, \r\nMontreal QC H1Z 4K2, Canada',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2949,0,'The Gilbert Company','The Gilbert Company',24,'1000 Riverside Drive, \r\nKeasbey, NJ 08832, USA\r\nContact: Dawn Ciprian   Tel: (732) 395-6230',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2950,0,'J.Crew Retail DC (Asheville)','J.Crew Retail DC (Asheville)',24,'Brookfield Place#812 (C/O Ashe\r\nOne Clifford Way, Asheville, NC 28810 USA\r\nAttn: Holly Martin / (828) 687-6465',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2951,0,'J.CREW DIRECT DC','J.CREW DIRECT DC',24,'Lynchburg Direct Distribution\r\nTwo Ivy Crescent Lynchburg\r\n24506-1001 VA, USA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2952,0,'J.CREW RETAIL DC','J.CREW RETAIL DC',24,'Asheville Retail Distribution\r\nOne Clifford Way, Asheville 28810, Nc. USA ',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,8,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,''),
(2953,0,'AGENCIA GLOBAL MULTIMODAL, S.A.','AGENCIA GLOBAL MULTIMODAL, S.A.',24,'26 AVENIDA 8-50 AVENIDA EL NARANJO\r\nMIXCO, GUATEMALA',1,'2018-07-03 00:00:00','2018-07-03 00:00:00','',0,0,0,'','','',0,0,0,0,0,0,0,0,0,'','','',0,0,0,'');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `DeptIdx` int(11) NOT NULL,
  `CostCenterIdx` int(11) NOT NULL,
  `DeptName` varchar(30) DEFAULT NULL,
  `IsUse` tinyint(3) DEFAULT '1',
  `ReportNo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DeptIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

insert  into `dept`(`DeptIdx`,`CostCenterIdx`,`DeptName`,`IsUse`,`ReportNo`) values 
(1,1,'Sales1',1,1),
(3,1,'Sales2',1,2),
(4,1,'Sales3',1,3),
(5,1,'Administration',1,9),
(6,1,'Presidential',1,10),
(7,4,'Office',1,9),
(8,4,'Fabric',1,9),
(9,4,'Cutting',1,9),
(10,4,'Sewing',1,9),
(11,4,'Design CAD',1,9),
(12,4,'Inspection',1,9),
(13,5,'Administracion (Sew)',1,11),
(14,8,'INT Bodega',1,0),
(15,10,'Recepsa Bodega',1,0),
(16,3,'Administracion (JS)',1,0);

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
  `UserIdx` int(11) NOT NULL,
  `CostcenterIdx` int(11) NOT NULL,
  `DeptIdx` int(11) DEFAULT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserId` varchar(30) NOT NULL,
  `Passwd` varchar(100) DEFAULT NULL,
  `PasswdInit` smallint(6) DEFAULT NULL,
  `UserImage` binary(1) DEFAULT NULL,
  `SignImage` binary(1) DEFAULT NULL,
  `MacAddr` varchar(20) DEFAULT NULL,
  `AuthCode` varchar(20) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsUse` tinyint(3) NOT NULL,
  `Connected` tinyint(3) NOT NULL DEFAULT '0',
  `GroupIdx` tinyint(4) NOT NULL DEFAULT '0',
  `IsLeader` tinyint(3) NOT NULL DEFAULT '0',
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

insert  into `users`(`UserIdx`,`CostcenterIdx`,`DeptIdx`,`UserName`,`UserId`,`Passwd`,`PasswdInit`,`UserImage`,`SignImage`,`MacAddr`,`AuthCode`,`Email`,`Phone`,`RegDate`,`IsUse`,`Connected`,`GroupIdx`,`IsLeader`,`Position`,`ExceptionGroup`,`Nationality`,`Bank`,`BankAccount`,`CheckName`,`Point`,`PointYR`) values 
(2,1,3,'Fernando Gutierrez','fernando','fg9287',0,'\0','\0','','','fernando@inttrading.com','','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',0,0),
(3,1,5,'Bryan Cho','bryan','love1229',0,'\0','\0','','','bryan.cho@intsa.net','50232320019','2018-07-03 00:00:00',1,0,0,1,0,233,0,0,'','',2309,2300),
(7,1,5,'Neo Pyon','neo','np9012',0,'\0','\0','','','neo.pyon@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',2,2),
(9,1,5,'Timoteo','timo','t1m0te0',0,'\0','\0','','','timoteo.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,1,0,233,0,0,'','',102,102),
(10,1,6,'Chris Lee','chris.lee','cl1234',0,'\0','\0','','','chris.lee@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',64,64),
(17,1,4,'Hailey Lee','hailey','30629769',0,'\0','\0','','','hailey.lee@intsa.net','50230629769','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',213,212),
(19,1,3,'adrian','adrian','32218240',0,'\0','\0','','','','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',1546,1546),
(20,1,3,'Haram Chang','haramchang','gkfka0522',0,'\0','\0','','','','50230451795','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',694,694),
(21,1,3,'Joanne Kim','joanne','whdks0513',0,'\0','\0','','','','50230378011','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',166,166),
(22,1,1,'Steven Hong','steven','Stjuyeha',0,'\0','\0','','','steven.hong@intsa.net','','2018-07-03 00:00:00',1,0,0,1,0,233,0,0,'','',50,50),
(23,1,1,'Tom Shin','tomshin','qazwsx98',0,'\0','\0','','','tomshin@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',352,352),
(24,1,3,'napoleon','napoleon','903',0,'\0','\0','','','napoleon@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',106,106),
(25,1,3,'Alexander','alexander','al2398',0,'\0','\0','','','alexander@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',26,26),
(27,1,1,'Carmen Cho','carmencho','9241',0,'\0','\0','','','carmen.cho@intsa.net','50230086997','2018-07-03 00:00:00',0,0,0,0,0,233,0,0,'','',0,0),
(28,1,1,'Mary Kim','marykim','d900920',0,'\0','\0','','','marykim@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',292,292),
(29,1,1,'Daniela Choi','daniela','dc4123',0,'\0','\0','','','daniela@intsa.net','50231113441','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',328,328),
(30,1,1,'Adam Park','adam.park','int',0,'\0','\0','','','adam.park@intsa.net','50231764301','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',246,246),
(35,1,4,'Song','song','s2789987',0,'\0','\0','','','song@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',362,362),
(36,1,4,'Marco Lee','marcolee','akfmzh',0,'\0','\0','','','marco.lee@intsa.net','50230252810','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',248,248),
(37,1,4,'Paul Min','paulmin','1234',0,'\0','\0','','','paul.min@intsa.net','','2018-07-03 00:00:00',1,0,0,1,0,233,0,0,'','',254,254),
(38,1,3,'Skye Yun','skyeyun','1234',0,'\0','\0','','','skyeyun@inttrading.com','50244899821','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',842,842),
(39,1,3,'James Lim','jameslim','jaeyoung0716',0,'\0','\0','','','jameslim@inttrading.com','','2018-07-03 00:00:00',1,0,0,1,0,0,0,0,'','',96,96),
(40,1,3,'Sara Choi','sarachoi','aaaa',0,'\0','\0','','','sara.choi@intsa.net','50230228515','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',364,364),
(41,1,3,'Lena Woo','lenawoo','1323',0,'\0','\0','','','lena.woo@intsa.net','50230566682','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',310,310),
(42,1,3,'Allie Kim','allie','326',0,'\0','\0','','','allie@inttrading.com','','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',216,216),
(43,1,3,'Heather Park','hjpark','1234',0,'\0','\0','','','hjpark@inttrading.com','','2018-07-03 00:00:00',1,0,21,0,0,233,0,0,'','',408,408),
(44,1,3,'Thomas Kim','thomas','thomaskim20103',0,'\0','\0','','','thomas@inttrading.com','','2018-07-03 00:00:00',1,0,22,0,0,233,0,0,'','',40,40),
(45,1,3,'Natalie Yoon','natalieyoon','yoon0922',0,'\0','\0','','','natalieyoon@inttrading.com','50250004982','2018-07-03 00:00:00',1,0,22,0,0,0,0,0,'','',364,364),
(46,1,4,'Hana Hong','hanah','hanahong1',0,'\0','\0','','','hanah@inttrading.com','50230604619','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',696,696),
(47,1,1,'Betty Um','betty','t012615',0,'\0','\0','','','betty@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',202,202),
(48,1,1,'Sophia Kang','sophia.kang','sk1005',0,'\0','\0','','','sophiakang@inttrading.com','50230567620','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',150,150),
(49,1,4,'Daniel Choi','danielchoi','nara0806',0,'\0','\0','','','danielchoi@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',72,72),
(50,1,1,'Jinkoo Kim','jinkookim','putamierda!23',0,'\0','\0','','','jinkookim@inttrading.com','50247834674','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',128,128),
(51,1,5,'amanda.acan','amanda.acan','jesusteamo',0,'\0','\0','','','amanda.acan@intsa.net','','2018-07-03 00:00:00',1,0,22,0,0,0,0,0,'','',2,2),
(52,1,6,'TH Lee','thlee','thlee1911',0,'\0','\0','','','thlee@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',4,4),
(53,1,3,'Luis de Paz','luis','lu4987',0,'\0','\0','','','luis@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',172,172),
(54,1,3,'Patricia Matias','patricia','1234',0,'\0','\0','','','patricia@inttrading.com','','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',0,0),
(55,1,3,'Jessica Palacios','jessica','1234',0,'\0','\0','','','jessica@intsa.net','','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',248,248),
(56,1,3,'David Ha','davidha','gkxoghks',0,'\0','\0','','','davidha@inttrading.com','','2018-07-03 00:00:00',0,0,22,0,0,0,0,0,'','',198,198),
(57,1,1,'Jason Woo','jasonwoo','wjt0622',0,'\0','\0','','','jason.woo@intsa.net','50230455654','2018-07-03 00:00:00',1,0,0,1,0,233,0,0,'','',304,304),
(58,1,3,'Jaquelin Lopez','jaquelin','jl1994',0,'\0','\0','','','jaquelin.lopez@intsa.net','','2018-07-03 00:00:00',0,0,22,0,0,0,0,0,'','',56,56),
(59,1,3,'Min Ho Seo','minhoseo','1234',1,'\0','\0','','','minhoseo@inttrading.com','','2018-07-03 00:00:00',1,0,21,0,0,0,0,0,'','',680,680),
(60,1,4,'Ryan Ryu','ryanryu','wpgh1004',0,'\0','\0','','','ryanryu@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',40,40),
(61,1,4,'Russ Myung','romyung','405',0,'\0','\0','','','russ.myung@intsa.net','50245008284','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',472,472),
(62,1,1,'Ignacio Han','minsoo','ih2378',0,'\0','\0','','','minsoo@inttrading.com','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',270,270),
(63,1,4,'Jet Hong','jet.hong','1q2w3e4r',0,'\0','\0','','','jet.hong@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',68,68),
(70,1,6,'Michelle Kim','michelle.kim','kim3143',0,'\0','\0','','','michelle.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',0,0),
(71,1,5,'Leslie Dubon','leslie.dubon','lesliedubon',0,'\0','\0','','','leslie.dubon@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',6,6),
(72,1,1,'Jake Lee','jake.lee','ljh1991',0,'\0','\0','','','jake.lee@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',146,146),
(74,1,5,'James Lee','james.lee','jl8765',0,'\0','\0','','','james.lee@peoplenart.com.gt','','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',28,28),
(75,1,5,'Ian Lee','ian.lee','ii4956',0,'\0','\0','','','ian.lee@peoplenart.com.gt','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',2,2),
(76,1,1,'Diane Park','diane.park','lasdalias11',0,'\0','\0','','','diane.park@intsa.net','50248897136','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',120,120),
(77,1,5,'Saulo herrera','saulo.herrera','intsa',0,'\0','\0','','','saulo.herrera@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',244,244),
(78,1,5,'Andrea Orrego','andrea.orrego','alog1490',0,'\0','\0','','','andrea.orrego@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',264,264),
(79,1,5,'Irma Jolon','irma.jolon','2017jolon',0,'\0','\0','','','irma.jolon@intsa.net','','2018-07-03 00:00:00',1,0,0,1,0,0,0,0,'','',214,214),
(80,1,3,'Rebeca Ham','rebeca.ham','4568',0,'\0','\0','','','rebeca.ham@intsa.net','57311859','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',564,564),
(81,1,4,'Grace Lee','grace.lee','gl4352',0,'\0','\0','','','grace.lee@intsa.net','50246753745','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',254,254),
(82,1,4,'Jina Lee','jina.lee','friday623',0,'\0','\0','','','jina.lee@intsa.net','50230030149','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',154,154),
(83,1,4,'Kyu Kim','kyu.kim','kk3278',0,'\0','\0','','','kyu.kim@intsa.net','50230228082','2018-07-03 00:00:00',1,0,0,0,0,233,0,0,'','',126,126),
(84,1,3,'Eddie Kim','eddie.kim','ww852456',0,'\0','\0','','','eddie.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',10,10),
(91,1,1,'Jonathan Cho','jonathan.cho','jonathancho',0,'\0','\0','','','jonathan.cho@intsa.net','50240956057','2018-07-03 00:00:00',0,0,0,0,0,0,0,0,'','',260,260),
(92,1,5,'Hilsia Garcia','hilsia.garcia','hilsia22',0,'\0','\0','','','hilsia.garcia@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',274,274),
(93,1,5,'Pamela Zavala','pamela.zavala','genesis',0,'\0','\0','','','pamela.zavala@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',328,328),
(94,1,1,'Sony Hong','sony.hong','int',0,'\0','\0','','','sony.hong@intsa.net','50230725096','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',240,240),
(95,1,6,'D.Y.Kim','dykim','dy5609',0,'\0','\0','','','dykim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',0,0),
(96,1,1,'Nana Park','nana.park','love1229',0,'\0','\0','','','nana.park@intsa.net','50230990518','2018-07-03 00:00:00',0,0,0,0,0,0,0,0,'','',56,56),
(97,1,4,'Kevin Kim','kevin.kim','kk1010',0,'\0','\0','','','kevin.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',26,26),
(100,1,5,'Mariza Gamez','maritza.gamez','mg5413',0,'\0','\0','','','maritza.gamez@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',82,82),
(101,1,5,'Bianka Castillo','bianka.castillo','17082010',0,'\0','\0','','','bianka.castillo@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',688,688),
(102,1,5,'Liliana Garcia','liliana.garcia','int1991',0,'\0','\0','','','liliana.garcia@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',144,144),
(103,1,5,'Aron Gonzalez','aron.gonzalez','ag8732',0,'\0','\0','','','aron.gonzalez@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',164,164),
(104,1,5,'Jessica Monteloso','alejandra.monterroso','jm8492',0,'\0','\0','','','alejandra.monterroso@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',204,204),
(105,1,5,'Daniel Kim','daniel.kim','dk0914',0,'\0','\0','','','daniel.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',2,2),
(106,1,5,'Rosenda Alvarado','rosenda.alvarado','19822003',0,'\0','\0','','','rosenda.alvarado@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',262,262),
(107,1,5,'Ester Garcia','ester.garcia','1603',0,'\0','\0','','','ester.garcia@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',375,372),
(108,1,3,'Junyong Cho','junyong.cho','jc1109',0,'\0','\0','','','junyong.cho@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',14,14),
(110,1,1,'Ninna Lee','ninna.lee','nl3252',0,'\0','\0','','','ninna.lee@intsa.net','50258048907','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',4,4),
(111,1,1,'Rily Kim','rily.kim','rk7565',0,'\0','\0','','','rily.kim@intsa.net','50240951824','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',12,12),
(112,1,5,'Mario Santizo','mario.santizo','colocho2210',0,'\0','\0','','','mario.santizo@intsa.net','','2018-07-03 00:00:00',1,0,0,1,0,0,0,0,'','',116,116),
(113,1,5,'Jonathan IT','edgar.montufar','em4871',0,'\0','\0','','','edgar.montufar@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',44,44),
(114,1,1,'Cesar Solis','cesar.solis','cesars',0,'\0','\0','','','cesar.solis@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',58,58),
(115,1,4,'Jinbum Park','jinbum.park','ss1balyur',0,'\0','\0','','','jinbum.park@intsa.net','50258053356','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',50,50),
(116,1,1,'Soyeon Park','soyeon.park','sp3244',0,'\0','\0','','','soyeon.park@intsa.net','502 58069571','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',238,238),
(117,1,1,'Erick Cho','erick.cho','a1057326',0,'\0','\0','','','erick.cho@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',80,80),
(118,1,1,'William Lee','william.lee','22099726',0,'\0','\0','','','william.lee@intsa.net','50249160805','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',342,342),
(119,1,4,'Nicolas Lee','nicolas.lee','trebolsphere',0,'\0','\0','','','nicolas.lee@intsa.net','50249150210','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',372,372),
(120,1,4,'Joshua Lee','joshua.lee','jl2389',0,'\0','\0','','','joshua.lee@intsa.net','50249194589','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',168,168),
(121,1,1,'Gerson Escobar','gerson.escobar','ge8923',0,'\0','\0','','','gerson.escobar@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',102,102),
(122,1,3,'Kyunga Kim ','kyunga.kim','0',0,'\0','\0','','','kyunga.kim@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',208,208),
(124,1,1,'Sola An','sola.an','thf112233',0,'\0','\0','','','sola.an@intsa.net','502 33033381','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',218,218),
(125,1,4,'Anna Chang','anna.chang','ai8322',0,'\0','\0','','','anna.chang@intsa.net','502 3342-9671','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',338,338),
(126,1,3,'Elmer Escobar','elmer.escobar','ee3934',0,'\0','\0','','','elmer.escobar@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',6,6),
(127,1,3,'Jonnathan Bobadilla','jonnathan.bobadilla','jb3249',0,'\0','\0','','','jonnathan.bobadilla@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',32,32),
(131,1,3,'Lucas Park','lucas.park','lp2130',0,'\0','\0','','','lucas.park@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',48,48),
(135,1,4,'Elena Go','elena.go','eg93824',0,'\0','\0','','','elena.go@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',52,52),
(136,1,4,'Norma Iliana Alvarado','normal.lliana','nl0392',0,'\0','\0','','','','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',8,8),
(137,1,5,'Dina Lara','dina.lara','dl9321',0,'\0','\0','','','dina.lara@intsa.net','','2018-07-03 00:00:00',1,0,0,0,0,0,0,0,'','',20,20);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
