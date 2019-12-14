/*
SQLyog Community v13.1.2 (32 bit)
MySQL - 5.6.17 : Database - sms_banking_app
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sms_banking_app` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sms_banking_app`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `numCompte` varchar(60) NOT NULL,
  `intituleCompte` varchar(60) NOT NULL,
  `libelleCompte` varchar(60) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `soldeDebit` float DEFAULT NULL,
  `soldeCredit` float DEFAULT NULL,
  `soldeAccount` float DEFAULT NULL,
  PRIMARY KEY (`numCompte`),
  UNIQUE KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`account_id`,`numCompte`,`intituleCompte`,`libelleCompte`,`dateCreation`,`soldeDebit`,`soldeCredit`,`soldeAccount`) values 
(2,'37230990404932','YANOU FENJEP LOUIS CARLOS','COMPTE SALAIRE ','2019-12-12',0,0,NULL),
(1,'3723099043134','ONDOBO ','Compte Salaire ','2019-11-13',0,0,0);

/*Table structure for table `api_key` */

DROP TABLE IF EXISTS `api_key`;

CREATE TABLE `api_key` (
  `id_api` int(11) NOT NULL AUTO_INCREMENT,
  `api_username` varchar(60) NOT NULL,
  `api_password` varchar(60) NOT NULL,
  `entrepriseReff` varchar(60) NOT NULL,
  PRIMARY KEY (`id_api`),
  KEY `fk_api_key` (`entrepriseReff`),
  CONSTRAINT `fk_api_key` FOREIGN KEY (`entrepriseReff`) REFERENCES `entreprise` (`reffEntreprise`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `api_key` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `matriculeClient` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) DEFAULT NULL,
  `dateNaiss` date DEFAULT NULL,
  `LieuNaiss` varchar(60) DEFAULT NULL,
  `sexe` enum('F','M','Unknow') DEFAULT 'Unknow',
  `tel1` varchar(60) DEFAULT NULL,
  `tel2` varchar(60) DEFAULT NULL,
  `tel3` varchar(60) DEFAULT NULL,
  `NumCNI` varchar(60) DEFAULT NULL,
  `Racine` varchar(60) DEFAULT NULL,
  `isActif` varchar(10) NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`matriculeClient`),
  UNIQUE KEY `customers_id` (`customers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1282 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customers_id`,`matriculeClient`,`nom`,`prenom`,`dateNaiss`,`LieuNaiss`,`sexe`,`tel1`,`tel2`,`tel3`,`NumCNI`,`Racine`,`isActif`) values 
(1026,'MATRI10','MENGUE ANGELINE ROSE',NULL,NULL,NULL,'Unknow','237677278270','','',NULL,'03107','Yes'),
(1027,'MATRI100','ITJOKO ITJOKO JEAN PHILIPPE',NULL,NULL,NULL,'Unknow','23774619075','','',NULL,'00055','Yes'),
(1028,'MATRI101','AWAH JOHN NSOH 0',NULL,NULL,NULL,'Unknow','237676684243','','',NULL,'03424','Yes'),
(1029,'MATRI102','ASE EPSE AZANGUE SUZANNE',NULL,NULL,NULL,'Unknow','23777917422','','',NULL,'00028','Yes'),
(1030,'MATRI103','ROBERT CHI NIBA',NULL,NULL,NULL,'Unknow','237314','','',NULL,'00029','Yes'),
(1031,'MATRI104','FOUEMETIO EDWIGE*',NULL,NULL,NULL,'Unknow','23799273956','','',NULL,'00033','Yes'),
(1032,'MATRI105','CLETUS BEGHOKEH',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00006','Yes'),
(1033,'MATRI106','ACHONDUH EPHRAIM*',NULL,NULL,NULL,'Unknow','2379487368','','',NULL,'00012','Yes'),
(1034,'MATRI107','MME NGO KOKOLA MARIE THERESE EPSE NOLLA',NULL,NULL,NULL,'Unknow','23777725737','','',NULL,'00036','Yes'),
(1035,'MATRI108','NGA ROSINE',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00039','Yes'),
(1036,'MATRI109','BASSANGONEN MISSIKANIM JULES ALAIN',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00040','Yes'),
(1037,'MATRI110','MBONDJI TINAK',NULL,NULL,NULL,'Unknow','237333','','',NULL,'00484','Yes'),
(1038,'MATRI111','HANRIATA KINYUY',NULL,NULL,NULL,'Unknow','23777329884','','',NULL,'00220','Yes'),
(1039,'MATRI112','BAMAGALINA VICTORINE',NULL,NULL,NULL,'Unknow','237691481127','','',NULL,'03272','Yes'),
(1040,'MATRI113','NGO MBOUSNOUM REGINE SANDRINE',NULL,NULL,NULL,'Unknow','237699332847','','',NULL,'03273','Yes'),
(1041,'MATRI114','BELINDA FOLA',NULL,NULL,NULL,'Unknow','237678185471','','',NULL,'03274','Yes'),
(1042,'MATRI115','HEUKEU SEVERIN',NULL,NULL,NULL,'Unknow','23799691837','','',NULL,'00027','Yes'),
(1043,'MATRI116','BOUDOMBO MPONG ASSIE NESTOR',NULL,NULL,NULL,'Unknow','237312','','',NULL,'00053','Yes'),
(1044,'MATRI117','FOUEMETIO EDWIGE',NULL,NULL,NULL,'Unknow','2379273956','','',NULL,'00023','Yes'),
(1045,'MATRI118','ONOMO TANGA YVES BLAISE',NULL,NULL,NULL,'Unknow','237679347221','','',NULL,'03356','Yes'),
(1046,'MATRI119','KPOLOM GLORIOSE DENIS',NULL,NULL,NULL,'Unknow','237911','','',NULL,'03358','Yes'),
(1047,'MATRI12','BOGUISSOGO JACQUELINE',NULL,NULL,NULL,'Unknow','237675988887','','',NULL,'02844','Yes'),
(1048,'MATRI120','KIN-NOU NANA THIERRY',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00060','Yes'),
(1049,'MATRI121','NGO MBILA KILEM EPSE HONGA DORA/DD+',NULL,NULL,NULL,'Unknow','237699748575','','',NULL,'03450','Yes'),
(1050,'MATRI122','ACHONDUH EPHRAIM A.',NULL,NULL,NULL,'Unknow','2379487368','','',NULL,'00015','Yes'),
(1051,'MATRI123','FOUMENA AKABA JEAN',NULL,NULL,NULL,'Unknow','237989','','',NULL,'00024','Yes'),
(1052,'MATRI124','ETOUNDI MAMA CHARLES',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00026','Yes'),
(1053,'MATRI126','TCHEGANG ARNAUD',NULL,NULL,NULL,'Unknow','237673315649','','',NULL,'03257','Yes'),
(1054,'MATRI127','AKAYA ESTHER EPSE USONGO ESTHER AGHEUNECK',NULL,NULL,NULL,'Unknow','237677500310','','',NULL,'03203','Yes'),
(1055,'MATRI128','UKIANGOH DENIS UTONGAJI',NULL,NULL,NULL,'Unknow','237237','','',NULL,'03204','Yes'),
(1056,'MATRI129','NJU KUM WILFRED',NULL,NULL,NULL,'Unknow','237237','','',NULL,'03205','Yes'),
(1057,'MATRI13','SIRRI MAURINE MUNDIBAH',NULL,NULL,NULL,'Unknow','23767845849','','',NULL,'03064','Yes'),
(1058,'MATRI130','IPA H ABRAHAM',NULL,NULL,NULL,'Unknow','237237','','',NULL,'03207','Yes'),
(1059,'MATRI131','DAYA NELSON UGAITONG',NULL,NULL,NULL,'Unknow','237237','','',NULL,'03208','Yes'),
(1060,'MATRI132','MR ETCHOKO II SALOMON',NULL,NULL,NULL,'Unknow','2379507282','','',NULL,'00014','Yes'),
(1061,'MATRI133','FRU FIDELIS NDEH',NULL,NULL,NULL,'Unknow','2377318795','','',NULL,'00016','Yes'),
(1062,'MATRI134','MBINKAR EVELYNE BONGADZEM',NULL,NULL,NULL,'Unknow','2377842861','','',NULL,'00017','Yes'),
(1063,'MATRI135','MR NGAH ANDREW T',NULL,NULL,NULL,'Unknow','2377254170','','',NULL,'00019','Yes'),
(1064,'MATRI136','SAMBON EKONO RIGOBERT',NULL,NULL,NULL,'Unknow','2377488962','','',NULL,'00021','Yes'),
(1065,'MATRI137','ASE SUSAN',NULL,NULL,NULL,'Unknow','2377917422','','',NULL,'00013','Yes'),
(1066,'MATRI138','KIN-NOU NANA THIERRY',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00060','Yes'),
(1067,'MATRI139','EWANE EPADA',NULL,NULL,NULL,'Unknow','2377708015','','',NULL,'00004','Yes'),
(1068,'MATRI140','EMMANUEL MBIVNJO',NULL,NULL,NULL,'Unknow','23777997447','','',NULL,'00327','Yes'),
(1069,'MATRI141','NGONO JEAN FELIX',NULL,NULL,NULL,'Unknow','237675587161','','',NULL,'03381','Yes'),
(1070,'MATRI142','NDJOCK 0',NULL,NULL,NULL,'Unknow','237675608450','','',NULL,'03389','Yes'),
(1071,'MATRI143','USONGO LEONARD',NULL,NULL,NULL,'Unknow','23722236521','','',NULL,'00042','Yes'),
(1072,'MATRI144','MBANWI',NULL,NULL,NULL,'Unknow','23722236521','','',NULL,'00043','Yes'),
(1073,'MATRI145','KALINGA ROGER',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00646','Yes'),
(1074,'MATRI146','EMMA SOLANGE TANGA',NULL,NULL,NULL,'Unknow','237680165662','','',NULL,'03542','Yes'),
(1075,'MATRI147','FON SONNE THOMPSON',NULL,NULL,NULL,'Unknow','237675547462','','',NULL,'03559','Yes'),
(1076,'MATRI148','KONGNYUY NEE YUFENYUY GLORIA LAN',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00182','Yes'),
(1077,'MATRI149','NANDJO TAPPA ELODIE',NULL,NULL,NULL,'Unknow','237675131619','','',NULL,'03493','Yes'),
(1078,'MATRI150','MIMBA JANET',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00010','Yes'),
(1079,'MATRI151','FOKWEN THOMAS',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00011','Yes'),
(1080,'MATRI152','OSSOMBA GREGOIRE',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00057','Yes'),
(1081,'MATRI153','NGAYI CHRISTOPHER NWORO',NULL,NULL,NULL,'Unknow','237237','','',NULL,'00058','Yes'),
(1082,'MATRI154','MANJI',NULL,NULL,NULL,'Unknow','237312','','',NULL,'00192','Yes'),
(1083,'MATRI155','CNE ABBA SAIDOU',NULL,NULL,NULL,'Unknow','23775947969','','',NULL,'00443','Yes'),
(1084,'MATRI156','BAKELA FRANCINE VANESSA',NULL,NULL,NULL,'Unknow','237934','','',NULL,'03413','Yes'),
(1085,'MATRI157','ALETUM NGWA ATEH PAUL',NULL,NULL,NULL,'Unknow','237914','','',NULL,'03417','Yes'),
(1086,'MATRI158','SHEY RANNI',NULL,NULL,NULL,'Unknow','237910','','',NULL,'03418','Yes'),
(1087,'MATRI159','NGO MAHOP EPSE ETCHOKO DAMARIS CHRISTINE',NULL,NULL,NULL,'Unknow','237699507606','','',NULL,'04641','Yes'),
(1088,'MATRI160','NTSOMO NTSOMO MPONG PIERRE MARIE',NULL,NULL,NULL,'Unknow','237670117267','','',NULL,'04901','Yes'),
(1089,'MATRI161','ABBE TSALA FRANCOIS NOEL',NULL,NULL,NULL,'Unknow','237671686615','','',NULL,'04427','Yes'),
(1090,'MATRI162','BALLA ABEGA PLACIDE PAUL',NULL,NULL,NULL,'Unknow','237697257816','','',NULL,'04458','Yes'),
(1091,'MATRI163','EBODE ONANA ARMAND STEPHANE',NULL,NULL,NULL,'Unknow','237697765783','','',NULL,'04340','Yes'),
(1092,'MATRI164','SIGHAN MUSTAPHER MUSA',NULL,NULL,NULL,'Unknow','237916','','',NULL,'03935','Yes'),
(1093,'MATRI165','TCHIAPPI KAMENI RONY',NULL,NULL,NULL,'Unknow','237651156405','','',NULL,'04022','Yes'),
(1094,'MATRI166','GABSAGA HENRY',NULL,NULL,NULL,'Unknow','237679466120','','',NULL,'04561','Yes'),
(1095,'MATRI167','DAGA DONATIEN',NULL,NULL,NULL,'Unknow','237697849101','','',NULL,'04393','Yes'),
(1096,'MATRI168','NTAMACK JEAN LOUIS',NULL,NULL,NULL,'Unknow','237653263321','','',NULL,'04539','Yes'),
(1097,'MATRI169','MVOKE YENANG CYRILLE ARSENE',NULL,NULL,NULL,'Unknow','237697602809','','',NULL,'04438','Yes'),
(1098,'MATRI170','FENDOUNG NGNONG PETSUO ETIENNE CLEMENT',NULL,NULL,NULL,'Unknow','237676889096','','',NULL,'04646','Yes'),
(1099,'MATRI171','TONDJI TCHOUATAT BERTRAN',NULL,NULL,NULL,'Unknow','237670160067','','',NULL,'04891','Yes'),
(1100,'MATRI172','BIKIE LAETICIA',NULL,NULL,NULL,'Unknow','237690786071','','',NULL,'04913','Yes'),
(1101,'MATRI173','YAMEGNE TCHEMO STEPHANIE',NULL,NULL,NULL,'Unknow','237696703849','','',NULL,'04915','Yes'),
(1102,'MATRI174','NGO UM ALVINE MARIE ANGE',NULL,NULL,NULL,'Unknow','237699900707','','',NULL,'04918','Yes'),
(1103,'MATRI175','AYINA LEONARD ANICET',NULL,NULL,NULL,'Unknow','237931','','',NULL,'04019','Yes'),
(1104,'MATRI176','MFOUM EYA JULIENNE THAMAR',NULL,NULL,NULL,'Unknow','237696635626','','',NULL,'04380','Yes'),
(1105,'MATRI177','TAPOKO NGAMENI FRANCK ERIC',NULL,NULL,NULL,'Unknow','237672997153','','',NULL,'04305','Yes'),
(1106,'MATRI178','NSANGOU NJIKAM LEON',NULL,NULL,NULL,'Unknow','237677884950','','',NULL,'04392','Yes'),
(1107,'MATRI179','TSOUNGUI MEKONGO CHRISTIAN MARTIN',NULL,NULL,NULL,'Unknow','237696148662','','',NULL,'04557','Yes'),
(1108,'MATRI180','NGONO MARGUERITE',NULL,NULL,NULL,'Unknow','237237','','',NULL,'04025','Yes'),
(1109,'MATRI181','MBESSA CLOTILDE PHILOMENE',NULL,NULL,NULL,'Unknow','237674662275','','',NULL,'04565','Yes'),
(1110,'MATRI182','NKFUNJE NTANYA IVODIA',NULL,NULL,NULL,'Unknow','237890','','',NULL,'03730','Yes'),
(1111,'MATRI183','BATE BISONG ENOW',NULL,NULL,NULL,'Unknow','2377843647','','',NULL,'00008','Yes'),
(1112,'MATRI184','BATE BISONG ENOW*',NULL,NULL,NULL,'Unknow','2377843647','','',NULL,'00009','Yes'),
(1113,'MATRI185','LEMBEGUE YANNICJK MARC',NULL,NULL,NULL,'Unknow','237889','','',NULL,'03848','Yes'),
(1114,'MATRI186','ONANA ESSOMBA APPOLINAIRE ARMAND',NULL,NULL,NULL,'Unknow','237678021051','','',NULL,'04035','Yes'),
(1115,'MATRI187','ASSOUGOUMA CHRISTINE',NULL,NULL,NULL,'Unknow','237699314858','','',NULL,'04633','Yes'),
(1116,'MATRI188','CHAMABE MARTIAL',NULL,NULL,NULL,'Unknow','237699739151','','',NULL,'04685','Yes'),
(1117,'MATRI190','FOBANG GRACE ANIE',NULL,NULL,NULL,'Unknow','237677771552','','',NULL,'04241','Yes'),
(1118,'MATRI210','NDZI NGWANKFU EVERT',NULL,NULL,NULL,'Unknow','237674991063','','',NULL,'04501','Yes'),
(1119,'MATRI211','AMAYI ELVIS EKILI',NULL,NULL,NULL,'Unknow','237678338053','','',NULL,'04829','Yes'),
(1120,'MATRI212','NGADAMOUN NJANKOUO BASILE',NULL,NULL,NULL,'Unknow','237690170264','','',NULL,'04831','Yes'),
(1121,'MATRI214','AYISSI NGAH NOMA BASILE',NULL,NULL,NULL,'Unknow','237691371372','','',NULL,'04039','Yes'),
(1122,'MATRI216','ONDOBO MVOLO RAPHA',NULL,NULL,NULL,'Unknow','237695633802','','',NULL,'04131','Yes'),
(1123,'MATRI217','MFORNDIP MITTERAND MFORNDIP',NULL,NULL,NULL,'Unknow','237677658071','','',NULL,'04179','Yes'),
(1124,'MATRI218','FON AZARIAN MONGONG',NULL,NULL,NULL,'Unknow','237673801967','','',NULL,'04267','Yes'),
(1125,'MATRI219','MELONE EMILIENNE PASCALINE',NULL,NULL,NULL,'Unknow','237691816087','','',NULL,'04830','Yes'),
(1126,'MATRI22','METANG LAHOCK *',NULL,NULL,NULL,'Unknow','237677892131','','',NULL,'02759','Yes'),
(1127,'MATRI220','AKOA ABOUNGA MARCEL CEDRIC',NULL,NULL,NULL,'Unknow','237696487776','','',NULL,'04895','Yes'),
(1128,'MATRI221','NTCHAM BENOIT  MARTIAL',NULL,NULL,NULL,'Unknow','237674701284','','',NULL,'03981','Yes'),
(1129,'MATRI222','AGWARA OYEBOG EMMANUEL',NULL,NULL,NULL,'Unknow','237676249831','','',NULL,'04313','Yes'),
(1130,'MATRI223','NDZANA OMBEDE MARTIN DIDIER',NULL,NULL,NULL,'Unknow','237675319609','','',NULL,'04112','Yes'),
(1131,'MATRI224','BIWOLE ARLIN',NULL,NULL,NULL,'Unknow','237699712150','','',NULL,'04562','Yes'),
(1132,'MATRI225','ONGUENE ONGUENE ANDRE DINITRI',NULL,NULL,NULL,'Unknow','237675127068','','',NULL,'04582','Yes'),
(1133,'MATRI227','TCHEGHO FOTSO CAROLE',NULL,NULL,NULL,'Unknow','237670781574','','',NULL,'04352','Yes'),
(1134,'MATRI228','KOUEMOUA NYADJOU SYNCLAIR',NULL,NULL,NULL,'Unknow','237674721309','','',NULL,'04018','Yes'),
(1135,'MATRI229','ONGMALELA AIMEE GAELLE',NULL,NULL,NULL,'Unknow','237651706816','','',NULL,'04021','Yes'),
(1136,'MATRI231','MOTCHO ANTONINE',NULL,NULL,NULL,'Unknow','237697525237','','',NULL,'04132','Yes'),
(1137,'MATRI233','ZELAP ZE SOPHONIE',NULL,NULL,NULL,'Unknow','237670750560','','',NULL,'04197','Yes'),
(1138,'MATRI234','KAZE GHOMO FABRICE',NULL,NULL,NULL,'Unknow','237674375716','','',NULL,'04198','Yes'),
(1139,'MATRI236','GBETNKOM OLIVIER',NULL,NULL,NULL,'Unknow','237679211873','','',NULL,'04226','Yes'),
(1140,'MATRI237','TSOGO PIERRE RODRIGUE',NULL,NULL,NULL,'Unknow','237699245737','','',NULL,'04564','Yes'),
(1141,'MATRI238','KOUNOU ESSIMI THERESE CHRISTELLE',NULL,NULL,NULL,'Unknow','237695001699','','',NULL,'04578','Yes'),
(1142,'MATRI239','AISSATOU MALIKI',NULL,NULL,NULL,'Unknow','237691382361','','',NULL,'04586','Yes'),
(1143,'MATRI24','ESSONO NEE AKAMBA ZANG BABETTE SANDRINE',NULL,NULL,NULL,'Unknow','23777575816','','',NULL,'02495','Yes'),
(1144,'MATRI240','TAMEN TCHOUYA BETHEL',NULL,NULL,NULL,'Unknow','237670160469','','',NULL,'04879','Yes'),
(1145,'MATRI241','SHEY SYLVESTER KWEBE',NULL,NULL,NULL,'Unknow','237678452393','','',NULL,'04134','Yes'),
(1146,'MATRI251','NGAHA CARINE EDWIGE',NULL,NULL,NULL,'Unknow','237670147567','','',NULL,'04034','Yes'),
(1147,'MATRI252','YATIA ARSENE',NULL,NULL,NULL,'Unknow','237265425382','','',NULL,'04254','Yes'),
(1148,'MATRI253','BANDOMA APIMBA ANNY',NULL,NULL,NULL,'Unknow','237256542548','','',NULL,'04255','Yes'),
(1149,'MATRI263','PAMBOUNDEM ELIE BLAISE',NULL,NULL,NULL,'Unknow','237695942727','','',NULL,'04191','Yes'),
(1150,'MATRI264','TCHOUMEGNI NKANJE HUGUES',NULL,NULL,NULL,'Unknow','237677130290','','',NULL,'04192','Yes'),
(1151,'MATRI265','KENNE FOKOU SEVERIN',NULL,NULL,NULL,'Unknow','237651154832','','',NULL,'04199','Yes'),
(1152,'MATRI269','KOUEMO BIKOGA ENSELME KELLY',NULL,NULL,NULL,'Unknow','237677145023','','',NULL,'04026','Yes'),
(1153,'MATRI270','NGONO FOUDA GERARD',NULL,NULL,NULL,'Unknow','237698727959','','',NULL,'04144','Yes'),
(1154,'MATRI271','ELLA ALBERT',NULL,NULL,NULL,'Unknow','237672990492','','',NULL,'04401','Yes'),
(1155,'MATRI272','AWANA ENGELBERT BERTRAND',NULL,NULL,NULL,'Unknow','237655344343','','',NULL,'04431','Yes'),
(1156,'MATRI273','ITJOKO SALOMON',NULL,NULL,NULL,'Unknow','237699732565','','',NULL,'04836','Yes'),
(1157,'MATRI274','ONANA GABRIELLE PASCALE',NULL,NULL,NULL,'Unknow','237695368032','','',NULL,'04843','Yes'),
(1158,'MATRI275','ANN MARIE NABU',NULL,NULL,NULL,'Unknow','237679419431','','',NULL,'04859','Yes'),
(1159,'MATRI276','NKAIMBI PROMISE TATA',NULL,NULL,NULL,'Unknow','237673480552','','',NULL,'04862','Yes'),
(1160,'MATRI277','KOM STANISLAS BLAISE',NULL,NULL,NULL,'Unknow','237690180665','','',NULL,'04507','Yes'),
(1161,'MATRI28','BIBOUM SARA',NULL,NULL,NULL,'Unknow','23799910895','','',NULL,'02248','Yes'),
(1162,'MATRI32','KARABOUK LUCIEN',NULL,NULL,NULL,'Unknow','237677930477','','',NULL,'02993','Yes'),
(1163,'MATRI38','NNAM FRI ESTHER WANDUKU',NULL,NULL,NULL,'Unknow','237222236521','','',NULL,'01193','Yes'),
(1164,'MATRI48','BIH INNOCENTIA BEMAMBUH',NULL,NULL,NULL,'Unknow','237670346849','','',NULL,'00323','Yes'),
(1165,'MATRI5','FON SAWA MARIE',NULL,NULL,NULL,'Unknow','237676464096','','',NULL,'02440','Yes'),
(1166,'MATRI55','AMANA AMANA THERESE AMANA AMANANA',NULL,NULL,NULL,'Unknow','237670829315','','',NULL,'00303','Yes'),
(1167,'MATRI59','PANGA JEAN CRISPIN',NULL,NULL,NULL,'Unknow','237677610445','','',NULL,'00064','Yes'),
(1168,'MATRI60','KOUEMO SIMON',NULL,NULL,NULL,'Unknow','237677394386','','',NULL,'00065','Yes'),
(1169,'MATRI62','SHEY NICOLINE GWEMBE',NULL,NULL,NULL,'Unknow','23777361695','','',NULL,'02315','Yes'),
(1170,'MATRI63','AMOUGOU ETOGA EPSE BOYELINIKI JUSTINE AIMEE',NULL,NULL,NULL,'Unknow','237675247588','','',NULL,'03554','Yes'),
(1171,'MATRI64','NANGU KAMSI JAMES',NULL,NULL,NULL,'Unknow','237675291396','','',NULL,'00063','Yes'),
(1172,'MATRI68','ACHONDUH EPHRAIM',NULL,NULL,NULL,'Unknow','2379487368','','',NULL,'00002','Yes'),
(1173,'MATRI69','TAYONG NAPOLEON',NULL,NULL,NULL,'Unknow','2377473447','','',NULL,'00003','Yes'),
(1174,'MATRI70','FRU FIDELIS',NULL,NULL,NULL,'Unknow','2377318795','','',NULL,'00005','Yes'),
(1175,'MATRI72','NANA JEAN',NULL,NULL,NULL,'Unknow','23722236521','','',NULL,'00041','Yes'),
(1176,'MATRI73','ROBAI ERIC',NULL,NULL,NULL,'Unknow','23796879019','','',NULL,'00046','Yes'),
(1177,'MATRI74','NKOUMA CHRYSTELLE GINETTE',NULL,NULL,NULL,'Unknow','23777317661','','',NULL,'00038','Yes'),
(1178,'MATRI75','MBÜNKEU BIAKEU ISRAËL',NULL,NULL,NULL,'Unknow','23775046036','','',NULL,'00032','Yes'),
(1179,'MATRI76','MBARGA GEORGES BRUNO',NULL,NULL,NULL,'Unknow','237690090832','','',NULL,'03236','Yes'),
(1180,'MATRI78','ETCHI AKO ANNA',NULL,NULL,NULL,'Unknow','237679690840','','',NULL,'03316','Yes'),
(1181,'MATRI79','MAHOL NSANGA GERARD',NULL,NULL,NULL,'Unknow','23775096297','','',NULL,'00047','Yes'),
(1182,'MATRI80','TAYONG NAPOLEON AJEME',NULL,NULL,NULL,'Unknow','23777473447','','',NULL,'00034','Yes'),
(1183,'MATRI81','MBARINGONG ODETTE AKWI EPSE ATONGNONG',NULL,NULL,NULL,'Unknow','23777749215','','',NULL,'00035','Yes'),
(1184,'MATRI83','ANGYIE SOLOMON MUNA',NULL,NULL,NULL,'Unknow','237695414855','','',NULL,'00051','Yes'),
(1185,'MATRI85','EGEBE',NULL,NULL,NULL,'Unknow','23722236521','','',NULL,'00044','Yes'),
(1186,'MATRI87','EBODE BENJAMIN',NULL,NULL,NULL,'Unknow','237678138578','','',NULL,'03317','Yes'),
(1187,'MATRI88','NDAYA LILIAN FONABEI',NULL,NULL,NULL,'Unknow','237677188369','','',NULL,'03319','Yes'),
(1188,'MATRI89','NANGUEP TCHOUALA CEDRIC MARTIAL',NULL,NULL,NULL,'Unknow','237697784522','','',NULL,'03323','Yes'),
(1189,'MATRI90','MUH GASTON NJICHE',NULL,NULL,NULL,'Unknow','237679905964','','',NULL,'03324','Yes'),
(1190,'MATRI91','FUNGWI FRIDA YIBEH FRIDA YIBEH',NULL,NULL,NULL,'Unknow','237651600214','','',NULL,'03325','Yes'),
(1191,'MATRI92','NGUINI EPSE ANGELE ROSINE',NULL,NULL,NULL,'Unknow','237242638201','','',NULL,'03326','Yes'),
(1192,'MATRI93','NGA EPSE ATANGANA CATHERINE',NULL,NULL,NULL,'Unknow','237676096046','','',NULL,'03328','Yes'),
(1193,'MATRI94','NGONO EPSE TOUBA MARIE CLAIRE SOLANGE',NULL,NULL,NULL,'Unknow','237652175769','','',NULL,'03329','Yes'),
(1194,'MATRI95','MBALLA OLIVE',NULL,NULL,NULL,'Unknow','237690683804','','',NULL,'03330','Yes'),
(1195,'MATRI96','NTOUDA OMENGUE NORBERTINE H',NULL,NULL,NULL,'Unknow','237699516776','','',NULL,'03331','Yes'),
(1196,'MATRI97','NAHFORBEH FOGLAMENCHI NUFASATU',NULL,NULL,NULL,'Unknow','237909','','',NULL,'03419','Yes'),
(1281,'MATRI98','MENGUE CHRISTINE NATHALIE',NULL,NULL,NULL,'Unknow',NULL,NULL,NULL,NULL,'00000','Yes');

/*Table structure for table `customer_has_account` */

DROP TABLE IF EXISTS `customer_has_account`;

CREATE TABLE `customer_has_account` (
  `id_has_account` int(11) NOT NULL AUTO_INCREMENT,
  `reff_customer` varchar(60) NOT NULL,
  `accountNumber` varchar(60) NOT NULL,
  PRIMARY KEY (`id_has_account`),
  KEY `fk_reff_customer_accoun` (`reff_customer`),
  KEY `fk_account` (`accountNumber`),
  CONSTRAINT `fk_account` FOREIGN KEY (`accountNumber`) REFERENCES `account` (`numCompte`),
  CONSTRAINT `fk_reff_customer_accoun` FOREIGN KEY (`reff_customer`) REFERENCES `customer` (`matriculeClient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer_has_account` */

/*Table structure for table `customer_receive_message` */

DROP TABLE IF EXISTS `customer_receive_message`;

CREATE TABLE `customer_receive_message` (
  `id_receive` int(11) NOT NULL AUTO_INCREMENT,
  `reff_message` varchar(60) NOT NULL,
  `accountNumber` varchar(60) NOT NULL,
  PRIMARY KEY (`id_receive`),
  KEY `fk_reff_message` (`reff_message`),
  KEY `fk_account_message_concern` (`accountNumber`),
  CONSTRAINT `fk_account_message_concern` FOREIGN KEY (`accountNumber`) REFERENCES `account` (`numCompte`),
  CONSTRAINT `fk_reff_message` FOREIGN KEY (`reff_message`) REFERENCES `message` (`reffMessage`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `customer_receive_message` */

/*Table structure for table `entreprise` */

DROP TABLE IF EXISTS `entreprise`;

CREATE TABLE `entreprise` (
  `reffEntreprise` varchar(60) NOT NULL,
  `nomEntreprise` varchar(60) NOT NULL,
  `slogang` text,
  `sms_entreprise_labelle` varchar(60) NOT NULL,
  `compagnie_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reffEntreprise`),
  UNIQUE KEY `compagnie_id` (`compagnie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `entreprise` */

insert  into `entreprise`(`reffEntreprise`,`nomEntreprise`,`slogang`,`sms_entreprise_labelle`,`compagnie_id`) values 
('ENTR0001','People Finance','For your Future and development','PeFi',1);

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reffMessage` varchar(60) NOT NULL,
  `object` varchar(60) NOT NULL,
  `contenu` text,
  `statutMessage` varchar(60) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `account_reff` varchar(60) NOT NULL,
  PRIMARY KEY (`reffMessage`),
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`message_id`,`reffMessage`,`object`,`contenu`,`statutMessage`,`dateCreation`,`account_reff`) values 
(296,'AAAM+6AAEAAARm0AAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(297,'AAAM+6AAEAAARm0AAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990320844 People Finance Vous Remercie','KO','2019-12-14','10001990320844'),
(298,'AAAM+6AAEAAARm0AAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(300,'AAAM+6AAEAAARm0AAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030001436 People Finance Vous Remercie','KO','2019-12-14','39100030001436'),
(299,'AAAM+6AAEAAARm0AAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(302,'AAAM+6AAEAAARm0AAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030001632 People Finance Vous Remercie','KO','2019-12-14','39100030001632'),
(301,'AAAM+6AAEAAARm0AAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(304,'AAAM+6AAEAAARm0AAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37286080001730 People Finance Vous Remercie','KO','2019-12-14','37286080001730'),
(303,'AAAM+6AAEAAARm0AAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(306,'AAAM+6AAEAAARm0AAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37286080001935 People Finance Vous Remercie','KO','2019-12-14','37286080001935'),
(305,'AAAM+6AAEAAARm0AAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(308,'AAAM+6AAEAAARm0AAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270030002147 People Finance Vous Remercie','KO','2019-12-14','37270030002147'),
(307,'AAAM+6AAEAAARm0AAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(310,'AAAM+6AAEAAARm0AAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 32613030001365 People Finance Vous Remercie','KO','2019-12-14','32613030001365'),
(309,'AAAM+6AAEAAARm0AAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(312,'AAAM+6AAEAAARm0AAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37370030006033 People Finance Vous Remercie','KO','2019-12-14','37370030006033'),
(311,'AAAM+6AAEAAARm0AAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(314,'AAAM+6AAEAAARm0AAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270070000470 People Finance Vous Remercie','KO','2019-12-14','37270070000470'),
(313,'AAAM+6AAEAAARm0AAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(316,'AAAM+6AAEAAARm0AAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37272010032750 People Finance Vous Remercie','KO','2019-12-14','37272010032750'),
(315,'AAAM+6AAEAAARm0AAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(318,'AAAM+6AAEAAARm0AAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990338132 People Finance Vous Remercie','OK','2019-12-14','37380990338132'),
(317,'AAAM+6AAEAAARm0AAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(320,'AAAM+6AAEAAARm0AAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990338934 People Finance Vous Remercie','OK','2019-12-14','37380990338934'),
(319,'AAAM+6AAEAAARm0AAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(321,'AAAM+6AAEAAARm0AAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990004237 People Finance Vous Remercie','KO','2019-12-14','16000990004237'),
(270,'AAAM+6AAEAAARmkAAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(272,'AAAM+6AAEAAARmkAAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39320040003330 People Finance Vous Remercie','KO','2019-12-14','39320040003330'),
(271,'AAAM+6AAEAAARmkAAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(274,'AAAM+6AAEAAARmkAAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030000636 People Finance Vous Remercie','KO','2019-12-14','39100030000636'),
(273,'AAAM+6AAEAAARmkAAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(276,'AAAM+6AAEAAARmkAAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030001231 People Finance Vous Remercie','KO','2019-12-14','39100030001231'),
(275,'AAAM+6AAEAAARmkAAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(278,'AAAM+6AAEAAARmkAAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990003633 People Finance Vous Remercie','KO','2019-12-14','37230990003633'),
(277,'AAAM+6AAEAAARmkAAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(280,'AAAM+6AAEAAARmkAAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37370010003938 People Finance Vous Remercie','KO','2019-12-14','37370010003938'),
(279,'AAAM+6AAEAAARmkAAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(282,'AAAM+6AAEAAARmkAAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030004030 People Finance Vous Remercie','KO','2019-12-14','39100030004030'),
(281,'AAAM+6AAEAAARmkAAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(284,'AAAM+6AAEAAARmkAAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37274040048474 People Finance Vous Remercie','KO','2019-12-14','37274040048474'),
(283,'AAAM+6AAEAAARmkAAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(286,'AAAM+6AAEAAARmkAAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270020022036 People Finance Vous Remercie','KO','2019-12-14','37270020022036'),
(285,'AAAM+6AAEAAARmkAAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(288,'AAAM+6AAEAAARmkAAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990327332 People Finance Vous Remercie','OK','2019-12-14','37230990327332'),
(287,'AAAM+6AAEAAARmkAAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(290,'AAAM+6AAEAAARmkAAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990327430 People Finance Vous Remercie','OK','2019-12-14','37230990327430'),
(289,'AAAM+6AAEAAARmkAAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(292,'AAAM+6AAEAAARmkAAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030002735 People Finance Vous Remercie','KO','2019-12-14','39100030002735'),
(291,'AAAM+6AAEAAARmkAAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(294,'AAAM+6AAEAAARmkAAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270040005365 People Finance Vous Remercie','KO','2019-12-14','37270040005365'),
(293,'AAAM+6AAEAAARmkAAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(295,'AAAM+6AAEAAARmkAAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270030002362 People Finance Vous Remercie','KO','2019-12-14','37270030002362'),
(261,'AAAM+6AAEAAARmUAAn','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990310746 People Finance Vous Remercie','OK','2019-12-14','10001990310746'),
(262,'AAAM+6AAEAAARmUAAo','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(264,'AAAM+6AAEAAARmUAAp','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030005536 People Finance Vous Remercie','KO','2019-12-14','39100030005536'),
(263,'AAAM+6AAEAAARmUAAq','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(266,'AAAM+6AAEAAARmUAAr','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990342432 People Finance Vous Remercie','OK','2019-12-14','16000990342432'),
(265,'AAAM+6AAEAAARmUAAs','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(268,'AAAM+6AAEAAARmUAAt','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380080002833 People Finance Vous Remercie','KO','2019-12-14','37380080002833'),
(267,'AAAM+6AAEAAARmUAAu','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(269,'AAAM+6AAEAAARmUAAv','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270060002935 People Finance Vous Remercie','KO','2019-12-14','37270060002935'),
(400,'AAAM+6AAEAAARn0AAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(402,'AAAM+6AAEAAARn0AAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37370050006363 People Finance Vous Remercie','OK','2019-12-14','37370050006363'),
(401,'AAAM+6AAEAAARn0AAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(404,'AAAM+6AAEAAARn0AAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37370030000250 People Finance Vous Remercie','KO','2019-12-14','37370030000250'),
(403,'AAAM+6AAEAAARn0AAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(406,'AAAM+6AAEAAARn0AAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030000333 People Finance Vous Remercie','KO','2019-12-14','39100030000333'),
(405,'AAAM+6AAEAAARn0AAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(408,'AAAM+6AAEAAARn0AAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030000538 People Finance Vous Remercie','KO','2019-12-14','39100030000538'),
(407,'AAAM+6AAEAAARn0AAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(409,'AAAM+6AAEAAARn0AAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990004130 People Finance Vous Remercie','KO','2019-12-14','16000990004130'),
(410,'AAAM+6AAEAAARn0AAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(412,'AAAM+6AAEAAARn0AAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380080004638 People Finance Vous Remercie','KO','2019-12-14','37380080004638'),
(411,'AAAM+6AAEAAARn0AAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(414,'AAAM+6AAEAAARn0AAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030003838 People Finance Vous Remercie','KO','2019-12-14','39100030003838'),
(413,'AAAM+6AAEAAARn0AAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(416,'AAAM+6AAEAAARn0AAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380080003232 People Finance Vous Remercie','KO','2019-12-14','37380080003232'),
(415,'AAAM+6AAEAAARn0AAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(418,'AAAM+6AAEAAARn0AAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990323633 People Finance Vous Remercie','OK','2019-12-14','37230990323633'),
(417,'AAAM+6AAEAAARn0AAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(420,'AAAM+6AAEAAARn0AAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39100030004736 People Finance Vous Remercie','KO','2019-12-14','39100030004736'),
(419,'AAAM+6AAEAAARn0AAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(422,'AAAM+6AAEAAARn0AAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37370050003476 People Finance Vous Remercie','KO','2019-12-14','37370050003476'),
(421,'AAAM+6AAEAAARn0AAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(424,'AAAM+6AAEAAARn0AAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270010003584 People Finance Vous Remercie','KO','2019-12-14','37270010003584'),
(423,'AAAM+6AAEAAARn0AAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(425,'AAAM+6AAEAAARn0AAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000010005135 People Finance Vous Remercie','OK','2019-12-14','16000010005135'),
(322,'AAAM+6AAEAAARnEAAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(324,'AAAM+6AAEAAARnEAAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 39230010044336 People Finance Vous Remercie','KO','2019-12-14','39230010044336'),
(323,'AAAM+6AAEAAARnEAAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(326,'AAAM+6AAEAAARnEAAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990341837 People Finance Vous Remercie','KO','2019-12-14','37230990341837'),
(325,'AAAM+6AAEAAARnEAAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(327,'AAAM+6AAEAAARnEAAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990464178 People Finance Vous Remercie','OK','2019-12-14','10001990464178'),
(328,'AAAM+6AAEAAARnEAAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(330,'AAAM+6AAEAAARnEAAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37280990490175 People Finance Vous Remercie','OK','2019-12-14','37280990490175'),
(329,'AAAM+6AAEAAARnEAAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(332,'AAAM+6AAEAAARnEAAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990442793 People Finance Vous Remercie','OK','2019-12-14','37284990442793'),
(331,'AAAM+6AAEAAARnEAAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(334,'AAAM+6AAEAAARnEAAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990445829 People Finance Vous Remercie','OK','2019-12-14','46810990445829'),
(333,'AAAM+6AAEAAARnEAAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(336,'AAAM+6AAEAAARnEAAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990434009 People Finance Vous Remercie','OK','2019-12-14','37380990434009'),
(335,'AAAM+6AAEAAARnEAAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(338,'AAAM+6AAEAAARnEAAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990393535 People Finance Vous Remercie','KO','2019-12-14','37230990393535'),
(337,'AAAM+6AAEAAARnEAAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(340,'AAAM+6AAEAAARnEAAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990402236 People Finance Vous Remercie','OK','2019-12-14','16000990402236'),
(339,'AAAM+6AAEAAARnEAAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(341,'AAAM+6AAEAAARnEAAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990456155 People Finance Vous Remercie','OK','2019-12-14','10001990456155'),
(342,'AAAM+6AAEAAARnEAAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(344,'AAAM+6AAEAAARnEAAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990439375 People Finance Vous Remercie','OK','2019-12-14','37380990439375'),
(343,'AAAM+6AAEAAARnEAAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(346,'AAAM+6AAEAAARnEAAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990443861 People Finance Vous Remercie','OK','2019-12-14','46810990443861'),
(345,'AAAM+6AAEAAARnEAAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(347,'AAAM+6AAEAAARnEAAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990464674 People Finance Vous Remercie','OK','2019-12-14','37380990464674'),
(374,'AAAM+6AAEAAARnkAAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(376,'AAAM+6AAEAAARnkAAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990457813 People Finance Vous Remercie','OK','2019-12-14','37284990457813'),
(375,'AAAM+6AAEAAARnkAAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(378,'AAAM+6AAEAAARnkAAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37382990458665 People Finance Vous Remercie','OK','2019-12-14','37382990458665'),
(377,'AAAM+6AAEAAARnkAAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(380,'AAAM+6AAEAAARnkAAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37280990487979 People Finance Vous Remercie','OK','2019-12-14','37280990487979'),
(379,'AAAM+6AAEAAARnkAAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(382,'AAAM+6AAEAAARnkAAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37275990413488 People Finance Vous Remercie','OK','2019-12-14','37275990413488'),
(381,'AAAM+6AAEAAARnkAAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(384,'AAAM+6AAEAAARnkAAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990403437 People Finance Vous Remercie','OK','2019-12-14','16000990403437'),
(383,'AAAM+6AAEAAARnkAAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(385,'AAAM+6AAEAAARnkAAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990419131 People Finance Vous Remercie','OK','2019-12-14','10001990419131'),
(386,'AAAM+6AAEAAARnkAAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(387,'AAAM+6AAEAAARnkAAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990419238 People Finance Vous Remercie','OK','2019-12-14','10001990419238'),
(388,'AAAM+6AAEAAARnkAAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(390,'AAAM+6AAEAAARnkAAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990419963 People Finance Vous Remercie','OK','2019-12-14','46810990419963'),
(389,'AAAM+6AAEAAARnkAAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(392,'AAAM+6AAEAAARnkAAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990402676 People Finance Vous Remercie','OK','2019-12-14','37284990402676'),
(391,'AAAM+6AAEAAARnkAAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(394,'AAAM+6AAEAAARnkAAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990414472 People Finance Vous Remercie','OK','2019-12-14','37284990414472'),
(393,'AAAM+6AAEAAARnkAAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(396,'AAAM+6AAEAAARnkAAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990440170 People Finance Vous Remercie','OK','2019-12-14','37284990440170'),
(395,'AAAM+6AAEAAARnkAAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(398,'AAAM+6AAEAAARnkAAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990443110 People Finance Vous Remercie','OK','2019-12-14','46810990443110'),
(397,'AAAM+6AAEAAARnkAAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(399,'AAAM+6AAEAAARnkAAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990483674 People Finance Vous Remercie','OK','2019-12-14','37230990483674'),
(348,'AAAM+6AAEAAARnUAAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(350,'AAAM+6AAEAAARnUAAB','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270030000827 People Finance Vous Remercie','KO','2019-12-14','37270030000827'),
(349,'AAAM+6AAEAAARnUAAC','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(352,'AAAM+6AAEAAARnUAAD','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37270010000930 People Finance Vous Remercie','KO','2019-12-14','37270010000930'),
(351,'AAAM+6AAEAAARnUAAE','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(354,'AAAM+6AAEAAARnUAAF','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990403535 People Finance Vous Remercie','OK','2019-12-14','16000990403535'),
(353,'AAAM+6AAEAAARnUAAG','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(356,'AAAM+6AAEAAARnUAAH','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37382990463337 People Finance Vous Remercie','OK','2019-12-14','37382990463337'),
(355,'AAAM+6AAEAAARnUAAI','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(357,'AAAM+6AAEAAARnUAAJ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990468551 People Finance Vous Remercie','OK','2019-12-14','10001990468551'),
(358,'AAAM+6AAEAAARnUAAK','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(359,'AAAM+6AAEAAARnUAAL','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990424116 People Finance Vous Remercie','OK','2019-12-14','10001990424116'),
(360,'AAAM+6AAEAAARnUAAM','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(362,'AAAM+6AAEAAARnUAAN','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37284990482922 People Finance Vous Remercie','OK','2019-12-14','37284990482922'),
(361,'AAAM+6AAEAAARnUAAO','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(364,'AAAM+6AAEAAARnUAAP','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990483152 People Finance Vous Remercie','OK','2019-12-14','46810990483152'),
(363,'AAAM+6AAEAAARnUAAQ','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(366,'AAAM+6AAEAAARnUAAR','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990403936 People Finance Vous Remercie','OK','2019-12-14','37380990403936'),
(365,'AAAM+6AAEAAARnUAAS','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(367,'AAAM+6AAEAAARnUAAT','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 10001990417997 People Finance Vous Remercie','OK','2019-12-14','10001990417997'),
(368,'AAAM+6AAEAAARnUAAU','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(370,'AAAM+6AAEAAARnUAAV','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37380990426717 People Finance Vous Remercie','OK','2019-12-14','37380990426717'),
(369,'AAAM+6AAEAAARnUAAW','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(372,'AAAM+6AAEAAARnUAAX','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 46810990483081 People Finance Vous Remercie','OK','2019-12-14','46810990483081'),
(371,'AAAM+6AAEAAARnUAAY','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030'),
(373,'AAAM+6AAEAAARnUAAZ','Debiter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 37230990275937 People Finance Vous Remercie','OK','2019-12-14','37230990275937'),
(426,'AAAM+6AAEAAARoEAAA','Crediter','Deduction Mensuel du forfait SMS Banking MONTANT : 500 Numero de Compte : 16000990280030 People Finance Vous Remercie','KO','2019-12-14','16000990280030');

/*Table structure for table `modesouscription` */

DROP TABLE IF EXISTS `modesouscription`;

CREATE TABLE `modesouscription` (
  `id_modeSouscription` int(11) NOT NULL AUTO_INCREMENT,
  `libelleMS` varchar(60) NOT NULL,
  `tauxMS` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modeSouscription`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `modesouscription` */

/*Table structure for table `souscription` */

DROP TABLE IF EXISTS `souscription`;

CREATE TABLE `souscription` (
  `souscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `reffSous` varchar(60) NOT NULL,
  `libelleSous` varchar(60) NOT NULL,
  `montantSous` float DEFAULT NULL,
  `dateSouscription` date DEFAULT NULL,
  `dateFinSouscription` date DEFAULT NULL,
  `customer_reff` varchar(60) NOT NULL,
  `taux_soucrip` float DEFAULT NULL,
  `modeSous_reff` int(11) NOT NULL,
  PRIMARY KEY (`reffSous`),
  UNIQUE KEY `souscription_id` (`souscription_id`),
  KEY `fk_customer_reff` (`customer_reff`),
  KEY `fk_modeSous_reff` (`modeSous_reff`),
  CONSTRAINT `fk_customer_reff` FOREIGN KEY (`customer_reff`) REFERENCES `customer` (`matriculeClient`),
  CONSTRAINT `fk_modeSous_reff` FOREIGN KEY (`modeSous_reff`) REFERENCES `modesouscription` (`id_modeSouscription`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `souscription` */

/*Table structure for table `tmp_customer` */

DROP TABLE IF EXISTS `tmp_customer`;

CREATE TABLE `tmp_customer` (
  `matricule` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `tel1` varchar(60) DEFAULT NULL,
  `tel2` varchar(60) DEFAULT NULL,
  `tel3` varchar(60) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `racine` varchar(30) DEFAULT NULL,
  `etatClient` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmp_customer` */

/*Table structure for table `user_account` */

DROP TABLE IF EXISTS `user_account`;

CREATE TABLE `user_account` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_account` */

/* Trigger structure for table `customer_receive_message` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `set_message_status` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `set_message_status` AFTER INSERT ON `customer_receive_message` FOR EACH ROW 
begin
	update message set statutMessage = 'OK' where reffMessage = NEW.reff_message;
end */$$


DELIMITER ;

/* Procedure structure for procedure `migrateCustomer` */

/*!50003 DROP PROCEDURE IF EXISTS  `migrateCustomer` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `migrateCustomer`()
Begin
	INSERT INTO customer(matriculeClient, nom, tel1, tel2,tel3, Racine) select tmp_customer.matricule, tmp_customer.nom,tmp_customer.tel1, tmp_customer.tel2, tmp_customer.tel3,tmp_customer.racine FROM tmp_customer;
	DELETE FROM tmp_customer;
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
