/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50548
Source Host           : localhost:3309
Source Database       : yiidc

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-06-24 17:00:17
*/

SET FOREIGN_KEY_CHECKS=0;
SET NAMES 'utf8' COLLATE 'utf8_general_ci';

-- ----------------------------
-- Table structure for accident
-- ----------------------------
DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATETIME_SERV` datetime NOT NULL,
  `DATETIME_AE` datetime DEFAULT NULL,
  `AETYPE` varchar(2) DEFAULT '',
  `AEPLACE` varchar(2) NOT NULL,
  `TYPEIN_AE` varchar(1) NOT NULL,
  `TRAFFIC` varchar(1) DEFAULT '',
  `VEHICLE` varchar(2) DEFAULT '',
  `ALCOHOL` varchar(1) NOT NULL,
  `NACROTIC_DRUG` varchar(1) NOT NULL,
  `BELT` varchar(1) DEFAULT '',
  `HELMET` varchar(1) DEFAULT '',
  `AIRWAY` varchar(1) NOT NULL,
  `STOPBLEED` varchar(1) NOT NULL,
  `SPLINT` varchar(1) NOT NULL,
  `FLUID` varchar(1) NOT NULL,
  `URGENCY` varchar(1) NOT NULL,
  `COMA_EYE` varchar(1) DEFAULT '',
  `COMA_SPEAK` varchar(1) DEFAULT '',
  `COMA_MOVEMENT` varchar(1) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DATETIME_SERV`),
  KEY `idx3` (`DATETIME_AE`),
  KEY `idx4` (`HOSPCODE`),
  KEY `idx5` (`AETYPE`),
  KEY `idx6` (`AEPLACE`),
  KEY `idx7` (`TYPEIN_AE`),
  KEY `idx8` (`TRAFFIC`),
  KEY `idx9` (`VEHICLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident
-- ----------------------------

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `ADDRESSTYPE` varchar(1) NOT NULL,
  `HOUSE_ID` varchar(11) DEFAULT NULL,
  `HOUSETYPE` varchar(1) NOT NULL,
  `ROOMNO` varchar(10) DEFAULT NULL,
  `CONDO` varchar(75) DEFAULT NULL,
  `HOUSENO` varchar(75) DEFAULT NULL,
  `SOISUB` varchar(255) DEFAULT NULL,
  `SOIMAIN` varchar(255) DEFAULT NULL,
  `ROAD` varchar(255) DEFAULT NULL,
  `VILLANAME` varchar(255) DEFAULT NULL,
  `VILLAGE` varchar(2) NOT NULL,
  `TAMBON` varchar(2) NOT NULL,
  `AMPUR` varchar(2) NOT NULL,
  `CHANGWAT` varchar(2) NOT NULL,
  `TELEPHONE` varchar(15) DEFAULT NULL,
  `MOBILE` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`ADDRESSTYPE`),
  KEY `idx1` (`CHANGWAT`),
  KEY `idx2` (`CHANGWAT`,`AMPUR`),
  KEY `idx3` (`CHANGWAT`,`AMPUR`,`TAMBON`),
  KEY `idx4` (`CHANGWAT`,`AMPUR`,`TAMBON`,`VILLAGE`),
  KEY `idx5` (`HOSPCODE`,`PID`),
  KEY `idx6` (`HOSPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for admission
-- ----------------------------
DROP TABLE IF EXISTS `admission`;
CREATE TABLE `admission` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `AN` varchar(9) NOT NULL,
  `DATETIME_ADMIT` datetime NOT NULL,
  `WARDADMIT` varchar(5) NOT NULL,
  `INSTYPE` varchar(4) NOT NULL,
  `TYPEIN` varchar(1) NOT NULL,
  `REFERINHOSP` varchar(5) DEFAULT NULL,
  `CAUSEIN` varchar(1) DEFAULT NULL,
  `ADMITWEIGHT` decimal(5,1) DEFAULT NULL,
  `ADMITHEIGHT` int(3) DEFAULT NULL,
  `DATETIME_DISCH` datetime NOT NULL,
  `WARDDISCH` varchar(5) NOT NULL,
  `DISCHSTATUS` varchar(1) NOT NULL,
  `DISCHTYPE` varchar(1) NOT NULL,
  `REFEROUTHOSP` varchar(5) DEFAULT NULL,
  `CAUSEOUT` varchar(1) DEFAULT NULL,
  `COST` decimal(11,2) DEFAULT NULL,
  `PRICE` decimal(11,2) NOT NULL,
  `PAYPRICE` decimal(11,2) NOT NULL,
  `ACTUALPAY` decimal(11,2) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`AN`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DATETIME_ADMIT`),
  KEY `idx3` (`HOSPCODE`,`PROVIDER`),
  KEY `idx4` (`HOSPCODE`),
  KEY `idx5` (`INSTYPE`),
  KEY `idx6` (`TYPEIN`),
  KEY `idx7` (`REFERINHOSP`),
  KEY `idx8` (`DATETIME_DISCH`),
  KEY `idx9` (`DISCHSTATUS`),
  KEY `idx10` (`DISCHTYPE`),
  KEY `idx11` (`REFEROUTHOSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admission
-- ----------------------------

-- ----------------------------
-- Table structure for anc
-- ----------------------------
DROP TABLE IF EXISTS `anc`;
CREATE TABLE `anc` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `GRAVIDA` varchar(2) NOT NULL,
  `ANCNO` varchar(1) NOT NULL,
  `GA` varchar(2) NOT NULL,
  `ANCRESULT` varchar(1) NOT NULL,
  `ANCPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`GRAVIDA`),
  KEY `idx3` (`ANCNO`),
  KEY `idx4` (`GA`),
  KEY `idx5` (`ANCRESULT`),
  KEY `idx6` (`ANCPLACE`),
  KEY `idx7` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anc
-- ----------------------------

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `AN` varchar(9) DEFAULT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `CLINIC` varchar(5) NOT NULL,
  `APDATE` date NOT NULL,
  `APTYPE` varchar(3) NOT NULL,
  `APDIAG` varchar(6) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`APTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `INSTYPE_OLD` varchar(2) DEFAULT NULL,
  `INSTYPE_NEW` varchar(4) NOT NULL,
  `INSID` varchar(18) DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `EXPIREDATE` date DEFAULT NULL,
  `MAIN` varchar(5) DEFAULT NULL,
  `SUB` varchar(5) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`INSTYPE_NEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for care_refer
-- ----------------------------
DROP TABLE IF EXISTS `care_refer`;
CREATE TABLE `care_refer` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `CARETYPE` varchar(1) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`,`CARETYPE`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`CARETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of care_refer
-- ----------------------------

-- ----------------------------
-- Table structure for charge_ipd
-- ----------------------------
DROP TABLE IF EXISTS `charge_ipd`;
CREATE TABLE `charge_ipd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `AN` varchar(9) NOT NULL,
  `DATETIME_ADMIT` datetime NOT NULL,
  `WARDSTAY` varchar(5) NOT NULL,
  `CHARGEITEM` varchar(2) NOT NULL,
  `CHARGELIST` varchar(6) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `INSTYPE` varchar(4) NOT NULL,
  `COST` decimal(11,2) DEFAULT NULL,
  `PRICE` decimal(11,2) NOT NULL,
  `PAYPRICE` decimal(11,2) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`AN`,`CHARGEITEM`,`CHARGELIST`,`INSTYPE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`AN`),
  KEY `idx3` (`DATETIME_ADMIT`),
  KEY `idx4` (`WARDSTAY`),
  KEY `idx5` (`CHARGEITEM`),
  KEY `idx6` (`CHARGELIST`),
  KEY `idx7` (`INSTYPE`),
  KEY `idx8` (`COST`),
  KEY `idx9` (`PRICE`),
  KEY `idx10` (`HOSPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charge_ipd
-- ----------------------------

-- ----------------------------
-- Table structure for charge_opd
-- ----------------------------
DROP TABLE IF EXISTS `charge_opd`;
CREATE TABLE `charge_opd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `CLINIC` varchar(5) NOT NULL,
  `CHARGEITEM` varchar(2) NOT NULL,
  `CHARGELIST` varchar(6) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `INSTYPE` varchar(4) NOT NULL,
  `COST` decimal(11,2) DEFAULT NULL,
  `PRICE` decimal(11,2) NOT NULL,
  `PAYPRICE` decimal(11,2) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`CHARGEITEM`,`CHARGELIST`,`INSTYPE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DATE_SERV`),
  KEY `idx3` (`CHARGEITEM`),
  KEY `idx4` (`CHARGELIST`),
  KEY `idx5` (`INSTYPE`),
  KEY `idx6` (`COST`),
  KEY `idx7` (`PRICE`),
  KEY `idx8` (`HOSPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charge_opd
-- ----------------------------

-- ----------------------------
-- Table structure for chronic
-- ----------------------------
DROP TABLE IF EXISTS `chronic`;
CREATE TABLE `chronic` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `DATE_DIAG` date NOT NULL COMMENT 'วันเดือนปีที่ตรวจพบครั้งแรก',
  `CHRONIC` varchar(6) NOT NULL,
  `HOSP_DX` varchar(5) NOT NULL COMMENT 'รหัสสถานพยาบาลที่วินิจฉัยครั้งแรก',
  `HOSP_RX` varchar(5) DEFAULT NULL COMMENT 'รหัสสถานพยาบาลที่ไปรับบริการ',
  `DATE_DISCH` date NOT NULL,
  `TYPEDISCH` varchar(2) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`CHRONIC`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`CHRONIC`),
  KEY `idx3` (`DATE_DIAG`),
  KEY `idx4` (`HOSP_DX`),
  KEY `idx5` (`HOSP_RX`),
  KEY `idx6` (`DATE_DISCH`),
  KEY `idx7` (`TYPEDISCH`),
  KEY `idx8` (`HOSPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chronic
-- ----------------------------

-- ----------------------------
-- Table structure for chronicfu
-- ----------------------------
DROP TABLE IF EXISTS `chronicfu`;
CREATE TABLE `chronicfu` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `WEIGHT` mediumint(9) NOT NULL,
  `HEIGHT` smallint(6) NOT NULL,
  `WAIST_CM` smallint(6) NOT NULL,
  `SBP` smallint(6) NOT NULL,
  `DBP` smallint(6) NOT NULL,
  `FOOT` char(1) NOT NULL,
  `RETINA` char(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`WEIGHT`),
  KEY `idx5` (`HEIGHT`),
  KEY `idx6` (`WAIST_CM`),
  KEY `idx7` (`SBP`),
  KEY `idx8` (`DBP`),
  KEY `idx9` (`FOOT`),
  KEY `idx10` (`RETINA`),
  KEY `idx11` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chronicfu
-- ----------------------------

-- ----------------------------
-- Table structure for clinical_refer
-- ----------------------------
DROP TABLE IF EXISTS `clinical_refer`;
CREATE TABLE `clinical_refer` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `DATETIME_ASSESS` datetime NOT NULL,
  `CLINICALCODE` varchar(6) NOT NULL,
  `CLINICALNAME` varchar(255) DEFAULT NULL,
  `CLINICALVAULE` int(6) DEFAULT NULL,
  `CLINICALRESULT` varchar(255) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`,`DATETIME_ASSESS`,`CLINICALCODE`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`CLINICALCODE`),
  KEY `idx5` (`CLINICALCODE`,`CLINICALVAULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clinical_refer
-- ----------------------------

-- ----------------------------
-- Table structure for community_activity
-- ----------------------------
DROP TABLE IF EXISTS `community_activity`;
CREATE TABLE `community_activity` (
  `HOSPCODE` varchar(5) NOT NULL,
  `VID` varchar(8) NOT NULL,
  `DATE_START` date NOT NULL,
  `DATE_FINISH` date DEFAULT NULL,
  `COMACTIVITY` varchar(7) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`VID`,`DATE_START`,`COMACTIVITY`),
  KEY `idx1` (`HOSPCODE`,`VID`),
  KEY `idx2` (`DATE_START`),
  KEY `idx3` (`DATE_FINISH`),
  KEY `idx4` (`COMACTIVITY`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_activity
-- ----------------------------

-- ----------------------------
-- Table structure for community_service
-- ----------------------------
DROP TABLE IF EXISTS `community_service`;
CREATE TABLE `community_service` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `COMSERVICE` varchar(7) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`COMSERVICE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`COMSERVICE`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_service
-- ----------------------------

-- ----------------------------
-- Table structure for death
-- ----------------------------
DROP TABLE IF EXISTS `death`;
CREATE TABLE `death` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `HOSPDEATH` varchar(5) DEFAULT NULL,
  `AN` varchar(9) DEFAULT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DDEATH` date NOT NULL,
  `CDEATH_A` varchar(6) NOT NULL,
  `CDEATH_B` varchar(6) DEFAULT NULL,
  `CDEATH_C` varchar(6) DEFAULT NULL,
  `CDEATH_D` varchar(6) DEFAULT NULL,
  `ODISEASE` varchar(6) DEFAULT NULL,
  `CDEATH` varchar(6) NOT NULL,
  `PREGDEATH` varchar(1) DEFAULT NULL,
  `PDEATH` varchar(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of death
-- ----------------------------

-- ----------------------------
-- Table structure for dental
-- ----------------------------
DROP TABLE IF EXISTS `dental`;
CREATE TABLE `dental` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `DENTTYPE` varchar(1) NOT NULL,
  `SERVPLACE` varchar(1) NOT NULL,
  `PTEETH` int(2) DEFAULT NULL,
  `PCARIES` int(2) DEFAULT NULL,
  `PFILLING` int(2) DEFAULT NULL,
  `PEXTRACT` int(2) DEFAULT NULL,
  `DTEETH` int(2) DEFAULT NULL,
  `DCARIES` int(2) DEFAULT NULL,
  `DFILLING` int(2) DEFAULT NULL,
  `DEXTRACT` int(2) DEFAULT NULL,
  `NEED_FLUORIDE` char(1) DEFAULT NULL,
  `NEED_SCALING` char(1) DEFAULT NULL,
  `NEED_SEALANT` int(2) DEFAULT NULL,
  `NEED_PFILLING` int(2) DEFAULT NULL,
  `NEED_DFILLING` int(2) DEFAULT NULL,
  `NEED_PEXTRACT` int(2) DEFAULT NULL,
  `NEED_DEXTRACT` int(2) DEFAULT NULL,
  `NPROSTHESIS` char(1) DEFAULT NULL,
  `PERMANENT_PERMANENT` smallint(6) DEFAULT NULL,
  `PERMANENT_PROSTHESIS` smallint(6) DEFAULT NULL,
  `PROSTHESIS_PROSTHESIS` smallint(6) DEFAULT NULL,
  `GUM` varchar(6) DEFAULT NULL,
  `SCHOOLTYPE` char(1) DEFAULT NULL,
  `CLASS` char(1) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`DENTTYPE`),
  KEY `idx5` (`CLASS`),
  KEY `idx7` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dental
-- ----------------------------

-- ----------------------------
-- Table structure for diagnosis_ipd
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis_ipd`;
CREATE TABLE `diagnosis_ipd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `AN` varchar(9) NOT NULL,
  `DATETIME_ADMIT` datetime NOT NULL,
  `WARDDIAG` varchar(5) NOT NULL,
  `DIAGTYPE` char(1) NOT NULL,
  `DIAGCODE` varchar(6) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`AN`,`DIAGCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATETIME_ADMIT`),
  KEY `idx4` (`DIAGTYPE`),
  KEY `idx5` (`DIAGCODE`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diagnosis_ipd
-- ----------------------------

-- ----------------------------
-- Table structure for diagnosis_opd
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis_opd`;
CREATE TABLE `diagnosis_opd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `DIAGTYPE` varchar(1) NOT NULL,
  `DIAGCODE` varchar(6) NOT NULL,
  `CLINIC` varchar(5) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`DIAGCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`DIAGTYPE`),
  KEY `idx5` (`DIAGCODE`),
  KEY `idx6` (`CLINIC`),
  KEY `idx7` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diagnosis_opd
-- ----------------------------

-- ----------------------------
-- Table structure for disability
-- ----------------------------
DROP TABLE IF EXISTS `disability`;
CREATE TABLE `disability` (
  `HOSPCODE` varchar(5) NOT NULL,
  `DISABID` varchar(13) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `DISABTYPE` char(1) NOT NULL,
  `DISABCAUSE` char(1) DEFAULT NULL,
  `DIAGCODE` varchar(6) DEFAULT NULL,
  `DATE_DETECT` date NOT NULL,
  `DATE_DISAB` date DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DISABTYPE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`,`DISABID`),
  KEY `idx3` (`HOSPCODE`),
  KEY `idx4` (`DISABTYPE`),
  KEY `idx5` (`DISABCAUSE`),
  KEY `idx6` (`DIAGCODE`),
  KEY `idx7` (`DATE_DETECT`),
  KEY `idx8` (`DATE_DISAB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disability
-- ----------------------------

-- ----------------------------
-- Table structure for drugallergy
-- ----------------------------
DROP TABLE IF EXISTS `drugallergy`;
CREATE TABLE `drugallergy` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `DATERECORD` date NOT NULL,
  `DRUGALLERGY` varchar(24) NOT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  `TYPEDX` char(1) DEFAULT NULL,
  `ALEVEL` char(1) DEFAULT NULL,
  `SYMPTOM` varchar(2) DEFAULT NULL,
  `INFORMANT` char(1) NOT NULL,
  `INFORMHOSP` varchar(5) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DRUGALLERGY`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx3` (`HOSPCODE`),
  KEY `idx5` (`DRUGALLERGY`),
  KEY `idx6` (`TYPEDX`),
  KEY `idx7` (`ALEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugallergy
-- ----------------------------

-- ----------------------------
-- Table structure for drug_ipd
-- ----------------------------
DROP TABLE IF EXISTS `drug_ipd`;
CREATE TABLE `drug_ipd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `AN` varchar(9) NOT NULL,
  `DATETIME_ADMIT` datetime NOT NULL,
  `WARDSTAY` varchar(5) NOT NULL,
  `TYPEDRUG` char(1) NOT NULL,
  `DIDSTD` varchar(24) NOT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  `DATESTART` date DEFAULT NULL,
  `DATEFINISH` date DEFAULT NULL,
  `AMOUNT` int(12) DEFAULT NULL,
  `UNIT` varchar(3) DEFAULT NULL,
  `UNIT_PACKING` varchar(20) DEFAULT NULL,
  `DRUGPRICE` decimal(11,2) DEFAULT NULL,
  `DRUGCOST` decimal(11,2) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`AN`,`TYPEDRUG`,`DIDSTD`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATETIME_ADMIT`),
  KEY `idx4` (`WARDSTAY`),
  KEY `idx5` (`TYPEDRUG`),
  KEY `idx6` (`DIDSTD`),
  KEY `idx7` (`DATESTART`),
  KEY `idx8` (`DATEFINISH`),
  KEY `idx9` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drug_ipd
-- ----------------------------

-- ----------------------------
-- Table structure for drug_opd
-- ----------------------------
DROP TABLE IF EXISTS `drug_opd`;
CREATE TABLE `drug_opd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `CLINIC` varchar(5) NOT NULL,
  `DIDSTD` varchar(24) NOT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  `AMOUNT` int(12) DEFAULT NULL,
  `UNIT` varchar(3) DEFAULT NULL,
  `UNIT_PACKING` varchar(20) DEFAULT NULL,
  `DRUGPRICE` decimal(11,2) DEFAULT NULL,
  `DRUGCOST` decimal(11,2) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`DIDSTD`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DATE_SERV`),
  KEY `idx3` (`HOSPCODE`),
  KEY `idx4` (`DIDSTD`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drug_opd
-- ----------------------------

-- ----------------------------
-- Table structure for drug_refer
-- ----------------------------
DROP TABLE IF EXISTS `drug_refer`;
CREATE TABLE `drug_refer` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `DATETIME_DSTART` datetime NOT NULL,
  `DATETIME_DFINISH` datetime DEFAULT NULL,
  `DIDSTD` varchar(24) NOT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  `DDESCRIPTION` varchar(255) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`,`DATETIME_DSTART`,`DIDSTD`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`DATETIME_DSTART`),
  KEY `idx5` (`DIDSTD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drug_refer
-- ----------------------------

-- ----------------------------
-- Table structure for epi
-- ----------------------------
DROP TABLE IF EXISTS `epi`;
CREATE TABLE `epi` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `VACCINETYPE` varchar(3) NOT NULL,
  `VACCINEPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`,`VACCINETYPE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`VACCINETYPE`),
  KEY `idx4` (`VACCINEPLACE`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`),
  KEY `idx6` (`DATE_SERV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of epi
-- ----------------------------

-- ----------------------------
-- Table structure for fp
-- ----------------------------
DROP TABLE IF EXISTS `fp`;
CREATE TABLE `fp` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `FPTYPE` char(1) NOT NULL,
  `FPPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`,`FPTYPE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`FPTYPE`),
  KEY `idx5` (`FPPLACE`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fp
-- ----------------------------

-- ----------------------------
-- Table structure for functional
-- ----------------------------
DROP TABLE IF EXISTS `functional`;
CREATE TABLE `functional` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `FUNCTIONAL_TEST` varchar(2) NOT NULL,
  `TESTRESULT` varchar(3) NOT NULL,
  `DEPENDENT` char(1) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`FUNCTIONAL_TEST`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`FUNCTIONAL_TEST`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of functional
-- ----------------------------

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `HOSPCODE` varchar(5) NOT NULL,
  `HID` varchar(14) NOT NULL,
  `HOUSE_ID` varchar(11) DEFAULT NULL,
  `HOUSETYPE` varchar(1) NOT NULL,
  `ROOMNO` varchar(10) DEFAULT NULL,
  `CONDO` varchar(75) DEFAULT NULL,
  `HOUSE` varchar(75) DEFAULT NULL,
  `SOISUB` varchar(255) DEFAULT NULL,
  `SOIMAIN` varchar(255) DEFAULT NULL,
  `ROAD` varchar(255) DEFAULT NULL,
  `VILLANAME` varchar(255) DEFAULT NULL,
  `VILLAGE` varchar(2) DEFAULT NULL,
  `TAMBON` varchar(2) DEFAULT NULL,
  `AMPUR` varchar(2) DEFAULT NULL,
  `CHANGWAT` varchar(2) DEFAULT NULL,
  `TELEPHONE` varchar(15) DEFAULT NULL,
  `LATITUDE` decimal(10,6) DEFAULT NULL,
  `LONGITUDE` decimal(10,6) DEFAULT NULL,
  `NFAMILY` varchar(2) DEFAULT NULL,
  `LOCATYPE` varchar(1) DEFAULT NULL,
  `VHVID` varchar(15) DEFAULT NULL,
  `HEADID` varchar(15) DEFAULT NULL,
  `TOILET` varchar(1) DEFAULT NULL,
  `WATER` varchar(1) DEFAULT NULL,
  `WATERTYPE` varchar(1) DEFAULT NULL,
  `GARBAGE` varchar(1) DEFAULT NULL,
  `HOUSING` varchar(1) DEFAULT NULL,
  `DURABILITY` varchar(1) DEFAULT NULL,
  `CLEANLINESS` varchar(1) DEFAULT NULL,
  `VENTILATION` varchar(1) DEFAULT NULL,
  `LIGHT` varchar(1) DEFAULT NULL,
  `WATERTM` varchar(1) DEFAULT NULL,
  `MFOOD` varchar(1) DEFAULT NULL,
  `BCONTROL` varchar(1) DEFAULT NULL,
  `ACONTROL` varchar(1) DEFAULT NULL,
  `CHEMICAL` varchar(1) DEFAULT NULL,
  `OUTDATE` date DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`HID`),
  KEY `idx1` (`HOSPCODE`,`HID`),
  KEY `idx2` (`CHANGWAT`),
  KEY `idx3` (`CHANGWAT`,`AMPUR`),
  KEY `idx4` (`CHANGWAT`,`AMPUR`,`TAMBON`),
  KEY `idx5` (`CHANGWAT`,`AMPUR`,`TAMBON`,`VILLAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home
-- ----------------------------

-- ----------------------------
-- Table structure for icf
-- ----------------------------
DROP TABLE IF EXISTS `icf`;
CREATE TABLE `icf` (
  `HOSPCODE` varchar(5) NOT NULL,
  `DISABID` varchar(13) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `ICF` varchar(6) NOT NULL,
  `QUALIFIER` char(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`ICF`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DISABID`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`HOSPCODE`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of icf
-- ----------------------------

-- ----------------------------
-- Table structure for investigation_refer
-- ----------------------------
DROP TABLE IF EXISTS `investigation_refer`;
CREATE TABLE `investigation_refer` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `DATETIME_INVEST` datetime NOT NULL,
  `INVESTCODE` varchar(6) NOT NULL,
  `INVESTNAME` varchar(255) DEFAULT NULL,
  `DATETIME_REPORT` datetime DEFAULT NULL,
  `INVESTVALUE` double(6,2) DEFAULT NULL,
  `INVESTRESULT` varchar(255) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`,`DATETIME_INVEST`,`INVESTCODE`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`INVESTCODE`),
  KEY `idx5` (`DATETIME_INVEST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of investigation_refer
-- ----------------------------

-- ----------------------------
-- Table structure for labfu
-- ----------------------------
DROP TABLE IF EXISTS `labfu`;
CREATE TABLE `labfu` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `LABTEST` varchar(7) NOT NULL,
  `LABRESULT` decimal(6,2) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`LABTEST`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`LABTEST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of labfu
-- ----------------------------

-- ----------------------------
-- Table structure for labor
-- ----------------------------
DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `GRAVIDA` varchar(2) NOT NULL,
  `LMP` date NOT NULL,
  `EDC` date DEFAULT NULL,
  `BDATE` date NOT NULL,
  `BRESULT` varchar(6) NOT NULL,
  `BPLACE` char(1) NOT NULL,
  `BHOSP` varchar(5) DEFAULT NULL,
  `BTYPE` char(1) NOT NULL,
  `BDOCTOR` char(1) NOT NULL,
  `LBORN` int(1) NOT NULL,
  `SBORN` int(1) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`GRAVIDA`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`GRAVIDA`),
  KEY `idx4` (`BDATE`),
  KEY `idx5` (`BRESULT`),
  KEY `idx6` (`BHOSP`),
  KEY `idx7` (`BDOCTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of labor
-- ----------------------------

-- ----------------------------
-- Table structure for ncdscreen
-- ----------------------------
DROP TABLE IF EXISTS `ncdscreen`;
CREATE TABLE `ncdscreen` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `SERVPLACE` varchar(1) NOT NULL,
  `SMOKE` varchar(1) DEFAULT NULL,
  `ALCOHOL` varchar(1) DEFAULT NULL,
  `DMFAMILY` varchar(1) DEFAULT NULL,
  `HTFAMILY` varchar(1) DEFAULT NULL,
  `WEIGHT` decimal(5,1) NOT NULL,
  `HEIGHT` int(3) NOT NULL,
  `WAIST_CM` int(3) NOT NULL,
  `SBP_1` int(3) NOT NULL,
  `DBP_1` int(3) NOT NULL,
  `SBP_2` int(3) DEFAULT NULL,
  `DBP_2` int(3) DEFAULT NULL,
  `BSLEVEL` int(6) DEFAULT NULL,
  `BSTEST` char(1) DEFAULT NULL,
  `SCREENPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`SBP_1`,`DBP_1`),
  KEY `idx5` (`SBP_2`,`DBP_2`),
  KEY `idx6` (`BSLEVEL`),
  KEY `idx7` (`BSTEST`),
  KEY `idx8` (`SCREENPLACE`),
  KEY `idx9` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ncdscreen
-- ----------------------------

-- ----------------------------
-- Table structure for newborn
-- ----------------------------
DROP TABLE IF EXISTS `newborn`;
CREATE TABLE `newborn` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `MPID` varchar(15) NOT NULL,
  `GRAVIDA` varchar(2) DEFAULT NULL,
  `GA` varchar(2) DEFAULT NULL,
  `BDATE` date NOT NULL,
  `BTIME` varchar(6) DEFAULT NULL,
  `BPLACE` char(1) NOT NULL,
  `BHOSP` varchar(5) DEFAULT NULL,
  `BIRTHNO` char(1) NOT NULL,
  `BTYPE` char(1) NOT NULL,
  `BDOCTOR` char(1) NOT NULL,
  `BWEIGHT` int(4) DEFAULT NULL,
  `ASPHYXIA` char(1) NOT NULL,
  `VITK` char(1) NOT NULL,
  `TSH` char(1) NOT NULL,
  `TSHRESULT` decimal(5,1) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`,`MPID`),
  KEY `idx3` (`HOSPCODE`),
  KEY `idx4` (`MPID`),
  KEY `idx5` (`BDATE`),
  KEY `idx6` (`BHOSP`),
  KEY `idx7` (`BWEIGHT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newborn
-- ----------------------------

-- ----------------------------
-- Table structure for newborncare
-- ----------------------------
DROP TABLE IF EXISTS `newborncare`;
CREATE TABLE `newborncare` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `BDATE` date NOT NULL,
  `BCARE` date NOT NULL,
  `BCPLACE` varchar(5) DEFAULT NULL,
  `BCARERESULT` char(1) NOT NULL,
  `FOOD` char(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`BCARE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`BDATE`),
  KEY `idx4` (`BCARE`),
  KEY `idx5` (`BCPLACE`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newborncare
-- ----------------------------

-- ----------------------------
-- Table structure for nutrition
-- ----------------------------
DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE `nutrition` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `NUTRITIONPLACE` varchar(5) DEFAULT NULL,
  `WEIGHT` decimal(5,1) NOT NULL,
  `HEIGHT` int(3) NOT NULL,
  `HEADCIRCUM` int(3) DEFAULT NULL,
  `CHILDDEVELOP` char(1) DEFAULT NULL,
  `FOOD` char(1) DEFAULT NULL,
  `BOTTLE` char(1) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`NUTRITIONPLACE`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nutrition
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `HOSPCODE` varchar(5) NOT NULL,
  `CID` varchar(13) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `HID` varchar(14) DEFAULT NULL,
  `PRENAME` varchar(3) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `HN` varchar(15) DEFAULT NULL,
  `SEX` varchar(1) NOT NULL,
  `BIRTH` date NOT NULL,
  `MSTATUS` char(1) DEFAULT NULL,
  `OCCUPATION_OLD` varchar(3) DEFAULT NULL,
  `OCCUPATION_NEW` varchar(4) DEFAULT NULL,
  `RACE` varchar(3) DEFAULT NULL,
  `NATION` varchar(3) NOT NULL,
  `RELIGION` varchar(2) DEFAULT NULL,
  `EDUCATION` varchar(2) DEFAULT NULL,
  `FSTATUS` varchar(1) DEFAULT NULL,
  `FATHER` varchar(13) DEFAULT NULL,
  `MOTHER` varchar(13) DEFAULT NULL,
  `COUPLE` varchar(13) DEFAULT NULL,
  `VSTATUS` varchar(1) DEFAULT NULL,
  `MOVEIN` date DEFAULT NULL,
  `DISCHARGE` varchar(1) DEFAULT NULL,
  `DDISCHARGE` date DEFAULT NULL,
  `ABOGROUP` varchar(1) DEFAULT NULL,
  `RHGROUP` varchar(1) DEFAULT NULL,
  `LABOR` varchar(2) DEFAULT NULL,
  `PASSPORT` varchar(8) DEFAULT NULL,
  `TYPEAREA` varchar(1) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`),
  KEY `idx_hoscode` (`HOSPCODE`,`PID`,`TYPEAREA`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`CID`),
  KEY `idx3` (`HID`),
  KEY `idx4` (`TYPEAREA`),
  KEY `idx5` (`TYPEAREA`),
  KEY `idx6` (`HOSPCODE`,`PID`),
  KEY `idx7` (`BIRTH`),
  KEY `idx8` (`DISCHARGE`),
  KEY `idx9` (`LABOR`),
  KEY `idx10` (`HOSPCODE`,`HID`),
  KEY `cid` (`CID`),
  KEY `cid2` (`PID`),
  KEY `cid_search` (`HOSPCODE`,`CID`,`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for postnatal
-- ----------------------------
DROP TABLE IF EXISTS `postnatal`;
CREATE TABLE `postnatal` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `GRAVIDA` varchar(2) NOT NULL,
  `BDATE` date NOT NULL,
  `PPCARE` date NOT NULL,
  `PPPLACE` varchar(5) DEFAULT NULL,
  `PPRESULT` char(1) NOT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`GRAVIDA`,`PPCARE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`BDATE`),
  KEY `idx4` (`GRAVIDA`),
  KEY `idx5` (`PPCARE`),
  KEY `idx6` (`PPPLACE`),
  KEY `idx7` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postnatal
-- ----------------------------

-- ----------------------------
-- Table structure for prenatal
-- ----------------------------
DROP TABLE IF EXISTS `prenatal`;
CREATE TABLE `prenatal` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `GRAVIDA` varchar(2) NOT NULL,
  `LMP` date NOT NULL,
  `EDC` date DEFAULT NULL,
  `VDRL_RESULT` char(1) NOT NULL,
  `HB_RESULT` char(1) NOT NULL,
  `HIV_RESULT` char(1) NOT NULL,
  `DATE_HCT` date DEFAULT NULL,
  `HCT_RESULT` int(2) DEFAULT NULL,
  `THALASSEMIA` char(1) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`GRAVIDA`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`GRAVIDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prenatal
-- ----------------------------

-- ----------------------------
-- Table structure for procedure_ipd
-- ----------------------------
DROP TABLE IF EXISTS `procedure_ipd`;
CREATE TABLE `procedure_ipd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `AN` varchar(9) NOT NULL,
  `DATETIME_ADMIT` datetime NOT NULL,
  `WARDSTAY` varchar(5) NOT NULL,
  `PROCEDCODE` varchar(7) NOT NULL,
  `TIMESTART` datetime NOT NULL,
  `TIMEFINISH` datetime DEFAULT NULL,
  `SERVICEPRICE` decimal(11,2) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`AN`,`PROCEDCODE`,`TIMESTART`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATETIME_ADMIT`),
  KEY `idx4` (`PROCEDCODE`),
  KEY `idx5` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of procedure_ipd
-- ----------------------------

-- ----------------------------
-- Table structure for procedure_opd
-- ----------------------------
DROP TABLE IF EXISTS `procedure_opd`;
CREATE TABLE `procedure_opd` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `CLINIC` varchar(5) NOT NULL,
  `PROCEDCODE` varchar(7) NOT NULL,
  `SERVICEPRICE` decimal(11,2) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`PROCEDCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`PROCEDCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of procedure_opd
-- ----------------------------

-- ----------------------------
-- Table structure for procedure_refer
-- ----------------------------
DROP TABLE IF EXISTS `procedure_refer`;
CREATE TABLE `procedure_refer` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `TIMESTART` datetime NOT NULL,
  `TIMEFINISH` datetime DEFAULT NULL,
  `PROCEDURENAME` varchar(255) DEFAULT NULL,
  `PROCEDCODE` varchar(7) NOT NULL,
  `PDESCRIPTION` varchar(255) DEFAULT NULL,
  `PROCEDRESULT` varchar(255) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`,`TIMESTART`,`PROCEDCODE`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`TIMESTART`),
  KEY `idx5` (`PROCEDCODE`),
  KEY `idx6` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of procedure_refer
-- ----------------------------

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PROVIDER` varchar(15) NOT NULL,
  `REGISTERNO` varchar(15) DEFAULT NULL,
  `COUNCIL` varchar(2) DEFAULT NULL,
  `CID` varchar(13) NOT NULL,
  `PRENAME` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `BIRTH` date NOT NULL,
  `PROVIDERTYPE` varchar(2) NOT NULL,
  `STARTDATE` date NOT NULL,
  `OUTDATE` date DEFAULT NULL,
  `MOVEFROM` varchar(5) DEFAULT NULL,
  `MOVETO` varchar(5) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provider
-- ----------------------------

-- ----------------------------
-- Table structure for refer_history
-- ----------------------------
DROP TABLE IF EXISTS `refer_history`;
CREATE TABLE `refer_history` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `AN` varchar(9) DEFAULT NULL,
  `REFERID_ORIGIN` varchar(10) DEFAULT NULL,
  `HOSPCODE_ORIGIN` varchar(5) DEFAULT NULL,
  `DATETIME_SERV` datetime NOT NULL,
  `DATETIME_ADMIT` datetime DEFAULT NULL,
  `DATETIME_REFER` datetime NOT NULL,
  `CLINIC_REFER` varchar(5) DEFAULT NULL,
  `HOSP_DESTINATION` varchar(5) NOT NULL,
  `CHIEFCOMP` varchar(255) DEFAULT NULL,
  `PHYSICALEXAM` varchar(255) DEFAULT NULL,
  `DIAGFIRST` varchar(255) DEFAULT NULL,
  `DIAGLAST` varchar(255) NOT NULL,
  `PSTATUS` varchar(255) NOT NULL,
  `PTYPE` varchar(1) NOT NULL,
  `EMERGENCY` varchar(1) NOT NULL,
  `PTYPEDIS` varchar(2) DEFAULT NULL,
  `CAUSEOUT` varchar(1) NOT NULL,
  `REQUEST` varchar(255) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`HOSPCODE`,`PID`),
  KEY `idx5` (`HOSPCODE`,`PID`,`SEQ`),
  KEY `idx6` (`HOSPCODE`,`PID`,`AN`),
  KEY `idx7` (`REFERID_ORIGIN`,`HOSPCODE_ORIGIN`),
  KEY `idx8` (`DATETIME_SERV`),
  KEY `idx9` (`DATETIME_ADMIT`),
  KEY `idx10` (`DATETIME_REFER`),
  KEY `idx11` (`CAUSEOUT`),
  KEY `idx12` (`PTYPEDIS`),
  KEY `idx13` (`EMERGENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refer_history
-- ----------------------------

-- ----------------------------
-- Table structure for refer_result
-- ----------------------------
DROP TABLE IF EXISTS `refer_result`;
CREATE TABLE `refer_result` (
  `HOSPCODE` varchar(5) NOT NULL,
  `REFERID_SOURCE` varchar(10) NOT NULL,
  `REFERID_PROVINCE` varchar(10) DEFAULT NULL,
  `HOSP_SOURCE` varchar(5) NOT NULL,
  `REFER_RESULT` varchar(1) NOT NULL,
  `DATETIME_IN` datetime DEFAULT NULL,
  `PID_IN` varchar(15) DEFAULT NULL,
  `AN_IN` varchar(9) DEFAULT NULL,
  `REASON` varchar(255) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`REFERID_SOURCE`,`HOSP_SOURCE`),
  KEY `idx1` (`HOSPCODE`),
  KEY `idx2` (`HOSPCODE`,`REFERID_SOURCE`),
  KEY `idx3` (`REFERID_PROVINCE`),
  KEY `idx4` (`HOSP_SOURCE`),
  KEY `idx5` (`REFER_RESULT`),
  KEY `idx6` (`DATETIME_IN`),
  KEY `idx7` (`HOSPCODE`,`PID_IN`),
  KEY `idx8` (`HOSPCODE`,`AN_IN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refer_result
-- ----------------------------

-- ----------------------------
-- Table structure for rehabilitation
-- ----------------------------
DROP TABLE IF EXISTS `rehabilitation`;
CREATE TABLE `rehabilitation` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `AN` varchar(9) DEFAULT NULL,
  `DATE_ADMIT` datetime DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `DATE_START` date DEFAULT NULL,
  `DATE_FINISH` date DEFAULT NULL,
  `REHABCODE` varchar(7) NOT NULL,
  `AT_DEVICE` varchar(10) DEFAULT NULL,
  `AT_NO` int(2) DEFAULT NULL,
  `REHABPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`,`REHABCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_ADMIT`),
  KEY `idx10` (`DATE_SERV`),
  KEY `idx4` (`HOSPCODE`,`AN`),
  KEY `idx5` (`REHABCODE`),
  KEY `idx6` (`AT_DEVICE`),
  KEY `idx7` (`REHABPLACE`),
  KEY `idx8` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rehabilitation
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `HN` varchar(15) DEFAULT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `TIME_SERV` varchar(6) DEFAULT NULL,
  `LOCATION` varchar(1) DEFAULT NULL,
  `INTIME` varchar(1) DEFAULT NULL,
  `INSTYPE` varchar(4) NOT NULL,
  `INSID` varchar(18) DEFAULT NULL,
  `MAIN` varchar(5) DEFAULT NULL,
  `TYPEIN` varchar(1) NOT NULL,
  `REFERINHOSP` varchar(5) DEFAULT NULL,
  `CAUSEIN` varchar(1) DEFAULT NULL,
  `CHIEFCOMP` text,
  `SERVPLACE` varchar(1) NOT NULL,
  `BTEMP` double(4,1) DEFAULT NULL,
  `SBP` int(3) DEFAULT NULL,
  `DBP` int(3) DEFAULT NULL,
  `PR` int(3) DEFAULT NULL,
  `RR` int(3) DEFAULT NULL,
  `TYPEOUT` varchar(1) NOT NULL,
  `REFEROUTHOSP` varchar(5) DEFAULT NULL,
  `CAUSEOUT` varchar(1) DEFAULT NULL,
  `COST` decimal(11,2) DEFAULT NULL,
  `PRICE` decimal(11,2) NOT NULL,
  `PAYPRICE` double(11,0) NOT NULL,
  `ACTUALPAY` decimal(11,2) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`),
  KEY `date_serv_idx` (`DATE_SERV`),
  KEY `ref_idx` (`REFEROUTHOSP`),
  KEY `hcod_idx` (`HOSPCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`DATE_SERV`),
  KEY `idx3` (`INSTYPE`),
  KEY `idx4` (`REFEROUTHOSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for specialpp
-- ----------------------------
DROP TABLE IF EXISTS `specialpp`;
CREATE TABLE `specialpp` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) DEFAULT NULL,
  `DATE_SERV` date NOT NULL,
  `SERVPLACE` char(1) NOT NULL,
  `PPSPECIAL` varchar(6) NOT NULL,
  `PPSPLACE` varchar(5) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`DATE_SERV`,`PPSPECIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specialpp
-- ----------------------------

-- ----------------------------
-- Table structure for surveillance
-- ----------------------------
DROP TABLE IF EXISTS `surveillance`;
CREATE TABLE `surveillance` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `SEQ` varchar(16) NOT NULL,
  `DATE_SERV` date NOT NULL,
  `AN` varchar(9) DEFAULT NULL,
  `DATETIME_ADMIT` datetime DEFAULT NULL,
  `SYNDROME` varchar(4) DEFAULT NULL,
  `DIAGCODE` varchar(6) NOT NULL,
  `CODE506` varchar(2) NOT NULL,
  `DIAGCODELAST` varchar(6) DEFAULT NULL,
  `CODE506LAST` varchar(2) DEFAULT NULL,
  `ILLDATE` date NOT NULL,
  `ILLHOUSE` varchar(75) DEFAULT NULL,
  `ILLVILLAGE` varchar(2) NOT NULL,
  `ILLTAMBON` varchar(2) NOT NULL,
  `ILLAMPUR` varchar(2) NOT NULL,
  `ILLCHANGWAT` varchar(2) NOT NULL,
  `LATITUDE` decimal(10,6) DEFAULT NULL,
  `LONGITUDE` decimal(10,6) DEFAULT NULL,
  `PTSTATUS` char(1) NOT NULL,
  `DATE_DEATH` date DEFAULT NULL,
  `COMPLICATION` varchar(3) DEFAULT NULL,
  `ORGANISM` varchar(4) DEFAULT NULL,
  `PROVIDER` varchar(15) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SEQ`,`DIAGCODE`),
  KEY `idx1` (`HOSPCODE`,`PID`),
  KEY `idx2` (`HOSPCODE`),
  KEY `idx3` (`DATE_SERV`),
  KEY `idx4` (`DATETIME_ADMIT`),
  KEY `idx5` (`DIAGCODE`),
  KEY `idx6` (`CODE506`),
  KEY `idx7` (`DIAGCODELAST`),
  KEY `idx8` (`CODE506LAST`),
  KEY `idx9` (`ILLDATE`),
  KEY `idx10` (`HOSPCODE`,`PROVIDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of surveillance
-- ----------------------------

-- ----------------------------
-- Table structure for upload_files
-- ----------------------------
DROP TABLE IF EXISTS `upload_files`;
CREATE TABLE `upload_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `dupdate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_files
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `role` int(11) NOT NULL DEFAULT '10',
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `role` int(11) NOT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userrole
-- ----------------------------

-- ----------------------------
-- Table structure for village
-- ----------------------------
DROP TABLE IF EXISTS `village`;
CREATE TABLE `village` (
  `HOSPCODE` varchar(5) NOT NULL,
  `VID` varchar(8) NOT NULL,
  `NTRADITIONAL` int(4) DEFAULT NULL,
  `NMONK` int(4) DEFAULT NULL,
  `NRELIGIONLEADER` int(4) DEFAULT NULL,
  `NBROADCAST` int(2) DEFAULT NULL,
  `NRADIO` int(2) DEFAULT NULL,
  `NPCHC` int(2) DEFAULT NULL,
  `NCLINIC` int(3) DEFAULT NULL,
  `NDRUGSTORE` int(3) DEFAULT NULL,
  `NCHILDCENTER` int(3) DEFAULT NULL,
  `NPSCHOOL` int(2) DEFAULT NULL,
  `NSSCHOOL` int(2) DEFAULT NULL,
  `NTEMPLE` int(2) DEFAULT NULL,
  `NRELIGIOUSPLACE` int(2) DEFAULT NULL,
  `NMARKET` int(2) DEFAULT NULL,
  `NSHOP` int(3) DEFAULT NULL,
  `NFOODSHOP` int(3) DEFAULT NULL,
  `NSTALL` int(3) DEFAULT NULL,
  `NRAINTANK` int(3) DEFAULT NULL,
  `NCHICKENFARM` int(3) DEFAULT NULL,
  `NPIGFARM` int(3) DEFAULT NULL,
  `WASTEWATER` char(1) DEFAULT NULL,
  `GARBAGE` char(1) DEFAULT NULL,
  `NFACTORY` int(3) DEFAULT NULL,
  `LATITUDE` decimal(10,6) DEFAULT NULL,
  `LONGITUDE` decimal(10,6) DEFAULT NULL,
  `OUTDATE` date DEFAULT NULL,
  `NUMACTUALLY` int(2) DEFAULT NULL,
  `RISKTYPE` int(3) DEFAULT NULL,
  `NUMSTATELESS` int(3) DEFAULT NULL,
  `NEXERCISECLUB` int(3) DEFAULT NULL,
  `NOLDERLYCLUB` int(3) DEFAULT NULL,
  `NDISABLECLUB` int(3) DEFAULT NULL,
  `NNUMBERONECLUB` int(3) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`VID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of village
-- ----------------------------

-- ----------------------------
-- Table structure for women
-- ----------------------------
DROP TABLE IF EXISTS `women`;
CREATE TABLE `women` (
  `HOSPCODE` varchar(5) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `FPTYPE` varchar(1) NOT NULL,
  `NOFPCAUSE` char(1) DEFAULT NULL,
  `TOTALSON` int(2) DEFAULT NULL,
  `NUMBERSON` int(2) DEFAULT NULL,
  `ABORTION` int(2) DEFAULT NULL,
  `STILLBIRTH` int(2) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of women
-- ----------------------------
