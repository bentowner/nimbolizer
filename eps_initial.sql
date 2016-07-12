-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2016 at 09:36 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eps`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR` (`x` TEXT, `delim` VARCHAR(12), `pos` INT) RETURNS MEDIUMTEXT CHARSET utf8 NO SQL
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_book`
--

CREATE TABLE `epspe_book` (
  `BKRef` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `BkPreE` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKdate` date DEFAULT NULL,
  `BKrdate` date DEFAULT NULL,
  `BKPcs` int(11) DEFAULT NULL,
  `BKWgtE` decimal(19,4) DEFAULT NULL,
  `BKWgtM` decimal(19,4) DEFAULT NULL,
  `BKCubE` decimal(19,4) DEFAULT NULL,
  `BkCubM` decimal(19,4) DEFAULT NULL,
  `BkCust` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkCinf` blob,
  `BkCTel` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkCFax` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKCEmail` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkCont` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkWhse` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKArr` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkADat` date DEFAULT NULL,
  `BKVess` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkSail` date DEFAULT NULL,
  `BkMnft` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkBL` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkStat` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkUser` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkComm` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkRemk` varchar(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkOrig` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkDest` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkVoyg` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkETD` date DEFAULT NULL,
  `BkLDD` date DEFAULT NULL,
  `BkOPt` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkDPt` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKRate` decimal(19,4) DEFAULT NULL,
  `BkRMin` decimal(19,4) DEFAULT NULL,
  `BkTHC` decimal(19,4) DEFAULT NULL,
  `BkTMin` decimal(19,4) DEFAULT NULL,
  `BkCAF` decimal(19,4) DEFAULT NULL,
  `BkBFS` decimal(19,4) DEFAULT NULL,
  `BKHS` decimal(19,4) DEFAULT NULL,
  `BkHMin` decimal(19,4) DEFAULT NULL,
  `BkPSA` decimal(19,4) DEFAULT NULL,
  `BkINA` decimal(19,4) DEFAULT NULL,
  `BkFWA` decimal(19,4) DEFAULT NULL,
  `Bkhapp` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkclov` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcchk` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkzzz` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkot2` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkor2` decimal(19,4) DEFAULT NULL,
  `Bkot3` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkOr3` decimal(19,4) DEFAULT NULL,
  `BkIDD` date DEFAULT NULL,
  `BkHaz` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkPU` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkfax` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkHadd` int(11) DEFAULT NULL,
  `Bkxxx` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkETA` date DEFAULT NULL,
  `BkLoc` blob,
  `BkLCTC` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkLTel` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkLEmail` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkSref` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkTrck` blob,
  `BkTCode` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkRDT` date DEFAULT NULL,
  `BkIFQ` decimal(19,4) DEFAULT NULL,
  `bkifqmin` decimal(19,4) DEFAULT NULL,
  `BkWare` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkecar` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkASail` date DEFAULT NULL,
  `BkSSL` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkedi` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkdec` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bklab` date DEFAULT NULL,
  `Bkchbl` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcmnf` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkldt` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcdw` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkapl` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bknote` blob,
  `bkoncr` decimal(19,4) DEFAULT NULL,
  `bkcclr` decimal(19,4) DEFAULT NULL,
  `Bkwars` decimal(19,4) DEFAULT NULL,
  `bkwart` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkwhfg` decimal(19,4) DEFAULT NULL,
  `Bkwhat` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkblfe` decimal(19,4) DEFAULT NULL,
  `Bkbrok` decimal(19,4) DEFAULT NULL,
  `Bkrout` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcold` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkpeff` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkquot` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkpepl` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcngt` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcngs` decimal(19,4) DEFAULT NULL,
  `Bkwood` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcivr` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkCiva` decimal(19,4) DEFAULT NULL,
  `Bkcca` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bknovl` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bknope` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkpcl1` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkpcl2` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkqtrq` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkforw` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkdcfs` date DEFAULT NULL,
  `Bkothd` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkothr` decimal(19,4) DEFAULT NULL,
  `Bkwloc` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkwsch` decimal(19,4) DEFAULT NULL,
  `BkWcfm` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkHcla` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkhun` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkwsc` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkrotn` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkhcl2` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkhcl3` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkBroki` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkdrcv` date DEFAULT NULL,
  `Bkmodb` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkmodd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Bktinv` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bktfax` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bktemail` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bktamt` decimal(19,4) DEFAULT NULL,
  `Bktdat` date DEFAULT NULL,
  `Bktaby` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkcntc` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKhzid` date DEFAULT NULL,
  `Bkcfid` date DEFAULT NULL,
  `Bkcfri` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkhtst` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkintm` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Bkhtsr` decimal(19,4) DEFAULT NULL,
  `BkHtsm` decimal(19,4) DEFAULT NULL,
  `bkdout` date DEFAULT NULL,
  `Bkdbat` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkImin` decimal(19,4) DEFAULT NULL,
  `Bkifmn` decimal(19,4) DEFAULT NULL,
  `BkLFax` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkTTel` varchar(12) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BkTCtc` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkoncurr` varchar(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkdrby` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkissdt` varchar(25) DEFAULT NULL,
  `bkresdt` varchar(25) DEFAULT NULL,
  `bkissue` blob,
  `bkresolve` blob,
  `bkresby` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkopsnotes` blob,
  `LOG_TRACE_EVENT` int(11) DEFAULT NULL,
  `bkporcbl` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkaesok` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkaesdate` varchar(25) DEFAULT NULL,
  `bkitn` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkaesby` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkcostpc` decimal(19,4) DEFAULT NULL,
  `bkcostins` decimal(19,4) DEFAULT NULL,
  `bkcostinout` decimal(19,4) DEFAULT NULL,
  `bkcostpallet` decimal(19,4) DEFAULT NULL,
  `bkcostseg` decimal(19,4) DEFAULT NULL,
  `bkcostother` decimal(19,4) DEFAULT NULL,
  `bkcostothtext` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkcosthaz` decimal(19,4) DEFAULT NULL,
  `bkcostps` decimal(19,4) DEFAULT NULL,
  `bkprofshare` decimal(19,4) DEFAULT NULL,
  `bkcreate` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkaeslist` blob,
  `bkpremod` varchar(25) DEFAULT NULL,
  `bkchkpre` varchar(5) DEFAULT NULL,
  `bkvscac` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkot4` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkor4` decimal(19,4) DEFAULT NULL,
  `bkbademail` varchar(5) DEFAULT NULL,
  `bkcancelrea` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkcanreaBlob` blob,
  `bklock` varchar(5) DEFAULT NULL,
  `bkresid` varchar(5) DEFAULT NULL,
  `bkmisc1` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkmisc1dt` date DEFAULT NULL,
  `bkmisc1amt` decimal(19,4) DEFAULT NULL,
  `bkmisc2` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkmisc2dt` date DEFAULT NULL,
  `bkmisc2amt` decimal(19,4) DEFAULT NULL,
  `bkwebref` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bktrkstatus` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkharcod` blob,
  `bkhcok` varchar(5) DEFAULT NULL,
  `bkeufee` decimal(19,4) DEFAULT NULL,
  `bkshowdestc` varchar(5) DEFAULT NULL,
  `bkshowcft` varchar(5) DEFAULT NULL,
  `bklhrate` decimal(19,4) DEFAULT NULL,
  `bklhmin` decimal(19,4) DEFAULT NULL,
  `bklhfuel` decimal(19,4) DEFAULT NULL,
  `bklhtype` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkliftgate` varchar(5) DEFAULT NULL,
  `bkexlen` varchar(5) DEFAULT NULL,
  `bkzipcode` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bktrktt` int(11) DEFAULT NULL,
  `bkrecalc` varchar(5) DEFAULT NULL,
  `bkdestchgtext` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkdestchgamt` decimal(19,4) DEFAULT NULL,
  `bkapptrqd` varchar(5) DEFAULT NULL,
  `bkbookcom` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkbookin` blob,
  `bkdiscby` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkdiscts` timestamp NULL DEFAULT NULL,
  `bkdiscok` varchar(5) DEFAULT NULL,
  `bkusesli` varchar(5) DEFAULT NULL,
  `kkvrvess` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkdoorkeep` varchar(5) DEFAULT NULL,
  `bkcclrcost` decimal(19,4) DEFAULT NULL,
  `bkonccost` decimal(19,4) DEFAULT NULL,
  `bkdestcost` decimal(19,4) DEFAULT NULL,
  `bkhazcost` decimal(19,4) DEFAULT NULL,
  `bkhazcostmin` decimal(19,4) DEFAULT NULL,
  `bkchass` decimal(19,4) DEFAULT NULL,
  `bkbtob` varchar(5) DEFAULT NULL,
  `bkcuit` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkOAD` varchar(5) DEFAULT NULL,
  `bkncm` blob,
  `bkIPC` varchar(5) DEFAULT NULL,
  `bkdesc2cost` decimal(19,4) DEFAULT NULL,
  `bkdesc3cost` decimal(19,4) DEFAULT NULL,
  `bkthccosttot` decimal(19,4) DEFAULT NULL,
  `bkthccostr` decimal(19,4) DEFAULT NULL,
  `bkthccostm` decimal(19,4) DEFAULT NULL,
  `bkdestdcost` decimal(19,4) DEFAULT NULL,
  `bkdesc4cost` decimal(19,4) DEFAULT NULL,
  `bkholdtruck` blob,
  `bkdesc2` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkdesc4` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bkbtobk` varchar(5) DEFAULT NULL,
  `bkldinst` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `bksslv` varchar(10) DEFAULT NULL,
  `bkvrot` varchar(4) DEFAULT NULL,
  `bkvseq` varchar(4) DEFAULT NULL,
  `bkagememail` varchar(120) DEFAULT NULL,
  `bksalesemail` varchar(5) DEFAULT NULL,
  `bkpucomp` varchar(35) DEFAULT NULL,
  `bkpuaddr` varchar(35) DEFAULT NULL,
  `bjpucsz` varchar(50) DEFAULT NULL,
  `bkpuspecinst` blob,
  `bkaf` varchar(5) DEFAULT NULL,
  `bkafok` varchar(5) DEFAULT NULL,
  `bkafdate` varchar(20) DEFAULT NULL,
  `bkafby` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `epspe_book`
--

INSERT INTO `epspe_book` (`BKRef`, `BkPreE`, `BKdate`, `BKrdate`, `BKPcs`, `BKWgtE`, `BKWgtM`, `BKCubE`, `BkCubM`, `BkCust`, `BkCinf`, `BkCTel`, `BkCFax`, `BKCEmail`, `BkCont`, `BkWhse`, `BKArr`, `BkADat`, `BKVess`, `BkSail`, `BkMnft`, `BkBL`, `BkStat`, `BkUser`, `BkComm`, `BkRemk`, `BkOrig`, `BkDest`, `BkVoyg`, `BkETD`, `BkLDD`, `BkOPt`, `BkDPt`, `BKRate`, `BkRMin`, `BkTHC`, `BkTMin`, `BkCAF`, `BkBFS`, `BKHS`, `BkHMin`, `BkPSA`, `BkINA`, `BkFWA`, `Bkhapp`, `Bkclov`, `Bkcchk`, `Bkzzz`, `Bkot2`, `Bkor2`, `Bkot3`, `BkOr3`, `BkIDD`, `BkHaz`, `BkPU`, `Bkfax`, `BkHadd`, `Bkxxx`, `BkETA`, `BkLoc`, `BkLCTC`, `BkLTel`, `BkLEmail`, `BkSref`, `BkTrck`, `BkTCode`, `BkRDT`, `BkIFQ`, `bkifqmin`, `BkWare`, `Bkecar`, `BkASail`, `BkSSL`, `Bkedi`, `Bkdec`, `Bklab`, `Bkchbl`, `Bkcmnf`, `Bkldt`, `Bkcdw`, `Bkapl`, `bknote`, `bkoncr`, `bkcclr`, `Bkwars`, `bkwart`, `Bkwhfg`, `Bkwhat`, `Bkblfe`, `Bkbrok`, `Bkrout`, `Bkcold`, `Bkpeff`, `Bkquot`, `Bkpepl`, `Bkcngt`, `Bkcngs`, `Bkwood`, `Bkcivr`, `BkCiva`, `Bkcca`, `Bknovl`, `Bknope`, `Bkpcl1`, `Bkpcl2`, `Bkqtrq`, `Bkforw`, `Bkdcfs`, `Bkothd`, `Bkothr`, `Bkwloc`, `Bkwsch`, `BkWcfm`, `BkHcla`, `Bkhun`, `Bkwsc`, `Bkrotn`, `Bkhcl2`, `Bkhcl3`, `BkBroki`, `Bkdrcv`, `Bkmodb`, `Bkmodd`, `Bktinv`, `Bktfax`, `Bktemail`, `Bktamt`, `Bktdat`, `Bktaby`, `Bkcntc`, `BKhzid`, `Bkcfid`, `Bkcfri`, `Bkhtst`, `Bkintm`, `Bkhtsr`, `BkHtsm`, `bkdout`, `Bkdbat`, `BkImin`, `Bkifmn`, `BkLFax`, `BkTTel`, `BkTCtc`, `bkoncurr`, `bkdrby`, `bkissdt`, `bkresdt`, `bkissue`, `bkresolve`, `bkresby`, `bkopsnotes`, `LOG_TRACE_EVENT`, `bkporcbl`, `bkaesok`, `bkaesdate`, `bkitn`, `bkaesby`, `bkcostpc`, `bkcostins`, `bkcostinout`, `bkcostpallet`, `bkcostseg`, `bkcostother`, `bkcostothtext`, `bkcosthaz`, `bkcostps`, `bkprofshare`, `bkcreate`, `bkaeslist`, `bkpremod`, `bkchkpre`, `bkvscac`, `bkot4`, `bkor4`, `bkbademail`, `bkcancelrea`, `bkcanreaBlob`, `bklock`, `bkresid`, `bkmisc1`, `bkmisc1dt`, `bkmisc1amt`, `bkmisc2`, `bkmisc2dt`, `bkmisc2amt`, `bkwebref`, `bktrkstatus`, `bkharcod`, `bkhcok`, `bkeufee`, `bkshowdestc`, `bkshowcft`, `bklhrate`, `bklhmin`, `bklhfuel`, `bklhtype`, `bkliftgate`, `bkexlen`, `bkzipcode`, `bktrktt`, `bkrecalc`, `bkdestchgtext`, `bkdestchgamt`, `bkapptrqd`, `bkbookcom`, `bkbookin`, `bkdiscby`, `bkdiscts`, `bkdiscok`, `bkusesli`, `kkvrvess`, `bkdoorkeep`, `bkcclrcost`, `bkonccost`, `bkdestcost`, `bkhazcost`, `bkhazcostmin`, `bkchass`, `bkbtob`, `bkcuit`, `bkOAD`, `bkncm`, `bkIPC`, `bkdesc2cost`, `bkdesc3cost`, `bkthccosttot`, `bkthccostr`, `bkthccostm`, `bkdestdcost`, `bkdesc4cost`, `bkholdtruck`, `bkdesc2`, `bkdesc4`, `bkbtobk`, `bkldinst`, `bksslv`, `bkvrot`, `bkvseq`, `bkagememail`, `bksalesemail`, `bkpucomp`, `bkpuaddr`, `bjpucsz`, `bkpuspecinst`, `bkaf`, `bkafok`, `bkafdate`, `bkafby`) VALUES
('1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TEST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-12 10:52:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', NULL, NULL, NULL, NULL, '1.0000', '2.0000', '3.0000', '4.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-12 10:54:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `epspe_cust`
--

CREATE TABLE `epspe_cust` (
  `CustName1` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustName2` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustStreet` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCity` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustState` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustZip` char(9) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustEin` char(11) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCode` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `CustCont1` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCont2` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustTel` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustIFax` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustEFax` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustProd` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustPeff` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustExpO` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustPSHp` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustNVO` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustIMP` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustFF` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustFComp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCComp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustSStat` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustTerms` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustIFCon` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustIMCon` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Custnotes1` date DEFAULT NULL,
  `CustSBill` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Custwhsrl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustSOrg` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custlcom` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custfcom` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custicom` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustcType` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCLAdj` double DEFAULT NULL,
  `CustCFact` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustUltD` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustLastR` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustLRDt` int(11) DEFAULT NULL,
  `CustHM` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustFMC` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCHB` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustARAP` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustRept` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustNext` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Custlemail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custunvco` int(11) DEFAULT NULL,
  `custeddat` date DEFAULT NULL,
  `custfilly` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custlcqts` int(11) DEFAULT NULL,
  `custlcbks` int(11) DEFAULT NULL,
  `custlhqts` int(11) DEFAULT NULL,
  `custlhbks` int(11) DEFAULT NULL,
  `custlsdt` date DEFAULT NULL,
  `custfcqts` int(11) DEFAULT NULL,
  `custfcbks` int(11) DEFAULT NULL,
  `custfhqts` int(11) DEFAULT NULL,
  `custfhbks` int(11) DEFAULT NULL,
  `custfsdt` date DEFAULT NULL,
  `custactv` date DEFAULT NULL,
  `custcaby` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custfill` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custfemail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custiemail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custcafax` date DEFAULT NULL,
  `custccfax` date DEFAULT NULL,
  `custnofax` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custfillx` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustPers` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustPrev` int(11) DEFAULT NULL,
  `CustEnBy` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustEdBy` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustrCom3` date DEFAULT NULL,
  `CustrCom4` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustBook` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustCCA` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustRLcl` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustRFcl` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustRall` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custstrt` date DEFAULT NULL,
  `custlimt` int(11) DEFAULT NULL,
  `Custlday` int(11) DEFAULT NULL,
  `Custdelq` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custddat` date DEFAULT NULL,
  `custRimp` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CustFIss` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Custweb` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custaes` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custdock` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custqt` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custlabl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custafee` double DEFAULT NULL,
  `custmemo` blob,
  `custdomw` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custforw` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custsame` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custdbrok` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custscomm` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custkey` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custpoa` date DEFAULT NULL,
  `custbroadcast` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custautook` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnofclqt` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnolclqt` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnoimpqt` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custedi1` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custedi2` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custedi3` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custedi4` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custproofnorate` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custcontlist` blob,
  `custlcllrat` int(11) DEFAULT NULL,
  `custlcllunr` int(11) DEFAULT NULL,
  `custlcllorg` int(11) DEFAULT NULL,
  `custlclerat` int(11) DEFAULT NULL,
  `custlcleunr` int(11) DEFAULT NULL,
  `custlcleorg` int(11) DEFAULT NULL,
  `custfcllrat` int(11) DEFAULT NULL,
  `custfcllunr` int(11) DEFAULT NULL,
  `custfcllorg` int(11) DEFAULT NULL,
  `custfclerat` int(11) DEFAULT NULL,
  `custfcleunr` int(11) DEFAULT NULL,
  `custfcleorg` int(11) DEFAULT NULL,
  `custrelemail` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custrelacct` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custrelvia` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custrelemadd` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custagent` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lclcremail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `fclcremail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custsdest` binary(220) DEFAULT NULL,
  `custsrate` binary(220) DEFAULT NULL,
  `custsreb` binary(220) DEFAULT NULL,
  `custragt` binary(220) DEFAULT NULL,
  `custrtier` binary(220) DEFAULT NULL,
  `custrcon` binary(220) DEFAULT NULL,
  `custfclrout` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custsplitad` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custolb` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custaddon` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custaddaamt` double DEFAULT NULL,
  `custaddtyp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnopreproof` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnational` char(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custshowcft` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custaesrate` double DEFAULT NULL,
  `custctfax` date DEFAULT NULL,
  `custcalog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custcclog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custctlog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custpoalog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custctinfax` date DEFAULT NULL,
  `custctinlog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custcainfax` date DEFAULT NULL,
  `custcainlog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custccinfax` date DEFAULT NULL,
  `custccinlog` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnorebate` blob,
  `custnochassis` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custnofclnotice` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custspecrate` blob,
  `custuserouted` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custusualagent` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custusualservice` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custususalpod` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `custusualother` blob,
  `custnorouting` blob,
  `custsrquotes` varchar(5) DEFAULT NULL,
  `custsrbooks` varchar(5) DEFAULT NULL,
  `custactgemail` varchar(50) DEFAULT NULL,
  `date_last` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_engagement`
--

CREATE TABLE `epspe_engagement` (
  `engagement_id` int(11) NOT NULL,
  `Engagement` varchar(45) DEFAULT NULL,
  `Type` varchar(9) DEFAULT NULL,
  `DateService` datetime(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `epspe_engagement`
--

INSERT INTO `epspe_engagement` (`engagement_id`, `Engagement`, `Type`, `DateService`) VALUES
(1, 'Celgene - Cloud', 'Packaged', '2016-07-11 06:30:01.000000'),
(2, 'Celgene - Cloud', 'Packaged', '2016-04-02 00:00:00.000000'),
(3, 'Celgene - Cloud', 'Packaged', '2016-04-03 00:00:00.000000'),
(4, 'Celgene - Cloud', 'Packaged', '2016-04-04 00:00:00.000000'),
(5, 'Celgene - Cloud', 'Packaged', '2016-04-05 00:00:00.000000'),
(6, 'Celgene - Cloud', 'Packaged', '2016-04-06 00:00:00.000000'),
(7, 'Celgene - Cloud', 'Packaged', '2016-04-07 00:00:00.000000'),
(8, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-07 00:00:00.000000'),
(9, 'MSFT Customer ', 'Strategic', '2016-04-07 00:00:00.000000'),
(10, 'Celgene - Cloud', 'Packaged', '2016-04-08 00:00:00.000000'),
(11, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-08 00:00:00.000000'),
(12, 'MSFT Customer ', 'Strategic', '2016-04-08 00:00:00.000000'),
(13, 'Celgene - Cloud', 'Packaged', '2016-04-09 00:00:00.000000'),
(14, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-09 00:00:00.000000'),
(15, 'MSFT Customer ', 'Strategic', '2016-04-09 00:00:00.000000'),
(16, 'Celgene - Cloud', 'Packaged', '2016-04-10 00:00:00.000000'),
(17, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-10 00:00:00.000000'),
(18, 'MSFT Customer ', 'Strategic', '2016-04-10 00:00:00.000000'),
(19, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-10 00:00:00.000000'),
(20, 'Celgene - Cloud', 'Packaged', '2016-04-11 00:00:00.000000'),
(21, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-11 00:00:00.000000'),
(22, 'MSFT Customer ', 'Strategic', '2016-04-11 00:00:00.000000'),
(23, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-11 00:00:00.000000'),
(24, 'Celgene - Cloud', 'Packaged', '2016-04-12 00:00:00.000000'),
(25, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-12 00:00:00.000000'),
(26, 'MSFT Customer ', 'Strategic', '2016-04-12 00:00:00.000000'),
(27, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-12 00:00:00.000000'),
(28, 'Riley Safer Holms -', 'Packaged', '2016-04-12 00:00:00.000000'),
(29, 'Fitzroy Health SOW B', 'Packaged', '2016-04-12 00:00:00.000000'),
(30, 'Celgene - Cloud', 'Packaged', '2016-04-13 00:00:00.000000'),
(31, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-13 00:00:00.000000'),
(32, 'MSFT Customer ', 'Strategic', '2016-04-13 00:00:00.000000'),
(33, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-13 00:00:00.000000'),
(34, 'Riley Safer Holms -', 'Packaged', '2016-04-13 00:00:00.000000'),
(35, 'Fitzroy Health SOW B', 'Packaged', '2016-04-13 00:00:00.000000'),
(36, 'Celgene - Cloud', 'Packaged', '2016-04-14 00:00:00.000000'),
(37, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-14 00:00:00.000000'),
(38, 'MSFT Customer ', 'Strategic', '2016-04-14 00:00:00.000000'),
(39, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-14 00:00:00.000000'),
(40, 'Riley Safer Holms -', 'Packaged', '2016-04-14 00:00:00.000000'),
(41, 'Fitzroy Health SOW B', 'Packaged', '2016-04-14 00:00:00.000000'),
(42, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-14 00:00:00.000000'),
(43, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-14 00:00:00.000000'),
(44, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-14 00:00:00.000000'),
(45, 'Celgene - Cloud', 'Packaged', '2016-04-15 00:00:00.000000'),
(46, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-15 00:00:00.000000'),
(47, 'MSFT Customer ', 'Strategic', '2016-04-15 00:00:00.000000'),
(48, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-15 00:00:00.000000'),
(49, 'Riley Safer Holms -', 'Packaged', '2016-04-15 00:00:00.000000'),
(50, 'Fitzroy Health SOW B', 'Packaged', '2016-04-15 00:00:00.000000'),
(51, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-15 00:00:00.000000'),
(52, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-15 00:00:00.000000'),
(53, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-15 00:00:00.000000'),
(54, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-15 00:00:00.000000'),
(55, 'Life Care Centers of America,', 'Packaged', '2016-04-15 00:00:00.000000'),
(56, 'Bill Test Task -', 'Strategic', '2016-04-15 00:00:00.000000'),
(57, 'Celgene - Cloud', 'Packaged', '2016-04-16 00:00:00.000000'),
(58, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-16 00:00:00.000000'),
(59, 'MSFT Customer ', 'Strategic', '2016-04-16 00:00:00.000000'),
(60, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-16 00:00:00.000000'),
(61, 'Riley Safer Holms -', 'Packaged', '2016-04-16 00:00:00.000000'),
(62, 'Fitzroy Health SOW B', 'Packaged', '2016-04-16 00:00:00.000000'),
(63, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-16 00:00:00.000000'),
(64, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-16 00:00:00.000000'),
(65, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-16 00:00:00.000000'),
(66, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-16 00:00:00.000000'),
(67, 'Life Care Centers of America,', 'Packaged', '2016-04-16 00:00:00.000000'),
(68, 'Bill Test Task -', 'Strategic', '2016-04-16 00:00:00.000000'),
(69, 'Celgene - Cloud', 'Packaged', '2016-04-17 00:00:00.000000'),
(70, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-17 00:00:00.000000'),
(71, 'MSFT Customer ', 'Strategic', '2016-04-17 00:00:00.000000'),
(72, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-17 00:00:00.000000'),
(73, 'Riley Safer Holms -', 'Packaged', '2016-04-17 00:00:00.000000'),
(74, 'Fitzroy Health SOW B', 'Packaged', '2016-04-17 00:00:00.000000'),
(75, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-17 00:00:00.000000'),
(76, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-17 00:00:00.000000'),
(77, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-17 00:00:00.000000'),
(78, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-17 00:00:00.000000'),
(79, 'Life Care Centers of America,', 'Packaged', '2016-04-17 00:00:00.000000'),
(80, 'Bill Test Task -', 'Strategic', '2016-04-17 00:00:00.000000'),
(81, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-17 00:00:00.000000'),
(82, 'Shire - Phase 1', 'Packaged', '2016-04-17 00:00:00.000000'),
(83, 'Angelo Gordon - Office', 'Packaged', '2016-04-17 00:00:00.000000'),
(84, 'Biogen - BIO-001 -', 'Strategic', '2016-04-17 00:00:00.000000'),
(85, 'Celgene - Cloud', 'Packaged', '2016-04-18 00:00:00.000000'),
(86, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-18 00:00:00.000000'),
(87, 'MSFT Customer ', 'Strategic', '2016-04-18 00:00:00.000000'),
(88, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-18 00:00:00.000000'),
(89, 'Riley Safer Holms -', 'Packaged', '2016-04-18 00:00:00.000000'),
(90, 'Fitzroy Health SOW B', 'Packaged', '2016-04-18 00:00:00.000000'),
(91, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-18 00:00:00.000000'),
(92, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-18 00:00:00.000000'),
(93, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-18 00:00:00.000000'),
(94, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-18 00:00:00.000000'),
(95, 'Life Care Centers of America,', 'Packaged', '2016-04-18 00:00:00.000000'),
(96, 'Bill Test Task -', 'Strategic', '2016-04-18 00:00:00.000000'),
(97, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-18 00:00:00.000000'),
(98, 'Shire - Phase 1', 'Packaged', '2016-04-18 00:00:00.000000'),
(99, 'Angelo Gordon - Office', 'Packaged', '2016-04-18 00:00:00.000000'),
(100, 'Biogen - BIO-001 -', 'Strategic', '2016-04-18 00:00:00.000000'),
(101, 'Celgene - Cloud', 'Packaged', '2016-04-19 00:00:00.000000'),
(102, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-19 00:00:00.000000'),
(103, 'MSFT Customer ', 'Strategic', '2016-04-19 00:00:00.000000'),
(104, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-19 00:00:00.000000'),
(105, 'Riley Safer Holms -', 'Packaged', '2016-04-19 00:00:00.000000'),
(106, 'Fitzroy Health SOW B', 'Packaged', '2016-04-19 00:00:00.000000'),
(107, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-19 00:00:00.000000'),
(108, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-19 00:00:00.000000'),
(109, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-19 00:00:00.000000'),
(110, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-19 00:00:00.000000'),
(111, 'Life Care Centers of America,', 'Packaged', '2016-04-19 00:00:00.000000'),
(112, 'Bill Test Task -', 'Strategic', '2016-04-19 00:00:00.000000'),
(113, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-19 00:00:00.000000'),
(114, 'Shire - Phase 1', 'Packaged', '2016-04-19 00:00:00.000000'),
(115, 'Angelo Gordon - Office', 'Packaged', '2016-04-19 00:00:00.000000'),
(116, 'Biogen - BIO-001 -', 'Strategic', '2016-04-19 00:00:00.000000'),
(117, 'Steadfast - AWS POC', 'Packaged', '2016-04-19 00:00:00.000000'),
(118, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-19 00:00:00.000000'),
(119, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-19 00:00:00.000000'),
(120, 'Celgene - Cloud', 'Packaged', '2016-04-20 00:00:00.000000'),
(121, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-20 00:00:00.000000'),
(122, 'MSFT Customer ', 'Strategic', '2016-04-20 00:00:00.000000'),
(123, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-20 00:00:00.000000'),
(124, 'Riley Safer Holms -', 'Packaged', '2016-04-20 00:00:00.000000'),
(125, 'Fitzroy Health SOW B', 'Packaged', '2016-04-20 00:00:00.000000'),
(126, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-20 00:00:00.000000'),
(127, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-20 00:00:00.000000'),
(128, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-20 00:00:00.000000'),
(129, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-20 00:00:00.000000'),
(130, 'Life Care Centers of America,', 'Packaged', '2016-04-20 00:00:00.000000'),
(131, 'Bill Test Task -', 'Strategic', '2016-04-20 00:00:00.000000'),
(132, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-20 00:00:00.000000'),
(133, 'Shire - Phase 1', 'Packaged', '2016-04-20 00:00:00.000000'),
(134, 'Angelo Gordon - Office', 'Packaged', '2016-04-20 00:00:00.000000'),
(135, 'Biogen - BIO-001 -', 'Strategic', '2016-04-20 00:00:00.000000'),
(136, 'Steadfast - AWS POC', 'Packaged', '2016-04-20 00:00:00.000000'),
(137, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-20 00:00:00.000000'),
(138, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-20 00:00:00.000000'),
(139, 'Celgene - Cloud', 'Packaged', '2016-04-21 00:00:00.000000'),
(140, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-21 00:00:00.000000'),
(141, 'MSFT Customer ', 'Strategic', '2016-04-21 00:00:00.000000'),
(142, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-21 00:00:00.000000'),
(143, 'Riley Safer Holms -', 'Packaged', '2016-04-21 00:00:00.000000'),
(144, 'Fitzroy Health SOW B', 'Packaged', '2016-04-21 00:00:00.000000'),
(145, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-21 00:00:00.000000'),
(146, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-21 00:00:00.000000'),
(147, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-21 00:00:00.000000'),
(148, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-21 00:00:00.000000'),
(149, 'Life Care Centers of America,', 'Packaged', '2016-04-21 00:00:00.000000'),
(150, 'Bill Test Task -', 'Strategic', '2016-04-21 00:00:00.000000'),
(151, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-21 00:00:00.000000'),
(152, 'Shire - Phase 1', 'Packaged', '2016-04-21 00:00:00.000000'),
(153, 'Angelo Gordon - Office', 'Packaged', '2016-04-21 00:00:00.000000'),
(154, 'Biogen - BIO-001 -', 'Strategic', '2016-04-21 00:00:00.000000'),
(155, 'Steadfast - AWS POC', 'Packaged', '2016-04-21 00:00:00.000000'),
(156, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-21 00:00:00.000000'),
(157, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-21 00:00:00.000000'),
(158, 'Celgene - Cloud', 'Packaged', '2016-04-22 00:00:00.000000'),
(159, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-22 00:00:00.000000'),
(160, 'MSFT Customer ', 'Strategic', '2016-04-22 00:00:00.000000'),
(161, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-22 00:00:00.000000'),
(162, 'Riley Safer Holms -', 'Packaged', '2016-04-22 00:00:00.000000'),
(163, 'Fitzroy Health SOW B', 'Packaged', '2016-04-22 00:00:00.000000'),
(164, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-22 00:00:00.000000'),
(165, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-22 00:00:00.000000'),
(166, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-22 00:00:00.000000'),
(167, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-22 00:00:00.000000'),
(168, 'Life Care Centers of America,', 'Packaged', '2016-04-22 00:00:00.000000'),
(169, 'Bill Test Task -', 'Strategic', '2016-04-22 00:00:00.000000'),
(170, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-22 00:00:00.000000'),
(171, 'Shire - Phase 1', 'Packaged', '2016-04-22 00:00:00.000000'),
(172, 'Angelo Gordon - Office', 'Packaged', '2016-04-22 00:00:00.000000'),
(173, 'Biogen - BIO-001 -', 'Strategic', '2016-04-22 00:00:00.000000'),
(174, 'Steadfast - AWS POC', 'Packaged', '2016-04-22 00:00:00.000000'),
(175, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-22 00:00:00.000000'),
(176, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-22 00:00:00.000000'),
(177, 'Celgene - Cloud', 'Packaged', '2016-04-23 00:00:00.000000'),
(178, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-23 00:00:00.000000'),
(179, 'MSFT Customer ', 'Strategic', '2016-04-23 00:00:00.000000'),
(180, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-23 00:00:00.000000'),
(181, 'Riley Safer Holms -', 'Packaged', '2016-04-23 00:00:00.000000'),
(182, 'Fitzroy Health SOW B', 'Packaged', '2016-04-23 00:00:00.000000'),
(183, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-23 00:00:00.000000'),
(184, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-23 00:00:00.000000'),
(185, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-23 00:00:00.000000'),
(186, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-23 00:00:00.000000'),
(187, 'Life Care Centers of America,', 'Packaged', '2016-04-23 00:00:00.000000'),
(188, 'Bill Test Task -', 'Strategic', '2016-04-23 00:00:00.000000'),
(189, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-23 00:00:00.000000'),
(190, 'Shire - Phase 1', 'Packaged', '2016-04-23 00:00:00.000000'),
(191, 'Angelo Gordon - Office', 'Packaged', '2016-04-23 00:00:00.000000'),
(192, 'Biogen - BIO-001 -', 'Strategic', '2016-04-23 00:00:00.000000'),
(193, 'Steadfast - AWS POC', 'Packaged', '2016-04-23 00:00:00.000000'),
(194, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-23 00:00:00.000000'),
(195, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-23 00:00:00.000000'),
(196, 'Celgene - Cloud', 'Packaged', '2016-04-24 00:00:00.000000'),
(197, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-24 00:00:00.000000'),
(198, 'MSFT Customer ', 'Strategic', '2016-04-24 00:00:00.000000'),
(199, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-24 00:00:00.000000'),
(200, 'Riley Safer Holms -', 'Packaged', '2016-04-24 00:00:00.000000'),
(201, 'Fitzroy Health SOW B', 'Packaged', '2016-04-24 00:00:00.000000'),
(202, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-24 00:00:00.000000'),
(203, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-24 00:00:00.000000'),
(204, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-24 00:00:00.000000'),
(205, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-24 00:00:00.000000'),
(206, 'Life Care Centers of America,', 'Packaged', '2016-04-24 00:00:00.000000'),
(207, 'Bill Test Task -', 'Strategic', '2016-04-24 00:00:00.000000'),
(208, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-24 00:00:00.000000'),
(209, 'Shire - Phase 1', 'Packaged', '2016-04-24 00:00:00.000000'),
(210, 'Angelo Gordon - Office', 'Packaged', '2016-04-24 00:00:00.000000'),
(211, 'Biogen - BIO-001 -', 'Strategic', '2016-04-24 00:00:00.000000'),
(212, 'Steadfast - AWS POC', 'Packaged', '2016-04-24 00:00:00.000000'),
(213, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-24 00:00:00.000000'),
(214, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-24 00:00:00.000000'),
(215, 'Celgene - Cloud', 'Packaged', '2016-04-25 00:00:00.000000'),
(216, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-25 00:00:00.000000'),
(217, 'MSFT Customer ', 'Strategic', '2016-04-25 00:00:00.000000'),
(218, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-25 00:00:00.000000'),
(219, 'Riley Safer Holms -', 'Packaged', '2016-04-25 00:00:00.000000'),
(220, 'Fitzroy Health SOW B', 'Packaged', '2016-04-25 00:00:00.000000'),
(221, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-25 00:00:00.000000'),
(222, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-25 00:00:00.000000'),
(223, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-25 00:00:00.000000'),
(224, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-25 00:00:00.000000'),
(225, 'Life Care Centers of America,', 'Packaged', '2016-04-25 00:00:00.000000'),
(226, 'Bill Test Task -', 'Strategic', '2016-04-25 00:00:00.000000'),
(227, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-25 00:00:00.000000'),
(228, 'Shire - Phase 1', 'Packaged', '2016-04-25 00:00:00.000000'),
(229, 'Angelo Gordon - Office', 'Packaged', '2016-04-25 00:00:00.000000'),
(230, 'Biogen - BIO-001 -', 'Strategic', '2016-04-25 00:00:00.000000'),
(231, 'Steadfast - AWS POC', 'Packaged', '2016-04-25 00:00:00.000000'),
(232, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-25 00:00:00.000000'),
(233, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-25 00:00:00.000000'),
(234, 'Celgene - Cloud', 'Packaged', '2016-04-26 00:00:00.000000'),
(235, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-26 00:00:00.000000'),
(236, 'MSFT Customer ', 'Strategic', '2016-04-26 00:00:00.000000'),
(237, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-26 00:00:00.000000'),
(238, 'Riley Safer Holms -', 'Packaged', '2016-04-26 00:00:00.000000'),
(239, 'Fitzroy Health SOW B', 'Packaged', '2016-04-26 00:00:00.000000'),
(240, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-26 00:00:00.000000'),
(241, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-26 00:00:00.000000'),
(242, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-26 00:00:00.000000'),
(243, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-26 00:00:00.000000'),
(244, 'Life Care Centers of America,', 'Packaged', '2016-04-26 00:00:00.000000'),
(245, 'Bill Test Task -', 'Strategic', '2016-04-26 00:00:00.000000'),
(246, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-26 00:00:00.000000'),
(247, 'Shire - Phase 1', 'Packaged', '2016-04-26 00:00:00.000000'),
(248, 'Angelo Gordon - Office', 'Packaged', '2016-04-26 00:00:00.000000'),
(249, 'Biogen - BIO-001 -', 'Strategic', '2016-04-26 00:00:00.000000'),
(250, 'Steadfast - AWS POC', 'Packaged', '2016-04-26 00:00:00.000000'),
(251, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-26 00:00:00.000000'),
(252, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-26 00:00:00.000000'),
(253, 'Celgene - Cloud', 'Packaged', '2016-04-27 00:00:00.000000'),
(254, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-27 00:00:00.000000'),
(255, 'MSFT Customer ', 'Strategic', '2016-04-27 00:00:00.000000'),
(256, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-27 00:00:00.000000'),
(257, 'Riley Safer Holms -', 'Packaged', '2016-04-27 00:00:00.000000'),
(258, 'Fitzroy Health SOW B', 'Packaged', '2016-04-27 00:00:00.000000'),
(259, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-27 00:00:00.000000'),
(260, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-27 00:00:00.000000'),
(261, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-27 00:00:00.000000'),
(262, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-27 00:00:00.000000'),
(263, 'Life Care Centers of America,', 'Packaged', '2016-04-27 00:00:00.000000'),
(264, 'Bill Test Task -', 'Strategic', '2016-04-27 00:00:00.000000'),
(265, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-27 00:00:00.000000'),
(266, 'Shire - Phase 1', 'Packaged', '2016-04-27 00:00:00.000000'),
(267, 'Angelo Gordon - Office', 'Packaged', '2016-04-27 00:00:00.000000'),
(268, 'Biogen - BIO-001 -', 'Strategic', '2016-04-27 00:00:00.000000'),
(269, 'Steadfast - AWS POC', 'Packaged', '2016-04-27 00:00:00.000000'),
(270, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-27 00:00:00.000000'),
(271, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-27 00:00:00.000000'),
(272, 'Celgene - Cloud', 'Packaged', '2016-04-28 00:00:00.000000'),
(273, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-28 00:00:00.000000'),
(274, 'MSFT Customer ', 'Strategic', '2016-04-28 00:00:00.000000'),
(275, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-28 00:00:00.000000'),
(276, 'Riley Safer Holms -', 'Packaged', '2016-04-28 00:00:00.000000'),
(277, 'Fitzroy Health SOW B', 'Packaged', '2016-04-28 00:00:00.000000'),
(278, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-28 00:00:00.000000'),
(279, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-28 00:00:00.000000'),
(280, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-28 00:00:00.000000'),
(281, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-28 00:00:00.000000'),
(282, 'Life Care Centers of America,', 'Packaged', '2016-04-28 00:00:00.000000'),
(283, 'Bill Test Task -', 'Strategic', '2016-04-28 00:00:00.000000'),
(284, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-28 00:00:00.000000'),
(285, 'Shire - Phase 1', 'Packaged', '2016-04-28 00:00:00.000000'),
(286, 'Angelo Gordon - Office', 'Packaged', '2016-04-28 00:00:00.000000'),
(287, 'Biogen - BIO-001 -', 'Strategic', '2016-04-28 00:00:00.000000'),
(288, 'Steadfast - AWS POC', 'Packaged', '2016-04-28 00:00:00.000000'),
(289, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-28 00:00:00.000000'),
(290, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-28 00:00:00.000000'),
(291, 'Celgene - Cloud', 'Packaged', '2016-04-29 00:00:00.000000'),
(292, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-29 00:00:00.000000'),
(293, 'MSFT Customer ', 'Strategic', '2016-04-29 00:00:00.000000'),
(294, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-29 00:00:00.000000'),
(295, 'Riley Safer Holms -', 'Packaged', '2016-04-29 00:00:00.000000'),
(296, 'Fitzroy Health SOW B', 'Packaged', '2016-04-29 00:00:00.000000'),
(297, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-29 00:00:00.000000'),
(298, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-29 00:00:00.000000'),
(299, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-29 00:00:00.000000'),
(300, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-29 00:00:00.000000'),
(301, 'Life Care Centers of America,', 'Packaged', '2016-04-29 00:00:00.000000'),
(302, 'Bill Test Task -', 'Strategic', '2016-04-29 00:00:00.000000'),
(303, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-29 00:00:00.000000'),
(304, 'Shire - Phase 1', 'Packaged', '2016-04-29 00:00:00.000000'),
(305, 'Angelo Gordon - Office', 'Packaged', '2016-04-29 00:00:00.000000'),
(306, 'Biogen - BIO-001 -', 'Strategic', '2016-04-29 00:00:00.000000'),
(307, 'Steadfast - AWS POC', 'Packaged', '2016-04-29 00:00:00.000000'),
(308, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-29 00:00:00.000000'),
(309, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-29 00:00:00.000000'),
(310, 'Celgene - Cloud', 'Packaged', '2016-04-30 00:00:00.000000'),
(311, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-30 00:00:00.000000'),
(312, 'MSFT Customer ', 'Strategic', '2016-04-30 00:00:00.000000'),
(313, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-30 00:00:00.000000'),
(314, 'Riley Safer Holms -', 'Packaged', '2016-04-30 00:00:00.000000'),
(315, 'Fitzroy Health SOW B', 'Packaged', '2016-04-30 00:00:00.000000'),
(316, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-30 00:00:00.000000'),
(317, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-30 00:00:00.000000'),
(318, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-30 00:00:00.000000'),
(319, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-30 00:00:00.000000'),
(320, 'Life Care Centers of America,', 'Packaged', '2016-04-30 00:00:00.000000'),
(321, 'Bill Test Task -', 'Strategic', '2016-04-30 00:00:00.000000'),
(322, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-30 00:00:00.000000'),
(323, 'Shire - Phase 1', 'Packaged', '2016-04-30 00:00:00.000000'),
(324, 'Angelo Gordon - Office', 'Packaged', '2016-04-30 00:00:00.000000'),
(325, 'Biogen - BIO-001 -', 'Strategic', '2016-04-30 00:00:00.000000'),
(326, 'Steadfast - AWS POC', 'Packaged', '2016-04-30 00:00:00.000000'),
(327, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-30 00:00:00.000000'),
(328, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-30 00:00:00.000000'),
(329, 'Celgene - Cloud', 'Packaged', '2016-04-30 00:00:00.000000'),
(330, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-04-30 00:00:00.000000'),
(331, 'MSFT Customer ', 'Strategic', '2016-04-30 00:00:00.000000'),
(332, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-04-30 00:00:00.000000'),
(333, 'Riley Safer Holms -', 'Packaged', '2016-04-30 00:00:00.000000'),
(334, 'Fitzroy Health SOW B', 'Packaged', '2016-04-30 00:00:00.000000'),
(335, 'Novo Nordisk Resource Request', 'Packaged', '2016-04-30 00:00:00.000000'),
(336, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-04-30 00:00:00.000000'),
(337, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-04-30 00:00:00.000000'),
(338, 'CA Lottery MSFT SOW', 'Packaged', '2016-04-30 00:00:00.000000'),
(339, 'Life Care Centers of America,', 'Packaged', '2016-04-30 00:00:00.000000'),
(340, 'Bill Test Task -', 'Strategic', '2016-04-30 00:00:00.000000'),
(341, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-04-30 00:00:00.000000'),
(342, 'Shire - Phase 1', 'Packaged', '2016-04-30 00:00:00.000000'),
(343, 'Angelo Gordon - Office', 'Packaged', '2016-04-30 00:00:00.000000'),
(344, 'Biogen - BIO-001 -', 'Strategic', '2016-04-30 00:00:00.000000'),
(345, 'Steadfast - AWS POC', 'Packaged', '2016-04-30 00:00:00.000000'),
(346, 'ITG Onsite Meeting Resource', 'Packaged', '2016-04-30 00:00:00.000000'),
(347, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-04-30 00:00:00.000000'),
(348, 'Celgene - Cloud', 'Packaged', '2016-05-01 00:00:00.000000'),
(349, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-01 00:00:00.000000'),
(350, 'MSFT Customer ', 'Strategic', '2016-05-01 00:00:00.000000'),
(351, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-01 00:00:00.000000'),
(352, 'Riley Safer Holms -', 'Packaged', '2016-05-01 00:00:00.000000'),
(353, 'Fitzroy Health SOW B', 'Packaged', '2016-05-01 00:00:00.000000'),
(354, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-01 00:00:00.000000'),
(355, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-01 00:00:00.000000'),
(356, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-01 00:00:00.000000'),
(357, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-01 00:00:00.000000'),
(358, 'Life Care Centers of America,', 'Packaged', '2016-05-01 00:00:00.000000'),
(359, 'Bill Test Task -', 'Strategic', '2016-05-01 00:00:00.000000'),
(360, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-01 00:00:00.000000'),
(361, 'Shire - Phase 1', 'Packaged', '2016-05-01 00:00:00.000000'),
(362, 'Angelo Gordon - Office', 'Packaged', '2016-05-01 00:00:00.000000'),
(363, 'Biogen - BIO-001 -', 'Strategic', '2016-05-01 00:00:00.000000'),
(364, 'Steadfast - AWS POC', 'Packaged', '2016-05-01 00:00:00.000000'),
(365, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-01 00:00:00.000000'),
(366, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-01 00:00:00.000000'),
(367, 'Celgene - Cloud', 'Packaged', '2016-05-02 00:00:00.000000'),
(368, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-02 00:00:00.000000'),
(369, 'MSFT Customer ', 'Strategic', '2016-05-02 00:00:00.000000'),
(370, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-02 00:00:00.000000'),
(371, 'Riley Safer Holms -', 'Packaged', '2016-05-02 00:00:00.000000'),
(372, 'Fitzroy Health SOW B', 'Packaged', '2016-05-02 00:00:00.000000'),
(373, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-02 00:00:00.000000'),
(374, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-02 00:00:00.000000'),
(375, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-02 00:00:00.000000'),
(376, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-02 00:00:00.000000'),
(377, 'Life Care Centers of America,', 'Packaged', '2016-05-02 00:00:00.000000'),
(378, 'Bill Test Task -', 'Strategic', '2016-05-02 00:00:00.000000'),
(379, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-02 00:00:00.000000'),
(380, 'Shire - Phase 1', 'Packaged', '2016-05-02 00:00:00.000000'),
(381, 'Angelo Gordon - Office', 'Packaged', '2016-05-02 00:00:00.000000'),
(382, 'Biogen - BIO-001 -', 'Strategic', '2016-05-02 00:00:00.000000'),
(383, 'Steadfast - AWS POC', 'Packaged', '2016-05-02 00:00:00.000000'),
(384, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-02 00:00:00.000000'),
(385, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-02 00:00:00.000000'),
(386, 'Celgene - Cloud', 'Packaged', '2016-05-03 00:00:00.000000'),
(387, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-03 00:00:00.000000'),
(388, 'MSFT Customer ', 'Strategic', '2016-05-03 00:00:00.000000'),
(389, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-03 00:00:00.000000'),
(390, 'Riley Safer Holms -', 'Packaged', '2016-05-03 00:00:00.000000'),
(391, 'Fitzroy Health SOW B', 'Packaged', '2016-05-03 00:00:00.000000'),
(392, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-03 00:00:00.000000'),
(393, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-03 00:00:00.000000'),
(394, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-03 00:00:00.000000'),
(395, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-03 00:00:00.000000'),
(396, 'Life Care Centers of America,', 'Packaged', '2016-05-03 00:00:00.000000'),
(397, 'Bill Test Task -', 'Strategic', '2016-05-03 00:00:00.000000'),
(398, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-03 00:00:00.000000'),
(399, 'Shire - Phase 1', 'Packaged', '2016-05-03 00:00:00.000000'),
(400, 'Angelo Gordon - Office', 'Packaged', '2016-05-03 00:00:00.000000'),
(401, 'Biogen - BIO-001 -', 'Strategic', '2016-05-03 00:00:00.000000'),
(402, 'Steadfast - AWS POC', 'Packaged', '2016-05-03 00:00:00.000000'),
(403, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-03 00:00:00.000000'),
(404, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-03 00:00:00.000000'),
(405, 'Koch Industries - Network', 'Packaged', '2016-05-03 00:00:00.000000'),
(406, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-03 00:00:00.000000'),
(407, 'Celgene - Cloud', 'Packaged', '2016-05-04 00:00:00.000000'),
(408, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-04 00:00:00.000000'),
(409, 'MSFT Customer ', 'Strategic', '2016-05-04 00:00:00.000000'),
(410, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-04 00:00:00.000000'),
(411, 'Riley Safer Holms -', 'Packaged', '2016-05-04 00:00:00.000000'),
(412, 'Fitzroy Health SOW B', 'Packaged', '2016-05-04 00:00:00.000000'),
(413, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-04 00:00:00.000000'),
(414, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-04 00:00:00.000000'),
(415, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-04 00:00:00.000000'),
(416, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-04 00:00:00.000000'),
(417, 'Life Care Centers of America,', 'Packaged', '2016-05-04 00:00:00.000000'),
(418, 'Bill Test Task -', 'Strategic', '2016-05-04 00:00:00.000000'),
(419, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-04 00:00:00.000000'),
(420, 'Shire - Phase 1', 'Packaged', '2016-05-04 00:00:00.000000'),
(421, 'Angelo Gordon - Office', 'Packaged', '2016-05-04 00:00:00.000000'),
(422, 'Biogen - BIO-001 -', 'Strategic', '2016-05-04 00:00:00.000000'),
(423, 'Steadfast - AWS POC', 'Packaged', '2016-05-04 00:00:00.000000'),
(424, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-04 00:00:00.000000'),
(425, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-04 00:00:00.000000'),
(426, 'Koch Industries - Network', 'Packaged', '2016-05-04 00:00:00.000000'),
(427, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-04 00:00:00.000000'),
(428, 'Celgene - Cloud', 'Packaged', '2016-05-05 00:00:00.000000'),
(429, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-05 00:00:00.000000'),
(430, 'MSFT Customer ', 'Strategic', '2016-05-05 00:00:00.000000'),
(431, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-05 00:00:00.000000'),
(432, 'Riley Safer Holms -', 'Packaged', '2016-05-05 00:00:00.000000'),
(433, 'Fitzroy Health SOW B', 'Packaged', '2016-05-05 00:00:00.000000'),
(434, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-05 00:00:00.000000'),
(435, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-05 00:00:00.000000'),
(436, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-05 00:00:00.000000'),
(437, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-05 00:00:00.000000'),
(438, 'Life Care Centers of America,', 'Packaged', '2016-05-05 00:00:00.000000'),
(439, 'Bill Test Task -', 'Strategic', '2016-05-05 00:00:00.000000'),
(440, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-05 00:00:00.000000'),
(441, 'Shire - Phase 1', 'Packaged', '2016-05-05 00:00:00.000000'),
(442, 'Angelo Gordon - Office', 'Packaged', '2016-05-05 00:00:00.000000'),
(443, 'Biogen - BIO-001 -', 'Strategic', '2016-05-05 00:00:00.000000'),
(444, 'Steadfast - AWS POC', 'Packaged', '2016-05-05 00:00:00.000000'),
(445, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-05 00:00:00.000000'),
(446, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-05 00:00:00.000000'),
(447, 'Koch Industries - Network', 'Packaged', '2016-05-05 00:00:00.000000'),
(448, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-05 00:00:00.000000'),
(449, 'Celgene - Cloud', 'Packaged', '2016-05-06 00:00:00.000000'),
(450, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-06 00:00:00.000000'),
(451, 'MSFT Customer ', 'Strategic', '2016-05-06 00:00:00.000000'),
(452, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-06 00:00:00.000000'),
(453, 'Riley Safer Holms -', 'Packaged', '2016-05-06 00:00:00.000000'),
(454, 'Fitzroy Health SOW B', 'Packaged', '2016-05-06 00:00:00.000000'),
(455, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-06 00:00:00.000000'),
(456, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-06 00:00:00.000000'),
(457, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-06 00:00:00.000000'),
(458, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-06 00:00:00.000000'),
(459, 'Life Care Centers of America,', 'Packaged', '2016-05-06 00:00:00.000000'),
(460, 'Bill Test Task -', 'Strategic', '2016-05-06 00:00:00.000000'),
(461, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-06 00:00:00.000000'),
(462, 'Shire - Phase 1', 'Packaged', '2016-05-06 00:00:00.000000'),
(463, 'Angelo Gordon - Office', 'Packaged', '2016-05-06 00:00:00.000000'),
(464, 'Biogen - BIO-001 -', 'Strategic', '2016-05-06 00:00:00.000000'),
(465, 'Steadfast - AWS POC', 'Packaged', '2016-05-06 00:00:00.000000'),
(466, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-06 00:00:00.000000'),
(467, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-06 00:00:00.000000'),
(468, 'Koch Industries - Network', 'Packaged', '2016-05-06 00:00:00.000000'),
(469, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-06 00:00:00.000000'),
(470, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-06 00:00:00.000000'),
(471, 'Celgene - Cloud', 'Packaged', '2016-05-07 00:00:00.000000'),
(472, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-07 00:00:00.000000'),
(473, 'MSFT Customer ', 'Strategic', '2016-05-07 00:00:00.000000'),
(474, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-07 00:00:00.000000'),
(475, 'Riley Safer Holms -', 'Packaged', '2016-05-07 00:00:00.000000'),
(476, 'Fitzroy Health SOW B', 'Packaged', '2016-05-07 00:00:00.000000'),
(477, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-07 00:00:00.000000'),
(478, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-07 00:00:00.000000'),
(479, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-07 00:00:00.000000'),
(480, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-07 00:00:00.000000'),
(481, 'Life Care Centers of America,', 'Packaged', '2016-05-07 00:00:00.000000'),
(482, 'Bill Test Task -', 'Strategic', '2016-05-07 00:00:00.000000'),
(483, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-07 00:00:00.000000'),
(484, 'Shire - Phase 1', 'Packaged', '2016-05-07 00:00:00.000000'),
(485, 'Angelo Gordon - Office', 'Packaged', '2016-05-07 00:00:00.000000'),
(486, 'Biogen - BIO-001 -', 'Strategic', '2016-05-07 00:00:00.000000'),
(487, 'Steadfast - AWS POC', 'Packaged', '2016-05-07 00:00:00.000000'),
(488, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-07 00:00:00.000000'),
(489, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-07 00:00:00.000000'),
(490, 'Koch Industries - Network', 'Packaged', '2016-05-07 00:00:00.000000'),
(491, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-07 00:00:00.000000'),
(492, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-07 00:00:00.000000'),
(493, 'Celgene - Cloud', 'Packaged', '2016-05-08 00:00:00.000000'),
(494, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-08 00:00:00.000000'),
(495, 'MSFT Customer ', 'Strategic', '2016-05-08 00:00:00.000000'),
(496, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-08 00:00:00.000000'),
(497, 'Riley Safer Holms -', 'Packaged', '2016-05-08 00:00:00.000000'),
(498, 'Fitzroy Health SOW B', 'Packaged', '2016-05-08 00:00:00.000000'),
(499, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-08 00:00:00.000000'),
(500, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-08 00:00:00.000000'),
(501, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-08 00:00:00.000000'),
(502, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-08 00:00:00.000000'),
(503, 'Life Care Centers of America,', 'Packaged', '2016-05-08 00:00:00.000000'),
(504, 'Bill Test Task -', 'Strategic', '2016-05-08 00:00:00.000000'),
(505, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-08 00:00:00.000000'),
(506, 'Shire - Phase 1', 'Packaged', '2016-05-08 00:00:00.000000'),
(507, 'Angelo Gordon - Office', 'Packaged', '2016-05-08 00:00:00.000000'),
(508, 'Biogen - BIO-001 -', 'Strategic', '2016-05-08 00:00:00.000000'),
(509, 'Steadfast - AWS POC', 'Packaged', '2016-05-08 00:00:00.000000'),
(510, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-08 00:00:00.000000'),
(511, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-08 00:00:00.000000'),
(512, 'Koch Industries - Network', 'Packaged', '2016-05-08 00:00:00.000000'),
(513, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-08 00:00:00.000000'),
(514, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-08 00:00:00.000000'),
(515, 'Celgene - Cloud', 'Packaged', '2016-05-09 00:00:00.000000'),
(516, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-09 00:00:00.000000'),
(517, 'MSFT Customer ', 'Strategic', '2016-05-09 00:00:00.000000'),
(518, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-09 00:00:00.000000'),
(519, 'Riley Safer Holms -', 'Packaged', '2016-05-09 00:00:00.000000'),
(520, 'Fitzroy Health SOW B', 'Packaged', '2016-05-09 00:00:00.000000'),
(521, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-09 00:00:00.000000'),
(522, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-09 00:00:00.000000'),
(523, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-09 00:00:00.000000'),
(524, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-09 00:00:00.000000'),
(525, 'Life Care Centers of America,', 'Packaged', '2016-05-09 00:00:00.000000'),
(526, 'Bill Test Task -', 'Strategic', '2016-05-09 00:00:00.000000'),
(527, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-09 00:00:00.000000'),
(528, 'Shire - Phase 1', 'Packaged', '2016-05-09 00:00:00.000000'),
(529, 'Angelo Gordon - Office', 'Packaged', '2016-05-09 00:00:00.000000'),
(530, 'Biogen - BIO-001 -', 'Strategic', '2016-05-09 00:00:00.000000'),
(531, 'Steadfast - AWS POC', 'Packaged', '2016-05-09 00:00:00.000000'),
(532, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-09 00:00:00.000000'),
(533, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-09 00:00:00.000000'),
(534, 'Koch Industries - Network', 'Packaged', '2016-05-09 00:00:00.000000'),
(535, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-09 00:00:00.000000'),
(536, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-09 00:00:00.000000'),
(537, 'Celgene - Cloud', 'Packaged', '2016-05-10 00:00:00.000000'),
(538, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-10 00:00:00.000000'),
(539, 'MSFT Customer ', 'Strategic', '2016-05-10 00:00:00.000000'),
(540, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-10 00:00:00.000000'),
(541, 'Riley Safer Holms -', 'Packaged', '2016-05-10 00:00:00.000000'),
(542, 'Fitzroy Health SOW B', 'Packaged', '2016-05-10 00:00:00.000000'),
(543, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-10 00:00:00.000000'),
(544, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-10 00:00:00.000000'),
(545, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-10 00:00:00.000000'),
(546, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-10 00:00:00.000000'),
(547, 'Life Care Centers of America,', 'Packaged', '2016-05-10 00:00:00.000000'),
(548, 'Bill Test Task -', 'Strategic', '2016-05-10 00:00:00.000000'),
(549, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-10 00:00:00.000000'),
(550, 'Shire - Phase 1', 'Packaged', '2016-05-10 00:00:00.000000'),
(551, 'Angelo Gordon - Office', 'Packaged', '2016-05-10 00:00:00.000000'),
(552, 'Biogen - BIO-001 -', 'Strategic', '2016-05-10 00:00:00.000000'),
(553, 'Steadfast - AWS POC', 'Packaged', '2016-05-10 00:00:00.000000'),
(554, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-10 00:00:00.000000'),
(555, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-10 00:00:00.000000'),
(556, 'Koch Industries - Network', 'Packaged', '2016-05-10 00:00:00.000000'),
(557, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-10 00:00:00.000000'),
(558, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-10 00:00:00.000000'),
(559, 'Celgene - Cloud', 'Packaged', '2016-05-11 00:00:00.000000'),
(560, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-11 00:00:00.000000'),
(561, 'MSFT Customer ', 'Strategic', '2016-05-11 00:00:00.000000'),
(562, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-11 00:00:00.000000'),
(563, 'Riley Safer Holms -', 'Packaged', '2016-05-11 00:00:00.000000'),
(564, 'Fitzroy Health SOW B', 'Packaged', '2016-05-11 00:00:00.000000'),
(565, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-11 00:00:00.000000'),
(566, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-11 00:00:00.000000'),
(567, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-11 00:00:00.000000'),
(568, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-11 00:00:00.000000'),
(569, 'Life Care Centers of America,', 'Packaged', '2016-05-11 00:00:00.000000'),
(570, 'Bill Test Task -', 'Strategic', '2016-05-11 00:00:00.000000'),
(571, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-11 00:00:00.000000'),
(572, 'Shire - Phase 1', 'Packaged', '2016-05-11 00:00:00.000000'),
(573, 'Angelo Gordon - Office', 'Packaged', '2016-05-11 00:00:00.000000'),
(574, 'Biogen - BIO-001 -', 'Strategic', '2016-05-11 00:00:00.000000'),
(575, 'Steadfast - AWS POC', 'Packaged', '2016-05-11 00:00:00.000000'),
(576, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-11 00:00:00.000000'),
(577, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-11 00:00:00.000000'),
(578, 'Koch Industries - Network', 'Packaged', '2016-05-11 00:00:00.000000'),
(579, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-11 00:00:00.000000'),
(580, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-11 00:00:00.000000'),
(581, 'Celgene - Cloud', 'Packaged', '2016-05-12 00:00:00.000000'),
(582, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-12 00:00:00.000000'),
(583, 'MSFT Customer ', 'Strategic', '2016-05-12 00:00:00.000000'),
(584, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-12 00:00:00.000000'),
(585, 'Riley Safer Holms -', 'Packaged', '2016-05-12 00:00:00.000000'),
(586, 'Fitzroy Health SOW B', 'Packaged', '2016-05-12 00:00:00.000000'),
(587, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-12 00:00:00.000000'),
(588, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-12 00:00:00.000000'),
(589, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-12 00:00:00.000000'),
(590, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-12 00:00:00.000000'),
(591, 'Life Care Centers of America,', 'Packaged', '2016-05-12 00:00:00.000000'),
(592, 'Bill Test Task -', 'Strategic', '2016-05-12 00:00:00.000000'),
(593, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-12 00:00:00.000000'),
(594, 'Shire - Phase 1', 'Packaged', '2016-05-12 00:00:00.000000'),
(595, 'Angelo Gordon - Office', 'Packaged', '2016-05-12 00:00:00.000000'),
(596, 'Biogen - BIO-001 -', 'Strategic', '2016-05-12 00:00:00.000000'),
(597, 'Steadfast - AWS POC', 'Packaged', '2016-05-12 00:00:00.000000'),
(598, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-12 00:00:00.000000'),
(599, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-12 00:00:00.000000'),
(600, 'Koch Industries - Network', 'Packaged', '2016-05-12 00:00:00.000000'),
(601, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-12 00:00:00.000000'),
(602, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-12 00:00:00.000000'),
(603, 'Celgene - Cloud', 'Packaged', '2016-05-13 00:00:00.000000'),
(604, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-13 00:00:00.000000'),
(605, 'MSFT Customer ', 'Strategic', '2016-05-13 00:00:00.000000'),
(606, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-13 00:00:00.000000'),
(607, 'Riley Safer Holms -', 'Packaged', '2016-05-13 00:00:00.000000'),
(608, 'Fitzroy Health SOW B', 'Packaged', '2016-05-13 00:00:00.000000'),
(609, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-13 00:00:00.000000'),
(610, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-13 00:00:00.000000'),
(611, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-13 00:00:00.000000'),
(612, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-13 00:00:00.000000'),
(613, 'Life Care Centers of America,', 'Packaged', '2016-05-13 00:00:00.000000'),
(614, 'Bill Test Task -', 'Strategic', '2016-05-13 00:00:00.000000'),
(615, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-13 00:00:00.000000'),
(616, 'Shire - Phase 1', 'Packaged', '2016-05-13 00:00:00.000000'),
(617, 'Angelo Gordon - Office', 'Packaged', '2016-05-13 00:00:00.000000'),
(618, 'Biogen - BIO-001 -', 'Strategic', '2016-05-13 00:00:00.000000'),
(619, 'Steadfast - AWS POC', 'Packaged', '2016-05-13 00:00:00.000000'),
(620, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-13 00:00:00.000000'),
(621, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-13 00:00:00.000000'),
(622, 'Koch Industries - Network', 'Packaged', '2016-05-13 00:00:00.000000'),
(623, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-13 00:00:00.000000'),
(624, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-13 00:00:00.000000'),
(625, 'Celgene - Cloud', 'Packaged', '2016-05-14 00:00:00.000000'),
(626, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-14 00:00:00.000000'),
(627, 'MSFT Customer ', 'Strategic', '2016-05-14 00:00:00.000000'),
(628, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-14 00:00:00.000000'),
(629, 'Riley Safer Holms -', 'Packaged', '2016-05-14 00:00:00.000000'),
(630, 'Fitzroy Health SOW B', 'Packaged', '2016-05-14 00:00:00.000000'),
(631, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-14 00:00:00.000000'),
(632, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-14 00:00:00.000000'),
(633, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-14 00:00:00.000000'),
(634, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-14 00:00:00.000000'),
(635, 'Life Care Centers of America,', 'Packaged', '2016-05-14 00:00:00.000000'),
(636, 'Bill Test Task -', 'Strategic', '2016-05-14 00:00:00.000000'),
(637, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-14 00:00:00.000000'),
(638, 'Shire - Phase 1', 'Packaged', '2016-05-14 00:00:00.000000'),
(639, 'Angelo Gordon - Office', 'Packaged', '2016-05-14 00:00:00.000000'),
(640, 'Biogen - BIO-001 -', 'Strategic', '2016-05-14 00:00:00.000000'),
(641, 'Steadfast - AWS POC', 'Packaged', '2016-05-14 00:00:00.000000'),
(642, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-14 00:00:00.000000'),
(643, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-14 00:00:00.000000'),
(644, 'Koch Industries - Network', 'Packaged', '2016-05-14 00:00:00.000000'),
(645, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-14 00:00:00.000000'),
(646, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-14 00:00:00.000000'),
(647, 'Celgene - Cloud', 'Packaged', '2016-05-15 00:00:00.000000'),
(648, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-15 00:00:00.000000'),
(649, 'MSFT Customer ', 'Strategic', '2016-05-15 00:00:00.000000'),
(650, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-15 00:00:00.000000'),
(651, 'Riley Safer Holms -', 'Packaged', '2016-05-15 00:00:00.000000'),
(652, 'Fitzroy Health SOW B', 'Packaged', '2016-05-15 00:00:00.000000'),
(653, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-15 00:00:00.000000'),
(654, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-15 00:00:00.000000'),
(655, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-15 00:00:00.000000'),
(656, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-15 00:00:00.000000'),
(657, 'Life Care Centers of America,', 'Packaged', '2016-05-15 00:00:00.000000'),
(658, 'Bill Test Task -', 'Strategic', '2016-05-15 00:00:00.000000'),
(659, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-15 00:00:00.000000'),
(660, 'Shire - Phase 1', 'Packaged', '2016-05-15 00:00:00.000000');
INSERT INTO `epspe_engagement` (`engagement_id`, `Engagement`, `Type`, `DateService`) VALUES
(661, 'Angelo Gordon - Office', 'Packaged', '2016-05-15 00:00:00.000000'),
(662, 'Biogen - BIO-001 -', 'Strategic', '2016-05-15 00:00:00.000000'),
(663, 'Steadfast - AWS POC', 'Packaged', '2016-05-15 00:00:00.000000'),
(664, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-15 00:00:00.000000'),
(665, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-15 00:00:00.000000'),
(666, 'Koch Industries - Network', 'Packaged', '2016-05-15 00:00:00.000000'),
(667, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-15 00:00:00.000000'),
(668, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-15 00:00:00.000000'),
(669, 'Celgene - Cloud', 'Packaged', '2016-05-16 00:00:00.000000'),
(670, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-16 00:00:00.000000'),
(671, 'MSFT Customer ', 'Strategic', '2016-05-16 00:00:00.000000'),
(672, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-16 00:00:00.000000'),
(673, 'Riley Safer Holms -', 'Packaged', '2016-05-16 00:00:00.000000'),
(674, 'Fitzroy Health SOW B', 'Packaged', '2016-05-16 00:00:00.000000'),
(675, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-16 00:00:00.000000'),
(676, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-16 00:00:00.000000'),
(677, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-16 00:00:00.000000'),
(678, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-16 00:00:00.000000'),
(679, 'Life Care Centers of America,', 'Packaged', '2016-05-16 00:00:00.000000'),
(680, 'Bill Test Task -', 'Strategic', '2016-05-16 00:00:00.000000'),
(681, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-16 00:00:00.000000'),
(682, 'Shire - Phase 1', 'Packaged', '2016-05-16 00:00:00.000000'),
(683, 'Angelo Gordon - Office', 'Packaged', '2016-05-16 00:00:00.000000'),
(684, 'Biogen - BIO-001 -', 'Strategic', '2016-05-16 00:00:00.000000'),
(685, 'Steadfast - AWS POC', 'Packaged', '2016-05-16 00:00:00.000000'),
(686, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-16 00:00:00.000000'),
(687, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-16 00:00:00.000000'),
(688, 'Koch Industries - Network', 'Packaged', '2016-05-16 00:00:00.000000'),
(689, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-16 00:00:00.000000'),
(690, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-16 00:00:00.000000'),
(691, 'Celgene - Cloud', 'Packaged', '2016-05-17 00:00:00.000000'),
(692, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-17 00:00:00.000000'),
(693, 'MSFT Customer ', 'Strategic', '2016-05-17 00:00:00.000000'),
(694, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-17 00:00:00.000000'),
(695, 'Riley Safer Holms -', 'Packaged', '2016-05-17 00:00:00.000000'),
(696, 'Fitzroy Health SOW B', 'Packaged', '2016-05-17 00:00:00.000000'),
(697, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-17 00:00:00.000000'),
(698, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-17 00:00:00.000000'),
(699, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-17 00:00:00.000000'),
(700, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-17 00:00:00.000000'),
(701, 'Life Care Centers of America,', 'Packaged', '2016-05-17 00:00:00.000000'),
(702, 'Bill Test Task -', 'Strategic', '2016-05-17 00:00:00.000000'),
(703, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-17 00:00:00.000000'),
(704, 'Shire - Phase 1', 'Packaged', '2016-05-17 00:00:00.000000'),
(705, 'Angelo Gordon - Office', 'Packaged', '2016-05-17 00:00:00.000000'),
(706, 'Biogen - BIO-001 -', 'Strategic', '2016-05-17 00:00:00.000000'),
(707, 'Steadfast - AWS POC', 'Packaged', '2016-05-17 00:00:00.000000'),
(708, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-17 00:00:00.000000'),
(709, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-17 00:00:00.000000'),
(710, 'Koch Industries - Network', 'Packaged', '2016-05-17 00:00:00.000000'),
(711, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-17 00:00:00.000000'),
(712, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-17 00:00:00.000000'),
(713, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-17 00:00:00.000000'),
(714, 'George Washington University Workshop', 'Packaged', '2016-05-17 00:00:00.000000'),
(715, 'Disc Makers POC #2', 'Packaged', '2016-05-17 00:00:00.000000'),
(716, '9-11 Foundation', 'Packaged', '2016-05-17 00:00:00.000000'),
(717, 'ABS', 'Packaged', '2016-05-17 00:00:00.000000'),
(718, 'Celgene - Cloud', 'Packaged', '2016-05-18 00:00:00.000000'),
(719, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-18 00:00:00.000000'),
(720, 'MSFT Customer ', 'Strategic', '2016-05-18 00:00:00.000000'),
(721, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-18 00:00:00.000000'),
(722, 'Riley Safer Holms -', 'Packaged', '2016-05-18 00:00:00.000000'),
(723, 'Fitzroy Health SOW B', 'Packaged', '2016-05-18 00:00:00.000000'),
(724, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-18 00:00:00.000000'),
(725, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-18 00:00:00.000000'),
(726, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-18 00:00:00.000000'),
(727, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-18 00:00:00.000000'),
(728, 'Life Care Centers of America,', 'Packaged', '2016-05-18 00:00:00.000000'),
(729, 'Bill Test Task -', 'Strategic', '2016-05-18 00:00:00.000000'),
(730, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-18 00:00:00.000000'),
(731, 'Shire - Phase 1', 'Packaged', '2016-05-18 00:00:00.000000'),
(732, 'Angelo Gordon - Office', 'Packaged', '2016-05-18 00:00:00.000000'),
(733, 'Biogen - BIO-001 -', 'Strategic', '2016-05-18 00:00:00.000000'),
(734, 'Steadfast - AWS POC', 'Packaged', '2016-05-18 00:00:00.000000'),
(735, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-18 00:00:00.000000'),
(736, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-18 00:00:00.000000'),
(737, 'Koch Industries - Network', 'Packaged', '2016-05-18 00:00:00.000000'),
(738, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-18 00:00:00.000000'),
(739, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-18 00:00:00.000000'),
(740, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-18 00:00:00.000000'),
(741, 'George Washington University Workshop', 'Packaged', '2016-05-18 00:00:00.000000'),
(742, 'Disc Makers POC #2', 'Packaged', '2016-05-18 00:00:00.000000'),
(743, '9-11 Foundation', 'Packaged', '2016-05-18 00:00:00.000000'),
(744, 'ABS', 'Packaged', '2016-05-18 00:00:00.000000'),
(745, 'Celgene - Cloud', 'Packaged', '2016-05-19 00:00:00.000000'),
(746, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-19 00:00:00.000000'),
(747, 'MSFT Customer ', 'Strategic', '2016-05-19 00:00:00.000000'),
(748, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-19 00:00:00.000000'),
(749, 'Riley Safer Holms -', 'Packaged', '2016-05-19 00:00:00.000000'),
(750, 'Fitzroy Health SOW B', 'Packaged', '2016-05-19 00:00:00.000000'),
(751, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-19 00:00:00.000000'),
(752, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-19 00:00:00.000000'),
(753, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-19 00:00:00.000000'),
(754, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-19 00:00:00.000000'),
(755, 'Life Care Centers of America,', 'Packaged', '2016-05-19 00:00:00.000000'),
(756, 'Bill Test Task -', 'Strategic', '2016-05-19 00:00:00.000000'),
(757, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-19 00:00:00.000000'),
(758, 'Shire - Phase 1', 'Packaged', '2016-05-19 00:00:00.000000'),
(759, 'Angelo Gordon - Office', 'Packaged', '2016-05-19 00:00:00.000000'),
(760, 'Biogen - BIO-001 -', 'Strategic', '2016-05-19 00:00:00.000000'),
(761, 'Steadfast - AWS POC', 'Packaged', '2016-05-19 00:00:00.000000'),
(762, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-19 00:00:00.000000'),
(763, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-19 00:00:00.000000'),
(764, 'Koch Industries - Network', 'Packaged', '2016-05-19 00:00:00.000000'),
(765, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-19 00:00:00.000000'),
(766, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-19 00:00:00.000000'),
(767, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-19 00:00:00.000000'),
(768, 'George Washington University Workshop', 'Packaged', '2016-05-19 00:00:00.000000'),
(769, 'Disc Makers POC #2', 'Packaged', '2016-05-19 00:00:00.000000'),
(770, '9-11 Foundation', 'Packaged', '2016-05-19 00:00:00.000000'),
(771, 'ABS', 'Packaged', '2016-05-19 00:00:00.000000'),
(772, 'Access Softek', 'Packaged', '2016-05-19 00:00:00.000000'),
(773, 'Accruent', 'Packaged', '2016-05-19 00:00:00.000000'),
(774, 'Adventist Health', 'Packaged', '2016-05-19 00:00:00.000000'),
(775, 'Celgene - Cloud', 'Packaged', '2016-05-20 00:00:00.000000'),
(776, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-20 00:00:00.000000'),
(777, 'MSFT Customer ', 'Strategic', '2016-05-20 00:00:00.000000'),
(778, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-20 00:00:00.000000'),
(779, 'Riley Safer Holms -', 'Packaged', '2016-05-20 00:00:00.000000'),
(780, 'Fitzroy Health SOW B', 'Packaged', '2016-05-20 00:00:00.000000'),
(781, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-20 00:00:00.000000'),
(782, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-20 00:00:00.000000'),
(783, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-20 00:00:00.000000'),
(784, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-20 00:00:00.000000'),
(785, 'Life Care Centers of America,', 'Packaged', '2016-05-20 00:00:00.000000'),
(786, 'Bill Test Task -', 'Strategic', '2016-05-20 00:00:00.000000'),
(787, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-20 00:00:00.000000'),
(788, 'Shire - Phase 1', 'Packaged', '2016-05-20 00:00:00.000000'),
(789, 'Angelo Gordon - Office', 'Packaged', '2016-05-20 00:00:00.000000'),
(790, 'Biogen - BIO-001 -', 'Strategic', '2016-05-20 00:00:00.000000'),
(791, 'Steadfast - AWS POC', 'Packaged', '2016-05-20 00:00:00.000000'),
(792, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-20 00:00:00.000000'),
(793, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-20 00:00:00.000000'),
(794, 'Koch Industries - Network', 'Packaged', '2016-05-20 00:00:00.000000'),
(795, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-20 00:00:00.000000'),
(796, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-20 00:00:00.000000'),
(797, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-20 00:00:00.000000'),
(798, 'George Washington University Workshop', 'Packaged', '2016-05-20 00:00:00.000000'),
(799, 'Disc Makers POC #2', 'Packaged', '2016-05-20 00:00:00.000000'),
(800, '9-11 Foundation', 'Packaged', '2016-05-20 00:00:00.000000'),
(801, 'ABS', 'Packaged', '2016-05-20 00:00:00.000000'),
(802, 'Access Softek', 'Packaged', '2016-05-20 00:00:00.000000'),
(803, 'Accruent', 'Packaged', '2016-05-20 00:00:00.000000'),
(804, 'Adventist Health', 'Packaged', '2016-05-20 00:00:00.000000'),
(805, 'Celgene - Cloud', 'Packaged', '2016-05-21 00:00:00.000000'),
(806, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-21 00:00:00.000000'),
(807, 'MSFT Customer ', 'Strategic', '2016-05-21 00:00:00.000000'),
(808, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-21 00:00:00.000000'),
(809, 'Riley Safer Holms -', 'Packaged', '2016-05-21 00:00:00.000000'),
(810, 'Fitzroy Health SOW B', 'Packaged', '2016-05-21 00:00:00.000000'),
(811, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-21 00:00:00.000000'),
(812, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-21 00:00:00.000000'),
(813, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-21 00:00:00.000000'),
(814, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-21 00:00:00.000000'),
(815, 'Life Care Centers of America,', 'Packaged', '2016-05-21 00:00:00.000000'),
(816, 'Bill Test Task -', 'Strategic', '2016-05-21 00:00:00.000000'),
(817, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-21 00:00:00.000000'),
(818, 'Shire - Phase 1', 'Packaged', '2016-05-21 00:00:00.000000'),
(819, 'Angelo Gordon - Office', 'Packaged', '2016-05-21 00:00:00.000000'),
(820, 'Biogen - BIO-001 -', 'Strategic', '2016-05-21 00:00:00.000000'),
(821, 'Steadfast - AWS POC', 'Packaged', '2016-05-21 00:00:00.000000'),
(822, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-21 00:00:00.000000'),
(823, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-21 00:00:00.000000'),
(824, 'Koch Industries - Network', 'Packaged', '2016-05-21 00:00:00.000000'),
(825, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-21 00:00:00.000000'),
(826, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-21 00:00:00.000000'),
(827, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-21 00:00:00.000000'),
(828, 'George Washington University Workshop', 'Packaged', '2016-05-21 00:00:00.000000'),
(829, 'Disc Makers POC #2', 'Packaged', '2016-05-21 00:00:00.000000'),
(830, '9-11 Foundation', 'Packaged', '2016-05-21 00:00:00.000000'),
(831, 'ABS', 'Packaged', '2016-05-21 00:00:00.000000'),
(832, 'Access Softek', 'Packaged', '2016-05-21 00:00:00.000000'),
(833, 'Accruent', 'Packaged', '2016-05-21 00:00:00.000000'),
(834, 'Adventist Health', 'Packaged', '2016-05-21 00:00:00.000000'),
(835, 'Celgene - Cloud', 'Packaged', '2016-05-22 00:00:00.000000'),
(836, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-22 00:00:00.000000'),
(837, 'MSFT Customer ', 'Strategic', '2016-05-22 00:00:00.000000'),
(838, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-22 00:00:00.000000'),
(839, 'Riley Safer Holms -', 'Packaged', '2016-05-22 00:00:00.000000'),
(840, 'Fitzroy Health SOW B', 'Packaged', '2016-05-22 00:00:00.000000'),
(841, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-22 00:00:00.000000'),
(842, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-22 00:00:00.000000'),
(843, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-22 00:00:00.000000'),
(844, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-22 00:00:00.000000'),
(845, 'Life Care Centers of America,', 'Packaged', '2016-05-22 00:00:00.000000'),
(846, 'Bill Test Task -', 'Strategic', '2016-05-22 00:00:00.000000'),
(847, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-22 00:00:00.000000'),
(848, 'Shire - Phase 1', 'Packaged', '2016-05-22 00:00:00.000000'),
(849, 'Angelo Gordon - Office', 'Packaged', '2016-05-22 00:00:00.000000'),
(850, 'Biogen - BIO-001 -', 'Strategic', '2016-05-22 00:00:00.000000'),
(851, 'Steadfast - AWS POC', 'Packaged', '2016-05-22 00:00:00.000000'),
(852, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-22 00:00:00.000000'),
(853, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-22 00:00:00.000000'),
(854, 'Koch Industries - Network', 'Packaged', '2016-05-22 00:00:00.000000'),
(855, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-22 00:00:00.000000'),
(856, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-22 00:00:00.000000'),
(857, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-22 00:00:00.000000'),
(858, 'George Washington University Workshop', 'Packaged', '2016-05-22 00:00:00.000000'),
(859, 'Disc Makers POC #2', 'Packaged', '2016-05-22 00:00:00.000000'),
(860, '9-11 Foundation', 'Packaged', '2016-05-22 00:00:00.000000'),
(861, 'ABS', 'Packaged', '2016-05-22 00:00:00.000000'),
(862, 'Access Softek', 'Packaged', '2016-05-22 00:00:00.000000'),
(863, 'Accruent', 'Packaged', '2016-05-22 00:00:00.000000'),
(864, 'Adventist Health', 'Packaged', '2016-05-22 00:00:00.000000'),
(865, 'Celgene - Cloud', 'Packaged', '2016-05-23 00:00:00.000000'),
(866, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-23 00:00:00.000000'),
(867, 'MSFT Customer ', 'Strategic', '2016-05-23 00:00:00.000000'),
(868, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-23 00:00:00.000000'),
(869, 'Riley Safer Holms -', 'Packaged', '2016-05-23 00:00:00.000000'),
(870, 'Fitzroy Health SOW B', 'Packaged', '2016-05-23 00:00:00.000000'),
(871, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-23 00:00:00.000000'),
(872, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-23 00:00:00.000000'),
(873, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-23 00:00:00.000000'),
(874, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-23 00:00:00.000000'),
(875, 'Life Care Centers of America,', 'Packaged', '2016-05-23 00:00:00.000000'),
(876, 'Bill Test Task -', 'Strategic', '2016-05-23 00:00:00.000000'),
(877, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-23 00:00:00.000000'),
(878, 'Shire - Phase 1', 'Packaged', '2016-05-23 00:00:00.000000'),
(879, 'Angelo Gordon - Office', 'Packaged', '2016-05-23 00:00:00.000000'),
(880, 'Biogen - BIO-001 -', 'Strategic', '2016-05-23 00:00:00.000000'),
(881, 'Steadfast - AWS POC', 'Packaged', '2016-05-23 00:00:00.000000'),
(882, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-23 00:00:00.000000'),
(883, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-23 00:00:00.000000'),
(884, 'Koch Industries - Network', 'Packaged', '2016-05-23 00:00:00.000000'),
(885, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-23 00:00:00.000000'),
(886, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-23 00:00:00.000000'),
(887, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-23 00:00:00.000000'),
(888, 'George Washington University Workshop', 'Packaged', '2016-05-23 00:00:00.000000'),
(889, 'Disc Makers POC #2', 'Packaged', '2016-05-23 00:00:00.000000'),
(890, '9-11 Foundation', 'Packaged', '2016-05-23 00:00:00.000000'),
(891, 'ABS', 'Packaged', '2016-05-23 00:00:00.000000'),
(892, 'Access Softek', 'Packaged', '2016-05-23 00:00:00.000000'),
(893, 'Accruent', 'Packaged', '2016-05-23 00:00:00.000000'),
(894, 'Adventist Health', 'Packaged', '2016-05-23 00:00:00.000000'),
(895, 'Celgene - Cloud', 'Packaged', '2016-05-24 00:00:00.000000'),
(896, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-24 00:00:00.000000'),
(897, 'MSFT Customer ', 'Strategic', '2016-05-24 00:00:00.000000'),
(898, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-24 00:00:00.000000'),
(899, 'Riley Safer Holms -', 'Packaged', '2016-05-24 00:00:00.000000'),
(900, 'Fitzroy Health SOW B', 'Packaged', '2016-05-24 00:00:00.000000'),
(901, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-24 00:00:00.000000'),
(902, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-24 00:00:00.000000'),
(903, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-24 00:00:00.000000'),
(904, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-24 00:00:00.000000'),
(905, 'Life Care Centers of America,', 'Packaged', '2016-05-24 00:00:00.000000'),
(906, 'Bill Test Task -', 'Strategic', '2016-05-24 00:00:00.000000'),
(907, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-24 00:00:00.000000'),
(908, 'Shire - Phase 1', 'Packaged', '2016-05-24 00:00:00.000000'),
(909, 'Angelo Gordon - Office', 'Packaged', '2016-05-24 00:00:00.000000'),
(910, 'Biogen - BIO-001 -', 'Strategic', '2016-05-24 00:00:00.000000'),
(911, 'Steadfast - AWS POC', 'Packaged', '2016-05-24 00:00:00.000000'),
(912, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-24 00:00:00.000000'),
(913, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-24 00:00:00.000000'),
(914, 'Koch Industries - Network', 'Packaged', '2016-05-24 00:00:00.000000'),
(915, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-24 00:00:00.000000'),
(916, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-24 00:00:00.000000'),
(917, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-24 00:00:00.000000'),
(918, 'George Washington University Workshop', 'Packaged', '2016-05-24 00:00:00.000000'),
(919, 'Disc Makers POC #2', 'Packaged', '2016-05-24 00:00:00.000000'),
(920, '9-11 Foundation', 'Packaged', '2016-05-24 00:00:00.000000'),
(921, 'ABS', 'Packaged', '2016-05-24 00:00:00.000000'),
(922, 'Access Softek', 'Packaged', '2016-05-24 00:00:00.000000'),
(923, 'Accruent', 'Packaged', '2016-05-24 00:00:00.000000'),
(924, 'Adventist Health', 'Packaged', '2016-05-24 00:00:00.000000'),
(925, 'Advocate', 'Packaged', '2016-05-24 00:00:00.000000'),
(926, 'AdvoMeds.org', 'Packaged', '2016-05-24 00:00:00.000000'),
(927, 'Celgene - Cloud', 'Packaged', '2016-05-25 00:00:00.000000'),
(928, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-25 00:00:00.000000'),
(929, 'MSFT Customer ', 'Strategic', '2016-05-25 00:00:00.000000'),
(930, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-25 00:00:00.000000'),
(931, 'Riley Safer Holms -', 'Packaged', '2016-05-25 00:00:00.000000'),
(932, 'Fitzroy Health SOW B', 'Packaged', '2016-05-25 00:00:00.000000'),
(933, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-25 00:00:00.000000'),
(934, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-25 00:00:00.000000'),
(935, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-25 00:00:00.000000'),
(936, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-25 00:00:00.000000'),
(937, 'Life Care Centers of America,', 'Packaged', '2016-05-25 00:00:00.000000'),
(938, 'Bill Test Task -', 'Strategic', '2016-05-25 00:00:00.000000'),
(939, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-25 00:00:00.000000'),
(940, 'Shire - Phase 1', 'Packaged', '2016-05-25 00:00:00.000000'),
(941, 'Angelo Gordon - Office', 'Packaged', '2016-05-25 00:00:00.000000'),
(942, 'Biogen - BIO-001 -', 'Strategic', '2016-05-25 00:00:00.000000'),
(943, 'Steadfast - AWS POC', 'Packaged', '2016-05-25 00:00:00.000000'),
(944, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-25 00:00:00.000000'),
(945, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-25 00:00:00.000000'),
(946, 'Koch Industries - Network', 'Packaged', '2016-05-25 00:00:00.000000'),
(947, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-25 00:00:00.000000'),
(948, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-25 00:00:00.000000'),
(949, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-25 00:00:00.000000'),
(950, 'George Washington University Workshop', 'Packaged', '2016-05-25 00:00:00.000000'),
(951, 'Disc Makers POC #2', 'Packaged', '2016-05-25 00:00:00.000000'),
(952, '9-11 Foundation', 'Packaged', '2016-05-25 00:00:00.000000'),
(953, 'ABS', 'Packaged', '2016-05-25 00:00:00.000000'),
(954, 'Access Softek', 'Packaged', '2016-05-25 00:00:00.000000'),
(955, 'Accruent', 'Packaged', '2016-05-25 00:00:00.000000'),
(956, 'Adventist Health', 'Packaged', '2016-05-25 00:00:00.000000'),
(957, 'Advocate', 'Packaged', '2016-05-25 00:00:00.000000'),
(958, 'AdvoMeds.org', 'Packaged', '2016-05-25 00:00:00.000000'),
(959, 'Celgene - Cloud', 'Packaged', '2016-05-26 00:00:00.000000'),
(960, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-26 00:00:00.000000'),
(961, 'MSFT Customer ', 'Strategic', '2016-05-26 00:00:00.000000'),
(962, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-26 00:00:00.000000'),
(963, 'Riley Safer Holms -', 'Packaged', '2016-05-26 00:00:00.000000'),
(964, 'Fitzroy Health SOW B', 'Packaged', '2016-05-26 00:00:00.000000'),
(965, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-26 00:00:00.000000'),
(966, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-26 00:00:00.000000'),
(967, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-26 00:00:00.000000'),
(968, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-26 00:00:00.000000'),
(969, 'Life Care Centers of America,', 'Packaged', '2016-05-26 00:00:00.000000'),
(970, 'Bill Test Task -', 'Strategic', '2016-05-26 00:00:00.000000'),
(971, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-26 00:00:00.000000'),
(972, 'Shire - Phase 1', 'Packaged', '2016-05-26 00:00:00.000000'),
(973, 'Angelo Gordon - Office', 'Packaged', '2016-05-26 00:00:00.000000'),
(974, 'Biogen - BIO-001 -', 'Strategic', '2016-05-26 00:00:00.000000'),
(975, 'Steadfast - AWS POC', 'Packaged', '2016-05-26 00:00:00.000000'),
(976, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-26 00:00:00.000000'),
(977, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-26 00:00:00.000000'),
(978, 'Koch Industries - Network', 'Packaged', '2016-05-26 00:00:00.000000'),
(979, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-26 00:00:00.000000'),
(980, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-26 00:00:00.000000'),
(981, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-26 00:00:00.000000'),
(982, 'George Washington University Workshop', 'Packaged', '2016-05-26 00:00:00.000000'),
(983, 'Disc Makers POC #2', 'Packaged', '2016-05-26 00:00:00.000000'),
(984, '9-11 Foundation', 'Packaged', '2016-05-26 00:00:00.000000'),
(985, 'ABS', 'Packaged', '2016-05-26 00:00:00.000000'),
(986, 'Access Softek', 'Packaged', '2016-05-26 00:00:00.000000'),
(987, 'Accruent', 'Packaged', '2016-05-26 00:00:00.000000'),
(988, 'Adventist Health', 'Packaged', '2016-05-26 00:00:00.000000'),
(989, 'Advocate', 'Packaged', '2016-05-26 00:00:00.000000'),
(990, 'AdvoMeds.org', 'Packaged', '2016-05-26 00:00:00.000000'),
(991, 'Celgene - Cloud', 'Packaged', '2016-05-27 00:00:00.000000'),
(992, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-27 00:00:00.000000'),
(993, 'MSFT Customer ', 'Strategic', '2016-05-27 00:00:00.000000'),
(994, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-27 00:00:00.000000'),
(995, 'Riley Safer Holms -', 'Packaged', '2016-05-27 00:00:00.000000'),
(996, 'Fitzroy Health SOW B', 'Packaged', '2016-05-27 00:00:00.000000'),
(997, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-27 00:00:00.000000'),
(998, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-27 00:00:00.000000'),
(999, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-27 00:00:00.000000'),
(1000, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-27 00:00:00.000000'),
(1001, 'Life Care Centers of America,', 'Packaged', '2016-05-27 00:00:00.000000'),
(1002, 'Bill Test Task -', 'Strategic', '2016-05-27 00:00:00.000000'),
(1003, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-27 00:00:00.000000'),
(1004, 'Shire - Phase 1', 'Packaged', '2016-05-27 00:00:00.000000'),
(1005, 'Angelo Gordon - Office', 'Packaged', '2016-05-27 00:00:00.000000'),
(1006, 'Biogen - BIO-001 -', 'Strategic', '2016-05-27 00:00:00.000000'),
(1007, 'Steadfast - AWS POC', 'Packaged', '2016-05-27 00:00:00.000000'),
(1008, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-27 00:00:00.000000'),
(1009, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-27 00:00:00.000000'),
(1010, 'Koch Industries - Network', 'Packaged', '2016-05-27 00:00:00.000000'),
(1011, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-27 00:00:00.000000'),
(1012, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-27 00:00:00.000000'),
(1013, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-27 00:00:00.000000'),
(1014, 'George Washington University Workshop', 'Packaged', '2016-05-27 00:00:00.000000'),
(1015, 'Disc Makers POC #2', 'Packaged', '2016-05-27 00:00:00.000000'),
(1016, '9-11 Foundation', 'Packaged', '2016-05-27 00:00:00.000000'),
(1017, 'ABS', 'Packaged', '2016-05-27 00:00:00.000000'),
(1018, 'Access Softek', 'Packaged', '2016-05-27 00:00:00.000000'),
(1019, 'Accruent', 'Packaged', '2016-05-27 00:00:00.000000'),
(1020, 'Adventist Health', 'Packaged', '2016-05-27 00:00:00.000000'),
(1021, 'Advocate', 'Packaged', '2016-05-27 00:00:00.000000'),
(1022, 'AdvoMeds.org', 'Packaged', '2016-05-27 00:00:00.000000'),
(1023, 'Celgene - Cloud', 'Packaged', '2016-05-28 00:00:00.000000'),
(1024, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-28 00:00:00.000000'),
(1025, 'MSFT Customer ', 'Strategic', '2016-05-28 00:00:00.000000'),
(1026, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-28 00:00:00.000000'),
(1027, 'Riley Safer Holms -', 'Packaged', '2016-05-28 00:00:00.000000'),
(1028, 'Fitzroy Health SOW B', 'Packaged', '2016-05-28 00:00:00.000000'),
(1029, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-28 00:00:00.000000'),
(1030, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-28 00:00:00.000000'),
(1031, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-28 00:00:00.000000'),
(1032, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-28 00:00:00.000000'),
(1033, 'Life Care Centers of America,', 'Packaged', '2016-05-28 00:00:00.000000'),
(1034, 'Bill Test Task -', 'Strategic', '2016-05-28 00:00:00.000000'),
(1035, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-28 00:00:00.000000'),
(1036, 'Shire - Phase 1', 'Packaged', '2016-05-28 00:00:00.000000'),
(1037, 'Angelo Gordon - Office', 'Packaged', '2016-05-28 00:00:00.000000'),
(1038, 'Biogen - BIO-001 -', 'Strategic', '2016-05-28 00:00:00.000000'),
(1039, 'Steadfast - AWS POC', 'Packaged', '2016-05-28 00:00:00.000000'),
(1040, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-28 00:00:00.000000'),
(1041, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-28 00:00:00.000000'),
(1042, 'Koch Industries - Network', 'Packaged', '2016-05-28 00:00:00.000000'),
(1043, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-28 00:00:00.000000'),
(1044, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-28 00:00:00.000000'),
(1045, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-28 00:00:00.000000'),
(1046, 'George Washington University Workshop', 'Packaged', '2016-05-28 00:00:00.000000'),
(1047, 'Disc Makers POC #2', 'Packaged', '2016-05-28 00:00:00.000000'),
(1048, '9-11 Foundation', 'Packaged', '2016-05-28 00:00:00.000000'),
(1049, 'ABS', 'Packaged', '2016-05-28 00:00:00.000000'),
(1050, 'Access Softek', 'Packaged', '2016-05-28 00:00:00.000000'),
(1051, 'Accruent', 'Packaged', '2016-05-28 00:00:00.000000'),
(1052, 'Adventist Health', 'Packaged', '2016-05-28 00:00:00.000000'),
(1053, 'Advocate', 'Packaged', '2016-05-28 00:00:00.000000'),
(1054, 'AdvoMeds.org', 'Packaged', '2016-05-28 00:00:00.000000'),
(1055, 'AIG', 'Packaged', '2016-05-28 00:00:00.000000'),
(1056, 'AirFastTickets', 'Packaged', '2016-05-28 00:00:00.000000'),
(1057, 'Allied Beverage Group', 'Packaged', '2016-05-28 00:00:00.000000'),
(1058, 'Allied Insurance', 'Packaged', '2016-05-28 00:00:00.000000'),
(1059, 'AlphaCrest Capital Management', 'Packaged', '2016-05-28 00:00:00.000000'),
(1060, 'Altria', 'Packaged', '2016-05-28 00:00:00.000000'),
(1061, 'AMEC', 'Packaged', '2016-05-28 00:00:00.000000'),
(1062, 'AnesthsiaOS', 'Packaged', '2016-05-28 00:00:00.000000'),
(1063, 'Angelo Gordon', 'Packaged', '2016-05-28 00:00:00.000000'),
(1064, 'Ansell', 'Packaged', '2016-05-28 00:00:00.000000'),
(1065, 'Ascende', 'Packaged', '2016-05-28 00:00:00.000000'),
(1066, 'Athene Insurance', 'Packaged', '2016-05-28 00:00:00.000000'),
(1067, 'Atlas Air', 'Packaged', '2016-05-28 00:00:00.000000'),
(1068, 'Celgene - Cloud', 'Packaged', '2016-05-29 00:00:00.000000'),
(1069, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-29 00:00:00.000000'),
(1070, 'MSFT Customer ', 'Strategic', '2016-05-29 00:00:00.000000'),
(1071, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-29 00:00:00.000000'),
(1072, 'Riley Safer Holms -', 'Packaged', '2016-05-29 00:00:00.000000'),
(1073, 'Fitzroy Health SOW B', 'Packaged', '2016-05-29 00:00:00.000000'),
(1074, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-29 00:00:00.000000'),
(1075, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-29 00:00:00.000000'),
(1076, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-29 00:00:00.000000'),
(1077, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-29 00:00:00.000000'),
(1078, 'Life Care Centers of America,', 'Packaged', '2016-05-29 00:00:00.000000'),
(1079, 'Bill Test Task -', 'Strategic', '2016-05-29 00:00:00.000000'),
(1080, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-29 00:00:00.000000'),
(1081, 'Shire - Phase 1', 'Packaged', '2016-05-29 00:00:00.000000'),
(1082, 'Angelo Gordon - Office', 'Packaged', '2016-05-29 00:00:00.000000'),
(1083, 'Biogen - BIO-001 -', 'Strategic', '2016-05-29 00:00:00.000000'),
(1084, 'Steadfast - AWS POC', 'Packaged', '2016-05-29 00:00:00.000000'),
(1085, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-29 00:00:00.000000'),
(1086, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-29 00:00:00.000000'),
(1087, 'Koch Industries - Network', 'Packaged', '2016-05-29 00:00:00.000000'),
(1088, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-29 00:00:00.000000'),
(1089, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-29 00:00:00.000000'),
(1090, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-29 00:00:00.000000'),
(1091, 'George Washington University Workshop', 'Packaged', '2016-05-29 00:00:00.000000'),
(1092, 'Disc Makers POC #2', 'Packaged', '2016-05-29 00:00:00.000000'),
(1093, '9-11 Foundation', 'Packaged', '2016-05-29 00:00:00.000000'),
(1094, 'ABS', 'Packaged', '2016-05-29 00:00:00.000000'),
(1095, 'Access Softek', 'Packaged', '2016-05-29 00:00:00.000000'),
(1096, 'Accruent', 'Packaged', '2016-05-29 00:00:00.000000'),
(1097, 'Adventist Health', 'Packaged', '2016-05-29 00:00:00.000000'),
(1098, 'Advocate', 'Packaged', '2016-05-29 00:00:00.000000'),
(1099, 'AdvoMeds.org', 'Packaged', '2016-05-29 00:00:00.000000'),
(1100, 'AIG', 'Packaged', '2016-05-29 00:00:00.000000'),
(1101, 'AirFastTickets', 'Packaged', '2016-05-29 00:00:00.000000'),
(1102, 'Allied Beverage Group', 'Packaged', '2016-05-29 00:00:00.000000'),
(1103, 'Allied Insurance', 'Packaged', '2016-05-29 00:00:00.000000'),
(1104, 'AlphaCrest Capital Management', 'Packaged', '2016-05-29 00:00:00.000000'),
(1105, 'Altria', 'Packaged', '2016-05-29 00:00:00.000000'),
(1106, 'AMEC', 'Packaged', '2016-05-29 00:00:00.000000'),
(1107, 'AnesthsiaOS', 'Packaged', '2016-05-29 00:00:00.000000'),
(1108, 'Angelo Gordon', 'Packaged', '2016-05-29 00:00:00.000000'),
(1109, 'Ansell', 'Packaged', '2016-05-29 00:00:00.000000'),
(1110, 'Ascende', 'Packaged', '2016-05-29 00:00:00.000000'),
(1111, 'Athene Insurance', 'Packaged', '2016-05-29 00:00:00.000000'),
(1112, 'Atlas Air', 'Packaged', '2016-05-29 00:00:00.000000'),
(1113, 'Celgene - Cloud', 'Packaged', '2016-05-30 00:00:00.000000'),
(1114, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-05-30 00:00:00.000000'),
(1115, 'MSFT Customer ', 'Strategic', '2016-05-30 00:00:00.000000'),
(1116, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-05-30 00:00:00.000000'),
(1117, 'Riley Safer Holms -', 'Packaged', '2016-05-30 00:00:00.000000'),
(1118, 'Fitzroy Health SOW B', 'Packaged', '2016-05-30 00:00:00.000000'),
(1119, 'Novo Nordisk Resource Request', 'Packaged', '2016-05-30 00:00:00.000000'),
(1120, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-05-30 00:00:00.000000'),
(1121, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-05-30 00:00:00.000000'),
(1122, 'CA Lottery MSFT SOW', 'Packaged', '2016-05-30 00:00:00.000000'),
(1123, 'Life Care Centers of America,', 'Packaged', '2016-05-30 00:00:00.000000'),
(1124, 'Bill Test Task -', 'Strategic', '2016-05-30 00:00:00.000000'),
(1125, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-05-30 00:00:00.000000'),
(1126, 'Shire - Phase 1', 'Packaged', '2016-05-30 00:00:00.000000'),
(1127, 'Angelo Gordon - Office', 'Packaged', '2016-05-30 00:00:00.000000'),
(1128, 'Biogen - BIO-001 -', 'Strategic', '2016-05-30 00:00:00.000000'),
(1129, 'Steadfast - AWS POC', 'Packaged', '2016-05-30 00:00:00.000000'),
(1130, 'ITG Onsite Meeting Resource', 'Packaged', '2016-05-30 00:00:00.000000'),
(1131, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-05-30 00:00:00.000000'),
(1132, 'Koch Industries - Network', 'Packaged', '2016-05-30 00:00:00.000000'),
(1133, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-05-30 00:00:00.000000'),
(1134, 'McKesson ARM (MCK-001)', 'Strategic', '2016-05-30 00:00:00.000000'),
(1135, 'Verifone Assessment (VER-001)', 'Packaged', '2016-05-30 00:00:00.000000'),
(1136, 'George Washington University Workshop', 'Packaged', '2016-05-30 00:00:00.000000'),
(1137, 'Disc Makers POC #2', 'Packaged', '2016-05-30 00:00:00.000000'),
(1138, '9-11 Foundation', 'Packaged', '2016-05-30 00:00:00.000000'),
(1139, 'ABS', 'Packaged', '2016-05-30 00:00:00.000000'),
(1140, 'Access Softek', 'Packaged', '2016-05-30 00:00:00.000000'),
(1141, 'Accruent', 'Packaged', '2016-05-30 00:00:00.000000'),
(1142, 'Adventist Health', 'Packaged', '2016-05-30 00:00:00.000000'),
(1143, 'Advocate', 'Packaged', '2016-05-30 00:00:00.000000'),
(1144, 'AdvoMeds.org', 'Packaged', '2016-05-30 00:00:00.000000'),
(1145, 'AIG', 'Packaged', '2016-05-30 00:00:00.000000'),
(1146, 'AirFastTickets', 'Packaged', '2016-05-30 00:00:00.000000'),
(1147, 'Allied Beverage Group', 'Packaged', '2016-05-30 00:00:00.000000'),
(1148, 'Allied Insurance', 'Packaged', '2016-05-30 00:00:00.000000'),
(1149, 'AlphaCrest Capital Management', 'Packaged', '2016-05-30 00:00:00.000000'),
(1150, 'Altria', 'Packaged', '2016-05-30 00:00:00.000000'),
(1151, 'AMEC', 'Packaged', '2016-05-30 00:00:00.000000'),
(1152, 'AnesthsiaOS', 'Packaged', '2016-05-30 00:00:00.000000'),
(1153, 'Angelo Gordon', 'Packaged', '2016-05-30 00:00:00.000000'),
(1154, 'Ansell', 'Packaged', '2016-05-30 00:00:00.000000'),
(1155, 'Ascende', 'Packaged', '2016-05-30 00:00:00.000000'),
(1156, 'Athene Insurance', 'Packaged', '2016-05-30 00:00:00.000000'),
(1157, 'Atlas Air', 'Packaged', '2016-05-30 00:00:00.000000'),
(1158, 'Celgene - Cloud', 'Packaged', '2016-06-01 00:00:00.000000'),
(1159, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-01 00:00:00.000000'),
(1160, 'MSFT Customer ', 'Strategic', '2016-06-01 00:00:00.000000'),
(1161, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-01 00:00:00.000000'),
(1162, 'Riley Safer Holms -', 'Packaged', '2016-06-01 00:00:00.000000'),
(1163, 'Fitzroy Health SOW B', 'Packaged', '2016-06-01 00:00:00.000000'),
(1164, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-01 00:00:00.000000'),
(1165, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-01 00:00:00.000000'),
(1166, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-01 00:00:00.000000'),
(1167, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-01 00:00:00.000000'),
(1168, 'Life Care Centers of America,', 'Packaged', '2016-06-01 00:00:00.000000'),
(1169, 'Bill Test Task -', 'Strategic', '2016-06-01 00:00:00.000000'),
(1170, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-01 00:00:00.000000'),
(1171, 'Shire - Phase 1', 'Packaged', '2016-06-01 00:00:00.000000'),
(1172, 'Angelo Gordon - Office', 'Packaged', '2016-06-01 00:00:00.000000'),
(1173, 'Biogen - BIO-001 -', 'Strategic', '2016-06-01 00:00:00.000000'),
(1174, 'Steadfast - AWS POC', 'Packaged', '2016-06-01 00:00:00.000000'),
(1175, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-01 00:00:00.000000'),
(1176, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-01 00:00:00.000000'),
(1177, 'Koch Industries - Network', 'Packaged', '2016-06-01 00:00:00.000000'),
(1178, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-01 00:00:00.000000'),
(1179, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-01 00:00:00.000000'),
(1180, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-01 00:00:00.000000'),
(1181, 'George Washington University Workshop', 'Packaged', '2016-06-01 00:00:00.000000'),
(1182, 'Disc Makers POC #2', 'Packaged', '2016-06-01 00:00:00.000000'),
(1183, '9-11 Foundation', 'Packaged', '2016-06-01 00:00:00.000000'),
(1184, 'ABS', 'Packaged', '2016-06-01 00:00:00.000000'),
(1185, 'Access Softek', 'Packaged', '2016-06-01 00:00:00.000000'),
(1186, 'Accruent', 'Packaged', '2016-06-01 00:00:00.000000'),
(1187, 'Adventist Health', 'Packaged', '2016-06-01 00:00:00.000000'),
(1188, 'Advocate', 'Packaged', '2016-06-01 00:00:00.000000'),
(1189, 'AdvoMeds.org', 'Packaged', '2016-06-01 00:00:00.000000'),
(1190, 'AIG', 'Packaged', '2016-06-01 00:00:00.000000'),
(1191, 'AirFastTickets', 'Packaged', '2016-06-01 00:00:00.000000'),
(1192, 'Allied Beverage Group', 'Packaged', '2016-06-01 00:00:00.000000'),
(1193, 'Allied Insurance', 'Packaged', '2016-06-01 00:00:00.000000'),
(1194, 'AlphaCrest Capital Management', 'Packaged', '2016-06-01 00:00:00.000000'),
(1195, 'Altria', 'Packaged', '2016-06-01 00:00:00.000000'),
(1196, 'AMEC', 'Packaged', '2016-06-01 00:00:00.000000'),
(1197, 'AnesthsiaOS', 'Packaged', '2016-06-01 00:00:00.000000'),
(1198, 'Angelo Gordon', 'Packaged', '2016-06-01 00:00:00.000000'),
(1199, 'Ansell', 'Packaged', '2016-06-01 00:00:00.000000'),
(1200, 'Ascende', 'Packaged', '2016-06-01 00:00:00.000000'),
(1201, 'Athene Insurance', 'Packaged', '2016-06-01 00:00:00.000000'),
(1202, 'Atlas Air', 'Packaged', '2016-06-01 00:00:00.000000'),
(1203, 'Celgene - Cloud', 'Packaged', '2016-06-02 00:00:00.000000'),
(1204, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-02 00:00:00.000000'),
(1205, 'MSFT Customer ', 'Strategic', '2016-06-02 00:00:00.000000'),
(1206, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-02 00:00:00.000000'),
(1207, 'Riley Safer Holms -', 'Packaged', '2016-06-02 00:00:00.000000'),
(1208, 'Fitzroy Health SOW B', 'Packaged', '2016-06-02 00:00:00.000000'),
(1209, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-02 00:00:00.000000'),
(1210, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-02 00:00:00.000000'),
(1211, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-02 00:00:00.000000'),
(1212, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-02 00:00:00.000000'),
(1213, 'Life Care Centers of America,', 'Packaged', '2016-06-02 00:00:00.000000'),
(1214, 'Bill Test Task -', 'Strategic', '2016-06-02 00:00:00.000000'),
(1215, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-02 00:00:00.000000'),
(1216, 'Shire - Phase 1', 'Packaged', '2016-06-02 00:00:00.000000'),
(1217, 'Angelo Gordon - Office', 'Packaged', '2016-06-02 00:00:00.000000'),
(1218, 'Biogen - BIO-001 -', 'Strategic', '2016-06-02 00:00:00.000000'),
(1219, 'Steadfast - AWS POC', 'Packaged', '2016-06-02 00:00:00.000000'),
(1220, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-02 00:00:00.000000'),
(1221, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-02 00:00:00.000000'),
(1222, 'Koch Industries - Network', 'Packaged', '2016-06-02 00:00:00.000000'),
(1223, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-02 00:00:00.000000'),
(1224, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-02 00:00:00.000000'),
(1225, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-02 00:00:00.000000'),
(1226, 'George Washington University Workshop', 'Packaged', '2016-06-02 00:00:00.000000'),
(1227, 'Disc Makers POC #2', 'Packaged', '2016-06-02 00:00:00.000000'),
(1228, '9-11 Foundation', 'Packaged', '2016-06-02 00:00:00.000000'),
(1229, 'ABS', 'Packaged', '2016-06-02 00:00:00.000000'),
(1230, 'Access Softek', 'Packaged', '2016-06-02 00:00:00.000000'),
(1231, 'Accruent', 'Packaged', '2016-06-02 00:00:00.000000'),
(1232, 'Adventist Health', 'Packaged', '2016-06-02 00:00:00.000000'),
(1233, 'Advocate', 'Packaged', '2016-06-02 00:00:00.000000'),
(1234, 'AdvoMeds.org', 'Packaged', '2016-06-02 00:00:00.000000'),
(1235, 'AIG', 'Packaged', '2016-06-02 00:00:00.000000'),
(1236, 'AirFastTickets', 'Packaged', '2016-06-02 00:00:00.000000'),
(1237, 'Allied Beverage Group', 'Packaged', '2016-06-02 00:00:00.000000'),
(1238, 'Allied Insurance', 'Packaged', '2016-06-02 00:00:00.000000'),
(1239, 'AlphaCrest Capital Management', 'Packaged', '2016-06-02 00:00:00.000000'),
(1240, 'Altria', 'Packaged', '2016-06-02 00:00:00.000000'),
(1241, 'AMEC', 'Packaged', '2016-06-02 00:00:00.000000'),
(1242, 'AnesthsiaOS', 'Packaged', '2016-06-02 00:00:00.000000'),
(1243, 'Angelo Gordon', 'Packaged', '2016-06-02 00:00:00.000000'),
(1244, 'Ansell', 'Packaged', '2016-06-02 00:00:00.000000'),
(1245, 'Ascende', 'Packaged', '2016-06-02 00:00:00.000000'),
(1246, 'Athene Insurance', 'Packaged', '2016-06-02 00:00:00.000000'),
(1247, 'Atlas Air', 'Packaged', '2016-06-02 00:00:00.000000'),
(1248, 'Celgene - Cloud', 'Packaged', '2016-06-03 00:00:00.000000'),
(1249, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-03 00:00:00.000000'),
(1250, 'MSFT Customer ', 'Strategic', '2016-06-03 00:00:00.000000'),
(1251, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-03 00:00:00.000000'),
(1252, 'Riley Safer Holms -', 'Packaged', '2016-06-03 00:00:00.000000'),
(1253, 'Fitzroy Health SOW B', 'Packaged', '2016-06-03 00:00:00.000000'),
(1254, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-03 00:00:00.000000'),
(1255, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-03 00:00:00.000000'),
(1256, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-03 00:00:00.000000'),
(1257, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-03 00:00:00.000000'),
(1258, 'Life Care Centers of America,', 'Packaged', '2016-06-03 00:00:00.000000'),
(1259, 'Bill Test Task -', 'Strategic', '2016-06-03 00:00:00.000000'),
(1260, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-03 00:00:00.000000'),
(1261, 'Shire - Phase 1', 'Packaged', '2016-06-03 00:00:00.000000'),
(1262, 'Angelo Gordon - Office', 'Packaged', '2016-06-03 00:00:00.000000'),
(1263, 'Biogen - BIO-001 -', 'Strategic', '2016-06-03 00:00:00.000000'),
(1264, 'Steadfast - AWS POC', 'Packaged', '2016-06-03 00:00:00.000000'),
(1265, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-03 00:00:00.000000'),
(1266, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-03 00:00:00.000000'),
(1267, 'Koch Industries - Network', 'Packaged', '2016-06-03 00:00:00.000000'),
(1268, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-03 00:00:00.000000'),
(1269, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-03 00:00:00.000000'),
(1270, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-03 00:00:00.000000'),
(1271, 'George Washington University Workshop', 'Packaged', '2016-06-03 00:00:00.000000'),
(1272, 'Disc Makers POC #2', 'Packaged', '2016-06-03 00:00:00.000000'),
(1273, '9-11 Foundation', 'Packaged', '2016-06-03 00:00:00.000000'),
(1274, 'ABS', 'Packaged', '2016-06-03 00:00:00.000000'),
(1275, 'Access Softek', 'Packaged', '2016-06-03 00:00:00.000000'),
(1276, 'Accruent', 'Packaged', '2016-06-03 00:00:00.000000'),
(1277, 'Adventist Health', 'Packaged', '2016-06-03 00:00:00.000000'),
(1278, 'Advocate', 'Packaged', '2016-06-03 00:00:00.000000'),
(1279, 'AdvoMeds.org', 'Packaged', '2016-06-03 00:00:00.000000'),
(1280, 'AIG', 'Packaged', '2016-06-03 00:00:00.000000'),
(1281, 'AirFastTickets', 'Packaged', '2016-06-03 00:00:00.000000'),
(1282, 'Allied Beverage Group', 'Packaged', '2016-06-03 00:00:00.000000'),
(1283, 'Allied Insurance', 'Packaged', '2016-06-03 00:00:00.000000'),
(1284, 'AlphaCrest Capital Management', 'Packaged', '2016-06-03 00:00:00.000000'),
(1285, 'Altria', 'Packaged', '2016-06-03 00:00:00.000000'),
(1286, 'AMEC', 'Packaged', '2016-06-03 00:00:00.000000'),
(1287, 'AnesthsiaOS', 'Packaged', '2016-06-03 00:00:00.000000'),
(1288, 'Angelo Gordon', 'Packaged', '2016-06-03 00:00:00.000000'),
(1289, 'Ansell', 'Packaged', '2016-06-03 00:00:00.000000'),
(1290, 'Ascende', 'Packaged', '2016-06-03 00:00:00.000000'),
(1291, 'Athene Insurance', 'Packaged', '2016-06-03 00:00:00.000000'),
(1292, 'Atlas Air', 'Packaged', '2016-06-03 00:00:00.000000'),
(1293, 'Celgene - Cloud', 'Packaged', '2016-06-04 00:00:00.000000'),
(1294, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-04 00:00:00.000000'),
(1295, 'MSFT Customer ', 'Strategic', '2016-06-04 00:00:00.000000'),
(1296, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-04 00:00:00.000000'),
(1297, 'Riley Safer Holms -', 'Packaged', '2016-06-04 00:00:00.000000'),
(1298, 'Fitzroy Health SOW B', 'Packaged', '2016-06-04 00:00:00.000000'),
(1299, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-04 00:00:00.000000'),
(1300, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-04 00:00:00.000000'),
(1301, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-04 00:00:00.000000'),
(1302, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-04 00:00:00.000000'),
(1303, 'Life Care Centers of America,', 'Packaged', '2016-06-04 00:00:00.000000'),
(1304, 'Bill Test Task -', 'Strategic', '2016-06-04 00:00:00.000000'),
(1305, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-04 00:00:00.000000'),
(1306, 'Shire - Phase 1', 'Packaged', '2016-06-04 00:00:00.000000'),
(1307, 'Angelo Gordon - Office', 'Packaged', '2016-06-04 00:00:00.000000'),
(1308, 'Biogen - BIO-001 -', 'Strategic', '2016-06-04 00:00:00.000000'),
(1309, 'Steadfast - AWS POC', 'Packaged', '2016-06-04 00:00:00.000000'),
(1310, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-04 00:00:00.000000'),
(1311, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-04 00:00:00.000000'),
(1312, 'Koch Industries - Network', 'Packaged', '2016-06-04 00:00:00.000000'),
(1313, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-04 00:00:00.000000'),
(1314, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-04 00:00:00.000000'),
(1315, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-04 00:00:00.000000'),
(1316, 'George Washington University Workshop', 'Packaged', '2016-06-04 00:00:00.000000'),
(1317, 'Disc Makers POC #2', 'Packaged', '2016-06-04 00:00:00.000000'),
(1318, '9-11 Foundation', 'Packaged', '2016-06-04 00:00:00.000000'),
(1319, 'ABS', 'Packaged', '2016-06-04 00:00:00.000000'),
(1320, 'Access Softek', 'Packaged', '2016-06-04 00:00:00.000000'),
(1321, 'Accruent', 'Packaged', '2016-06-04 00:00:00.000000'),
(1322, 'Adventist Health', 'Packaged', '2016-06-04 00:00:00.000000'),
(1323, 'Advocate', 'Packaged', '2016-06-04 00:00:00.000000'),
(1324, 'AdvoMeds.org', 'Packaged', '2016-06-04 00:00:00.000000'),
(1325, 'AIG', 'Packaged', '2016-06-04 00:00:00.000000'),
(1326, 'AirFastTickets', 'Packaged', '2016-06-04 00:00:00.000000'),
(1327, 'Allied Beverage Group', 'Packaged', '2016-06-04 00:00:00.000000'),
(1328, 'Allied Insurance', 'Packaged', '2016-06-04 00:00:00.000000'),
(1329, 'AlphaCrest Capital Management', 'Packaged', '2016-06-04 00:00:00.000000'),
(1330, 'Altria', 'Packaged', '2016-06-04 00:00:00.000000'),
(1331, 'AMEC', 'Packaged', '2016-06-04 00:00:00.000000'),
(1332, 'AnesthsiaOS', 'Packaged', '2016-06-04 00:00:00.000000'),
(1333, 'Angelo Gordon', 'Packaged', '2016-06-04 00:00:00.000000'),
(1334, 'Ansell', 'Packaged', '2016-06-04 00:00:00.000000'),
(1335, 'Ascende', 'Packaged', '2016-06-04 00:00:00.000000'),
(1336, 'Athene Insurance', 'Packaged', '2016-06-04 00:00:00.000000'),
(1337, 'Atlas Air', 'Packaged', '2016-06-04 00:00:00.000000'),
(1338, 'Celgene - Cloud', 'Packaged', '2016-06-05 00:00:00.000000'),
(1339, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-05 00:00:00.000000'),
(1340, 'MSFT Customer ', 'Strategic', '2016-06-05 00:00:00.000000'),
(1341, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-05 00:00:00.000000'),
(1342, 'Riley Safer Holms -', 'Packaged', '2016-06-05 00:00:00.000000'),
(1343, 'Fitzroy Health SOW B', 'Packaged', '2016-06-05 00:00:00.000000'),
(1344, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-05 00:00:00.000000'),
(1345, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-05 00:00:00.000000');
INSERT INTO `epspe_engagement` (`engagement_id`, `Engagement`, `Type`, `DateService`) VALUES
(1346, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-05 00:00:00.000000'),
(1347, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-05 00:00:00.000000'),
(1348, 'Life Care Centers of America,', 'Packaged', '2016-06-05 00:00:00.000000'),
(1349, 'Bill Test Task -', 'Strategic', '2016-06-05 00:00:00.000000'),
(1350, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-05 00:00:00.000000'),
(1351, 'Shire - Phase 1', 'Packaged', '2016-06-05 00:00:00.000000'),
(1352, 'Angelo Gordon - Office', 'Packaged', '2016-06-05 00:00:00.000000'),
(1353, 'Biogen - BIO-001 -', 'Strategic', '2016-06-05 00:00:00.000000'),
(1354, 'Steadfast - AWS POC', 'Packaged', '2016-06-05 00:00:00.000000'),
(1355, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-05 00:00:00.000000'),
(1356, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-05 00:00:00.000000'),
(1357, 'Koch Industries - Network', 'Packaged', '2016-06-05 00:00:00.000000'),
(1358, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-05 00:00:00.000000'),
(1359, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-05 00:00:00.000000'),
(1360, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-05 00:00:00.000000'),
(1361, 'George Washington University Workshop', 'Packaged', '2016-06-05 00:00:00.000000'),
(1362, 'Disc Makers POC #2', 'Packaged', '2016-06-05 00:00:00.000000'),
(1363, '9-11 Foundation', 'Packaged', '2016-06-05 00:00:00.000000'),
(1364, 'ABS', 'Packaged', '2016-06-05 00:00:00.000000'),
(1365, 'Access Softek', 'Packaged', '2016-06-05 00:00:00.000000'),
(1366, 'Accruent', 'Packaged', '2016-06-05 00:00:00.000000'),
(1367, 'Adventist Health', 'Packaged', '2016-06-05 00:00:00.000000'),
(1368, 'Advocate', 'Packaged', '2016-06-05 00:00:00.000000'),
(1369, 'AdvoMeds.org', 'Packaged', '2016-06-05 00:00:00.000000'),
(1370, 'AIG', 'Packaged', '2016-06-05 00:00:00.000000'),
(1371, 'AirFastTickets', 'Packaged', '2016-06-05 00:00:00.000000'),
(1372, 'Allied Beverage Group', 'Packaged', '2016-06-05 00:00:00.000000'),
(1373, 'Allied Insurance', 'Packaged', '2016-06-05 00:00:00.000000'),
(1374, 'AlphaCrest Capital Management', 'Packaged', '2016-06-05 00:00:00.000000'),
(1375, 'Altria', 'Packaged', '2016-06-05 00:00:00.000000'),
(1376, 'AMEC', 'Packaged', '2016-06-05 00:00:00.000000'),
(1377, 'AnesthsiaOS', 'Packaged', '2016-06-05 00:00:00.000000'),
(1378, 'Angelo Gordon', 'Packaged', '2016-06-05 00:00:00.000000'),
(1379, 'Ansell', 'Packaged', '2016-06-05 00:00:00.000000'),
(1380, 'Ascende', 'Packaged', '2016-06-05 00:00:00.000000'),
(1381, 'Athene Insurance', 'Packaged', '2016-06-05 00:00:00.000000'),
(1382, 'Atlas Air', 'Packaged', '2016-06-05 00:00:00.000000'),
(1383, 'Celgene - Cloud', 'Packaged', '2016-06-06 00:00:00.000000'),
(1384, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-06 00:00:00.000000'),
(1385, 'MSFT Customer ', 'Strategic', '2016-06-06 00:00:00.000000'),
(1386, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-06 00:00:00.000000'),
(1387, 'Riley Safer Holms -', 'Packaged', '2016-06-06 00:00:00.000000'),
(1388, 'Fitzroy Health SOW B', 'Packaged', '2016-06-06 00:00:00.000000'),
(1389, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-06 00:00:00.000000'),
(1390, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-06 00:00:00.000000'),
(1391, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-06 00:00:00.000000'),
(1392, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-06 00:00:00.000000'),
(1393, 'Life Care Centers of America,', 'Packaged', '2016-06-06 00:00:00.000000'),
(1394, 'Bill Test Task -', 'Strategic', '2016-06-06 00:00:00.000000'),
(1395, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-06 00:00:00.000000'),
(1396, 'Shire - Phase 1', 'Packaged', '2016-06-06 00:00:00.000000'),
(1397, 'Angelo Gordon - Office', 'Packaged', '2016-06-06 00:00:00.000000'),
(1398, 'Biogen - BIO-001 -', 'Strategic', '2016-06-06 00:00:00.000000'),
(1399, 'Steadfast - AWS POC', 'Packaged', '2016-06-06 00:00:00.000000'),
(1400, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-06 00:00:00.000000'),
(1401, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-06 00:00:00.000000'),
(1402, 'Koch Industries - Network', 'Packaged', '2016-06-06 00:00:00.000000'),
(1403, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-06 00:00:00.000000'),
(1404, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-06 00:00:00.000000'),
(1405, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-06 00:00:00.000000'),
(1406, 'George Washington University Workshop', 'Packaged', '2016-06-06 00:00:00.000000'),
(1407, 'Disc Makers POC #2', 'Packaged', '2016-06-06 00:00:00.000000'),
(1408, '9-11 Foundation', 'Packaged', '2016-06-06 00:00:00.000000'),
(1409, 'ABS', 'Packaged', '2016-06-06 00:00:00.000000'),
(1410, 'Access Softek', 'Packaged', '2016-06-06 00:00:00.000000'),
(1411, 'Accruent', 'Packaged', '2016-06-06 00:00:00.000000'),
(1412, 'Adventist Health', 'Packaged', '2016-06-06 00:00:00.000000'),
(1413, 'Advocate', 'Packaged', '2016-06-06 00:00:00.000000'),
(1414, 'AdvoMeds.org', 'Packaged', '2016-06-06 00:00:00.000000'),
(1415, 'AIG', 'Packaged', '2016-06-06 00:00:00.000000'),
(1416, 'AirFastTickets', 'Packaged', '2016-06-06 00:00:00.000000'),
(1417, 'Allied Beverage Group', 'Packaged', '2016-06-06 00:00:00.000000'),
(1418, 'Allied Insurance', 'Packaged', '2016-06-06 00:00:00.000000'),
(1419, 'AlphaCrest Capital Management', 'Packaged', '2016-06-06 00:00:00.000000'),
(1420, 'Altria', 'Packaged', '2016-06-06 00:00:00.000000'),
(1421, 'AMEC', 'Packaged', '2016-06-06 00:00:00.000000'),
(1422, 'AnesthsiaOS', 'Packaged', '2016-06-06 00:00:00.000000'),
(1423, 'Angelo Gordon', 'Packaged', '2016-06-06 00:00:00.000000'),
(1424, 'Ansell', 'Packaged', '2016-06-06 00:00:00.000000'),
(1425, 'Ascende', 'Packaged', '2016-06-06 00:00:00.000000'),
(1426, 'Athene Insurance', 'Packaged', '2016-06-06 00:00:00.000000'),
(1427, 'Atlas Air', 'Packaged', '2016-06-06 00:00:00.000000'),
(1428, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-06 00:00:00.000000'),
(1429, 'BECU', 'Packaged', '2016-06-06 00:00:00.000000'),
(1430, 'Bill Trust', 'Packaged', '2016-06-06 00:00:00.000000'),
(1431, 'Biogen', 'Packaged', '2016-06-06 00:00:00.000000'),
(1432, 'BitTitan', 'Packaged', '2016-06-06 00:00:00.000000'),
(1433, 'Celgene - Cloud', 'Packaged', '2016-06-07 00:00:00.000000'),
(1434, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-07 00:00:00.000000'),
(1435, 'MSFT Customer ', 'Strategic', '2016-06-07 00:00:00.000000'),
(1436, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-07 00:00:00.000000'),
(1437, 'Riley Safer Holms -', 'Packaged', '2016-06-07 00:00:00.000000'),
(1438, 'Fitzroy Health SOW B', 'Packaged', '2016-06-07 00:00:00.000000'),
(1439, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-07 00:00:00.000000'),
(1440, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-07 00:00:00.000000'),
(1441, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-07 00:00:00.000000'),
(1442, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-07 00:00:00.000000'),
(1443, 'Life Care Centers of America,', 'Packaged', '2016-06-07 00:00:00.000000'),
(1444, 'Bill Test Task -', 'Strategic', '2016-06-07 00:00:00.000000'),
(1445, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-07 00:00:00.000000'),
(1446, 'Shire - Phase 1', 'Packaged', '2016-06-07 00:00:00.000000'),
(1447, 'Angelo Gordon - Office', 'Packaged', '2016-06-07 00:00:00.000000'),
(1448, 'Biogen - BIO-001 -', 'Strategic', '2016-06-07 00:00:00.000000'),
(1449, 'Steadfast - AWS POC', 'Packaged', '2016-06-07 00:00:00.000000'),
(1450, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-07 00:00:00.000000'),
(1451, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-07 00:00:00.000000'),
(1452, 'Koch Industries - Network', 'Packaged', '2016-06-07 00:00:00.000000'),
(1453, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-07 00:00:00.000000'),
(1454, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-07 00:00:00.000000'),
(1455, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-07 00:00:00.000000'),
(1456, 'George Washington University Workshop', 'Packaged', '2016-06-07 00:00:00.000000'),
(1457, 'Disc Makers POC #2', 'Packaged', '2016-06-07 00:00:00.000000'),
(1458, '9-11 Foundation', 'Packaged', '2016-06-07 00:00:00.000000'),
(1459, 'ABS', 'Packaged', '2016-06-07 00:00:00.000000'),
(1460, 'Access Softek', 'Packaged', '2016-06-07 00:00:00.000000'),
(1461, 'Accruent', 'Packaged', '2016-06-07 00:00:00.000000'),
(1462, 'Adventist Health', 'Packaged', '2016-06-07 00:00:00.000000'),
(1463, 'Advocate', 'Packaged', '2016-06-07 00:00:00.000000'),
(1464, 'AdvoMeds.org', 'Packaged', '2016-06-07 00:00:00.000000'),
(1465, 'AIG', 'Packaged', '2016-06-07 00:00:00.000000'),
(1466, 'AirFastTickets', 'Packaged', '2016-06-07 00:00:00.000000'),
(1467, 'Allied Beverage Group', 'Packaged', '2016-06-07 00:00:00.000000'),
(1468, 'Allied Insurance', 'Packaged', '2016-06-07 00:00:00.000000'),
(1469, 'AlphaCrest Capital Management', 'Packaged', '2016-06-07 00:00:00.000000'),
(1470, 'Altria', 'Packaged', '2016-06-07 00:00:00.000000'),
(1471, 'AMEC', 'Packaged', '2016-06-07 00:00:00.000000'),
(1472, 'AnesthsiaOS', 'Packaged', '2016-06-07 00:00:00.000000'),
(1473, 'Angelo Gordon', 'Packaged', '2016-06-07 00:00:00.000000'),
(1474, 'Ansell', 'Packaged', '2016-06-07 00:00:00.000000'),
(1475, 'Ascende', 'Packaged', '2016-06-07 00:00:00.000000'),
(1476, 'Athene Insurance', 'Packaged', '2016-06-07 00:00:00.000000'),
(1477, 'Atlas Air', 'Packaged', '2016-06-07 00:00:00.000000'),
(1478, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-07 00:00:00.000000'),
(1479, 'BECU', 'Packaged', '2016-06-07 00:00:00.000000'),
(1480, 'Bill Trust', 'Packaged', '2016-06-07 00:00:00.000000'),
(1481, 'Biogen', 'Packaged', '2016-06-07 00:00:00.000000'),
(1482, 'BitTitan', 'Packaged', '2016-06-07 00:00:00.000000'),
(1483, 'Celgene - Cloud', 'Packaged', '2016-06-08 00:00:00.000000'),
(1484, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-08 00:00:00.000000'),
(1485, 'MSFT Customer ', 'Strategic', '2016-06-08 00:00:00.000000'),
(1486, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-08 00:00:00.000000'),
(1487, 'Riley Safer Holms -', 'Packaged', '2016-06-08 00:00:00.000000'),
(1488, 'Fitzroy Health SOW B', 'Packaged', '2016-06-08 00:00:00.000000'),
(1489, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-08 00:00:00.000000'),
(1490, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-08 00:00:00.000000'),
(1491, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-08 00:00:00.000000'),
(1492, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-08 00:00:00.000000'),
(1493, 'Life Care Centers of America,', 'Packaged', '2016-06-08 00:00:00.000000'),
(1494, 'Bill Test Task -', 'Strategic', '2016-06-08 00:00:00.000000'),
(1495, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-08 00:00:00.000000'),
(1496, 'Shire - Phase 1', 'Packaged', '2016-06-08 00:00:00.000000'),
(1497, 'Angelo Gordon - Office', 'Packaged', '2016-06-08 00:00:00.000000'),
(1498, 'Biogen - BIO-001 -', 'Strategic', '2016-06-08 00:00:00.000000'),
(1499, 'Steadfast - AWS POC', 'Packaged', '2016-06-08 00:00:00.000000'),
(1500, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-08 00:00:00.000000'),
(1501, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-08 00:00:00.000000'),
(1502, 'Koch Industries - Network', 'Packaged', '2016-06-08 00:00:00.000000'),
(1503, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-08 00:00:00.000000'),
(1504, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-08 00:00:00.000000'),
(1505, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-08 00:00:00.000000'),
(1506, 'George Washington University Workshop', 'Packaged', '2016-06-08 00:00:00.000000'),
(1507, 'Disc Makers POC #2', 'Packaged', '2016-06-08 00:00:00.000000'),
(1508, '9-11 Foundation', 'Packaged', '2016-06-08 00:00:00.000000'),
(1509, 'ABS', 'Packaged', '2016-06-08 00:00:00.000000'),
(1510, 'Access Softek', 'Packaged', '2016-06-08 00:00:00.000000'),
(1511, 'Accruent', 'Packaged', '2016-06-08 00:00:00.000000'),
(1512, 'Adventist Health', 'Packaged', '2016-06-08 00:00:00.000000'),
(1513, 'Advocate', 'Packaged', '2016-06-08 00:00:00.000000'),
(1514, 'AdvoMeds.org', 'Packaged', '2016-06-08 00:00:00.000000'),
(1515, 'AIG', 'Packaged', '2016-06-08 00:00:00.000000'),
(1516, 'AirFastTickets', 'Packaged', '2016-06-08 00:00:00.000000'),
(1517, 'Allied Beverage Group', 'Packaged', '2016-06-08 00:00:00.000000'),
(1518, 'Allied Insurance', 'Packaged', '2016-06-08 00:00:00.000000'),
(1519, 'AlphaCrest Capital Management', 'Packaged', '2016-06-08 00:00:00.000000'),
(1520, 'Altria', 'Packaged', '2016-06-08 00:00:00.000000'),
(1521, 'AMEC', 'Packaged', '2016-06-08 00:00:00.000000'),
(1522, 'AnesthsiaOS', 'Packaged', '2016-06-08 00:00:00.000000'),
(1523, 'Angelo Gordon', 'Packaged', '2016-06-08 00:00:00.000000'),
(1524, 'Ansell', 'Packaged', '2016-06-08 00:00:00.000000'),
(1525, 'Ascende', 'Packaged', '2016-06-08 00:00:00.000000'),
(1526, 'Athene Insurance', 'Packaged', '2016-06-08 00:00:00.000000'),
(1527, 'Atlas Air', 'Packaged', '2016-06-08 00:00:00.000000'),
(1528, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-08 00:00:00.000000'),
(1529, 'BECU', 'Packaged', '2016-06-08 00:00:00.000000'),
(1530, 'Bill Trust', 'Packaged', '2016-06-08 00:00:00.000000'),
(1531, 'Biogen', 'Packaged', '2016-06-08 00:00:00.000000'),
(1532, 'BitTitan', 'Packaged', '2016-06-08 00:00:00.000000'),
(1533, 'Celgene - Cloud', 'Packaged', '2016-06-09 00:00:00.000000'),
(1534, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-09 00:00:00.000000'),
(1535, 'MSFT Customer ', 'Strategic', '2016-06-09 00:00:00.000000'),
(1536, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-09 00:00:00.000000'),
(1537, 'Riley Safer Holms -', 'Packaged', '2016-06-09 00:00:00.000000'),
(1538, 'Fitzroy Health SOW B', 'Packaged', '2016-06-09 00:00:00.000000'),
(1539, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-09 00:00:00.000000'),
(1540, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-09 00:00:00.000000'),
(1541, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-09 00:00:00.000000'),
(1542, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-09 00:00:00.000000'),
(1543, 'Life Care Centers of America,', 'Packaged', '2016-06-09 00:00:00.000000'),
(1544, 'Bill Test Task -', 'Strategic', '2016-06-09 00:00:00.000000'),
(1545, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-09 00:00:00.000000'),
(1546, 'Shire - Phase 1', 'Packaged', '2016-06-09 00:00:00.000000'),
(1547, 'Angelo Gordon - Office', 'Packaged', '2016-06-09 00:00:00.000000'),
(1548, 'Biogen - BIO-001 -', 'Strategic', '2016-06-09 00:00:00.000000'),
(1549, 'Steadfast - AWS POC', 'Packaged', '2016-06-09 00:00:00.000000'),
(1550, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-09 00:00:00.000000'),
(1551, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-09 00:00:00.000000'),
(1552, 'Koch Industries - Network', 'Packaged', '2016-06-09 00:00:00.000000'),
(1553, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-09 00:00:00.000000'),
(1554, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-09 00:00:00.000000'),
(1555, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-09 00:00:00.000000'),
(1556, 'George Washington University Workshop', 'Packaged', '2016-06-09 00:00:00.000000'),
(1557, 'Disc Makers POC #2', 'Packaged', '2016-06-09 00:00:00.000000'),
(1558, '9-11 Foundation', 'Packaged', '2016-06-09 00:00:00.000000'),
(1559, 'ABS', 'Packaged', '2016-06-09 00:00:00.000000'),
(1560, 'Access Softek', 'Packaged', '2016-06-09 00:00:00.000000'),
(1561, 'Accruent', 'Packaged', '2016-06-09 00:00:00.000000'),
(1562, 'Adventist Health', 'Packaged', '2016-06-09 00:00:00.000000'),
(1563, 'Advocate', 'Packaged', '2016-06-09 00:00:00.000000'),
(1564, 'AdvoMeds.org', 'Packaged', '2016-06-09 00:00:00.000000'),
(1565, 'AIG', 'Packaged', '2016-06-09 00:00:00.000000'),
(1566, 'AirFastTickets', 'Packaged', '2016-06-09 00:00:00.000000'),
(1567, 'Allied Beverage Group', 'Packaged', '2016-06-09 00:00:00.000000'),
(1568, 'Allied Insurance', 'Packaged', '2016-06-09 00:00:00.000000'),
(1569, 'AlphaCrest Capital Management', 'Packaged', '2016-06-09 00:00:00.000000'),
(1570, 'Altria', 'Packaged', '2016-06-09 00:00:00.000000'),
(1571, 'AMEC', 'Packaged', '2016-06-09 00:00:00.000000'),
(1572, 'AnesthsiaOS', 'Packaged', '2016-06-09 00:00:00.000000'),
(1573, 'Angelo Gordon', 'Packaged', '2016-06-09 00:00:00.000000'),
(1574, 'Ansell', 'Packaged', '2016-06-09 00:00:00.000000'),
(1575, 'Ascende', 'Packaged', '2016-06-09 00:00:00.000000'),
(1576, 'Athene Insurance', 'Packaged', '2016-06-09 00:00:00.000000'),
(1577, 'Atlas Air', 'Packaged', '2016-06-09 00:00:00.000000'),
(1578, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-09 00:00:00.000000'),
(1579, 'BECU', 'Packaged', '2016-06-09 00:00:00.000000'),
(1580, 'Bill Trust', 'Packaged', '2016-06-09 00:00:00.000000'),
(1581, 'Biogen', 'Packaged', '2016-06-09 00:00:00.000000'),
(1582, 'BitTitan', 'Packaged', '2016-06-09 00:00:00.000000'),
(1583, 'Celgene - Cloud', 'Packaged', '2016-06-10 00:00:00.000000'),
(1584, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-10 00:00:00.000000'),
(1585, 'MSFT Customer ', 'Strategic', '2016-06-10 00:00:00.000000'),
(1586, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-10 00:00:00.000000'),
(1587, 'Riley Safer Holms -', 'Packaged', '2016-06-10 00:00:00.000000'),
(1588, 'Fitzroy Health SOW B', 'Packaged', '2016-06-10 00:00:00.000000'),
(1589, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-10 00:00:00.000000'),
(1590, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-10 00:00:00.000000'),
(1591, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-10 00:00:00.000000'),
(1592, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-10 00:00:00.000000'),
(1593, 'Life Care Centers of America,', 'Packaged', '2016-06-10 00:00:00.000000'),
(1594, 'Bill Test Task -', 'Strategic', '2016-06-10 00:00:00.000000'),
(1595, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-10 00:00:00.000000'),
(1596, 'Shire - Phase 1', 'Packaged', '2016-06-10 00:00:00.000000'),
(1597, 'Angelo Gordon - Office', 'Packaged', '2016-06-10 00:00:00.000000'),
(1598, 'Biogen - BIO-001 -', 'Strategic', '2016-06-10 00:00:00.000000'),
(1599, 'Steadfast - AWS POC', 'Packaged', '2016-06-10 00:00:00.000000'),
(1600, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-10 00:00:00.000000'),
(1601, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-10 00:00:00.000000'),
(1602, 'Koch Industries - Network', 'Packaged', '2016-06-10 00:00:00.000000'),
(1603, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-10 00:00:00.000000'),
(1604, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-10 00:00:00.000000'),
(1605, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-10 00:00:00.000000'),
(1606, 'George Washington University Workshop', 'Packaged', '2016-06-10 00:00:00.000000'),
(1607, 'Disc Makers POC #2', 'Packaged', '2016-06-10 00:00:00.000000'),
(1608, '9-11 Foundation', 'Packaged', '2016-06-10 00:00:00.000000'),
(1609, 'ABS', 'Packaged', '2016-06-10 00:00:00.000000'),
(1610, 'Access Softek', 'Packaged', '2016-06-10 00:00:00.000000'),
(1611, 'Accruent', 'Packaged', '2016-06-10 00:00:00.000000'),
(1612, 'Adventist Health', 'Packaged', '2016-06-10 00:00:00.000000'),
(1613, 'Advocate', 'Packaged', '2016-06-10 00:00:00.000000'),
(1614, 'AdvoMeds.org', 'Packaged', '2016-06-10 00:00:00.000000'),
(1615, 'AIG', 'Packaged', '2016-06-10 00:00:00.000000'),
(1616, 'AirFastTickets', 'Packaged', '2016-06-10 00:00:00.000000'),
(1617, 'Allied Beverage Group', 'Packaged', '2016-06-10 00:00:00.000000'),
(1618, 'Allied Insurance', 'Packaged', '2016-06-10 00:00:00.000000'),
(1619, 'AlphaCrest Capital Management', 'Packaged', '2016-06-10 00:00:00.000000'),
(1620, 'Altria', 'Packaged', '2016-06-10 00:00:00.000000'),
(1621, 'AMEC', 'Packaged', '2016-06-10 00:00:00.000000'),
(1622, 'AnesthsiaOS', 'Packaged', '2016-06-10 00:00:00.000000'),
(1623, 'Angelo Gordon', 'Packaged', '2016-06-10 00:00:00.000000'),
(1624, 'Ansell', 'Packaged', '2016-06-10 00:00:00.000000'),
(1625, 'Ascende', 'Packaged', '2016-06-10 00:00:00.000000'),
(1626, 'Athene Insurance', 'Packaged', '2016-06-10 00:00:00.000000'),
(1627, 'Atlas Air', 'Packaged', '2016-06-10 00:00:00.000000'),
(1628, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-10 00:00:00.000000'),
(1629, 'BECU', 'Packaged', '2016-06-10 00:00:00.000000'),
(1630, 'Bill Trust', 'Packaged', '2016-06-10 00:00:00.000000'),
(1631, 'Biogen', 'Packaged', '2016-06-10 00:00:00.000000'),
(1632, 'BitTitan', 'Packaged', '2016-06-10 00:00:00.000000'),
(1633, 'Celgene - Cloud', 'Packaged', '2016-06-11 00:00:00.000000'),
(1634, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-11 00:00:00.000000'),
(1635, 'MSFT Customer ', 'Strategic', '2016-06-11 00:00:00.000000'),
(1636, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-11 00:00:00.000000'),
(1637, 'Riley Safer Holms -', 'Packaged', '2016-06-11 00:00:00.000000'),
(1638, 'Fitzroy Health SOW B', 'Packaged', '2016-06-11 00:00:00.000000'),
(1639, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-11 00:00:00.000000'),
(1640, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-11 00:00:00.000000'),
(1641, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-11 00:00:00.000000'),
(1642, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-11 00:00:00.000000'),
(1643, 'Life Care Centers of America,', 'Packaged', '2016-06-11 00:00:00.000000'),
(1644, 'Bill Test Task -', 'Strategic', '2016-06-11 00:00:00.000000'),
(1645, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-11 00:00:00.000000'),
(1646, 'Shire - Phase 1', 'Packaged', '2016-06-11 00:00:00.000000'),
(1647, 'Angelo Gordon - Office', 'Packaged', '2016-06-11 00:00:00.000000'),
(1648, 'Biogen - BIO-001 -', 'Strategic', '2016-06-11 00:00:00.000000'),
(1649, 'Steadfast - AWS POC', 'Packaged', '2016-06-11 00:00:00.000000'),
(1650, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-11 00:00:00.000000'),
(1651, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-11 00:00:00.000000'),
(1652, 'Koch Industries - Network', 'Packaged', '2016-06-11 00:00:00.000000'),
(1653, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-11 00:00:00.000000'),
(1654, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-11 00:00:00.000000'),
(1655, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-11 00:00:00.000000'),
(1656, 'George Washington University Workshop', 'Packaged', '2016-06-11 00:00:00.000000'),
(1657, 'Disc Makers POC #2', 'Packaged', '2016-06-11 00:00:00.000000'),
(1658, '9-11 Foundation', 'Packaged', '2016-06-11 00:00:00.000000'),
(1659, 'ABS', 'Packaged', '2016-06-11 00:00:00.000000'),
(1660, 'Access Softek', 'Packaged', '2016-06-11 00:00:00.000000'),
(1661, 'Accruent', 'Packaged', '2016-06-11 00:00:00.000000'),
(1662, 'Adventist Health', 'Packaged', '2016-06-11 00:00:00.000000'),
(1663, 'Advocate', 'Packaged', '2016-06-11 00:00:00.000000'),
(1664, 'AdvoMeds.org', 'Packaged', '2016-06-11 00:00:00.000000'),
(1665, 'AIG', 'Packaged', '2016-06-11 00:00:00.000000'),
(1666, 'AirFastTickets', 'Packaged', '2016-06-11 00:00:00.000000'),
(1667, 'Allied Beverage Group', 'Packaged', '2016-06-11 00:00:00.000000'),
(1668, 'Allied Insurance', 'Packaged', '2016-06-11 00:00:00.000000'),
(1669, 'AlphaCrest Capital Management', 'Packaged', '2016-06-11 00:00:00.000000'),
(1670, 'Altria', 'Packaged', '2016-06-11 00:00:00.000000'),
(1671, 'AMEC', 'Packaged', '2016-06-11 00:00:00.000000'),
(1672, 'AnesthsiaOS', 'Packaged', '2016-06-11 00:00:00.000000'),
(1673, 'Angelo Gordon', 'Packaged', '2016-06-11 00:00:00.000000'),
(1674, 'Ansell', 'Packaged', '2016-06-11 00:00:00.000000'),
(1675, 'Ascende', 'Packaged', '2016-06-11 00:00:00.000000'),
(1676, 'Athene Insurance', 'Packaged', '2016-06-11 00:00:00.000000'),
(1677, 'Atlas Air', 'Packaged', '2016-06-11 00:00:00.000000'),
(1678, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-11 00:00:00.000000'),
(1679, 'BECU', 'Packaged', '2016-06-11 00:00:00.000000'),
(1680, 'Bill Trust', 'Packaged', '2016-06-11 00:00:00.000000'),
(1681, 'Biogen', 'Packaged', '2016-06-11 00:00:00.000000'),
(1682, 'BitTitan', 'Packaged', '2016-06-11 00:00:00.000000'),
(1683, 'Celgene - Cloud', 'Packaged', '2016-06-12 00:00:00.000000'),
(1684, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-12 00:00:00.000000'),
(1685, 'MSFT Customer ', 'Strategic', '2016-06-12 00:00:00.000000'),
(1686, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-12 00:00:00.000000'),
(1687, 'Riley Safer Holms -', 'Packaged', '2016-06-12 00:00:00.000000'),
(1688, 'Fitzroy Health SOW B', 'Packaged', '2016-06-12 00:00:00.000000'),
(1689, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-12 00:00:00.000000'),
(1690, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-12 00:00:00.000000'),
(1691, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-12 00:00:00.000000'),
(1692, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-12 00:00:00.000000'),
(1693, 'Life Care Centers of America,', 'Packaged', '2016-06-12 00:00:00.000000'),
(1694, 'Bill Test Task -', 'Strategic', '2016-06-12 00:00:00.000000'),
(1695, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-12 00:00:00.000000'),
(1696, 'Shire - Phase 1', 'Packaged', '2016-06-12 00:00:00.000000'),
(1697, 'Angelo Gordon - Office', 'Packaged', '2016-06-12 00:00:00.000000'),
(1698, 'Biogen - BIO-001 -', 'Strategic', '2016-06-12 00:00:00.000000'),
(1699, 'Steadfast - AWS POC', 'Packaged', '2016-06-12 00:00:00.000000'),
(1700, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-12 00:00:00.000000'),
(1701, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-12 00:00:00.000000'),
(1702, 'Koch Industries - Network', 'Packaged', '2016-06-12 00:00:00.000000'),
(1703, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-12 00:00:00.000000'),
(1704, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-12 00:00:00.000000'),
(1705, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-12 00:00:00.000000'),
(1706, 'George Washington University Workshop', 'Packaged', '2016-06-12 00:00:00.000000'),
(1707, 'Disc Makers POC #2', 'Packaged', '2016-06-12 00:00:00.000000'),
(1708, '9-11 Foundation', 'Packaged', '2016-06-12 00:00:00.000000'),
(1709, 'ABS', 'Packaged', '2016-06-12 00:00:00.000000'),
(1710, 'Access Softek', 'Packaged', '2016-06-12 00:00:00.000000'),
(1711, 'Accruent', 'Packaged', '2016-06-12 00:00:00.000000'),
(1712, 'Adventist Health', 'Packaged', '2016-06-12 00:00:00.000000'),
(1713, 'Advocate', 'Packaged', '2016-06-12 00:00:00.000000'),
(1714, 'AdvoMeds.org', 'Packaged', '2016-06-12 00:00:00.000000'),
(1715, 'AIG', 'Packaged', '2016-06-12 00:00:00.000000'),
(1716, 'AirFastTickets', 'Packaged', '2016-06-12 00:00:00.000000'),
(1717, 'Allied Beverage Group', 'Packaged', '2016-06-12 00:00:00.000000'),
(1718, 'Allied Insurance', 'Packaged', '2016-06-12 00:00:00.000000'),
(1719, 'AlphaCrest Capital Management', 'Packaged', '2016-06-12 00:00:00.000000'),
(1720, 'Altria', 'Packaged', '2016-06-12 00:00:00.000000'),
(1721, 'AMEC', 'Packaged', '2016-06-12 00:00:00.000000'),
(1722, 'AnesthsiaOS', 'Packaged', '2016-06-12 00:00:00.000000'),
(1723, 'Angelo Gordon', 'Packaged', '2016-06-12 00:00:00.000000'),
(1724, 'Ansell', 'Packaged', '2016-06-12 00:00:00.000000'),
(1725, 'Ascende', 'Packaged', '2016-06-12 00:00:00.000000'),
(1726, 'Athene Insurance', 'Packaged', '2016-06-12 00:00:00.000000'),
(1727, 'Atlas Air', 'Packaged', '2016-06-12 00:00:00.000000'),
(1728, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-12 00:00:00.000000'),
(1729, 'BECU', 'Packaged', '2016-06-12 00:00:00.000000'),
(1730, 'Bill Trust', 'Packaged', '2016-06-12 00:00:00.000000'),
(1731, 'Biogen', 'Packaged', '2016-06-12 00:00:00.000000'),
(1732, 'BitTitan', 'Packaged', '2016-06-12 00:00:00.000000'),
(1733, 'Celgene - Cloud', 'Packaged', '2016-06-13 00:00:00.000000'),
(1734, 'Franklin Templeton Assessment_O365 Enablement', 'Packaged', '2016-06-13 00:00:00.000000'),
(1735, 'MSFT Customer ', 'Strategic', '2016-06-13 00:00:00.000000'),
(1736, 'GARTNER Onsite Meeting Resource', 'Strategic', '2016-06-13 00:00:00.000000'),
(1737, 'Riley Safer Holms -', 'Packaged', '2016-06-13 00:00:00.000000'),
(1738, 'Fitzroy Health SOW B', 'Packaged', '2016-06-13 00:00:00.000000'),
(1739, 'Novo Nordisk Resource Request', 'Packaged', '2016-06-13 00:00:00.000000'),
(1740, 'Schneider Electric - ExpressRoute', 'Packaged', '2016-06-13 00:00:00.000000'),
(1741, 'Peterson Sullivan - ExpressRoute', 'Packaged', '2016-06-13 00:00:00.000000'),
(1742, 'CA Lottery MSFT SOW', 'Packaged', '2016-06-13 00:00:00.000000'),
(1743, 'Life Care Centers of America,', 'Packaged', '2016-06-13 00:00:00.000000'),
(1744, 'Bill Test Task -', 'Strategic', '2016-06-13 00:00:00.000000'),
(1745, 'MassMutual - MAM-001: Cloud', 'Packaged', '2016-06-13 00:00:00.000000'),
(1746, 'Shire - Phase 1', 'Packaged', '2016-06-13 00:00:00.000000'),
(1747, 'Angelo Gordon - Office', 'Packaged', '2016-06-13 00:00:00.000000'),
(1748, 'Biogen - BIO-001 -', 'Strategic', '2016-06-13 00:00:00.000000'),
(1749, 'Steadfast - AWS POC', 'Packaged', '2016-06-13 00:00:00.000000'),
(1750, 'ITG Onsite Meeting Resource', 'Packaged', '2016-06-13 00:00:00.000000'),
(1751, 'Novolex - Cincinnati Assessment', 'Packaged', '2016-06-13 00:00:00.000000'),
(1752, 'Koch Industries - Network', 'Packaged', '2016-06-13 00:00:00.000000'),
(1753, 'Technologent/King Isle Entertainment-', 'Packaged', '2016-06-13 00:00:00.000000'),
(1754, 'McKesson ARM (MCK-001)', 'Strategic', '2016-06-13 00:00:00.000000'),
(1755, 'Verifone Assessment (VER-001)', 'Packaged', '2016-06-13 00:00:00.000000'),
(1756, 'George Washington University Workshop', 'Packaged', '2016-06-13 00:00:00.000000'),
(1757, 'Disc Makers POC #2', 'Packaged', '2016-06-13 00:00:00.000000'),
(1758, '9-11 Foundation', 'Packaged', '2016-06-13 00:00:00.000000'),
(1759, 'ABS', 'Packaged', '2016-06-13 00:00:00.000000'),
(1760, 'Access Softek', 'Packaged', '2016-06-13 00:00:00.000000'),
(1761, 'Accruent', 'Packaged', '2016-06-13 00:00:00.000000'),
(1762, 'Adventist Health', 'Packaged', '2016-06-13 00:00:00.000000'),
(1763, 'Advocate', 'Packaged', '2016-06-13 00:00:00.000000'),
(1764, 'AdvoMeds.org', 'Packaged', '2016-06-13 00:00:00.000000'),
(1765, 'AIG', 'Packaged', '2016-06-13 00:00:00.000000'),
(1766, 'AirFastTickets', 'Packaged', '2016-06-13 00:00:00.000000'),
(1767, 'Allied Beverage Group', 'Packaged', '2016-06-13 00:00:00.000000'),
(1768, 'Allied Insurance', 'Packaged', '2016-06-13 00:00:00.000000'),
(1769, 'AlphaCrest Capital Management', 'Packaged', '2016-06-13 00:00:00.000000'),
(1770, 'Altria', 'Packaged', '2016-06-13 00:00:00.000000'),
(1771, 'AMEC', 'Packaged', '2016-06-13 00:00:00.000000'),
(1772, 'AnesthsiaOS', 'Packaged', '2016-06-13 00:00:00.000000'),
(1773, 'Angelo Gordon', 'Packaged', '2016-06-13 00:00:00.000000'),
(1774, 'Ansell', 'Packaged', '2016-06-13 00:00:00.000000'),
(1775, 'Ascende', 'Packaged', '2016-06-13 00:00:00.000000'),
(1776, 'Athene Insurance', 'Packaged', '2016-06-13 00:00:00.000000'),
(1777, 'Atlas Air', 'Packaged', '2016-06-13 00:00:00.000000'),
(1778, 'Bank of New York Mellon - BNY', 'Packaged', '2016-06-13 00:00:00.000000'),
(1779, 'BECU', 'Packaged', '2016-06-13 00:00:00.000000'),
(1780, 'Bill Trust', 'Packaged', '2016-06-13 00:00:00.000000'),
(1781, 'Biogen', 'Packaged', '2016-06-13 00:00:00.000000'),
(1782, 'BitTitan', 'Packaged', '2016-06-13 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `epspe_lbkstat`
--

CREATE TABLE `epspe_lbkstat` (
  `BKSCode` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `BKSDesc` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_message`
--

CREATE TABLE `epspe_message` (
  `message_id` int(11) NOT NULL,
  `reference` varchar(30) NOT NULL,
  `message` blob NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_quotes`
--

CREATE TABLE `epspe_quotes` (
  `QtNumb` char(8) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `QtDisp` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `QtBL` char(15) COLLATE latin1_general_ci DEFAULT NULL,
  `QtFCurr` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `QtDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `QtCust` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `QtCustomer` blob,
  `QtRcpt` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `QtCont` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `QTPhon` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `QTFax` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `QTfaxFl` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `QTBy` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `QtExp` int(11) DEFAULT NULL,
  `QtRE` char(60) COLLATE latin1_general_ci DEFAULT NULL,
  `qtorig` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdest` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtem` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtpcs` int(11) DEFAULT NULL,
  `qtpkg` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `qtwgte` decimal(19,4) DEFAULT NULL,
  `qtwgtm` decimal(19,4) DEFAULT NULL,
  `qtcube` decimal(19,4) DEFAULT NULL,
  `qtcubm` decimal(19,4) DEFAULT NULL,
  `qtcomm` char(100) COLLATE latin1_general_ci DEFAULT NULL,
  `qtcarr` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `qtfreq` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `qttt` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `qtcomments` blob,
  `qtPDOC` char(60) COLLATE latin1_general_ci DEFAULT NULL,
  `qtfree` blob,
  `qtratbasis1` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtopoint` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdpoint` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `qtforl` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qthaz` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtshowcarr` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbooking` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbookdate` date DEFAULT NULL,
  `qtbook2date` date DEFAULT NULL,
  `qtbook3date` date DEFAULT NULL,
  `qtbooking2` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbooking3` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbooking4` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbook4date` date DEFAULT NULL,
  `qtramp` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtramporig` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdestcode` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `qtpereff` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtzipcode` char(9) COLLATE latin1_general_ci DEFAULT NULL,
  `qtscac` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `qtireq` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtires` char(8) COLLATE latin1_general_ci DEFAULT NULL,
  `qtfcls` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `qtlcls` char(2) COLLATE latin1_general_ci DEFAULT NULL,
  `qttruck` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  `qttruckinfo` blob,
  `qttrucknotes` blob,
  `QtCustName` char(35) COLLATE latin1_general_ci DEFAULT NULL,
  `qtsrep` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtcoload` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Qtwhfmin` decimal(19,4) DEFAULT NULL,
  `qtdesc1` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdesc2` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdesc3` char(30) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdesc4` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdesc5` char(20) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdoor` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtusage` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtauto` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtemail` char(75) COLLATE latin1_general_ci DEFAULT NULL,
  `qtwsch` decimal(19,4) DEFAULT NULL,
  `qtwcfm` char(10) COLLATE latin1_general_ci DEFAULT NULL,
  `qtwsc` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtotxt` char(15) COLLATE latin1_general_ci DEFAULT NULL,
  `qtpresell` decimal(19,4) DEFAULT NULL,
  `qtpresellmin` decimal(19,4) DEFAULT NULL,
  `qtprecost` decimal(19,4) DEFAULT NULL,
  `qtprecostmin` decimal(19,4) DEFAULT NULL,
  `qtofsell` decimal(19,4) DEFAULT NULL,
  `qtofsellmin` decimal(19,4) DEFAULT NULL,
  `qtthcsell` decimal(19,4) DEFAULT NULL,
  `qtthcsellmin` decimal(19,4) DEFAULT NULL,
  `qtbafsell` decimal(19,4) DEFAULT NULL,
  `qtbafsellmin` decimal(19,4) DEFAULT NULL,
  `qtfuel` decimal(19,4) DEFAULT NULL,
  `qtdestdocsell` decimal(19,4) DEFAULT NULL,
  `qtblfeesell` decimal(19,4) DEFAULT NULL,
  `qtcclrsell` decimal(19,4) DEFAULT NULL,
  `qtwharfsell` decimal(19,4) DEFAULT NULL,
  `qtwharfcost` decimal(19,4) DEFAULT NULL,
  `qtoncarrsell` decimal(19,4) DEFAULT NULL,
  `qtoncarrcost` decimal(19,4) DEFAULT NULL,
  `qtoncarrcurr` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `qtbrok` decimal(19,4) DEFAULT NULL,
  `qtwarsell` decimal(19,4) DEFAULT NULL,
  `qtwarcost` decimal(19,4) DEFAULT NULL,
  `qthazsell` decimal(19,4) DEFAULT NULL,
  `qthazsellmin` decimal(19,4) DEFAULT NULL,
  `qthazcost` decimal(19,4) DEFAULT NULL,
  `qthazcostmin` decimal(19,4) DEFAULT NULL,
  `qtportcongsell` decimal(19,4) DEFAULT NULL,
  `qtportconcost` decimal(19,4) DEFAULT NULL,
  `qtdesc2cost` decimal(19,4) DEFAULT NULL,
  `qtdesc2sell` decimal(19,4) DEFAULT NULL,
  `qtdesc3sell` decimal(19,4) DEFAULT NULL,
  `qtdesc3cost` decimal(19,4) DEFAULT NULL,
  `qtcostpc` decimal(19,4) DEFAULT NULL,
  `qtcostins` decimal(19,4) DEFAULT NULL,
  `qtcostinout` decimal(19,4) DEFAULT NULL,
  `qtcostpallet` decimal(19,4) DEFAULT NULL,
  `qtcostseg` decimal(19,4) DEFAULT NULL,
  `qtcostother` decimal(19,4) DEFAULT NULL,
  `qtcostothtest` char(25) COLLATE latin1_general_ci DEFAULT NULL,
  `qtcosthaz` decimal(19,4) DEFAULT NULL,
  `qtcostps` decimal(19,4) DEFAULT NULL,
  `qtcreate` char(4) COLLATE latin1_general_ci DEFAULT NULL,
  `qtthccostr` decimal(19,4) DEFAULT NULL,
  `qtthccostm` decimal(19,4) DEFAULT NULL,
  `qtdestdcost` decimal(19,4) DEFAULT NULL,
  `qtcustccost` decimal(19,4) DEFAULT NULL,
  `qtthcosttot` decimal(19,4) DEFAULT NULL,
  `qtdesc4sell` decimal(19,4) DEFAULT NULL,
  `qtdesc4cost` decimal(19,4) DEFAULT NULL,
  `qtbademail` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtresid` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtliftgate` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtexlen` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qttrktt` int(11) DEFAULT NULL,
  `qteufee` decimal(19,4) DEFAULT NULL,
  `qtsales` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtcorf` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtrouted` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtpalletcost` decimal(19,4) DEFAULT NULL,
  `qtshowdestc` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtshowcft` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtlhrate` decimal(19,4) DEFAULT NULL,
  `qtlhmin` decimal(19,4) DEFAULT NULL,
  `qtlhfuel` decimal(19,4) DEFAULT NULL,
  `qtlhtype` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdestchgtext` char(100) COLLATE latin1_general_ci DEFAULT NULL,
  `qtdestchgamt` decimal(19,4) DEFAULT NULL,
  `qtapptrqd` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtchass` decimal(19,4) DEFAULT NULL,
  `qtbtob` char(5) COLLATE latin1_general_ci DEFAULT NULL,
  `qtholdtruck` blob,
  `qtcustref` char(50) COLLATE latin1_general_ci DEFAULT NULL,
  `qtagenemail` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `qtsalesemail` varchar(5) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_quotes_trucking`
--

CREATE TABLE `epspe_quotes_trucking` (
  `quote_id` char(8) COLLATE latin1_general_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `service_zip` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `truckinginfo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `trucknotes` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `truckercontact` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `truckertelephone` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `truckerfax` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `truckingemail` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pickup_shipper` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_telephone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `readydate` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_specialinstruction` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pickup_receivinghrs` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `min_profit` int(5) DEFAULT NULL,
  `markup` int(5) DEFAULT NULL,
  `max_profit` int(5) DEFAULT NULL,
  `personal_effects_rate` int(5) DEFAULT NULL,
  `precarriage_sell` int(5) DEFAULT NULL,
  `precarriage_sell_min` int(5) DEFAULT NULL,
  `precarriage_cost` int(5) DEFAULT NULL,
  `precarriage_cost_min` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_rawfld`
--

CREATE TABLE `epspe_rawfld` (
  `RDID` int(11) NOT NULL DEFAULT '0',
  `RDRef` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RDVal` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RDFld` int(11) DEFAULT NULL,
  `RDItm1` int(11) DEFAULT NULL,
  `RDItm2` char(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_salesrep`
--

CREATE TABLE `epspe_salesrep` (
  `Item` int(2) NOT NULL DEFAULT '0',
  `SRCode` varchar(1) DEFAULT NULL,
  `SRName` varchar(16) DEFAULT NULL,
  `sremail` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `epspe_skills_matrix`
--

CREATE TABLE `epspe_skills_matrix` (
  `matrix_id` int(2) DEFAULT NULL,
  `employee` varchar(17) DEFAULT NULL,
  `total` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `epspe_skills_matrix`
--

INSERT INTO `epspe_skills_matrix` (`matrix_id`, `employee`, `total`) VALUES
(1, 'brian.bickers', 1372),
(2, 'cyril.mitchell', 808),
(3, 'michael.lapidakis', 1441),
(4, 'shashi.raina', 983),
(5, 'brandon.gore', 397),
(6, 'josh.gregory', 428),
(7, 'matt.flood', 375),
(8, 'sarit.ofermoran', 335),
(9, 'bill.young', 1588),
(10, 'anthony.budd', 820),
(11, 'ben.towner', 786),
(12, 'christian.mendez', 1163),
(13, 'dan.rivera', 431),
(14, 'daniel.cooke', 963),
(15, 'nick.gnazzo', 699),
(16, 'russell.anthony', 1083),
(17, 'thomas.ricardo', 1147),
(18, 'chris.scalgione', 0),
(19, 'jason.mckinney', 0),
(20, 'jim.gallagher', 0),
(21, 'tad.frank', 663),
(22, 'tobias.quaranta', 332),
(23, 'will.robinson', 0);

-- --------------------------------------------------------

--
-- Table structure for table `epspe_tt`
--

CREATE TABLE `epspe_tt` (
  `lttorig` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttload` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttunlo` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttdest` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `field4` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthaz` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttcol` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttcut` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltttim` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttoday` int(11) DEFAULT NULL,
  `lttdday` int(11) DEFAULT NULL,
  `ltttt` int(11) DEFAULT NULL,
  `lttrot` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttcort` decimal(19,4) DEFAULT NULL,
  `lttcomn` decimal(19,4) DEFAULT NULL,
  `lttpert` decimal(19,4) DEFAULT NULL,
  `lttprmn` decimal(19,4) DEFAULT NULL,
  `ltthload` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthunlo` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthcol` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthcut` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthtim` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthoday` int(11) DEFAULT NULL,
  `ltthdday` int(11) DEFAULT NULL,
  `ltthtt` int(11) DEFAULT NULL,
  `ltthrot` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ltthcort` decimal(19,4) DEFAULT NULL,
  `ltthcomn` decimal(19,4) DEFAULT NULL,
  `ltthpert` decimal(19,4) DEFAULT NULL,
  `ltthprmn` decimal(19,4) DEFAULT NULL,
  `lttocort` decimal(19,4) DEFAULT NULL,
  `lttocomn` decimal(19,4) DEFAULT NULL,
  `lttopert` decimal(19,4) DEFAULT NULL,
  `lttoprmn` decimal(19,4) DEFAULT NULL,
  `lttodate` date DEFAULT NULL,
  `lttagnt1` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttagnt2` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lttaltdate` date DEFAULT NULL,
  `lttcutover` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_activity_log`
--

CREATE TABLE `eps_activity_log` (
  `Alcode` int(11) DEFAULT NULL,
  `Altime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Aluser` varchar(10) DEFAULT NULL,
  `Almemo` varchar(100) DEFAULT NULL,
  `Activity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_address`
--

CREATE TABLE `eps_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_affiliate`
--

CREATE TABLE `eps_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_affiliate_activity`
--

CREATE TABLE `eps_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_affiliate_login`
--

CREATE TABLE `eps_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_affiliate_transaction`
--

CREATE TABLE `eps_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_agenads`
--

CREATE TABLE `eps_agenads` (
  `agenbmn4` decimal(19,4) DEFAULT NULL,
  `AgenFlag` int(11) DEFAULT NULL,
  `AgenCode` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `AgenCnty` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenbas2` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenbas3` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agent20` decimal(19,4) DEFAULT NULL,
  `agent40` decimal(19,4) DEFAULT NULL,
  `agenbmn2` int(11) DEFAULT NULL,
  `agenfilr` int(11) DEFAULT NULL,
  `AgenName1` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenName2` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenName3` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenName4` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenPhon` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenTlfx` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenftyp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenff20` decimal(19,4) DEFAULT NULL,
  `agenff40` decimal(19,4) DEFAULT NULL,
  `agenextr` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenNote1` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenNote2` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `AgenSRep` int(11) DEFAULT NULL,
  `AgenCFS4` decimal(19,4) DEFAULT NULL,
  `AgenCFS2` decimal(19,4) DEFAULT NULL,
  `AgenPSR` int(11) DEFAULT NULL,
  `AgenARAP` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenId` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenbase` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenmtyp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenpshr` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenbill` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenid2` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agengrp` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenm20` decimal(19,4) DEFAULT NULL,
  `agenm40` decimal(19,4) DEFAULT NULL,
  `agenstat` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenhsur` decimal(19,4) DEFAULT NULL,
  `agensrvy` decimal(19,4) DEFAULT NULL,
  `agenhmin` decimal(19,4) DEFAULT NULL,
  `agenblc` decimal(19,4) DEFAULT NULL,
  `agennotes` blob,
  `agensftype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agensr20` decimal(19,4) DEFAULT NULL,
  `agensr40` decimal(19,4) DEFAULT NULL,
  `agenscac` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenm220` decimal(19,4) DEFAULT NULL,
  `agenm240` decimal(19,4) DEFAULT NULL,
  `agen220` decimal(19,4) DEFAULT NULL,
  `agen240` decimal(19,4) DEFAULT NULL,
  `agenemail2` char(120) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenemail3` char(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenemail4` char(120) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenkey` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenmbl` blob,
  `agencfslist` blob,
  `agennodoorcfs` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agencfswrout` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agencust` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `lclcremail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `fclcremail` char(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agencomm` decimal(19,4) DEFAULT NULL,
  `agenoth` decimal(19,4) DEFAULT NULL,
  `agencldest` varbinary(220) DEFAULT NULL,
  `agenffdest` varbinary(220) DEFAULT NULL,
  `agentypdest` varbinary(220) DEFAULT NULL,
  `agencurdest` varbinary(220) DEFAULT NULL,
  `agenudestq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenudestb` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenlcurr` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agendclause` blob,
  `agenroutmark` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenrmarkamt` decimal(19,4) DEFAULT NULL,
  `agenexclcfs` blob,
  `agenexcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agendoc` decimal(19,4) DEFAULT NULL,
  `agenaes` decimal(19,4) DEFAULT NULL,
  `agenpechg` blob,
  `agencomchg` blob,
  `agenpschg` blob,
  `agenffchg` blob,
  `agenratype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agennodestchg` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agenbaserates` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `agencustlist` blob,
  `agennottext` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_api`
--

CREATE TABLE `eps_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_api`
--

INSERT INTO `eps_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(2, 'Slack', '', '', 'icDlibIz0MAHUTVQYmx0OweG1SPbSfDy3IT850IDVuZw11XPs5eJjlYTmPEZJXCf4KgW4NC68QJtqjzk03N6XAVdWXgKXkIypKK2c148bCAqaMSIQMkC7GrGYIUUY54Arie3wguL31za0xt7KRjxSUX75xxUoeWkrUU1YehtCEDPCaaHuHicZ3LoFWo72NOT3YV1jTNlU4IHYMxoShixmcNxHe5HNFiGF71qsMbwjk50Ljl0qoesMLaxffO0638B', 1, '2016-05-12 11:25:06', '2016-05-12 11:25:06'),
(3, 'SplendidCRM', '', '', 'fvD6PRiuUshNOcyjqkKuAe1cFgC8oTsLfHwJ03kyqbHUINurTwpYKYlH6uygbBYCmNGKzlseNz6kdTMZnXWTK8sI7jc025OUuolBJO00gHelLv7Sb6gajkGZOMbQdBS8QRkT8NczqlPvhmbPaAaHQLKFXuFMPeXmvovuY8qywlPN8R4ayl1TxS0v5FMYxXuAV5OXaZ0tZ6tEOQqdOX3uTyYofjkBu841vIEPRuSvxVYVyAZgvGbB35hdHCk75FO0', 1, '2016-05-12 11:25:33', '2016-05-12 11:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `eps_attribute`
--

CREATE TABLE `eps_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_attribute_description`
--

CREATE TABLE `eps_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_attribute_group`
--

CREATE TABLE `eps_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_attribute_group_description`
--

CREATE TABLE `eps_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_banner`
--

CREATE TABLE `eps_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_banner`
--

INSERT INTO `eps_banner` (`banner_id`, `name`, `status`) VALUES
(9, 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eps_banner_image`
--

CREATE TABLE `eps_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_banner_image`
--

INSERT INTO `eps_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(101, 9, '1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eps_banner_image_description`
--

CREATE TABLE `eps_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_banner_image_description`
--

INSERT INTO `eps_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(101, 2, 9, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `eps_booking_status`
--

CREATE TABLE `eps_booking_status` (
  `BKSCode` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category`
--

CREATE TABLE `eps_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category_description`
--

CREATE TABLE `eps_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category_filter`
--

CREATE TABLE `eps_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category_path`
--

CREATE TABLE `eps_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category_to_layout`
--

CREATE TABLE `eps_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_category_to_store`
--

CREATE TABLE `eps_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_cntyads`
--

CREATE TABLE `eps_cntyads` (
  `CntyCode` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyISO` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyName` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyEGrp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyIGrp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyLReq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyHazt` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyHazr` decimal(19,4) DEFAULT NULL,
  `CntyHazm` decimal(19,4) DEFAULT NULL,
  `CntyDisc` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `CntyColl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyblcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycorq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycirq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyplrq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywarr` decimal(19,4) DEFAULT NULL,
  `Cntycusc` decimal(19,4) DEFAULT NULL,
  `Cntyddoc` decimal(19,4) DEFAULT NULL,
  `Cntywhar` decimal(19,4) DEFAULT NULL,
  `Cntyinsp` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywart` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywhat` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycont` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyconr` decimal(19,4) DEFAULT NULL,
  `Cntynope` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypepl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypeci` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywood` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywarc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycclc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntydstc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntywhfc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyconc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycurr` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypsrt` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypsrr` decimal(19,4) DEFAULT NULL,
  `Cntypsrc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cnty20` decimal(19,4) DEFAULT NULL,
  `Cnty40` decimal(19,4) DEFAULT NULL,
  `Cntyper` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntycmn` char(10) DEFAULT NULL,
  `Cntycmx` char(10) DEFAULT NULL,
  `Cntycsp` char(10) DEFAULT NULL,
  `Cntyfri` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntygri` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntygrid` date DEFAULT NULL,
  `Cntypoen` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypoec` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntypall` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyhhgf` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyhhgl` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyautf` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyautl` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyothf` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntyothl` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Cntylres` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntyfres` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntyldrq` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntyfdrq` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntybaf` char(10) DEFAULT NULL,
  `cntybmn` char(10) DEFAULT NULL,
  `cntybdt` date DEFAULT NULL,
  `cntyconv` decimal(19,4) DEFAULT NULL,
  `cntycdate` date DEFAULT NULL,
  `CntyImGrp` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntybprv` date DEFAULT NULL,
  `cntybaf2` char(10) DEFAULT NULL,
  `cntybaf2p` char(10) DEFAULT NULL,
  `cntyb2dat` date DEFAULT NULL,
  `cntyb2pdt` date DEFAULT NULL,
  `cnty2tier` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntytierlist` blob,
  `cntyblfee` char(10) DEFAULT NULL,
  `cntyblfeedt` date DEFAULT NULL,
  `cntyblfeep` char(10) DEFAULT NULL,
  `cntyblfeepdt` date DEFAULT NULL,
  `cntybl2tier` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cntybllist` blob,
  `cntybl2fee` char(10) DEFAULT NULL,
  `cntybl2feedt` date DEFAULT NULL,
  `cntybl2feep` char(10) DEFAULT NULL,
  `cntybl2feepdt` date DEFAULT NULL,
  `cntygri1amt` char(10) DEFAULT NULL,
  `cntygri1date` date DEFAULT NULL,
  `cntygri2amt` char(10) DEFAULT NULL,
  `cntygri2date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_country`
--

CREATE TABLE `eps_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_coupon`
--

CREATE TABLE `eps_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_coupon_category`
--

CREATE TABLE `eps_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_coupon_history`
--

CREATE TABLE `eps_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_coupon_product`
--

CREATE TABLE `eps_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_currency`
--

CREATE TABLE `eps_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_currency`
--

INSERT INTO `eps_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'United States Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-07-11 10:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer`
--

CREATE TABLE `eps_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `salt` varchar(9) DEFAULT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) DEFAULT '0',
  `address_id` int(11) DEFAULT '0',
  `custom_field` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `safe` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `custcode` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_activity`
--

CREATE TABLE `eps_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_ban_ip`
--

CREATE TABLE `eps_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_commission_type`
--

CREATE TABLE `eps_customer_commission_type` (
  `Item` int(1) DEFAULT NULL,
  `srtcode` varchar(1) DEFAULT NULL,
  `srtype` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_group`
--

CREATE TABLE `eps_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_group_description`
--

CREATE TABLE `eps_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(96) NOT NULL,
  `description` text,
  `custcode` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_history`
--

CREATE TABLE `eps_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_ip`
--

CREATE TABLE `eps_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_login`
--

CREATE TABLE `eps_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_online`
--

CREATE TABLE `eps_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_reward`
--

CREATE TABLE `eps_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_customer_transaction`
--

CREATE TABLE `eps_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_custom_field`
--

CREATE TABLE `eps_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_custom_field_customer_group`
--

CREATE TABLE `eps_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_custom_field_description`
--

CREATE TABLE `eps_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_custom_field_value`
--

CREATE TABLE `eps_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_custom_field_value_description`
--

CREATE TABLE `eps_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_cutday`
--

CREATE TABLE `eps_cutday` (
  `CDcode` int(11) NOT NULL,
  `CDDesc` varchar(10) NOT NULL,
  `CDShort` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_cuttim`
--

CREATE TABLE `eps_cuttim` (
  `cuttime_id` int(11) NOT NULL,
  `ctcode` char(1) NOT NULL,
  `ctdesc` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_destads`
--

CREATE TABLE `eps_destads` (
  `DestCode` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `DestName` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Destcong` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destncfs` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destagnt` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destnlcl` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destlgrp` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `DestGrp` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `DestSchK` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Destcnty` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destcoll` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destvia` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destwhar` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destdisc` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destdocs` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destwar` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destsail` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Destnfcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `DESTUSE` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Destmark` int(11) DEFAULT NULL,
  `destlocode` char(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `usedestlcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `useedestfcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `usedsetimp` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destdefbase` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destdefhbl` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destalt1base` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destalt1hbl` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destalt2base` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `deslalt2hbl` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destalt3base` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destalt3hbl` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destflatdesc` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destflatrate` decimal(19,4) DEFAULT NULL,
  `destratedesc` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destraterate` decimal(19,4) DEFAULT NULL,
  `destlclbase` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destclause` blob,
  `destcca` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destcpod` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destallin` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destailist` blob,
  `destnope` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destnohaz` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destaiexp` date DEFAULT NULL,
  `destorig` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destoriglist` blob,
  `desthclause` blob,
  `destnohazcfs` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destagentpe` blob,
  `destagentcom` blob,
  `destagentps` blob,
  `destagentff` blob,
  `destagentchg` blob,
  `desthazrate` decimal(19,4) DEFAULT NULL,
  `desthazmin` decimal(19,4) DEFAULT NULL,
  `destnodestchgfor` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `desteureq` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destgridate` date DEFAULT NULL,
  `destgri` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destgrilist` blob,
  `destnoexpress` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destnocollect` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destnochassis` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destdirmin` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destpe` char(24) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destatch` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destibdirec` decimal(19,4) DEFAULT NULL,
  `destibcoload` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_download`
--

CREATE TABLE `eps_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_download_description`
--

CREATE TABLE `eps_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_event`
--

CREATE TABLE `eps_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_extension`
--

CREATE TABLE `eps_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_filter`
--

CREATE TABLE `eps_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_filter_description`
--

CREATE TABLE `eps_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_filter_group`
--

CREATE TABLE `eps_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_filter_group_description`
--

CREATE TABLE `eps_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_geo_zone`
--

CREATE TABLE `eps_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_information`
--

CREATE TABLE `eps_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_information_description`
--

CREATE TABLE `eps_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_information_to_layout`
--

CREATE TABLE `eps_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_information_to_store`
--

CREATE TABLE `eps_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_language`
--

CREATE TABLE `eps_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_language`
--

INSERT INTO `eps_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(3, 'english', '0', 'default', '', 'eps/language/english', 0, 1),
(1, 'english', '0', 'default', '', 'eps/language/english', 0, 1),
(2, 'english', '0', 'default', '', 'eps/language/english', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eps_layout`
--

CREATE TABLE `eps_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_layout`
--

INSERT INTO `eps_layout` (`layout_id`, `name`) VALUES
(14, 'strategic');

-- --------------------------------------------------------

--
-- Table structure for table `eps_layout_module`
--

CREATE TABLE `eps_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_layout_route`
--

CREATE TABLE `eps_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_layout_route`
--

INSERT INTO `eps_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(56, 14, 0, 'strategic');

-- --------------------------------------------------------

--
-- Table structure for table `eps_length_class`
--

CREATE TABLE `eps_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_length_class_description`
--

CREATE TABLE `eps_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_lineads`
--

CREATE TABLE `eps_lineads` (
  `LineCode` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineName1` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineName2` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineName3` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineName4` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineName5` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LinePhon` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineFax` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineCont` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCAC` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNM1` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNM2` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNM3` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNM4` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNB1` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNB2` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNB3` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCNB4` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `LineSCex1` date DEFAULT NULL,
  `LineSCex2` date DEFAULT NULL,
  `LineSCex3` date DEFAULT NULL,
  `LineSCex4` date DEFAULT NULL,
  `Linerest` tinyint(1) DEFAULT NULL,
  `LineScFm1` date DEFAULT NULL,
  `LineSCfm2` date DEFAULT NULL,
  `LineSCFm3` date DEFAULT NULL,
  `LineSCFm4` date DEFAULT NULL,
  `LineNote` blob,
  `linefut1` tinyint(1) DEFAULT NULL,
  `LineFut2` tinyint(1) DEFAULT NULL,
  `LineFut3` tinyint(1) DEFAULT NULL,
  `Linescnm5` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnm6` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnm7` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnm8` char(25) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnb5` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnb6` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnb7` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescnb8` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linescfm5` date DEFAULT NULL,
  `lienscfm6` date DEFAULT NULL,
  `linescfm7` date DEFAULT NULL,
  `linescfm8` date DEFAULT NULL,
  `linescex5` date DEFAULT NULL,
  `linescex6` date DEFAULT NULL,
  `liinescex7` date DEFAULT NULL,
  `linescex8` date DEFAULT NULL,
  `LineLogo` blob,
  `Linelane` blob,
  `Lineemail` char(65) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linelclt` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linelclcarr` tinyint(1) DEFAULT NULL,
  `lineusehc` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_location`
--

CREATE TABLE `eps_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_manufacturer`
--

CREATE TABLE `eps_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_manufacturer_to_store`
--

CREATE TABLE `eps_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_marketing`
--

CREATE TABLE `eps_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_modification`
--

CREATE TABLE `eps_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_module`
--

CREATE TABLE `eps_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_objects`
--

CREATE TABLE `eps_objects` (
  `object_id` int(11) NOT NULL,
  `object_description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `object_ref` varchar(50) NOT NULL,
  `object_data` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_option`
--

CREATE TABLE `eps_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_option_description`
--

CREATE TABLE `eps_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_option_value`
--

CREATE TABLE `eps_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_option_value_description`
--

CREATE TABLE `eps_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order`
--

CREATE TABLE `eps_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_custom_field`
--

CREATE TABLE `eps_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_fraud`
--

CREATE TABLE `eps_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_history`
--

CREATE TABLE `eps_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_option`
--

CREATE TABLE `eps_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_product`
--

CREATE TABLE `eps_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_recurring`
--

CREATE TABLE `eps_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_recurring_transaction`
--

CREATE TABLE `eps_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_status`
--

CREATE TABLE `eps_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_order_status`
--

INSERT INTO `eps_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(17, 0, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_total`
--

CREATE TABLE `eps_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_order_voucher`
--

CREATE TABLE `eps_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_origads`
--

CREATE TABLE `eps_origads` (
  `OrigCode` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `OrigName` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Origcmax` decimal(19,4) DEFAULT NULL,
  `origsmax` decimal(19,4) DEFAULT NULL,
  `OrigWare` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `OrigPort` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `OrigSort` int(11) DEFAULT NULL,
  `OrigGrp` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `OrigCls` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origschd` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origrate` decimal(19,4) DEFAULT NULL,
  `origtype` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origmin` decimal(19,4) DEFAULT NULL,
  `origsrat` decimal(19,4) DEFAULT NULL,
  `origsmin` decimal(19,4) DEFAULT NULL,
  `Origwchg` decimal(19,4) DEFAULT NULL,
  `origwmin` decimal(19,4) DEFAULT NULL,
  `origw45` decimal(19,4) DEFAULT NULL,
  `orignlcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `orignfcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origimp` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origpsf` decimal(19,4) DEFAULT NULL,
  `origlocode` char(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origuselcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origusefcl` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origuseimp` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origfrate` decimal(19,4) DEFAULT NULL,
  `origloadbase` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origorigbase` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `origstartdate` date DEFAULT NULL,
  `origxfer1` varchar(3) DEFAULT NULL,
  `origxfer2` varchar(3) DEFAULT NULL,
  `origxfer3` varchar(3) DEFAULT NULL,
  `origxfer4` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product`
--

CREATE TABLE `eps_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_attribute`
--

CREATE TABLE `eps_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_description`
--

CREATE TABLE `eps_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_discount`
--

CREATE TABLE `eps_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_filter`
--

CREATE TABLE `eps_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_image`
--

CREATE TABLE `eps_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_option`
--

CREATE TABLE `eps_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_option_value`
--

CREATE TABLE `eps_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_recurring`
--

CREATE TABLE `eps_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_related`
--

CREATE TABLE `eps_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_reward`
--

CREATE TABLE `eps_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_special`
--

CREATE TABLE `eps_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_to_category`
--

CREATE TABLE `eps_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_to_download`
--

CREATE TABLE `eps_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_to_layout`
--

CREATE TABLE `eps_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_product_to_store`
--

CREATE TABLE `eps_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_rate_class`
--

CREATE TABLE `eps_rate_class` (
  `rate_class_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_rate_customer_group`
--

CREATE TABLE `eps_rate_customer_group` (
  `rate_id` int(11) NOT NULL,
  `Customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_rate_rate`
--

CREATE TABLE `eps_rate_rate` (
  `rate_id` int(11) NOT NULL,
  `geo_origin_id` varchar(11) DEFAULT NULL,
  `geo_dest_id` varchar(11) DEFAULT NULL,
  `rotation` varchar(50) DEFAULT NULL,
  `rate` decimal(19,4) DEFAULT NULL,
  `min` decimal(19,4) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `agent_id` varchar(5) DEFAULT NULL,
  `customer_id` char(6) DEFAULT NULL,
  `odate` date DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_rate_rule`
--

CREATE TABLE `eps_rate_rule` (
  `rule_id` int(11) NOT NULL,
  `rate_class` int(11) DEFAULT NULL,
  `rate_id` int(11) DEFAULT NULL,
  `based` varchar(50) DEFAULT NULL,
  `dept_id` varchar(5) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `service` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_rdtf`
--

CREATE TABLE `eps_rdtf` (
  `RDFID` int(11) DEFAULT NULL,
  `RDFTbl` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RDFRaw` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `RDFRDT` int(11) DEFAULT NULL,
  `RDSFil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_recurring`
--

CREATE TABLE `eps_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_recurring_description`
--

CREATE TABLE `eps_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_return`
--

CREATE TABLE `eps_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_return_action`
--

CREATE TABLE `eps_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_return_history`
--

CREATE TABLE `eps_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_return_reason`
--

CREATE TABLE `eps_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_return_status`
--

CREATE TABLE `eps_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_review`
--

CREATE TABLE `eps_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_setting`
--

CREATE TABLE `eps_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_setting`
--

INSERT INTO `eps_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(2050, 0, 'sync', 'lclbooktrack', '0', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(2051, 0, 'sync', 'sync', '0', 0),
(2046, 0, 'sync', 'quote_ads', '0', 0),
(2047, 0, 'sync', 'quote_web', '0', 0),
(2048, 0, 'sync', 'customer_ads', '0', 0),
(2049, 0, 'sync', 'customer_web', '0', 0),
(2720, 0, 'config', 'config_google_analytics', '', 0),
(2616, 0, 'config', 'config_telephone', '(202)603-0007', 0),
(2617, 0, 'config', 'config_fax', '', 0),
(2618, 0, 'config', 'config_image', 'catalog/eps_logo2.png', 0),
(2619, 0, 'config', 'config_open', '', 0),
(2620, 0, 'config', 'config_comment', '', 0),
(2621, 0, 'config', 'config_meta_title', 'EPS Portal Exchange', 0),
(2622, 0, 'config', 'config_meta_description', 'My Store', 0),
(2623, 0, 'config', 'config_meta_keyword', '', 0),
(2624, 0, 'config', 'config_template', 'default', 0),
(2625, 0, 'config', 'config_layout_id', '1', 0),
(2626, 0, 'config', 'config_country_id', '223', 0),
(2627, 0, 'config', 'config_zone_id', '3653', 0),
(2628, 0, 'config', 'config_language', 'en', 0),
(2630, 0, 'config', 'config_currency', 'USD', 0),
(2631, 0, 'config', 'config_currency_auto', '1', 0),
(2632, 0, 'config', 'config_length_class_id', '3', 0),
(2633, 0, 'config', 'config_weight_class_id', '5', 0),
(2634, 0, 'config', 'config_product_count', '1', 0),
(2635, 0, 'config', 'config_product_limit', '15', 0),
(2636, 0, 'config', 'config_product_description_length', '100', 0),
(2637, 0, 'config', 'config_limit_admin', '20', 0),
(2638, 0, 'config', 'config_review_status', '1', 0),
(2639, 0, 'config', 'config_review_guest', '1', 0),
(2640, 0, 'config', 'config_review_mail', '0', 0),
(2641, 0, 'config', 'config_voucher_min', '1', 0),
(2642, 0, 'config', 'config_voucher_max', '1000', 0),
(2643, 0, 'config', 'config_tax', '1', 0),
(2644, 0, 'config', 'config_tax_default', 'shipping', 0),
(2645, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2646, 0, 'config', 'config_customer_online', '0', 0),
(2647, 0, 'config', 'config_customer_group_id', '1', 0),
(2648, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(2649, 0, 'config', 'config_customer_price', '0', 0),
(2650, 0, 'config', 'config_login_attempts', '5', 0),
(2651, 0, 'config', 'config_account_id', '3', 0),
(2652, 0, 'config', 'config_account_mail', '0', 0),
(2653, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(2654, 0, 'config', 'config_api_id', '1', 0),
(2655, 0, 'config', 'config_cart_weight', '1', 0),
(2656, 0, 'config', 'config_checkout_guest', '1', 0),
(2657, 0, 'config', 'config_checkout_id', '5', 0),
(2658, 0, 'config', 'config_order_status_id', '1', 0),
(2659, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(2660, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(2661, 0, 'config', 'config_order_mail', '0', 0),
(2662, 0, 'config', 'config_stock_display', '0', 0),
(2663, 0, 'config', 'config_stock_warning', '0', 0),
(2664, 0, 'config', 'config_stock_checkout', '0', 0),
(2665, 0, 'config', 'config_affiliate_approval', '0', 0),
(2666, 0, 'config', 'config_affiliate_auto', '0', 0),
(2667, 0, 'config', 'config_affiliate_commission', '5', 0),
(2668, 0, 'config', 'config_affiliate_id', '4', 0),
(2669, 0, 'config', 'config_affiliate_mail', '0', 0),
(2670, 0, 'config', 'config_return_id', '0', 0),
(2671, 0, 'config', 'config_return_status_id', '2', 0),
(2672, 0, 'config', 'config_logo', 'catalog/logo_eps.png', 0),
(2673, 0, 'config', 'config_icon', 'catalog/favicon-100x100.png', 0),
(2674, 0, 'config', 'config_image_category_width', '80', 0),
(2675, 0, 'config', 'config_image_category_height', '80', 0),
(2676, 0, 'config', 'config_image_thumb_width', '228', 0),
(2045, 0, 'sync', 'booking_web', '0', 0),
(2719, 0, 'config', 'config_error_filename', 'error.log', 0),
(2044, 0, 'sync', 'booking_ads', '0', 0),
(2718, 0, 'config', 'config_error_log', '1', 0),
(2614, 0, 'config', 'config_geocode', '', 0),
(2615, 0, 'config', 'config_email', 'ben.towner@equinix.com', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(2717, 0, 'config', 'config_error_display', '1', 0),
(2716, 0, 'config', 'config_compression', '0', 0),
(2715, 0, 'config', 'config_encryption', '6da35b7e0b14796280488fbf4a25e688', 0),
(2714, 0, 'config', 'config_password', '0', 0),
(2713, 0, 'config', 'config_maintenance', '0', 0),
(2709, 0, 'config', 'config_seo_url', '0', 0),
(2710, 0, 'config', 'config_file_max_size', '300000', 0),
(2711, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(2712, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(2708, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2707, 0, 'config', 'config_shared', '0', 0),
(2705, 0, 'config', 'config_fraud_status_id', '7', 0),
(2706, 0, 'config', 'config_secure', '0', 0),
(2704, 0, 'config', 'config_fraud_score', '', 0),
(2703, 0, 'config', 'config_fraud_key', '', 0),
(2702, 0, 'config', 'config_fraud_detection', '0', 0),
(2701, 0, 'config', 'config_mail_alert', '', 0),
(2700, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"smtp";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:16:"smtp.equinix.com";s:13:"smtp_username";s:3:"eps";s:13:"smtp_password";s:10:"Office123!";s:9:"smtp_port";s:3:"587";s:12:"smtp_timeout";s:2:"30";}', 1),
(2699, 0, 'config', 'config_ftp_status', '1', 0),
(2698, 0, 'config', 'config_ftp_root', '', 0),
(2697, 0, 'config', 'config_ftp_password', '', 0),
(2696, 0, 'config', 'config_ftp_username', '', 0),
(2695, 0, 'config', 'config_ftp_port', '21', 0),
(2694, 0, 'config', 'config_ftp_hostname', '', 0),
(2693, 0, 'config', 'config_image_location_height', '50', 0),
(2692, 0, 'config', 'config_image_location_width', '268', 0),
(2691, 0, 'config', 'config_image_cart_height', '47', 0),
(2690, 0, 'config', 'config_image_cart_width', '47', 0),
(2689, 0, 'config', 'config_image_wishlist_height', '47', 0),
(2686, 0, 'config', 'config_image_compare_width', '90', 0),
(2687, 0, 'config', 'config_image_compare_height', '90', 0),
(2688, 0, 'config', 'config_image_wishlist_width', '47', 0),
(2685, 0, 'config', 'config_image_related_height', '80', 0),
(2684, 0, 'config', 'config_image_related_width', '80', 0),
(2683, 0, 'config', 'config_image_additional_height', '74', 0),
(2682, 0, 'config', 'config_image_additional_width', '74', 0),
(2681, 0, 'config', 'config_image_product_height', '228', 0),
(2680, 0, 'config', 'config_image_product_width', '228', 0),
(2679, 0, 'config', 'config_image_popup_height', '500', 0),
(2052, 0, 'sync', 'Tracking_Booking_ads', '1', 0),
(2053, 0, 'sync', 'Tracking_Booking_web', '1', 0),
(2054, 0, 'sync', 'Tracking_Quote_ads', '1', 0),
(2055, 0, 'sync', 'Tracking_Quote_web', '1', 0),
(2056, 0, 'sync', 'arrivals_ads', '0', 0),
(2057, 0, 'sync', 'activity_web', '0', 0),
(2058, 0, 'sync', 'website', '1', 0),
(2059, 0, 'sync', 'transactions_firsttime', '1', 0),
(2060, 0, 'sync', 'vessels', '0', 0),
(2677, 0, 'config', 'config_image_thumb_height', '228', 0),
(2678, 0, 'config', 'config_image_popup_width', '500', 0),
(2612, 0, 'config', 'config_owner', 'EPS Cloud', 0),
(2613, 0, 'config', 'config_address', '102 W. 38th Street\nNew York, NY 10018', 0),
(2611, 0, 'config', 'config_name', 'EPS Portal Exchange', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eps_stock_status`
--

CREATE TABLE `eps_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_store`
--

CREATE TABLE `eps_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_store`
--

INSERT INTO `eps_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(1, 'EPS Cloud', 'http://localhost:8090/eps', '');

-- --------------------------------------------------------

--
-- Table structure for table `eps_tax_class`
--

CREATE TABLE `eps_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_tax_rate`
--

CREATE TABLE `eps_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_tax_rate_to_customer_group`
--

CREATE TABLE `eps_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_tax_rule`
--

CREATE TABLE `eps_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_tracking_epspe_booking`
--

CREATE TABLE `eps_tracking_epspe_booking` (
  `trkstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trkref` char(10) DEFAULT NULL,
  `trkby` char(10) DEFAULT NULL,
  `trknote` blob,
  `LOG_TRACE_EVENT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_tracking_epspe_quote`
--

CREATE TABLE `eps_tracking_epspe_quote` (
  `trkstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trkref` char(10) DEFAULT NULL,
  `trkby` char(10) DEFAULT NULL,
  `trknote` blob,
  `LOG_TRACE_EVENT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_upload`
--

CREATE TABLE `eps_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_url_alias`
--

CREATE TABLE `eps_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_user`
--

CREATE TABLE `eps_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_user`
--

INSERT INTO `eps_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'f956219efeda821b56644181874c05b028bf00dd', '84a37991b', 'Ben', 'Towner', 'ben.towner@equinix.com', 'catalog/BT_02.png', '', '::1', 1, '2015-01-23 21:17:51'),
(16, 13, 'Ben', 'e2b5132d66f2accb84e1779912c10659aca42cf2', '75dfeb921', 'Ben', 'Towner', 'ben.towner@nimbo.com', 'catalog/BT2.jpg', '', '::1', 1, '2016-05-13 08:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `eps_user_group`
--

CREATE TABLE `eps_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eps_user_group`
--

INSERT INTO `eps_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:199:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:17:"dashboard/booking";i:19;s:15:"dashboard/chart";i:20;s:18:"dashboard/customer";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:15:"dashboard/quote";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:13:"design/banner";i:30;s:13:"design/layout";i:31;s:14:"extension/feed";i:32;s:19:"extension/installer";i:33;s:22:"extension/modification";i:34;s:16:"extension/module";i:35;s:17:"extension/openbay";i:36;s:17:"extension/payment";i:37;s:18:"extension/shipping";i:38;s:15:"extension/total";i:39;s:16:"feed/google_base";i:40;s:19:"feed/google_sitemap";i:41;s:15:"feed/openbaypro";i:42;s:20:"localisation/country";i:43;s:21:"localisation/currency";i:44;s:21:"localisation/geo_zone";i:45;s:21:"localisation/language";i:46;s:25:"localisation/length_class";i:47;s:21:"localisation/location";i:48;s:25:"localisation/order_status";i:49;s:26:"localisation/return_action";i:50;s:26:"localisation/return_reason";i:51;s:26:"localisation/return_status";i:52;s:25:"localisation/stock_status";i:53;s:22:"localisation/tax_class";i:54;s:21:"localisation/tax_rate";i:55;s:25:"localisation/weight_class";i:56;s:17:"localisation/zone";i:57;s:20:"maintenance/customer";i:58;s:27:"maintenance/customer_search";i:59;s:19:"marketing/affiliate";i:60;s:17:"marketing/contact";i:61;s:16:"marketing/coupon";i:62;s:19:"marketing/marketing";i:63;s:14:"module/account";i:64;s:16:"module/affiliate";i:65;s:20:"module/amazon_button";i:66;s:13:"module/banner";i:67;s:17:"module/bestseller";i:68;s:15:"module/carousel";i:69;s:15:"module/category";i:70;s:19:"module/ebay_listing";i:71;s:15:"module/featured";i:72;s:13:"module/filter";i:73;s:22:"module/google_hangouts";i:74;s:11:"module/html";i:75;s:18:"module/information";i:76;s:13:"module/latest";i:77;s:16:"module/pp_button";i:78;s:15:"module/pp_login";i:79;s:16:"module/slideshow";i:80;s:14:"module/special";i:81;s:12:"module/store";i:82;s:14:"openbay/amazon";i:83;s:22:"openbay/amazon_listing";i:84;s:22:"openbay/amazon_product";i:85;s:16:"openbay/amazonus";i:86;s:24:"openbay/amazonus_listing";i:87;s:24:"openbay/amazonus_product";i:88;s:12:"openbay/ebay";i:89;s:20:"openbay/ebay_profile";i:90;s:21:"openbay/ebay_template";i:91;s:12:"openbay/etsy";i:92;s:20:"openbay/etsy_product";i:93;s:21:"openbay/etsy_shipping";i:94;s:17:"openbay/etsy_shop";i:95;s:23:"payment/amazon_checkout";i:96;s:24:"payment/authorizenet_aim";i:97;s:24:"payment/authorizenet_sim";i:98;s:21:"payment/bank_transfer";i:99;s:22:"payment/bluepay_hosted";i:100;s:24:"payment/bluepay_redirect";i:101;s:14:"payment/cheque";i:102;s:11:"payment/cod";i:103;s:17:"payment/firstdata";i:104;s:24:"payment/firstdata_remote";i:105;s:21:"payment/free_checkout";i:106;s:22:"payment/klarna_account";i:107;s:22:"payment/klarna_invoice";i:108;s:14:"payment/liqpay";i:109;s:14:"payment/nochex";i:110;s:15:"payment/paymate";i:111;s:16:"payment/paypoint";i:112;s:13:"payment/payza";i:113;s:26:"payment/perpetual_payments";i:114;s:18:"payment/pp_express";i:115;s:18:"payment/pp_payflow";i:116;s:25:"payment/pp_payflow_iframe";i:117;s:14:"payment/pp_pro";i:118;s:21:"payment/pp_pro_iframe";i:119;s:19:"payment/pp_standard";i:120;s:14:"payment/realex";i:121;s:21:"payment/realex_remote";i:122;s:22:"payment/sagepay_direct";i:123;s:22:"payment/sagepay_server";i:124;s:18:"payment/sagepay_us";i:125;s:24:"payment/securetrading_pp";i:126;s:24:"payment/securetrading_ws";i:127;s:14:"payment/skrill";i:128;s:19:"payment/twocheckout";i:129;s:28:"payment/web_payment_software";i:130;s:16:"payment/worldpay";i:131;s:16:"report/affiliate";i:132;s:25:"report/affiliate_activity";i:133;s:22:"report/affiliate_login";i:134;s:24:"report/customer_activity";i:135;s:22:"report/customer_credit";i:136;s:21:"report/customer_login";i:137;s:22:"report/customer_online";i:138;s:21:"report/customer_order";i:139;s:22:"report/customer_reward";i:140;s:16:"report/marketing";i:141;s:24:"report/product_purchased";i:142;s:21:"report/product_viewed";i:143;s:18:"report/sale_coupon";i:144;s:17:"report/sale_order";i:145;s:18:"report/sale_return";i:146;s:20:"report/sale_shipping";i:147;s:15:"report/sale_tax";i:148;s:17:"sale/custom_field";i:149;s:13:"sale/customer";i:150;s:20:"sale/customer_ban_ip";i:151;s:19:"sale/customer_group";i:152;s:10:"sale/order";i:153;s:14:"sale/recurring";i:154;s:11:"sale/return";i:155;s:12:"sale/voucher";i:156;s:18:"sale/voucher_theme";i:157;s:15:"service/booking";i:158;s:17:"service/commodity";i:159;s:15:"service/contact";i:160;s:17:"service/ctsvendor";i:161;s:16:"service/customer";i:162;s:14:"service/pickup";i:163;s:18:"service/quotations";i:164;s:15:"service/service";i:165;s:15:"service/trucker";i:166;s:19:"setting/ajaxpersist";i:167;s:15:"setting/setting";i:168;s:13:"setting/store";i:169;s:16:"shipping/auspost";i:170;s:17:"shipping/citylink";i:171;s:14:"shipping/fedex";i:172;s:13:"shipping/flat";i:173;s:13:"shipping/free";i:174;s:13:"shipping/item";i:175;s:23:"shipping/parcelforce_48";i:176;s:15:"shipping/pickup";i:177;s:19:"shipping/royal_mail";i:178;s:12:"shipping/ups";i:179;s:13:"shipping/usps";i:180;s:15:"shipping/weight";i:181;s:11:"tool/backup";i:182;s:14:"tool/error_log";i:183;s:9:"tool/sync";i:184;s:11:"tool/upload";i:185;s:12:"total/coupon";i:186;s:12:"total/credit";i:187;s:14:"total/handling";i:188;s:16:"total/klarna_fee";i:189;s:19:"total/low_order_fee";i:190;s:12:"total/reward";i:191;s:14:"total/shipping";i:192;s:15:"total/sub_total";i:193;s:9:"total/tax";i:194;s:11:"total/total";i:195;s:13:"total/voucher";i:196;s:8:"user/api";i:197;s:9:"user/user";i:198;s:20:"user/user_permission";}s:6:"modify";a:199:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:17:"dashboard/booking";i:19;s:15:"dashboard/chart";i:20;s:18:"dashboard/customer";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:15:"dashboard/quote";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:13:"design/banner";i:30;s:13:"design/layout";i:31;s:14:"extension/feed";i:32;s:19:"extension/installer";i:33;s:22:"extension/modification";i:34;s:16:"extension/module";i:35;s:17:"extension/openbay";i:36;s:17:"extension/payment";i:37;s:18:"extension/shipping";i:38;s:15:"extension/total";i:39;s:16:"feed/google_base";i:40;s:19:"feed/google_sitemap";i:41;s:15:"feed/openbaypro";i:42;s:20:"localisation/country";i:43;s:21:"localisation/currency";i:44;s:21:"localisation/geo_zone";i:45;s:21:"localisation/language";i:46;s:25:"localisation/length_class";i:47;s:21:"localisation/location";i:48;s:25:"localisation/order_status";i:49;s:26:"localisation/return_action";i:50;s:26:"localisation/return_reason";i:51;s:26:"localisation/return_status";i:52;s:25:"localisation/stock_status";i:53;s:22:"localisation/tax_class";i:54;s:21:"localisation/tax_rate";i:55;s:25:"localisation/weight_class";i:56;s:17:"localisation/zone";i:57;s:20:"maintenance/customer";i:58;s:27:"maintenance/customer_search";i:59;s:19:"marketing/affiliate";i:60;s:17:"marketing/contact";i:61;s:16:"marketing/coupon";i:62;s:19:"marketing/marketing";i:63;s:14:"module/account";i:64;s:16:"module/affiliate";i:65;s:20:"module/amazon_button";i:66;s:13:"module/banner";i:67;s:17:"module/bestseller";i:68;s:15:"module/carousel";i:69;s:15:"module/category";i:70;s:19:"module/ebay_listing";i:71;s:15:"module/featured";i:72;s:13:"module/filter";i:73;s:22:"module/google_hangouts";i:74;s:11:"module/html";i:75;s:18:"module/information";i:76;s:13:"module/latest";i:77;s:16:"module/pp_button";i:78;s:15:"module/pp_login";i:79;s:16:"module/slideshow";i:80;s:14:"module/special";i:81;s:12:"module/store";i:82;s:14:"openbay/amazon";i:83;s:22:"openbay/amazon_listing";i:84;s:22:"openbay/amazon_product";i:85;s:16:"openbay/amazonus";i:86;s:24:"openbay/amazonus_listing";i:87;s:24:"openbay/amazonus_product";i:88;s:12:"openbay/ebay";i:89;s:20:"openbay/ebay_profile";i:90;s:21:"openbay/ebay_template";i:91;s:12:"openbay/etsy";i:92;s:20:"openbay/etsy_product";i:93;s:21:"openbay/etsy_shipping";i:94;s:17:"openbay/etsy_shop";i:95;s:23:"payment/amazon_checkout";i:96;s:24:"payment/authorizenet_aim";i:97;s:24:"payment/authorizenet_sim";i:98;s:21:"payment/bank_transfer";i:99;s:22:"payment/bluepay_hosted";i:100;s:24:"payment/bluepay_redirect";i:101;s:14:"payment/cheque";i:102;s:11:"payment/cod";i:103;s:17:"payment/firstdata";i:104;s:24:"payment/firstdata_remote";i:105;s:21:"payment/free_checkout";i:106;s:22:"payment/klarna_account";i:107;s:22:"payment/klarna_invoice";i:108;s:14:"payment/liqpay";i:109;s:14:"payment/nochex";i:110;s:15:"payment/paymate";i:111;s:16:"payment/paypoint";i:112;s:13:"payment/payza";i:113;s:26:"payment/perpetual_payments";i:114;s:18:"payment/pp_express";i:115;s:18:"payment/pp_payflow";i:116;s:25:"payment/pp_payflow_iframe";i:117;s:14:"payment/pp_pro";i:118;s:21:"payment/pp_pro_iframe";i:119;s:19:"payment/pp_standard";i:120;s:14:"payment/realex";i:121;s:21:"payment/realex_remote";i:122;s:22:"payment/sagepay_direct";i:123;s:22:"payment/sagepay_server";i:124;s:18:"payment/sagepay_us";i:125;s:24:"payment/securetrading_pp";i:126;s:24:"payment/securetrading_ws";i:127;s:14:"payment/skrill";i:128;s:19:"payment/twocheckout";i:129;s:28:"payment/web_payment_software";i:130;s:16:"payment/worldpay";i:131;s:16:"report/affiliate";i:132;s:25:"report/affiliate_activity";i:133;s:22:"report/affiliate_login";i:134;s:24:"report/customer_activity";i:135;s:22:"report/customer_credit";i:136;s:21:"report/customer_login";i:137;s:22:"report/customer_online";i:138;s:21:"report/customer_order";i:139;s:22:"report/customer_reward";i:140;s:16:"report/marketing";i:141;s:24:"report/product_purchased";i:142;s:21:"report/product_viewed";i:143;s:18:"report/sale_coupon";i:144;s:17:"report/sale_order";i:145;s:18:"report/sale_return";i:146;s:20:"report/sale_shipping";i:147;s:15:"report/sale_tax";i:148;s:17:"sale/custom_field";i:149;s:13:"sale/customer";i:150;s:20:"sale/customer_ban_ip";i:151;s:19:"sale/customer_group";i:152;s:10:"sale/order";i:153;s:14:"sale/recurring";i:154;s:11:"sale/return";i:155;s:12:"sale/voucher";i:156;s:18:"sale/voucher_theme";i:157;s:15:"service/booking";i:158;s:17:"service/commodity";i:159;s:15:"service/contact";i:160;s:17:"service/ctsvendor";i:161;s:16:"service/customer";i:162;s:14:"service/pickup";i:163;s:18:"service/quotations";i:164;s:15:"service/service";i:165;s:15:"service/trucker";i:166;s:19:"setting/ajaxpersist";i:167;s:15:"setting/setting";i:168;s:13:"setting/store";i:169;s:16:"shipping/auspost";i:170;s:17:"shipping/citylink";i:171;s:14:"shipping/fedex";i:172;s:13:"shipping/flat";i:173;s:13:"shipping/free";i:174;s:13:"shipping/item";i:175;s:23:"shipping/parcelforce_48";i:176;s:15:"shipping/pickup";i:177;s:19:"shipping/royal_mail";i:178;s:12:"shipping/ups";i:179;s:13:"shipping/usps";i:180;s:15:"shipping/weight";i:181;s:11:"tool/backup";i:182;s:14:"tool/error_log";i:183;s:9:"tool/sync";i:184;s:11:"tool/upload";i:185;s:12:"total/coupon";i:186;s:12:"total/credit";i:187;s:14:"total/handling";i:188;s:16:"total/klarna_fee";i:189;s:19:"total/low_order_fee";i:190;s:12:"total/reward";i:191;s:14:"total/shipping";i:192;s:15:"total/sub_total";i:193;s:9:"total/tax";i:194;s:11:"total/total";i:195;s:13:"total/voucher";i:196;s:8:"user/api";i:197;s:9:"user/user";i:198;s:20:"user/user_permission";}}'),
(17, 'Prinicipals', 'a:2:{s:6:"access";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}s:6:"modify";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}}'),
(13, 'Solution Architects', 'a:2:{s:6:"access";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}s:6:"modify";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}}');
INSERT INTO `eps_user_group` (`user_group_id`, `name`, `permission`) VALUES
(14, 'Solution Engineers', 'a:2:{s:6:"access";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}s:6:"modify";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}}'),
(15, 'Project Managers', 'a:2:{s:6:"access";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}s:6:"modify";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}}'),
(16, 'HR / Admin Staff', 'a:2:{s:6:"access";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}s:6:"modify";a:219:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:19:"common/column_right";i:13;s:18:"common/filemanager";i:14;s:11:"common/menu";i:15;s:14:"common/profile";i:16;s:12:"common/stats";i:17;s:18:"dashboard/activity";i:18;s:15:"dashboard/chart";i:19;s:21:"dashboard/dealsupport";i:20;s:18:"dashboard/employee";i:21;s:13:"dashboard/map";i:22;s:16:"dashboard/online";i:23;s:15:"dashboard/order";i:24;s:27:"dashboard/popackagesolution";i:25;s:16:"dashboard/recent";i:26;s:14:"dashboard/sale";i:27;s:17:"dashboard/service";i:28;s:22:"dashboard/servicechart";i:29;s:23:"dashboard/strategicinit";i:30;s:13:"design/banner";i:31;s:13:"design/layout";i:32;s:14:"extension/feed";i:33;s:19:"extension/installer";i:34;s:22:"extension/modification";i:35;s:16:"extension/module";i:36;s:17:"extension/openbay";i:37;s:17:"extension/payment";i:38;s:18:"extension/shipping";i:39;s:15:"extension/total";i:40;s:16:"feed/google_base";i:41;s:19:"feed/google_sitemap";i:42;s:15:"feed/openbaypro";i:43;s:20:"localisation/country";i:44;s:21:"localisation/currency";i:45;s:21:"localisation/geo_zone";i:46;s:21:"localisation/language";i:47;s:25:"localisation/length_class";i:48;s:21:"localisation/location";i:49;s:25:"localisation/order_status";i:50;s:26:"localisation/return_action";i:51;s:26:"localisation/return_reason";i:52;s:26:"localisation/return_status";i:53;s:25:"localisation/stock_status";i:54;s:22:"localisation/tax_class";i:55;s:21:"localisation/tax_rate";i:56;s:25:"localisation/weight_class";i:57;s:17:"localisation/zone";i:58;s:18:"maintenance/agents";i:59;s:20:"maintenance/customer";i:60;s:27:"maintenance/customer_search";i:61;s:22:"maintenance/hbl_agents";i:62;s:19:"maintenance/vessels";i:63;s:19:"marketing/affiliate";i:64;s:17:"marketing/contact";i:65;s:16:"marketing/coupon";i:66;s:19:"marketing/marketing";i:67;s:14:"module/account";i:68;s:16:"module/affiliate";i:69;s:20:"module/amazon_button";i:70;s:13:"module/banner";i:71;s:17:"module/bestseller";i:72;s:15:"module/carousel";i:73;s:15:"module/category";i:74;s:19:"module/ebay_listing";i:75;s:15:"module/featured";i:76;s:13:"module/filter";i:77;s:22:"module/google_hangouts";i:78;s:11:"module/html";i:79;s:18:"module/information";i:80;s:13:"module/latest";i:81;s:16:"module/pp_button";i:82;s:15:"module/pp_login";i:83;s:16:"module/slideshow";i:84;s:14:"module/special";i:85;s:12:"module/store";i:86;s:14:"openbay/amazon";i:87;s:22:"openbay/amazon_listing";i:88;s:22:"openbay/amazon_product";i:89;s:16:"openbay/amazonus";i:90;s:24:"openbay/amazonus_listing";i:91;s:24:"openbay/amazonus_product";i:92;s:12:"openbay/ebay";i:93;s:20:"openbay/ebay_profile";i:94;s:21:"openbay/ebay_template";i:95;s:12:"openbay/etsy";i:96;s:20:"openbay/etsy_product";i:97;s:21:"openbay/etsy_shipping";i:98;s:17:"openbay/etsy_shop";i:99;s:19:"operations/arrivals";i:100;s:31:"operations/containerdockreceipt";i:101;s:22:"operations/hazardouslp";i:102;s:23:"operations/intermodallp";i:103;s:22:"operations/linebooking";i:104;s:19:"operations/loadplan";i:105;s:26:"operations/stopoffhazardlp";i:106;s:41:"operations/stopoffloadcontainerdocreceipt";i:107;s:20:"operations/stopofflp";i:108;s:23:"payment/amazon_checkout";i:109;s:24:"payment/authorizenet_aim";i:110;s:24:"payment/authorizenet_sim";i:111;s:21:"payment/bank_transfer";i:112;s:22:"payment/bluepay_hosted";i:113;s:24:"payment/bluepay_redirect";i:114;s:14:"payment/cheque";i:115;s:11:"payment/cod";i:116;s:17:"payment/firstdata";i:117;s:24:"payment/firstdata_remote";i:118;s:21:"payment/free_checkout";i:119;s:22:"payment/klarna_account";i:120;s:22:"payment/klarna_invoice";i:121;s:14:"payment/liqpay";i:122;s:14:"payment/nochex";i:123;s:15:"payment/paymate";i:124;s:16:"payment/paypoint";i:125;s:13:"payment/payza";i:126;s:26:"payment/perpetual_payments";i:127;s:18:"payment/pp_express";i:128;s:18:"payment/pp_payflow";i:129;s:25:"payment/pp_payflow_iframe";i:130;s:14:"payment/pp_pro";i:131;s:21:"payment/pp_pro_iframe";i:132;s:19:"payment/pp_standard";i:133;s:14:"payment/realex";i:134;s:21:"payment/realex_remote";i:135;s:22:"payment/sagepay_direct";i:136;s:22:"payment/sagepay_server";i:137;s:18:"payment/sagepay_us";i:138;s:24:"payment/securetrading_pp";i:139;s:24:"payment/securetrading_ws";i:140;s:14:"payment/skrill";i:141;s:19:"payment/twocheckout";i:142;s:28:"payment/web_payment_software";i:143;s:16:"payment/worldpay";i:144;s:16:"report/affiliate";i:145;s:25:"report/affiliate_activity";i:146;s:22:"report/affiliate_login";i:147;s:24:"report/customer_activity";i:148;s:22:"report/customer_credit";i:149;s:21:"report/customer_login";i:150;s:22:"report/customer_online";i:151;s:21:"report/customer_order";i:152;s:22:"report/customer_reward";i:153;s:16:"report/marketing";i:154;s:24:"report/product_purchased";i:155;s:21:"report/product_viewed";i:156;s:18:"report/sale_coupon";i:157;s:17:"report/sale_order";i:158;s:18:"report/sale_return";i:159;s:20:"report/sale_shipping";i:160;s:15:"report/sale_tax";i:161;s:17:"sale/custom_field";i:162;s:13:"sale/customer";i:163;s:20:"sale/customer_ban_ip";i:164;s:19:"sale/customer_group";i:165;s:10:"sale/order";i:166;s:14:"sale/recurring";i:167;s:11:"sale/return";i:168;s:12:"sale/voucher";i:169;s:18:"sale/voucher_theme";i:170;s:15:"service/booking";i:171;s:17:"service/commodity";i:172;s:15:"service/contact";i:173;s:13:"service/costs";i:174;s:17:"service/ctsvendor";i:175;s:16:"service/customer";i:176;s:17:"service/hazardous";i:177;s:13:"service/notes";i:178;s:14:"service/pickup";i:179;s:18:"service/quotations";i:180;s:16:"service/receipts";i:181;s:15:"service/service";i:182;s:16:"service/tracking";i:183;s:15:"service/trucker";i:184;s:16:"service/trucking";i:185;s:19:"setting/ajaxpersist";i:186;s:12:"setting/help";i:187;s:15:"setting/setting";i:188;s:13:"setting/store";i:189;s:16:"shipping/auspost";i:190;s:17:"shipping/citylink";i:191;s:14:"shipping/fedex";i:192;s:13:"shipping/flat";i:193;s:13:"shipping/free";i:194;s:13:"shipping/item";i:195;s:23:"shipping/parcelforce_48";i:196;s:15:"shipping/pickup";i:197;s:19:"shipping/royal_mail";i:198;s:12:"shipping/ups";i:199;s:13:"shipping/usps";i:200;s:15:"shipping/weight";i:201;s:11:"tool/backup";i:202;s:14:"tool/error_log";i:203;s:9:"tool/sync";i:204;s:11:"tool/upload";i:205;s:12:"total/coupon";i:206;s:12:"total/credit";i:207;s:14:"total/handling";i:208;s:16:"total/klarna_fee";i:209;s:19:"total/low_order_fee";i:210;s:12:"total/reward";i:211;s:14:"total/shipping";i:212;s:15:"total/sub_total";i:213;s:9:"total/tax";i:214;s:11:"total/total";i:215;s:13:"total/voucher";i:216;s:8:"user/api";i:217;s:9:"user/user";i:218;s:20:"user/user_permission";}}');

-- --------------------------------------------------------

--
-- Table structure for table `eps_usrinfo`
--

CREATE TABLE `eps_usrinfo` (
  `usrid` char(15) DEFAULT NULL,
  `usrname` char(35) DEFAULT NULL,
  `usrext` char(3) DEFAULT NULL,
  `usremail` char(35) DEFAULT NULL,
  `usrepass` char(35) DEFAULT NULL,
  `usrsalrep` char(1) DEFAULT NULL,
  `usrphone` char(12) DEFAULT NULL,
  `usrgroup` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_vessels`
--

CREATE TABLE `eps_vessels` (
  `vesref` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesseq` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesname` char(35) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesvoyg` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesload` date DEFAULT NULL,
  `vesunlo` date DEFAULT NULL,
  `vesssl` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vespola` varbinary(500) DEFAULT NULL,
  `vescadj` varbinary(500) DEFAULT NULL,
  `vesualt` tinyint(1) DEFAULT NULL,
  `vesarot` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesaseq` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vesweek` int(11) DEFAULT NULL,
  `vesactualetd` date DEFAULT NULL,
  `vesactualtt` int(11) DEFAULT NULL,
  `veseureq` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_vessel_cuts`
--

CREATE TABLE `eps_vessel_cuts` (
  `vcutrotn` char(4) DEFAULT NULL,
  `vcutseqn` char(4) DEFAULT NULL,
  `vcutcfs` char(3) DEFAULT NULL,
  `vcutdate` date DEFAULT NULL,
  `vcuttime` time DEFAULT NULL,
  `vcutddate` date DEFAULT NULL,
  `vcutdtime` time DEFAULT NULL,
  `vcutctim` char(1) DEFAULT NULL,
  `vcutdtim` char(1) DEFAULT NULL,
  `vcutrdate` date DEFAULT NULL,
  `vcutrtine` time DEFAULT NULL,
  `vcutrtim` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_voucher`
--

CREATE TABLE `eps_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_voucher_history`
--

CREATE TABLE `eps_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_voucher_theme`
--

CREATE TABLE `eps_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_voucher_theme_description`
--

CREATE TABLE `eps_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_vrotn`
--

CREATE TABLE `eps_vrotn` (
  `vrref` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `vrname` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrnotes` blob,
  `vrssl` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrload` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrunlo` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrtt` int(11) DEFAULT NULL,
  `vrcolr` char(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrport` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vragt1` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vragt2` char(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrof` decimal(19,4) DEFAULT NULL,
  `vrhaul1` decimal(19,4) DEFAULT NULL,
  `vrtype` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrofr` varbinary(220) DEFAULT NULL,
  `vrbaf` varbinary(220) DEFAULT NULL,
  `vrala` varbinary(220) DEFAULT NULL,
  `vrcsc` decimal(19,4) DEFAULT NULL,
  `vrcscc` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrhazs` decimal(19,4) DEFAULT NULL,
  `vrpsf` decimal(19,4) DEFAULT NULL,
  `vrblf` decimal(19,4) DEFAULT NULL,
  `vroncr` decimal(19,4) DEFAULT NULL,
  `vroncc` char(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrstop` decimal(19,4) DEFAULT NULL,
  `vrrail` decimal(19,4) DEFAULT NULL,
  `vrprec` decimal(19,4) DEFAULT NULL,
  `vrcscpc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vtoncpc` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrcolorhex` int(11) DEFAULT NULL,
  `Valtsrv` varchar(5) DEFAULT NULL,
  `vrfreight` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrcsctype` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrcc` varchar(5) DEFAULT NULL,
  `vrusualpu` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrusualware` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrusualret` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrusualstop` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrpdel` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrcfs` varchar(5) DEFAULT NULL,
  `vrrailorig` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrrailadd` decimal(19,4) DEFAULT NULL,
  `vreureq` varchar(5) DEFAULT NULL,
  `vrchidoc` int(11) DEFAULT NULL,
  `vrchidoctim` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vramend` int(11) DEFAULT NULL,
  `vramendtim` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vramendcost` decimal(19,4) DEFAULT NULL,
  `vramendchg` decimal(19,4) DEFAULT NULL,
  `vrnycut` int(11) DEFAULT NULL,
  `vrchcut` int(11) DEFAULT NULL,
  `vr20ws` decimal(19,4) DEFAULT NULL,
  `vr40ws` decimal(19,4) DEFAULT NULL,
  `vr45ws` decimal(19,4) DEFAULT NULL,
  `vrlclquota1` blob,
  `vrlclquota2` blob,
  `vrlclquota3` blob,
  `vrlclquota4` blob,
  `vrlclquota5` blob,
  `vrddoccut` varbinary(120) DEFAULT NULL,
  `vrchasis` decimal(19,4) DEFAULT NULL,
  `vrchassis` varchar(20) DEFAULT NULL,
  `vrchasdate` date DEFAULT NULL,
  `vrbluefolder` varchar(5) DEFAULT NULL,
  `vrhazraw` varbinary(40) DEFAULT NULL,
  `vrothraw` varbinary(40) DEFAULT NULL,
  `vroth2raw` varbinary(40) DEFAULT NULL,
  `vrcarrcut` int(11) DEFAULT NULL,
  `vrinnerpc` varchar(5) DEFAULT NULL,
  `vrcuitt` varchar(5) DEFAULT NULL,
  `vrtotcheck` varchar(5) DEFAULT NULL,
  `vrmrn` varchar(5) DEFAULT NULL,
  `vrothchk1` varchar(5) DEFAULT NULL,
  `vrothchk2` varchar(5) DEFAULT NULL,
  `vrothchk3` varchar(5) DEFAULT NULL,
  `vrothchk4` varchar(5) DEFAULT NULL,
  `vrothchk5` varchar(5) DEFAULT NULL,
  `vrothsel1` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrothsel2` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `vrplbase` varchar(5) DEFAULT NULL,
  `vrpltrans` varchar(5) DEFAULT NULL,
  `vrpldestlist` blob,
  `vrplnodestlist` blob,
  `vrplvalued` varchar(5) DEFAULT NULL,
  `vrplpeonly` varchar(5) DEFAULT NULL,
  `vrplcntylist` blob,
  `vrnocfs` varchar(5) DEFAULT NULL,
  `vrothlog` varchar(5) DEFAULT NULL,
  `vreufee` varchar(5) DEFAULT NULL,
  `vrothchk6` varchar(5) DEFAULT NULL,
  `vrothchk7` varchar(5) DEFAULT NULL,
  `vrothchk8` varchar(5) DEFAULT NULL,
  `vrnots` varchar(5) DEFAULT NULL,
  `vrneedoad` varchar(5) DEFAULT NULL,
  `vrothchk9` varchar(5) DEFAULT NULL,
  `vrothchk10` varchar(5) DEFAULT NULL,
  `vrothchk11` varchar(5) DEFAULT NULL,
  `vrothchk12` varchar(5) DEFAULT NULL,
  `vrcsc2` varchar(255) DEFAULT NULL,
  `vrcsc3` varchar(255) DEFAULT NULL,
  `vrcscc2` varchar(255) DEFAULT NULL,
  `vrcscc3` varchar(255) DEFAULT NULL,
  `vrcscpc2` varchar(255) DEFAULT NULL,
  `vrcscpc3` varchar(255) DEFAULT NULL,
  `vroncr2` decimal(19,4) DEFAULT NULL,
  `vroncr3` decimal(19,4) DEFAULT NULL,
  `vroncc2` varchar(8) DEFAULT NULL,
  `vroncc3` varchar(8) DEFAULT NULL,
  `vroncpc2` varchar(1) DEFAULT NULL,
  `vroncpc3` varchar(1) DEFAULT NULL,
  `vrhazs2` decimal(19,4) DEFAULT NULL,
  `vrhazs3` decimal(19,4) DEFAULT NULL,
  `vrpsf2` decimal(19,4) DEFAULT NULL,
  `vrpsf3` decimal(19,4) DEFAULT NULL,
  `vrblf2` decimal(19,4) DEFAULT NULL,
  `vrblf3` decimal(19,4) DEFAULT NULL,
  `vrstop2` decimal(19,4) DEFAULT NULL,
  `vrstop3` decimal(19,4) DEFAULT NULL,
  `vrprec2` decimal(19,4) DEFAULT NULL,
  `vrprec3` decimal(19,4) DEFAULT NULL,
  `vrrailorg2` varchar(255) DEFAULT NULL,
  `vrrailorg3` varchar(255) DEFAULT NULL,
  `vrrailadd2` decimal(19,4) DEFAULT NULL,
  `vrrailadd3` decimal(19,4) DEFAULT NULL,
  `vrssl2` varchar(10) DEFAULT NULL,
  `vrssl3` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_ware`
--

CREATE TABLE `eps_ware` (
  `warecode` char(4) NOT NULL DEFAULT '',
  `warename1` char(35) DEFAULT NULL,
  `warename2` char(35) DEFAULT NULL,
  `warename3` char(35) DEFAULT NULL,
  `warename4` char(35) DEFAULT NULL,
  `warephon` char(15) DEFAULT NULL,
  `warefax` char(15) DEFAULT NULL,
  `warecont` char(35) DEFAULT NULL,
  `wareansiz` int(11) DEFAULT NULL,
  `waretime` char(10) DEFAULT NULL,
  `waredisp` char(15) DEFAULT NULL,
  `warecfs` char(2) DEFAULT NULL,
  `warezip` char(10) DEFAULT NULL,
  `wareifax` char(15) DEFAULT NULL,
  `warenotes` blob,
  `iwareislcl` varchar(5) DEFAULT NULL,
  `wareisfcl` varchar(5) DEFAULT NULL,
  `wareisimport` varchar(5) DEFAULT NULL,
  `wareiscfs` varchar(5) DEFAULT NULL,
  `wareisces` varchar(5) DEFAULT NULL,
  `wareactive` varchar(5) DEFAULT NULL,
  `warefac` char(8) DEFAULT NULL,
  `warehltyp` char(1) DEFAULT NULL,
  `warehlrat` decimal(19,4) DEFAULT NULL,
  `warehlmin` decimal(19,4) DEFAULT NULL,
  `warehlmax` decimal(19,4) DEFAULT NULL,
  `warehlfuel` int(11) DEFAULT NULL,
  `warepier` decimal(19,4) DEFAULT NULL,
  `warepiercode` char(5) DEFAULT NULL,
  `warehntyp` char(1) DEFAULT NULL,
  `warehnrat` decimal(19,4) DEFAULT NULL,
  `warehnmin` decimal(19,4) DEFAULT NULL,
  `warehnmax` decimal(19,4) DEFAULT NULL,
  `warehnfuel` int(11) DEFAULT NULL,
  `ware20h` decimal(19,4) DEFAULT NULL,
  `ware40h` decimal(19,4) DEFAULT NULL,
  `ware45h` decimal(19,4) DEFAULT NULL,
  `ware20` decimal(19,4) DEFAULT NULL,
  `ware40` decimal(19,4) DEFAULT NULL,
  `ware45` decimal(19,4) DEFAULT NULL,
  `wareeemail` char(60) DEFAULT NULL,
  `wareiemail` char(60) DEFAULT NULL,
  `wareichc` char(1) DEFAULT NULL,
  `wareacct` char(10) DEFAULT NULL,
  `wareicharge` decimal(19,4) DEFAULT NULL,
  `wareisplit` decimal(19,4) DEFAULT NULL,
  `wareimin` decimal(19,4) DEFAULT NULL,
  `wareimax` decimal(19,4) DEFAULT NULL,
  `wareioorig` char(4) DEFAULT NULL,
  `wareiocharge` decimal(19,4) DEFAULT NULL,
  `wareiosplit` decimal(19,4) DEFAULT NULL,
  `wareiomin` decimal(19,4) DEFAULT NULL,
  `wareiomax` decimal(19,4) DEFAULT NULL,
  `warealt1typ` char(1) DEFAULT NULL,
  `warealt1val` char(4) DEFAULT NULL,
  `warealt1acct` char(10) DEFAULT NULL,
  `warealt2typ` char(1) DEFAULT NULL,
  `warealt2val` char(4) DEFAULT NULL,
  `warealt2acct` char(10) DEFAULT NULL,
  `wareemail2` char(60) DEFAULT NULL,
  `wareemail3` char(60) DEFAULT NULL,
  `wareemail4` char(60) DEFAULT NULL,
  `waretfs` decimal(19,4) DEFAULT NULL,
  `waretfsmin` decimal(19,4) DEFAULT NULL,
  `waretfsmax` decimal(19,4) DEFAULT NULL,
  `waretfsbasis` char(1) DEFAULT NULL,
  `wareinbond` decimal(19,4) DEFAULT NULL,
  `waredray20` decimal(19,4) DEFAULT NULL,
  `waredray40` decimal(19,4) DEFAULT NULL,
  `waredray45` decimal(19,4) DEFAULT NULL,
  `warealt1dray20` decimal(19,4) DEFAULT NULL,
  `warealt1dray40` decimal(19,4) DEFAULT NULL,
  `warealt1dray45` decimal(19,4) DEFAULT NULL,
  `warealt2dray20` decimal(19,4) DEFAULT NULL,
  `warealt2dray40` decimal(19,4) DEFAULT NULL,
  `warealt2dray45` decimal(19,4) DEFAULT NULL,
  `wareccfssplit` decimal(19,4) DEFAULT NULL,
  `wareccfssmin` decimal(19,4) DEFAULT NULL,
  `wareccfssmax` decimal(19,4) DEFAULT NULL,
  `wareccfsdad` decimal(19,4) DEFAULT NULL,
  `wareccfsins` decimal(19,4) DEFAULT NULL,
  `wareccfsdoc` decimal(19,4) DEFAULT NULL,
  `wareccfsinb` decimal(19,4) DEFAULT NULL,
  `wareccfseqp` decimal(19,4) DEFAULT NULL,
  `wareccfsemin` decimal(19,4) DEFAULT NULL,
  `wareccfsemax` decimal(19,4) DEFAULT NULL,
  `wareccfsebas` char(1) DEFAULT NULL,
  `wareccfstfuel` decimal(19,4) DEFAULT NULL,
  `wareccfstfmin` decimal(19,4) DEFAULT NULL,
  `wareccfstmax` decimal(19,4) DEFAULT NULL,
  `wareccfstbas` char(1) DEFAULT NULL,
  `wareconti` char(35) DEFAULT NULL,
  `warehl2typ` char(1) DEFAULT NULL,
  `warehl2rat` decimal(19,4) DEFAULT NULL,
  `warehl2min` decimal(19,4) DEFAULT NULL,
  `warehl2max` decimal(19,4) DEFAULT NULL,
  `warehl2fuel` int(11) DEFAULT NULL,
  `warehl3typ` char(1) DEFAULT NULL,
  `warehl3rat` decimal(19,4) DEFAULT NULL,
  `warehl3min` decimal(19,4) DEFAULT NULL,
  `warehl3max` decimal(19,4) DEFAULT NULL,
  `warehl3fuel` int(11) DEFAULT NULL,
  `warehn2typ` char(1) DEFAULT NULL,
  `warehn2rat` decimal(19,4) DEFAULT NULL,
  `warehn2min` decimal(19,4) DEFAULT NULL,
  `warehn2max` decimal(19,4) DEFAULT NULL,
  `warehn2fuel` int(11) DEFAULT NULL,
  `warehn3typ` char(1) DEFAULT NULL,
  `warehn3rat` decimal(19,4) DEFAULT NULL,
  `warehn3min` decimal(19,4) DEFAULT NULL,
  `warehn3max` decimal(19,4) DEFAULT NULL,
  `warehn3fuel` int(11) DEFAULT NULL,
  `warepreemail` char(120) DEFAULT NULL,
  `warepreacct` char(25) DEFAULT NULL,
  `warepresend` varchar(5) DEFAULT NULL,
  `wareimpcity` char(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_website`
--

CREATE TABLE `eps_website` (
  `webdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `webcustcode` char(6) DEFAULT NULL,
  `webcust` char(35) DEFAULT NULL,
  `webfname` char(25) DEFAULT NULL,
  `weblname` char(35) DEFAULT NULL,
  `webphone` char(20) DEFAULT NULL,
  `webemail` char(50) DEFAULT NULL,
  `weborg` char(25) DEFAULT NULL,
  `webdest` char(25) DEFAULT NULL,
  `webtype` char(10) DEFAULT NULL,
  `webid` char(10) DEFAULT NULL,
  `weemsent` char(5) DEFAULT NULL,
  `webccode` char(10) DEFAULT NULL,
  `webzip` char(5) DEFAULT NULL,
  `webwgt` char(10) DEFAULT NULL,
  `webcube` char(10) DEFAULT NULL,
  `weblift` char(5) DEFAULT NULL,
  `webrespu` char(5) DEFAULT NULL,
  `webtrk` char(25) DEFAULT NULL,
  `webscac` char(4) DEFAULT NULL,
  `webttt` int(11) DEFAULT NULL,
  `webcwtrate` decimal(19,4) DEFAULT NULL,
  `webtrkmin` decimal(19,4) DEFAULT NULL,
  `webrouted` char(5) DEFAULT NULL,
  `webbrokind` char(5) DEFAULT NULL,
  `webshowdests` char(5) DEFAULT NULL,
  `webcustref` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_weight_class`
--

CREATE TABLE `eps_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_weight_class_description`
--

CREATE TABLE `eps_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_zone`
--

CREATE TABLE `eps_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eps_zone_to_geo_zone`
--

CREATE TABLE `eps_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epspe_book`
--
ALTER TABLE `epspe_book`
  ADD PRIMARY KEY (`BKRef`),
  ADD UNIQUE KEY `BKRef` (`BKRef`),
  ADD UNIQUE KEY `BKRef_2` (`BKRef`),
  ADD KEY `BKdate` (`BKdate`),
  ADD KEY `BKVess` (`BKVess`),
  ADD KEY `BKVess_2` (`BKVess`),
  ADD KEY `BkStat` (`BkStat`),
  ADD KEY `BKRef_3` (`BKRef`),
  ADD KEY `BKdate_2` (`BKdate`),
  ADD KEY `BkStat_2` (`BkStat`),
  ADD KEY `BKRef_4` (`BKRef`),
  ADD KEY `BKRef_5` (`BKRef`),
  ADD KEY `BkCust` (`BkCust`),
  ADD KEY `BKdate_3` (`BKdate`),
  ADD KEY `BkOrig` (`BkOrig`),
  ADD KEY `BkOrig_2` (`BkOrig`),
  ADD KEY `BkDest` (`BkDest`),
  ADD KEY `BKRef_6` (`BKRef`),
  ADD KEY `BKdate_4` (`BKdate`),
  ADD KEY `BkOrig_3` (`BkOrig`),
  ADD KEY `BkDest_2` (`BkDest`),
  ADD KEY `BkUser` (`BkUser`),
  ADD KEY `BKRef_7` (`BKRef`),
  ADD KEY `BKdate_5` (`BKdate`),
  ADD KEY `BkOrig_4` (`BkOrig`),
  ADD KEY `BkDest_3` (`BkDest`),
  ADD KEY `BkUser_2` (`BkUser`),
  ADD KEY `BKRef_8` (`BKRef`),
  ADD KEY `BKdate_6` (`BKdate`),
  ADD KEY `BkOrig_5` (`BkOrig`),
  ADD KEY `BkDest_4` (`BkDest`),
  ADD KEY `BkUser_3` (`BkUser`),
  ADD KEY `BKRef_9` (`BKRef`),
  ADD KEY `BKdate_7` (`BKdate`),
  ADD KEY `BkOrig_6` (`BkOrig`),
  ADD KEY `BkDest_5` (`BkDest`),
  ADD KEY `BkUser_4` (`BkUser`),
  ADD KEY `BKRef_10` (`BKRef`),
  ADD KEY `BKdate_8` (`BKdate`),
  ADD KEY `BkOrig_7` (`BkOrig`),
  ADD KEY `BkDest_6` (`BkDest`),
  ADD KEY `BkUser_5` (`BkUser`),
  ADD KEY `BKRef_11` (`BKRef`),
  ADD KEY `BKdate_9` (`BKdate`),
  ADD KEY `BkOrig_8` (`BkOrig`),
  ADD KEY `BkDest_7` (`BkDest`),
  ADD KEY `BkUser_6` (`BkUser`),
  ADD KEY `BKRef_12` (`BKRef`),
  ADD KEY `BKdate_10` (`BKdate`),
  ADD KEY `BkOrig_9` (`BkOrig`),
  ADD KEY `BkDest_8` (`BkDest`),
  ADD KEY `BkUser_7` (`BkUser`),
  ADD KEY `BKRef_13` (`BKRef`),
  ADD KEY `BKdate_11` (`BKdate`),
  ADD KEY `BkOrig_10` (`BkOrig`),
  ADD KEY `BkDest_9` (`BkDest`),
  ADD KEY `BkUser_8` (`BkUser`),
  ADD KEY `BKRef_14` (`BKRef`),
  ADD KEY `BKdate_12` (`BKdate`),
  ADD KEY `BkOrig_11` (`BkOrig`),
  ADD KEY `BkDest_10` (`BkDest`),
  ADD KEY `BkUser_9` (`BkUser`),
  ADD KEY `BKRef_15` (`BKRef`),
  ADD KEY `BKdate_13` (`BKdate`);

--
-- Indexes for table `epspe_cust`
--
ALTER TABLE `epspe_cust`
  ADD PRIMARY KEY (`CustCode`),
  ADD KEY `CustCode` (`CustCode`),
  ADD KEY `CustName1` (`CustName1`),
  ADD KEY `CustCode_2` (`CustCode`),
  ADD KEY `CustName1_2` (`CustName1`),
  ADD KEY `CustCode_3` (`CustCode`),
  ADD KEY `CustName1_3` (`CustName1`),
  ADD KEY `CustCode_4` (`CustCode`),
  ADD KEY `CustName1_4` (`CustName1`),
  ADD KEY `CustCode_5` (`CustCode`),
  ADD KEY `CustName1_5` (`CustName1`),
  ADD KEY `CustCode_6` (`CustCode`),
  ADD KEY `CustName1_6` (`CustName1`),
  ADD KEY `CustCode_7` (`CustCode`),
  ADD KEY `CustName1_7` (`CustName1`),
  ADD KEY `CustCode_8` (`CustCode`),
  ADD KEY `CustName1_8` (`CustName1`),
  ADD KEY `CustCode_9` (`CustCode`),
  ADD KEY `CustName1_9` (`CustName1`),
  ADD KEY `CustCode_10` (`CustCode`),
  ADD KEY `CustName1_10` (`CustName1`),
  ADD KEY `CustCode_11` (`CustCode`),
  ADD KEY `CustName1_11` (`CustName1`),
  ADD KEY `CustCode_12` (`CustCode`),
  ADD KEY `CustName1_12` (`CustName1`),
  ADD KEY `CustCode_13` (`CustCode`),
  ADD KEY `CustName1_13` (`CustName1`),
  ADD KEY `CustCode_14` (`CustCode`),
  ADD KEY `CustCode_15` (`CustCode`),
  ADD KEY `custkey` (`custkey`);

--
-- Indexes for table `epspe_engagement`
--
ALTER TABLE `epspe_engagement`
  ADD PRIMARY KEY (`engagement_id`);

--
-- Indexes for table `epspe_message`
--
ALTER TABLE `epspe_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `epspe_quotes`
--
ALTER TABLE `epspe_quotes`
  ADD PRIMARY KEY (`QtNumb`),
  ADD UNIQUE KEY `QtNumb_4` (`QtNumb`),
  ADD KEY `QtNumb` (`QtNumb`),
  ADD KEY `QtDate` (`QtDate`),
  ADD KEY `QtNumb_2` (`QtNumb`),
  ADD KEY `QtNumb_3` (`QtNumb`),
  ADD KEY `QtNumb_5` (`QtNumb`),
  ADD KEY `QtDate_2` (`QtDate`),
  ADD KEY `qtorig` (`qtorig`),
  ADD KEY `qtdest` (`qtdest`),
  ADD KEY `QtCust` (`QtCust`),
  ADD KEY `QtNumb_6` (`QtNumb`),
  ADD KEY `QtDate_3` (`QtDate`),
  ADD KEY `qtorig_2` (`qtorig`),
  ADD KEY `qtdest_2` (`qtdest`),
  ADD KEY `QtCust_2` (`QtCust`),
  ADD KEY `QtNumb_7` (`QtNumb`),
  ADD KEY `QtDate_4` (`QtDate`),
  ADD KEY `qtorig_3` (`qtorig`),
  ADD KEY `qtdest_3` (`qtdest`),
  ADD KEY `QtCust_3` (`QtCust`),
  ADD KEY `QtNumb_8` (`QtNumb`),
  ADD KEY `QtDate_5` (`QtDate`),
  ADD KEY `qtorig_4` (`qtorig`),
  ADD KEY `qtdest_4` (`qtdest`),
  ADD KEY `QtCust_4` (`QtCust`),
  ADD KEY `QtNumb_9` (`QtNumb`),
  ADD KEY `QtDate_6` (`QtDate`),
  ADD KEY `qtorig_5` (`qtorig`),
  ADD KEY `qtdest_5` (`qtdest`),
  ADD KEY `QtCust_5` (`QtCust`),
  ADD KEY `QtNumb_10` (`QtNumb`),
  ADD KEY `QtDate_7` (`QtDate`),
  ADD KEY `qtorig_6` (`qtorig`),
  ADD KEY `qtdest_6` (`qtdest`),
  ADD KEY `QtCust_6` (`QtCust`),
  ADD KEY `QtNumb_11` (`QtNumb`),
  ADD KEY `QtDate_8` (`QtDate`),
  ADD KEY `qtorig_7` (`qtorig`),
  ADD KEY `qtdest_7` (`qtdest`),
  ADD KEY `QtCust_7` (`QtCust`),
  ADD KEY `QtNumb_12` (`QtNumb`),
  ADD KEY `QtDate_9` (`QtDate`),
  ADD KEY `qtorig_8` (`qtorig`),
  ADD KEY `qtdest_8` (`qtdest`),
  ADD KEY `QtCust_8` (`QtCust`),
  ADD KEY `QtNumb_13` (`QtNumb`),
  ADD KEY `QtDate_10` (`QtDate`),
  ADD KEY `qtorig_9` (`qtorig`),
  ADD KEY `qtdest_9` (`qtdest`),
  ADD KEY `QtCust_9` (`QtCust`),
  ADD KEY `QtNumb_14` (`QtNumb`),
  ADD KEY `QtDate_11` (`QtDate`),
  ADD KEY `qtorig_10` (`qtorig`),
  ADD KEY `qtdest_10` (`qtdest`),
  ADD KEY `QtCust_10` (`QtCust`),
  ADD KEY `QtNumb_15` (`QtNumb`),
  ADD KEY `QtDate_12` (`QtDate`),
  ADD KEY `qtorig_11` (`qtorig`),
  ADD KEY `qtdest_11` (`qtdest`),
  ADD KEY `QtCust_11` (`QtCust`),
  ADD KEY `QtNumb_16` (`QtNumb`),
  ADD KEY `QtDate_13` (`QtDate`),
  ADD KEY `qtorig_12` (`qtorig`);

--
-- Indexes for table `epspe_quotes_trucking`
--
ALTER TABLE `epspe_quotes_trucking`
  ADD PRIMARY KEY (`quote_id`),
  ADD KEY `quote_id` (`quote_id`);

--
-- Indexes for table `epspe_rawfld`
--
ALTER TABLE `epspe_rawfld`
  ADD PRIMARY KEY (`RDID`),
  ADD KEY `RDFld` (`RDFld`),
  ADD KEY `RDFld_2` (`RDFld`),
  ADD KEY `RDFld_3` (`RDFld`),
  ADD KEY `RDFld_4` (`RDFld`),
  ADD KEY `RDRef` (`RDRef`),
  ADD KEY `RDFld_5` (`RDFld`),
  ADD KEY `RDFld_6` (`RDFld`),
  ADD KEY `RDRef_2` (`RDRef`),
  ADD KEY `RDFld_7` (`RDFld`),
  ADD KEY `RDVal` (`RDVal`);

--
-- Indexes for table `epspe_salesrep`
--
ALTER TABLE `epspe_salesrep`
  ADD PRIMARY KEY (`Item`);

--
-- Indexes for table `epspe_tt`
--
ALTER TABLE `epspe_tt`
  ADD KEY `lttrot` (`lttrot`),
  ADD KEY `lttrot_2` (`lttrot`),
  ADD KEY `lttrot_3` (`lttrot`),
  ADD KEY `lttrot_4` (`lttrot`),
  ADD KEY `lttrot_5` (`lttrot`),
  ADD KEY `lttrot_6` (`lttrot`),
  ADD KEY `lttrot_7` (`lttrot`),
  ADD KEY `lttrot_8` (`lttrot`),
  ADD KEY `lttrot_9` (`lttrot`),
  ADD KEY `lttrot_10` (`lttrot`),
  ADD KEY `lttrot_11` (`lttrot`),
  ADD KEY `lttrot_12` (`lttrot`);

--
-- Indexes for table `eps_activity_log`
--
ALTER TABLE `eps_activity_log`
  ADD PRIMARY KEY (`Activity_id`);

--
-- Indexes for table `eps_address`
--
ALTER TABLE `eps_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `eps_affiliate`
--
ALTER TABLE `eps_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `eps_affiliate_activity`
--
ALTER TABLE `eps_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `eps_affiliate_login`
--
ALTER TABLE `eps_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `eps_affiliate_transaction`
--
ALTER TABLE `eps_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `eps_agenads`
--
ALTER TABLE `eps_agenads`
  ADD PRIMARY KEY (`AgenCode`),
  ADD KEY `AgenCode` (`AgenCode`);

--
-- Indexes for table `eps_api`
--
ALTER TABLE `eps_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `eps_attribute`
--
ALTER TABLE `eps_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `eps_attribute_description`
--
ALTER TABLE `eps_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `eps_attribute_group`
--
ALTER TABLE `eps_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `eps_attribute_group_description`
--
ALTER TABLE `eps_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `eps_banner`
--
ALTER TABLE `eps_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `eps_banner_image`
--
ALTER TABLE `eps_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `eps_banner_image_description`
--
ALTER TABLE `eps_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `eps_category`
--
ALTER TABLE `eps_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `eps_category_description`
--
ALTER TABLE `eps_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `eps_category_filter`
--
ALTER TABLE `eps_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `eps_category_path`
--
ALTER TABLE `eps_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `eps_category_to_layout`
--
ALTER TABLE `eps_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `eps_category_to_store`
--
ALTER TABLE `eps_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `eps_country`
--
ALTER TABLE `eps_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `eps_coupon`
--
ALTER TABLE `eps_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `eps_coupon_category`
--
ALTER TABLE `eps_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `eps_coupon_history`
--
ALTER TABLE `eps_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `eps_coupon_product`
--
ALTER TABLE `eps_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `eps_currency`
--
ALTER TABLE `eps_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `eps_customer`
--
ALTER TABLE `eps_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_group_id` (`customer_group_id`),
  ADD KEY `customer_group_id_2` (`customer_group_id`);

--
-- Indexes for table `eps_customer_activity`
--
ALTER TABLE `eps_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `eps_customer_ban_ip`
--
ALTER TABLE `eps_customer_ban_ip`
  ADD PRIMARY KEY (`customer_ban_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `eps_customer_group`
--
ALTER TABLE `eps_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `eps_customer_group_description`
--
ALTER TABLE `eps_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`),
  ADD KEY `custcode` (`custcode`),
  ADD KEY `custcode_2` (`custcode`);

--
-- Indexes for table `eps_customer_history`
--
ALTER TABLE `eps_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `eps_customer_ip`
--
ALTER TABLE `eps_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `eps_customer_login`
--
ALTER TABLE `eps_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `eps_customer_online`
--
ALTER TABLE `eps_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `eps_customer_reward`
--
ALTER TABLE `eps_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `eps_customer_transaction`
--
ALTER TABLE `eps_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `eps_custom_field`
--
ALTER TABLE `eps_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `eps_custom_field_customer_group`
--
ALTER TABLE `eps_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `eps_custom_field_description`
--
ALTER TABLE `eps_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `eps_custom_field_value`
--
ALTER TABLE `eps_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `eps_custom_field_value_description`
--
ALTER TABLE `eps_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `eps_cuttim`
--
ALTER TABLE `eps_cuttim`
  ADD PRIMARY KEY (`cuttime_id`);

--
-- Indexes for table `eps_destads`
--
ALTER TABLE `eps_destads`
  ADD KEY `DestCode` (`DestCode`);

--
-- Indexes for table `eps_download`
--
ALTER TABLE `eps_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `eps_download_description`
--
ALTER TABLE `eps_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `eps_event`
--
ALTER TABLE `eps_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `eps_extension`
--
ALTER TABLE `eps_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `eps_filter`
--
ALTER TABLE `eps_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `eps_filter_description`
--
ALTER TABLE `eps_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `eps_filter_group`
--
ALTER TABLE `eps_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `eps_filter_group_description`
--
ALTER TABLE `eps_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `eps_geo_zone`
--
ALTER TABLE `eps_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `eps_information`
--
ALTER TABLE `eps_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `eps_information_description`
--
ALTER TABLE `eps_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `eps_information_to_layout`
--
ALTER TABLE `eps_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `eps_information_to_store`
--
ALTER TABLE `eps_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `eps_language`
--
ALTER TABLE `eps_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `eps_layout`
--
ALTER TABLE `eps_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `eps_layout_module`
--
ALTER TABLE `eps_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `eps_layout_route`
--
ALTER TABLE `eps_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `eps_length_class`
--
ALTER TABLE `eps_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `eps_length_class_description`
--
ALTER TABLE `eps_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `eps_lineads`
--
ALTER TABLE `eps_lineads`
  ADD KEY `LineCode` (`LineCode`),
  ADD KEY `LineCode_2` (`LineCode`),
  ADD KEY `LineCode_3` (`LineCode`),
  ADD KEY `LineCode_4` (`LineCode`),
  ADD KEY `LineCode_5` (`LineCode`),
  ADD KEY `LineCode_6` (`LineCode`),
  ADD KEY `LineCode_7` (`LineCode`),
  ADD KEY `LineCode_8` (`LineCode`),
  ADD KEY `LineCode_9` (`LineCode`),
  ADD KEY `LineCode_10` (`LineCode`),
  ADD KEY `LineCode_11` (`LineCode`),
  ADD KEY `LineCode_12` (`LineCode`);

--
-- Indexes for table `eps_location`
--
ALTER TABLE `eps_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `eps_manufacturer`
--
ALTER TABLE `eps_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `eps_manufacturer_to_store`
--
ALTER TABLE `eps_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `eps_marketing`
--
ALTER TABLE `eps_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `eps_modification`
--
ALTER TABLE `eps_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `eps_module`
--
ALTER TABLE `eps_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `eps_objects`
--
ALTER TABLE `eps_objects`
  ADD PRIMARY KEY (`object_id`);

--
-- Indexes for table `eps_option`
--
ALTER TABLE `eps_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `eps_option_description`
--
ALTER TABLE `eps_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `eps_option_value`
--
ALTER TABLE `eps_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `eps_option_value_description`
--
ALTER TABLE `eps_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `eps_order`
--
ALTER TABLE `eps_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `eps_order_custom_field`
--
ALTER TABLE `eps_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `eps_order_fraud`
--
ALTER TABLE `eps_order_fraud`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `eps_order_history`
--
ALTER TABLE `eps_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `eps_order_option`
--
ALTER TABLE `eps_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `eps_order_product`
--
ALTER TABLE `eps_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `eps_order_recurring`
--
ALTER TABLE `eps_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `eps_order_recurring_transaction`
--
ALTER TABLE `eps_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `eps_order_status`
--
ALTER TABLE `eps_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `eps_order_total`
--
ALTER TABLE `eps_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `eps_order_voucher`
--
ALTER TABLE `eps_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `eps_origads`
--
ALTER TABLE `eps_origads`
  ADD KEY `OrigCode` (`OrigCode`);

--
-- Indexes for table `eps_product`
--
ALTER TABLE `eps_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `eps_product_attribute`
--
ALTER TABLE `eps_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `eps_product_description`
--
ALTER TABLE `eps_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `eps_product_discount`
--
ALTER TABLE `eps_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `eps_product_filter`
--
ALTER TABLE `eps_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `eps_product_image`
--
ALTER TABLE `eps_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `eps_product_option`
--
ALTER TABLE `eps_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `eps_product_option_value`
--
ALTER TABLE `eps_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `eps_product_recurring`
--
ALTER TABLE `eps_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `eps_product_related`
--
ALTER TABLE `eps_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `eps_product_reward`
--
ALTER TABLE `eps_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `eps_product_special`
--
ALTER TABLE `eps_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `eps_product_to_category`
--
ALTER TABLE `eps_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `eps_product_to_download`
--
ALTER TABLE `eps_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `eps_product_to_layout`
--
ALTER TABLE `eps_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `eps_product_to_store`
--
ALTER TABLE `eps_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `eps_rate_class`
--
ALTER TABLE `eps_rate_class`
  ADD PRIMARY KEY (`rate_class_id`);

--
-- Indexes for table `eps_rate_rate`
--
ALTER TABLE `eps_rate_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `rate_id` (`rate_id`),
  ADD KEY `rate_id_2` (`rate_id`);

--
-- Indexes for table `eps_rate_rule`
--
ALTER TABLE `eps_rate_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `rule_id` (`rule_id`);

--
-- Indexes for table `eps_rdtf`
--
ALTER TABLE `eps_rdtf`
  ADD KEY `RDFTbl` (`RDFTbl`),
  ADD KEY `RDFRaw` (`RDFRaw`),
  ADD KEY `RDFRaw_2` (`RDFRaw`);

--
-- Indexes for table `eps_recurring`
--
ALTER TABLE `eps_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `eps_recurring_description`
--
ALTER TABLE `eps_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `eps_return`
--
ALTER TABLE `eps_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `eps_return_action`
--
ALTER TABLE `eps_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `eps_return_history`
--
ALTER TABLE `eps_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `eps_return_reason`
--
ALTER TABLE `eps_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `eps_return_status`
--
ALTER TABLE `eps_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `eps_review`
--
ALTER TABLE `eps_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `eps_setting`
--
ALTER TABLE `eps_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `eps_stock_status`
--
ALTER TABLE `eps_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `eps_store`
--
ALTER TABLE `eps_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `eps_tax_class`
--
ALTER TABLE `eps_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `eps_tax_rate`
--
ALTER TABLE `eps_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `eps_tax_rate_to_customer_group`
--
ALTER TABLE `eps_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `eps_tax_rule`
--
ALTER TABLE `eps_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `eps_upload`
--
ALTER TABLE `eps_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `eps_url_alias`
--
ALTER TABLE `eps_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `eps_user`
--
ALTER TABLE `eps_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `eps_user_group`
--
ALTER TABLE `eps_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `eps_vessels`
--
ALTER TABLE `eps_vessels`
  ADD KEY `vesref` (`vesref`),
  ADD KEY `vesref_2` (`vesref`),
  ADD KEY `vesload` (`vesload`),
  ADD KEY `vesactualetd` (`vesactualetd`),
  ADD KEY `vesname` (`vesname`),
  ADD KEY `vesname_2` (`vesname`),
  ADD KEY `vesvoyg` (`vesvoyg`),
  ADD KEY `vesactualetd_2` (`vesactualetd`),
  ADD KEY `vesunlo` (`vesunlo`),
  ADD KEY `vesref_3` (`vesref`),
  ADD KEY `vesload_2` (`vesload`),
  ADD KEY `vesactualetd_3` (`vesactualetd`),
  ADD KEY `vesname_3` (`vesname`),
  ADD KEY `vesvoyg_2` (`vesvoyg`),
  ADD KEY `vesactualetd_4` (`vesactualetd`),
  ADD KEY `vesunlo_2` (`vesunlo`),
  ADD KEY `vesref_4` (`vesref`),
  ADD KEY `vesload_3` (`vesload`),
  ADD KEY `vesactualetd_5` (`vesactualetd`),
  ADD KEY `vesname_4` (`vesname`),
  ADD KEY `vesvoyg_3` (`vesvoyg`),
  ADD KEY `vesactualetd_6` (`vesactualetd`),
  ADD KEY `vesunlo_3` (`vesunlo`),
  ADD KEY `vesref_5` (`vesref`),
  ADD KEY `vesload_4` (`vesload`),
  ADD KEY `vesactualetd_7` (`vesactualetd`),
  ADD KEY `vesname_5` (`vesname`),
  ADD KEY `vesvoyg_4` (`vesvoyg`),
  ADD KEY `vesactualetd_8` (`vesactualetd`),
  ADD KEY `vesunlo_4` (`vesunlo`),
  ADD KEY `vesref_6` (`vesref`),
  ADD KEY `vesload_5` (`vesload`),
  ADD KEY `vesactualetd_9` (`vesactualetd`),
  ADD KEY `vesname_6` (`vesname`),
  ADD KEY `vesvoyg_5` (`vesvoyg`),
  ADD KEY `vesactualetd_10` (`vesactualetd`),
  ADD KEY `vesunlo_5` (`vesunlo`),
  ADD KEY `vesref_7` (`vesref`),
  ADD KEY `vesload_6` (`vesload`),
  ADD KEY `vesactualetd_11` (`vesactualetd`),
  ADD KEY `vesname_7` (`vesname`),
  ADD KEY `vesvoyg_6` (`vesvoyg`),
  ADD KEY `vesactualetd_12` (`vesactualetd`),
  ADD KEY `vesunlo_6` (`vesunlo`),
  ADD KEY `vesref_8` (`vesref`),
  ADD KEY `vesload_7` (`vesload`),
  ADD KEY `vesactualetd_13` (`vesactualetd`),
  ADD KEY `vesname_8` (`vesname`),
  ADD KEY `vesvoyg_7` (`vesvoyg`),
  ADD KEY `vesactualetd_14` (`vesactualetd`),
  ADD KEY `vesunlo_7` (`vesunlo`),
  ADD KEY `vesref_9` (`vesref`),
  ADD KEY `vesload_8` (`vesload`),
  ADD KEY `vesactualetd_15` (`vesactualetd`),
  ADD KEY `vesname_9` (`vesname`),
  ADD KEY `vesvoyg_8` (`vesvoyg`),
  ADD KEY `vesactualetd_16` (`vesactualetd`),
  ADD KEY `vesunlo_8` (`vesunlo`),
  ADD KEY `vesref_10` (`vesref`),
  ADD KEY `vesload_9` (`vesload`),
  ADD KEY `vesactualetd_17` (`vesactualetd`),
  ADD KEY `vesname_10` (`vesname`),
  ADD KEY `vesvoyg_9` (`vesvoyg`),
  ADD KEY `vesactualetd_18` (`vesactualetd`);

--
-- Indexes for table `eps_voucher`
--
ALTER TABLE `eps_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `eps_voucher_history`
--
ALTER TABLE `eps_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `eps_voucher_theme`
--
ALTER TABLE `eps_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `eps_voucher_theme_description`
--
ALTER TABLE `eps_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `eps_vrotn`
--
ALTER TABLE `eps_vrotn`
  ADD PRIMARY KEY (`vrref`),
  ADD KEY `vrname` (`vrname`);

--
-- Indexes for table `eps_ware`
--
ALTER TABLE `eps_ware`
  ADD PRIMARY KEY (`warecode`),
  ADD KEY `warename1` (`warename1`),
  ADD KEY `warename2` (`warename2`),
  ADD KEY `warename2_2` (`warename2`),
  ADD KEY `warecode` (`warecode`),
  ADD KEY `warename3` (`warename3`),
  ADD KEY `warename3_2` (`warename3`),
  ADD KEY `warename4` (`warename4`),
  ADD KEY `warephon` (`warephon`),
  ADD KEY `warefax` (`warefax`);

--
-- Indexes for table `eps_weight_class`
--
ALTER TABLE `eps_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `eps_weight_class_description`
--
ALTER TABLE `eps_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `eps_zone`
--
ALTER TABLE `eps_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `eps_zone_to_geo_zone`
--
ALTER TABLE `eps_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epspe_engagement`
--
ALTER TABLE `epspe_engagement`
  MODIFY `engagement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1783;
--
-- AUTO_INCREMENT for table `epspe_message`
--
ALTER TABLE `epspe_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_activity_log`
--
ALTER TABLE `eps_activity_log`
  MODIFY `Activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_address`
--
ALTER TABLE `eps_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eps_affiliate`
--
ALTER TABLE `eps_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_affiliate_activity`
--
ALTER TABLE `eps_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_affiliate_login`
--
ALTER TABLE `eps_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_affiliate_transaction`
--
ALTER TABLE `eps_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_api`
--
ALTER TABLE `eps_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_attribute`
--
ALTER TABLE `eps_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `eps_attribute_group`
--
ALTER TABLE `eps_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_banner`
--
ALTER TABLE `eps_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `eps_banner_image`
--
ALTER TABLE `eps_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `eps_category`
--
ALTER TABLE `eps_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `eps_country`
--
ALTER TABLE `eps_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `eps_coupon`
--
ALTER TABLE `eps_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_coupon_history`
--
ALTER TABLE `eps_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_coupon_product`
--
ALTER TABLE `eps_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_currency`
--
ALTER TABLE `eps_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eps_customer`
--
ALTER TABLE `eps_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4788;
--
-- AUTO_INCREMENT for table `eps_customer_activity`
--
ALTER TABLE `eps_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `eps_customer_ban_ip`
--
ALTER TABLE `eps_customer_ban_ip`
  MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_customer_group`
--
ALTER TABLE `eps_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98438;
--
-- AUTO_INCREMENT for table `eps_customer_history`
--
ALTER TABLE `eps_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_customer_ip`
--
ALTER TABLE `eps_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_customer_login`
--
ALTER TABLE `eps_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eps_customer_reward`
--
ALTER TABLE `eps_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_customer_transaction`
--
ALTER TABLE `eps_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_custom_field`
--
ALTER TABLE `eps_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eps_custom_field_value`
--
ALTER TABLE `eps_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_cuttim`
--
ALTER TABLE `eps_cuttim`
  MODIFY `cuttime_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_download`
--
ALTER TABLE `eps_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_event`
--
ALTER TABLE `eps_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_extension`
--
ALTER TABLE `eps_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;
--
-- AUTO_INCREMENT for table `eps_filter`
--
ALTER TABLE `eps_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_filter_group`
--
ALTER TABLE `eps_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_geo_zone`
--
ALTER TABLE `eps_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eps_information`
--
ALTER TABLE `eps_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_language`
--
ALTER TABLE `eps_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_layout`
--
ALTER TABLE `eps_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `eps_layout_module`
--
ALTER TABLE `eps_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `eps_layout_route`
--
ALTER TABLE `eps_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `eps_length_class`
--
ALTER TABLE `eps_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_length_class_description`
--
ALTER TABLE `eps_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_location`
--
ALTER TABLE `eps_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eps_manufacturer`
--
ALTER TABLE `eps_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `eps_marketing`
--
ALTER TABLE `eps_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_modification`
--
ALTER TABLE `eps_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_module`
--
ALTER TABLE `eps_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `eps_objects`
--
ALTER TABLE `eps_objects`
  MODIFY `object_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_option`
--
ALTER TABLE `eps_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `eps_option_value`
--
ALTER TABLE `eps_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `eps_order`
--
ALTER TABLE `eps_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_order_custom_field`
--
ALTER TABLE `eps_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_order_history`
--
ALTER TABLE `eps_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_order_option`
--
ALTER TABLE `eps_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_order_product`
--
ALTER TABLE `eps_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_order_recurring`
--
ALTER TABLE `eps_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_order_recurring_transaction`
--
ALTER TABLE `eps_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_order_status`
--
ALTER TABLE `eps_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `eps_order_total`
--
ALTER TABLE `eps_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `eps_order_voucher`
--
ALTER TABLE `eps_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_product`
--
ALTER TABLE `eps_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `eps_product_discount`
--
ALTER TABLE `eps_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `eps_product_image`
--
ALTER TABLE `eps_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2358;
--
-- AUTO_INCREMENT for table `eps_product_option`
--
ALTER TABLE `eps_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `eps_product_option_value`
--
ALTER TABLE `eps_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `eps_product_reward`
--
ALTER TABLE `eps_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
--
-- AUTO_INCREMENT for table `eps_product_special`
--
ALTER TABLE `eps_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT for table `eps_rate_class`
--
ALTER TABLE `eps_rate_class`
  MODIFY `rate_class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_rate_rate`
--
ALTER TABLE `eps_rate_rate`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_rate_rule`
--
ALTER TABLE `eps_rate_rule`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_recurring`
--
ALTER TABLE `eps_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_return`
--
ALTER TABLE `eps_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eps_return_action`
--
ALTER TABLE `eps_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_return_history`
--
ALTER TABLE `eps_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_return_reason`
--
ALTER TABLE `eps_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `eps_return_status`
--
ALTER TABLE `eps_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eps_review`
--
ALTER TABLE `eps_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_setting`
--
ALTER TABLE `eps_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2721;
--
-- AUTO_INCREMENT for table `eps_stock_status`
--
ALTER TABLE `eps_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eps_store`
--
ALTER TABLE `eps_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eps_tax_class`
--
ALTER TABLE `eps_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `eps_tax_rate`
--
ALTER TABLE `eps_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `eps_tax_rule`
--
ALTER TABLE `eps_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `eps_upload`
--
ALTER TABLE `eps_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_url_alias`
--
ALTER TABLE `eps_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=845;
--
-- AUTO_INCREMENT for table `eps_user`
--
ALTER TABLE `eps_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `eps_user_group`
--
ALTER TABLE `eps_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `eps_voucher`
--
ALTER TABLE `eps_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_voucher_history`
--
ALTER TABLE `eps_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eps_voucher_theme`
--
ALTER TABLE `eps_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eps_weight_class`
--
ALTER TABLE `eps_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_weight_class_description`
--
ALTER TABLE `eps_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eps_zone`
--
ALTER TABLE `eps_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4225;
--
-- AUTO_INCREMENT for table `eps_zone_to_geo_zone`
--
ALTER TABLE `eps_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `epspe_quotes_trucking`
--
ALTER TABLE `epspe_quotes_trucking`
  ADD CONSTRAINT `epspe_quotes_trucking_ibfk_1` FOREIGN KEY (`quote_id`) REFERENCES `epspe_quotes` (`QtNumb`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
