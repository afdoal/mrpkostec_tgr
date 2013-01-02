/*
Navicat MySQL Data Transfer

Source Server         : lokal MySQL
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : mrpkostec_tgr

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-01-01 12:05:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `KdApit` tinyint(1) NOT NULL COMMENT 'kode API/T',
  `UrApit` varchar(15) DEFAULT NULL COMMENT 'Uraian API/T',
  PRIMARY KEY (`KdApit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('1', 'API');
INSERT INTO `api` VALUES ('2', 'APIT');

-- ----------------------------
-- Table structure for `barang`
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `fgmat_id` int(11) DEFAULT NULL COMMENT 'Kode Dokumen',
  `KdBarang` varchar(11) NOT NULL DEFAULT '',
  `UrBarang` varchar(100) NOT NULL DEFAULT '' COMMENT 'Nomor Dokumen',
  `KdGunaBarang` varchar(1) DEFAULT NULL,
  `Negara` varchar(50) DEFAULT NULL,
  `HE` decimal(12,2) DEFAULT NULL COMMENT 'Harga Ekspor Barang',
  `Tarif` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `kurs` decimal(12,2) DEFAULT NULL,
  `VOL` decimal(12,4) DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `NETTO` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `FOB` decimal(12,2) DEFAULT NULL,
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  `Ket` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES ('1', '000700', '1', null, 'MAT-0001', '1', '1', null, null, '2', '1', null, null, null, null, '2.00', '1.00', null, null, null);
INSERT INTO `barang` VALUES ('1', '000701', '1', null, 'M001', 'Mesin A', 'u', null, null, 'undefined', '100', null, null, null, null, '0.00', '0.00', null, null, null);
INSERT INTO `barang` VALUES ('1', '000701', '2', null, 'P001', 'PC', 'u', null, null, 'undefined', '200', null, null, null, null, '0.00', '0.00', null, null, null);
INSERT INTO `barang` VALUES ('3', '000001', '1', null, 'FG-01', 'tes', '1', 'ID', null, '1', '2', null, null, null, '2.0000', '1.00', '1.00', null, '293512254.00', null);
INSERT INTO `barang` VALUES ('3', '000002', '1', null, 'M001', 'Mesin A', 'u', 'undefined', null, 'undefined', '5', null, null, null, '0.0000', '0.00', '0.00', null, '0.00', null);
INSERT INTO `barang` VALUES ('3', '201207', '1', null, 'FG-01', 'tes', '1', 'ID', null, '1', '2', null, null, null, '2.0000', '1.00', '1.00', null, '2.00', null);
INSERT INTO `barang` VALUES ('4', '000001', '1', null, 'FG-01', 'tes', null, 'ID', null, '1', '2', null, null, null, '1.0000', '1.00', '1.00', null, null, null);
INSERT INTO `barang` VALUES ('4', '000002', '1', null, 'M001', 'Mesin A', null, 'undefined', null, 'undefined', '5', null, null, null, '0.0000', '0.00', '0.00', null, null, null);
INSERT INTO `barang` VALUES ('5', '000001', '1', null, 'MAT-0001', 'tes', null, 'ID', null, '2', '1', null, null, null, '2.0000', '2.00', '2.00', null, null, null);
INSERT INTO `barang` VALUES ('5', '000002', '1', null, 'ALME0002', 'Extrusion+Ecotrio', null, null, null, null, '200', null, null, null, '0.0000', '0.00', '0.00', null, null, null);
INSERT INTO `barang` VALUES ('6', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '1', null, null, null, '1.0000', '2.00', '2.00', null, '1.00', null);
INSERT INTO `barang` VALUES ('6', '000001', '3', null, 'FG-02', '2', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO `barang` VALUES ('6', '000001', '2', null, 'MAT-0001', 'tes', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO `barang` VALUES ('6', '000001', '4', null, 'MAT-0002', '222', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO `barang` VALUES ('6', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '5', null, null, null, '0.0000', '0.00', '0.00', null, '0.00', null);
INSERT INTO `barang` VALUES ('7', '000001', '1', null, 'FG-01', 'tes', null, null, '1.00', '2', '1', null, null, null, null, '2.00', null, '2.00', null, null);
INSERT INTO `barang` VALUES ('7', '000002', '1', null, '123', 'Heatsink', null, null, '0.00', 'undefined', '200', null, null, null, null, '0.00', null, '0.00', null, null);
INSERT INTO `barang` VALUES ('8', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '1', null, null, null, '2.0000', '2.00', null, null, '1.00', null);
INSERT INTO `barang` VALUES ('8', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '100', null, null, null, '50.0000', '0.00', null, null, '200.00', null);
INSERT INTO `barang` VALUES ('8', '000002', '2', null, 'P001', 'PC', null, null, null, null, '200', null, null, null, '0.0000', '120.00', null, null, '100.00', null);
INSERT INTO `barang` VALUES ('9', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '2', null, null, null, '1.0000', '1.00', null, null, '1.00', null);
INSERT INTO `barang` VALUES ('9', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '5', null, null, null, '0.0000', '0.00', null, null, '0.00', null);

-- ----------------------------
-- Table structure for `barangkembali`
-- ----------------------------
DROP TABLE IF EXISTS `barangkembali`;
CREATE TABLE `barangkembali` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `fgmat_id` int(11) DEFAULT NULL COMMENT 'Kode Dokumen',
  `KdBarang` varchar(11) DEFAULT NULL,
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `Negara` varchar(50) DEFAULT NULL,
  `Tarif` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `kurs` decimal(12,2) DEFAULT NULL,
  `VOL` decimal(12,2) DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `NETTO` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barangkembali
-- ----------------------------
INSERT INTO `barangkembali` VALUES ('3', '000001', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000002', '425', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000003', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000004', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000005', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000006', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000007', '267', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000008', '328', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000009', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000010', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000011', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000012', '2', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000013', '2', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000014', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000015', '7', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000016', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000017', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000018', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('3', '000019', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `barangkembali` VALUES ('4', '000001', '1', null, 'MAT-0001', 'tes', null, null, '1', null, null, null, '1.00', '2.00', '2.00', null);
INSERT INTO `barangkembali` VALUES ('5', '000001', '1', null, 'FG-01', 'tes', null, null, '2', null, null, null, '2.00', '1.00', '1.00', null);

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `DokKd` varchar(1) NOT NULL DEFAULT '' COMMENT 'Kode Dokumen BC',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `NoDaf` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pendaftaran',
  `NoDet` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'No Detail',
  `BRUTO` decimal(12,2) DEFAULT NULL COMMENT 'Bruto',
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'CIF',
  `HargaSerah` decimal(12,2) DEFAULT NULL COMMENT 'Harga Penyerahan',
  `NETTO` decimal(12,2) DEFAULT NULL COMMENT 'Netto',
  `TujKirim` tinyint(1) DEFAULT NULL COMMENT 'Tujuan Pengiriman',
  `NpwpTuj` varchar(15) DEFAULT NULL COMMENT 'Npwp Tujuan',
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Uraian Barang',
  PRIMARY KEY (`DokKd`,`CAR`,`NoDaf`,`NoDet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail
-- ----------------------------

-- ----------------------------
-- Table structure for `dokumen`
-- ----------------------------
DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE `dokumen` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `DokKd` tinyint(1) DEFAULT NULL COMMENT 'Kode Dokumen',
  `DokNo` varchar(30) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `DokTg` date DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `PosSub` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dokumen
-- ----------------------------
INSERT INTO `dokumen` VALUES ('1', '000700', '1', '1', 'MINHS12040145', '2012-04-24', null);
INSERT INTO `dokumen` VALUES ('1', '000700', '2', '17', 'HASL0280D4CDW98', '2012-04-26', null);
INSERT INTO `dokumen` VALUES ('1', '000700', '3', '18', '001995 Pos: 0043 Sub:', '2012-05-05', null);
INSERT INTO `dokumen` VALUES ('1', '000701', '1', '1', '999', '2012-10-31', null);
INSERT INTO `dokumen` VALUES ('3', '000001', '1', '1', '1', '2012-07-25', null);
INSERT INTO `dokumen` VALUES ('3', '000002', '1', '2', '001', '2012-10-31', null);
INSERT INTO `dokumen` VALUES ('3', '201..2', '1', '1', '1', '2012-07-25', null);
INSERT INTO `dokumen` VALUES ('3', '201.20', '1', '1', '1', '2012-07-25', null);
INSERT INTO `dokumen` VALUES ('3', '201207', '1', '1', '1', '2012-07-25', null);
INSERT INTO `dokumen` VALUES ('4', '000001', '1', '2', '1', '2012-07-31', null);
INSERT INTO `dokumen` VALUES ('4', '000002', '1', '1', '001', '2012-10-30', null);
INSERT INTO `dokumen` VALUES ('5', '000001', '1', '2', '2', '2012-07-31', null);
INSERT INTO `dokumen` VALUES ('5', '000002', '1', '1', '001', '2012-10-30', null);
INSERT INTO `dokumen` VALUES ('6', '000001', '1', '1', '1', '2012-08-01', null);
INSERT INTO `dokumen` VALUES ('6', '000001', '2', '12', '2', '2012-08-01', null);
INSERT INTO `dokumen` VALUES ('6', '000002', '1', '1', '777', '2012-10-31', null);
INSERT INTO `dokumen` VALUES ('7', '000001', '1', '1', 'u', '2012-07-17', null);
INSERT INTO `dokumen` VALUES ('7', '000002', '1', '1', '883', '2012-10-31', null);
INSERT INTO `dokumen` VALUES ('8', '000001', '1', '2', '1', '2012-08-01', null);
INSERT INTO `dokumen` VALUES ('8', '000002', '1', '4', '003', '2012-10-29', null);
INSERT INTO `dokumen` VALUES ('9', '000001', '1', '3', '2', '2012-08-02', null);
INSERT INTO `dokumen` VALUES ('9', '000001', '2', '14', '1', '2012-08-02', null);
INSERT INTO `dokumen` VALUES ('9', '000001', '3', '14', '2', '2012-08-03', null);
INSERT INTO `dokumen` VALUES ('9', '000002', '1', '1', '001', '2012-10-30', null);

-- ----------------------------
-- Table structure for `hdrjaminan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrjaminan`;
CREATE TABLE `hdrjaminan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `NoJaminan` varchar(20) NOT NULL DEFAULT '',
  `TgJaminan` date DEFAULT NULL,
  `JnsJaminan` varchar(15) NOT NULL DEFAULT '',
  `bayar` decimal(12,2) DEFAULT NULL,
  `hutang` decimal(12,2) DEFAULT NULL,
  `TgJatuhTempo` date DEFAULT NULL,
  `KodeAkun` varchar(10) NOT NULL DEFAULT '',
  `NoTandaBayar` varchar(20) DEFAULT NULL,
  `TglTandaBayar` date DEFAULT NULL,
  `Penjamin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`JnsJaminan`,`KodeAkun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrjaminan
-- ----------------------------
INSERT INTO `hdrjaminan` VALUES ('0', '', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO `hdrjaminan` VALUES ('0', '', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('0', '', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('0', '', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('0', '', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('0', '', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'BM', '0.00', '1.00', null, '1', '2', '2012-07-18', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'Cukai', '0.00', '10.00', null, '1', '2', '2012-07-04', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'PNBP', '0.00', '100.00', null, '1', '2', '2012-07-06', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'PPh', '0.00', '1000.00', null, '1', '2', '2012-07-01', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'PPN', '0.00', '10000.00', null, '1', '2', '2012-07-03', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000700', '', null, 'PPnBM', '0.00', '100000.00', null, '1', '2', '2012-07-02', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'BM', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'Cukai', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'PNBP', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'PPh', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'PPN', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('1', '000701', '', null, 'PPnBM', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'NTPN', null, null, null, 'SSP', '2', '2012-07-30', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000001', '', null, 'SSP', null, null, null, '', '1', '2012-07-27', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'BM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'BungaPPNPPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'Cukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'DBBMCukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'NTPN', null, null, null, 'SSCP', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'NTPN', null, null, null, 'SSP', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'PNBP', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'PPh', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'PPN', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'PPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'SSCP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('3', '000002', '', null, 'SSP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201..2', '', null, 'SSP', null, null, null, '', '1', '2012-07-27', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201.20', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('3', '201207', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '1', '2012-07-31', '2', '2.00', null, '2012-07-30', '', '2', '2012-07-31', '1');
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '', null, 'BM', '1.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '', null, 'Cukai', '2.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '', null, 'PPh', '1.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '', null, 'PPN', '1.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000001', '', null, 'PPnBM', '2.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('4', '000002', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '1', '2012-07-31', '2', '2.00', null, '2012-07-30', '', '2', '2012-07-31', '1');
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '', null, 'BM', '2.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '', null, 'Cukai', '1.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '', null, 'PPh', '2.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '', null, 'PPN', '2.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000001', '', null, 'PPnBM', '1.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('5', '000002', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('7', '000001', '', null, 'BK', '2.00', null, null, 'NTB', '1', '2012-07-27', null);
INSERT INTO `hdrjaminan` VALUES ('7', '000001', '', null, 'PNBP', '1.00', null, null, 'NTPN', '2', '2012-07-11', null);
INSERT INTO `hdrjaminan` VALUES ('7', '000001', '', null, 'SSPCP', null, null, null, '', '1.00', '2012-07-22', null);
INSERT INTO `hdrjaminan` VALUES ('7', '000002', '', null, 'BK', '0.00', null, null, 'NTPN', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('7', '000002', '', null, 'PNBP', '0.00', null, null, 'NTPN', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('7', '000002', '', null, 'SSPCP', null, null, null, '', '', '2012-10-31', null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'BM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'BungaPPNPPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'Cukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'DBBMCukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'NTPN', null, null, null, 'SSCP', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'NTPN', null, null, null, 'SSP', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'PNBP', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'PPh', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'PPN', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'PPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'SSCP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO `hdrjaminan` VALUES ('8', '000001', '', null, 'SSP', null, null, null, '', '', '0000-00-00', null);

-- ----------------------------
-- Table structure for `hdrpelabuhan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpelabuhan`;
CREATE TABLE `hdrpelabuhan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `MuatAsal` varchar(5) DEFAULT NULL,
  `MuatEkspor` varchar(5) DEFAULT NULL,
  `Transit` varchar(5) DEFAULT NULL,
  `Bongkar` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpelabuhan
-- ----------------------------
INSERT INTO `hdrpelabuhan` VALUES ('1', '000700', 'KRPUS', '', '', 'IDTPP');
INSERT INTO `hdrpelabuhan` VALUES ('1', '000701', '', '', '', 'IDTPP');
INSERT INTO `hdrpelabuhan` VALUES ('7', '000001', 'IDTPP', 'IDTPP', '', 'USFAT');
INSERT INTO `hdrpelabuhan` VALUES ('7', '000002', 'IDTPP', 'IDTPP', '', '');

-- ----------------------------
-- Table structure for `hdrpengangkutan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpengangkutan`;
CREATE TABLE `hdrpengangkutan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `CaraAngkut` tinyint(1) DEFAULT NULL,
  `JnsAngkut` varchar(30) DEFAULT NULL COMMENT 'Jenis Sarana Pengangkut Darat',
  `NmAngkut` varchar(40) DEFAULT NULL,
  `NoPolisi` varchar(15) DEFAULT NULL,
  `KdNegara` varchar(3) DEFAULT NULL,
  `TgKiraEkspor` date DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpengangkutan
-- ----------------------------
INSERT INTO `hdrpengangkutan` VALUES ('0', '', null, '', null, '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('1', '000701', '0', null, '', '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('3', '201207', '0', '', '', '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('4', '000001', null, '1', null, '2', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('4', '000002', null, '', null, '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('5', '000001', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('5', '000002', null, '', null, '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('6', '000.00', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('6', '000.11', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('6', '000001', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('6', '000002', null, '', null, '', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('7', '000001', '1', null, '', '189', 'US', '0000-00-00');
INSERT INTO `hdrpengangkutan` VALUES ('7', '000002', '0', null, '', '', '', '0000-00-00');
INSERT INTO `hdrpengangkutan` VALUES ('8', '000001', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('8', '000002', null, 'Truk', null, 'B201', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('9', '000001', null, '2', null, '1', null, null);
INSERT INTO `hdrpengangkutan` VALUES ('9', '000002', null, '', null, '', null, null);

-- ----------------------------
-- Table structure for `hdrperdagangan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrperdagangan`;
CREATE TABLE `hdrperdagangan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `KdDaerah` varchar(4) DEFAULT NULL,
  `KdNegaraEkspor` varchar(2) DEFAULT NULL,
  `KdCrSerahBrg` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrperdagangan
-- ----------------------------
INSERT INTO `hdrperdagangan` VALUES ('7', '000001', '3200', 'US', 'FOB');
INSERT INTO `hdrperdagangan` VALUES ('7', '000002', '', '', '');

-- ----------------------------
-- Table structure for `hdrpetikemas`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpetikemas`;
CREATE TABLE `hdrpetikemas` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `NoUrut` tinyint(2) NOT NULL DEFAULT '0',
  `Merk` varchar(15) DEFAULT NULL,
  `Nomor` varchar(10) DEFAULT NULL,
  `Ukuran` varchar(10) DEFAULT NULL,
  `Tipe` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`NoUrut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpetikemas
-- ----------------------------
INSERT INTO `hdrpetikemas` VALUES ('1', '000700', '1', 'FCLU', '2037740', '20 Feet', 'FCL');
INSERT INTO `hdrpetikemas` VALUES ('7', '000001', '1', 'fcl', '88', '89', '1');

-- ----------------------------
-- Table structure for `hdrtransaksi`
-- ----------------------------
DROP TABLE IF EXISTS `hdrtransaksi`;
CREATE TABLE `hdrtransaksi` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `KdVal` varchar(3) DEFAULT NULL,
  `NDPBM` decimal(12,2) DEFAULT '1.00',
  `Freight` decimal(12,2) DEFAULT NULL,
  `AsLNDN` decimal(12,2) DEFAULT NULL,
  `FOB` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL,
  `CIFUSD` decimal(12,2) NOT NULL,
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrtransaksi
-- ----------------------------
INSERT INTO `hdrtransaksi` VALUES ('0', '', '', '1.00', null, null, null, '0.00', '0.00', null);
INSERT INTO `hdrtransaksi` VALUES ('1', '000700', 'USD', '9203.00', '0.00', '0.00', '0.00', '128002686.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('1', '000701', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('3', '000001', 'USD', '9409.00', '0.00', '0.00', '0.00', '19149197.00', '0.00', '293512254.00');
INSERT INTO `hdrtransaksi` VALUES ('3', '000002', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('3', '201..2', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO `hdrtransaksi` VALUES ('3', '201.20', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO `hdrtransaksi` VALUES ('3', '201207', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO `hdrtransaksi` VALUES ('4', '000001', 'USD', '2.00', null, null, null, '2.00', '0.00', null);
INSERT INTO `hdrtransaksi` VALUES ('4', '000002', 'USD', '0.00', null, null, null, '0.00', '0.00', null);
INSERT INTO `hdrtransaksi` VALUES ('5', '000001', 'USD', '1.00', null, null, null, '2.00', '0.00', null);
INSERT INTO `hdrtransaksi` VALUES ('5', '000002', 'USD', '1.00', null, null, null, '0.00', '0.00', null);
INSERT INTO `hdrtransaksi` VALUES ('6', '000.00', 'USD', '0.00', null, null, null, '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('6', '000.11', 'USD', '0.00', null, null, null, '2.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('6', '000001', 'USD', '0.00', null, null, null, '2.00', '0.00', '1.00');
INSERT INTO `hdrtransaksi` VALUES ('6', '000002', 'USD', '0.00', null, null, null, '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('7', '000001', 'USD', '0.00', '0.00', '0.00', '684.00', '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('7', '000002', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `hdrtransaksi` VALUES ('8', '000001', 'Rp', '1.00', null, null, null, null, '0.00', '2.00');
INSERT INTO `hdrtransaksi` VALUES ('8', '000002', 'Rp', '1.00', null, null, null, null, '0.00', '300.00');
INSERT INTO `hdrtransaksi` VALUES ('9', '000001', 'Rp', '1.00', null, null, null, null, '0.00', '2.00');
INSERT INTO `hdrtransaksi` VALUES ('9', '000002', 'Rp', '1.00', null, null, null, null, '0.00', '0.00');

-- ----------------------------
-- Table structure for `header`
-- ----------------------------
DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Dokumen BC',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `NoDaf` varchar(8) NOT NULL DEFAULT '' COMMENT 'Nomor Pendaftaran',
  `TgDaf` date DEFAULT NULL COMMENT 'Tanggal Pendaftaran',
  `KdTp` tinyint(1) DEFAULT NULL COMMENT 'Npwp Perusahaan Asal',
  `KdKpbcAsal` varchar(6) DEFAULT NULL COMMENT 'Kantor Pabean Asal',
  `KdJnsEkspor` varchar(15) DEFAULT NULL,
  `KdKatEkspor` varchar(20) DEFAULT NULL,
  `KdKpbcTuj` varchar(6) DEFAULT NULL COMMENT 'Kantor Pabean Tujuan',
  `KdJnsBarang` int(2) DEFAULT NULL,
  `KdCrDagang` varchar(15) DEFAULT NULL,
  `KdCrBayar` varchar(15) DEFAULT NULL,
  `KdKpBongkar` varchar(6) DEFAULT NULL,
  `KdKpPengawas` varchar(6) DEFAULT NULL,
  `KdJnsTpbAsal` tinyint(1) DEFAULT NULL COMMENT 'Kode Jenis TPB Asal',
  `KdJnsTpbTuj` tinyint(1) DEFAULT NULL COMMENT 'Kode Jenis TPB Tujuan',
  `JnsBc25` enum('2','1') DEFAULT NULL,
  `KondisiBrg` enum('2','1') DEFAULT NULL,
  `NmPpjk` varchar(20) DEFAULT NULL,
  `NmTuj` varchar(50) DEFAULT NULL,
  `KdTimbun` varchar(5) DEFAULT NULL,
  `KdLokPeriksa` varchar(5) DEFAULT NULL,
  `KdKpPeriksa` varchar(6) DEFAULT NULL,
  `KdDaerahAsalBrg` varchar(6) DEFAULT NULL,
  `NoSegel` varchar(6) DEFAULT NULL,
  `JnsSegel` varchar(15) DEFAULT NULL,
  `CatBcTuj` varchar(250) DEFAULT NULL COMMENT 'Catatan BC Tujuan',
  `MerekKemas` varchar(50) DEFAULT NULL,
  `KdKemas` varchar(3) DEFAULT NULL,
  `JmlKemas` int(12) DEFAULT NULL,
  `VOL` decimal(12,4) DEFAULT NULL,
  `BRUTO` decimal(12,2) DEFAULT NULL,
  `NETTO` decimal(12,2) DEFAULT NULL,
  `Total` decimal(12,2) DEFAULT NULL,
  `TotalH` decimal(12,2) DEFAULT NULL,
  `NilaiBkRp` decimal(12,2) DEFAULT NULL,
  `NmPengusaha` varchar(30) DEFAULT NULL,
  `NipPengusaha` varchar(20) DEFAULT NULL,
  `NmPejabat` varchar(30) DEFAULT NULL,
  `NipPejabat` varchar(20) DEFAULT NULL,
  `ref_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of header
-- ----------------------------
INSERT INTO `header` VALUES ('0', '', '', '0000-00-00', '0', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, '', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, '', '', '', '', '0');
INSERT INTO `header` VALUES ('1', '000700', '000700', '2012-05-07', '2', '050800', null, null, null, '2', null, null, '040300', '050800', '1', null, null, null, '', 'HANSOLL TEXTILE LTD.', 'UTPK', null, null, null, null, null, null, 'FCLU', 'CT', '101', null, '9999999999.99', '9999999999.99', null, null, null, 'LEE JONG HYUK', 'a', 'kikin', 'b1', null);
INSERT INTO `header` VALUES ('1', '000701', '000701', '2012-10-31', '0', '050800', null, null, null, '0', null, null, '050800', '050800', '0', null, null, null, '', 'PT. DIHEN BERSAMA', '', null, null, null, null, null, null, '', '', '0', null, '0.00', '0.00', '0.00', '0.00', null, 'Mr. Y. Tobusawa', '_', '', '', '2');
INSERT INTO `header` VALUES ('3', '000001', '000001', '2012-07-28', '0', '050800', null, null, '', null, null, null, null, null, '1', '0', '1', '2', null, 'THE GAP INC.,', null, null, null, null, '', '', '', '2', 'AE', '1', '2.0000', '1.00', '2.00', '1.00', '2.00', null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO `header` VALUES ('3', '000002', '000002', '2012-10-31', '0', '050800', null, null, '', null, null, null, null, null, '2', '0', '1', '1', null, '', null, null, null, null, '', '', '', '', '', '0', '0.0000', '0.00', '0.00', '0.00', '0.00', null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO `header` VALUES ('4', '000001', '000001', '2012-07-31', '2', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'PT. DK INTERNATIONAL', null, null, null, null, null, null, null, '1', 'AE', '2', '1.0000', '2.00', '1.00', '7.00', null, null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO `header` VALUES ('4', '000002', '000002', '2012-10-30', '2', '050800', null, null, null, null, null, null, null, null, '0', null, null, null, null, 'PARAMOUNT BED', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO `header` VALUES ('5', '000001', '000001', '2012-07-31', '6', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'HANSOLL TEXTILE LTD.', null, null, null, null, null, null, null, '2', 'AE', '1', '2.0000', '1.00', '2.00', '8.00', null, null, 'LEE JONG HYUK', '_', '2', '1', null);
INSERT INTO `header` VALUES ('5', '000002', '000002', '2012-10-30', '6', '050800', null, null, null, null, null, null, null, null, '0', null, null, null, null, 'PT. ALUMINDO LIGHT METAL INDUSTRY', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, 'Mr. Y. Tobusawa', '_', '', '', '1');
INSERT INTO `header` VALUES ('6', '000001', '000001', '1899-11-30', '1', '050800', null, null, '000000', null, null, null, null, null, '1', '2', null, null, null, 'PT. HANDSOME', null, null, null, null, '123456', 'Kertas', '2', '1', 'AE', '2', '1.0000', '2.00', '1.00', null, null, null, 'LEE JONG HYUK', '_', '2', '1', null);
INSERT INTO `header` VALUES ('6', '000002', '000002', '2012-10-31', '3', '050800', null, null, '000000', null, null, null, null, null, '1', '1', null, null, null, '', null, null, null, null, '', 'Kertas', '', '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO `header` VALUES ('7', '000001', '000001', '2012-07-22', null, '040300', '1', '12', null, null, '2', '9', null, '', null, null, null, null, '', 'THE GAP INC.,', null, '1', '050800', null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'LEE JONG HYUK', '_', '', '', null);
INSERT INTO `header` VALUES ('7', '000002', '000002', '2012-10-31', null, '040300', '1', '1', null, null, '1', '1', null, '', null, null, null, null, '', 'DENON', null, '', '', null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '2');
INSERT INTO `header` VALUES ('8', '000001', '000001', '2012-08-01', '2', '050800', null, null, '', null, null, null, null, null, '1', '0', '', '', null, 'PT. LUCAS ABADI', null, null, null, null, '', '', '', '1', 'AP', '2', '2.0000', '1.00', '2.00', '0.00', '0.00', null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO `header` VALUES ('8', '000002', '000002', '2012-10-29', '1', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'PT. DIHEN BERSAMA', null, null, null, null, null, null, null, 'Tes', 'AM', '4', '0.0000', '310.00', '300.00', null, null, null, 'Mr. Y. Tobusawa', '_', 'Dani', '111', '2');
INSERT INTO `header` VALUES ('9', '000001', '000001', '2012-08-02', '1', '050800', null, null, null, null, null, null, null, null, '2', null, null, null, null, 'PT. KAILO SUMBER KAS', null, null, null, null, null, null, null, '1', 'BB', '2', '1.0000', '2.00', '1.00', null, null, null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO `header` VALUES ('9', '000002', '000002', '2012-10-30', '5', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'HITACHI', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `UrJnsBarang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES ('1', 'Bahan Baku');
INSERT INTO `jenis_barang` VALUES ('2', 'Bahan Penolong');
INSERT INTO `jenis_barang` VALUES ('3', 'Mesin/Sparepart');
INSERT INTO `jenis_barang` VALUES ('4', 'Peralatan Pabrik');
INSERT INTO `jenis_barang` VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO `jenis_barang` VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO `jenis_barang` VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO `jenis_barang` VALUES ('8', 'Barang Contoh/Tes');
INSERT INTO `jenis_barang` VALUES ('9', 'Lainnya');
INSERT INTO `jenis_barang` VALUES ('10', 'Lebih dr 1 Jenis Brg (1 s/d 6)');

-- ----------------------------
-- Table structure for `jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_dok`;
CREATE TABLE `jenis_dok` (
  `KdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode TPB',
  `UrJnsDok` varchar(30) DEFAULT NULL COMMENT 'Uraian TPB',
  PRIMARY KEY (`KdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_dok
-- ----------------------------
INSERT INTO `jenis_dok` VALUES ('1', 'BC 2.3');
INSERT INTO `jenis_dok` VALUES ('2', 'BC 2.4');
INSERT INTO `jenis_dok` VALUES ('3', 'BC 2.5');
INSERT INTO `jenis_dok` VALUES ('4', 'BC 2.6.1');
INSERT INTO `jenis_dok` VALUES ('5', 'BC 2.6.2');
INSERT INTO `jenis_dok` VALUES ('6', 'BC 2.7');
INSERT INTO `jenis_dok` VALUES ('7', 'BC 3.0');
INSERT INTO `jenis_dok` VALUES ('8', 'BC 4.0');
INSERT INTO `jenis_dok` VALUES ('9', 'BC 4.1');

-- ----------------------------
-- Table structure for `jenis_tpb`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_tpb`;
CREATE TABLE `jenis_tpb` (
  `KdJnsTpb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis TPB',
  `UrJnsTpb` varchar(50) DEFAULT NULL COMMENT 'Uraian Jenis TPB',
  PRIMARY KEY (`KdJnsTpb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_tpb
-- ----------------------------
INSERT INTO `jenis_tpb` VALUES ('1', 'Kawasan Berikat');
INSERT INTO `jenis_tpb` VALUES ('2', 'Gudang Berikat');
INSERT INTO `jenis_tpb` VALUES ('3', 'Tempat Penyelenggara Pameran Berikat');
INSERT INTO `jenis_tpb` VALUES ('4', 'Toko Bebas Bea');
INSERT INTO `jenis_tpb` VALUES ('5', 'Tempat Lelang Berikat');
INSERT INTO `jenis_tpb` VALUES ('6', 'Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `kantor`
-- ----------------------------
DROP TABLE IF EXISTS `kantor`;
CREATE TABLE `kantor` (
  `KdKpbc` varchar(6) NOT NULL DEFAULT '0',
  `UrKdKpbc` varchar(60) DEFAULT NULL,
  `Kota` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdKpbc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kantor
-- ----------------------------
INSERT INTO `kantor` VALUES ('000000', 'KANTOR PUSAT', 'JAKARTA');
INSERT INTO `kantor` VALUES ('010000', 'KANTOR WILAYAH I MEDAN', 'MEDAN');
INSERT INTO `kantor` VALUES ('010201', 'BALAI PENGUJIAN DAN IDENTIFIKASI BARANG MEDAN', '');
INSERT INTO `kantor` VALUES ('010700', 'KANTOR PELAYANAN BELAWAN', 'BELAWAN');
INSERT INTO `kantor` VALUES ('010731', 'POS PERCUT', '');
INSERT INTO `kantor` VALUES ('010732', 'POS PANTAI CERMIN', '');
INSERT INTO `kantor` VALUES ('010733', 'POS PANTAI LABU', '');
INSERT INTO `kantor` VALUES ('010734', 'POS LUBUK PAKAM', '');
INSERT INTO `kantor` VALUES ('010735', 'POS BINJAI', '');
INSERT INTO `kantor` VALUES ('010736', 'POS UJUNG BARU', '');
INSERT INTO `kantor` VALUES ('010737', 'POS GUDANG MERAH', '');
INSERT INTO `kantor` VALUES ('010738', 'POS GABION', '');
INSERT INTO `kantor` VALUES ('010739', 'POS RANTAU PANJANG', '');
INSERT INTO `kantor` VALUES ('010800', 'KANTOR PELAYANAN MEDAN', 'MEDAN');
INSERT INTO `kantor` VALUES ('010838', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('010839', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('010840', 'POS BANDARA III', '');
INSERT INTO `kantor` VALUES ('010900', 'KANTOR PELAYANAN PANGKALAN SUSU', 'PANGKALAN SUSU');
INSERT INTO `kantor` VALUES ('010911', 'KANTOR BANTU PANGKALAN BRANDAN', 'PANGKALAN BRANDAN');
INSERT INTO `kantor` VALUES ('010931', 'POS TANJUNG PURA', '');
INSERT INTO `kantor` VALUES ('010933', 'POS PANGKALAN SUSU', '');
INSERT INTO `kantor` VALUES ('011000', 'KANTOR PELAYANAN PEMATANG SIANTAR', 'PEMATANG SIANTAR');
INSERT INTO `kantor` VALUES ('011031', 'POS PORSEA', '');
INSERT INTO `kantor` VALUES ('011032', 'POS KABANJAHE', '');
INSERT INTO `kantor` VALUES ('011033', 'POS SIDIKALANG', '');
INSERT INTO `kantor` VALUES ('011100', 'KANTOR PELAYANAN TELUK NIBUNG', 'TELUK NIBUNG');
INSERT INTO `kantor` VALUES ('011131', 'POS TANJUNG TIRAM', '');
INSERT INTO `kantor` VALUES ('011134', 'POS LEIDONG', '');
INSERT INTO `kantor` VALUES ('011135', 'POS LABUHAN BILIK', '');
INSERT INTO `kantor` VALUES ('011137', 'POS RANTAU PRAPAT', '');
INSERT INTO `kantor` VALUES ('011138', 'POS TELUK NIBUNG', '');
INSERT INTO `kantor` VALUES ('011200', 'KANTOR PELAYANAN KUALA TANJUNG', 'KUALA TANJUNG');
INSERT INTO `kantor` VALUES ('011211', 'KANTOR BANTU TEBING TINGGI', 'TEBING TINGGI');
INSERT INTO `kantor` VALUES ('011231', 'POS BANDAR KHALIPAH', '');
INSERT INTO `kantor` VALUES ('011232', 'POS TELUK MENGKUDU', '');
INSERT INTO `kantor` VALUES ('011233', 'POS TANJUNG BERINGIN', '');
INSERT INTO `kantor` VALUES ('011234', 'POS PANGKALAN DODEK', '');
INSERT INTO `kantor` VALUES ('011235', 'POS KUALA TANJUNG', '');
INSERT INTO `kantor` VALUES ('011300', 'KANTOR PELAYANAN SIBOLGA', 'SIBOLGA');
INSERT INTO `kantor` VALUES ('011311', 'KANTOR BANTU GUNUNG SITOLI', '');
INSERT INTO `kantor` VALUES ('011331', 'POS BARUS', '');
INSERT INTO `kantor` VALUES ('011332', 'POS NATAL', '');
INSERT INTO `kantor` VALUES ('011334', 'POS TELUK DALAM', '');
INSERT INTO `kantor` VALUES ('011336', 'POS PULAU TELLO', '');
INSERT INTO `kantor` VALUES ('011340', 'POS SIBOLGA', '');
INSERT INTO `kantor` VALUES ('011500', 'KANTOR PELAYANAN TELUK BAYUR', 'TELUK BAYUR');
INSERT INTO `kantor` VALUES ('011511', 'KANTOR BANTU SIKAKAP', '');
INSERT INTO `kantor` VALUES ('011514', 'KANTOR BANTU TUA PEJAT', '');
INSERT INTO `kantor` VALUES ('011531', 'POS MUARA PADANG', '');
INSERT INTO `kantor` VALUES ('011534', 'POS SIBERUT MENTAWAI', '');
INSERT INTO `kantor` VALUES ('011537', 'POS PARIAMAN', '');
INSERT INTO `kantor` VALUES ('011539', 'POS PAINAN', '');
INSERT INTO `kantor` VALUES ('011540', 'POS MUARO', '');
INSERT INTO `kantor` VALUES ('011543', 'POS TELUK BAYUR', '');
INSERT INTO `kantor` VALUES ('011544', 'POS CUBADAK', '');
INSERT INTO `kantor` VALUES ('011545', 'POS AIR BANGIS', '');
INSERT INTO `kantor` VALUES ('011546', 'POS BUNGUS', '');
INSERT INTO `kantor` VALUES ('011547', 'POS BANDARA TABING', '');
INSERT INTO `kantor` VALUES ('020000', 'KANTOR WILAYAH II TANJUNG BALAI KARIMUN', 'TG. BALAI KARIMUN');
INSERT INTO `kantor` VALUES ('020100', 'KANTOR PELAYANAN TANJUNG BALAI KARIMUN', 'TG. BALAI KARIMUN');
INSERT INTO `kantor` VALUES ('020101', 'PANGKALAN SARANA OPERASI TANJUNG BALAI KARIMUN', '');
INSERT INTO `kantor` VALUES ('020112', 'KANTOR BANTU TELUK PAKU', '');
INSERT INTO `kantor` VALUES ('020131', 'KANTOR BANTU MORO SULIT', '');
INSERT INTO `kantor` VALUES ('020132', 'KANTOR BANTU TANJUNG BATU', '');
INSERT INTO `kantor` VALUES ('020133', 'POS SAWANG', '');
INSERT INTO `kantor` VALUES ('020134', 'POS URUNG', '');
INSERT INTO `kantor` VALUES ('020136', 'POS TANJUNG BALAI KARIMUN', '');
INSERT INTO `kantor` VALUES ('020137', 'POS PASIR PANJANG', '');
INSERT INTO `kantor` VALUES ('020200', 'KANTOR PELAYANAN SAMBU BELAKANG PADANG', 'SAMBU BLK. PADANG');
INSERT INTO `kantor` VALUES ('020231', 'POS PULAU LAYANG', '');
INSERT INTO `kantor` VALUES ('020232', 'POS PULAU PELAMPUNG', '');
INSERT INTO `kantor` VALUES ('020233', 'POS SUMBU BELAKANG PADANG', '');
INSERT INTO `kantor` VALUES ('020300', 'KANTOR PELAYANAN SELAT PANJANG', 'SELAT PANJANG');
INSERT INTO `kantor` VALUES ('020331', 'POS TANJUNG SAMAK', '');
INSERT INTO `kantor` VALUES ('020332', 'POS TELUK BELITUNG', '');
INSERT INTO `kantor` VALUES ('020333', 'POS TERUS', '');
INSERT INTO `kantor` VALUES ('020336', 'POS TANJUNG KEDABU', '');
INSERT INTO `kantor` VALUES ('020337', 'POS PENYALAI', '');
INSERT INTO `kantor` VALUES ('020338', 'POS SELAT PANJANG', '');
INSERT INTO `kantor` VALUES ('020339', 'POS TANJUNG MOTONG', '');
INSERT INTO `kantor` VALUES ('020340', 'POS SERAPUNG', '');
INSERT INTO `kantor` VALUES ('020400', 'KANTOR PELAYANAN BATAM', 'BATAM');
INSERT INTO `kantor` VALUES ('020411', 'KANTOR BANTU PULAU REMPANG', '');
INSERT INTO `kantor` VALUES ('020412', 'KANTOR BANTU PULAU GALANG', '');
INSERT INTO `kantor` VALUES ('020431', 'POS PULAU BULUH', '');
INSERT INTO `kantor` VALUES ('020432', 'POS TANJUNG RIAU', '');
INSERT INTO `kantor` VALUES ('020433', 'POS TANJUNG UNCANG', '');
INSERT INTO `kantor` VALUES ('020434', 'POS TANJUNG PIAYU', '');
INSERT INTO `kantor` VALUES ('020435', 'POS BATU BESAR PANTAI', '');
INSERT INTO `kantor` VALUES ('020436', 'POS SEI JODOH', '');
INSERT INTO `kantor` VALUES ('020437', 'POS MOMOI', '');
INSERT INTO `kantor` VALUES ('020438', 'POS TANJUNG SAU', '');
INSERT INTO `kantor` VALUES ('020439', 'POS PULAU NGENANG', '');
INSERT INTO `kantor` VALUES ('020440', 'POS JANDA BERHIAS', '');
INSERT INTO `kantor` VALUES ('020441', 'POS TANJUNG KASEM', '');
INSERT INTO `kantor` VALUES ('020442', 'POS TELAGA PUNGGUR', '');
INSERT INTO `kantor` VALUES ('020443', 'POS NONGSA', '');
INSERT INTO `kantor` VALUES ('020444', 'POS SAGULUNG', '');
INSERT INTO `kantor` VALUES ('020445', 'POS BATU AMPAR  I', '');
INSERT INTO `kantor` VALUES ('020446', 'POS BATU AMPAR  II', '');
INSERT INTO `kantor` VALUES ('020447', 'POS BANDARA  I', '');
INSERT INTO `kantor` VALUES ('020448', 'POS BANDARA  II', '');
INSERT INTO `kantor` VALUES ('020449', 'POS MACOBAR', '');
INSERT INTO `kantor` VALUES ('020450', 'POS KABIL', '');
INSERT INTO `kantor` VALUES ('020453', 'POS SEKUPANG', '');
INSERT INTO `kantor` VALUES ('020455', 'POS TANJUNG REMPANG', '');
INSERT INTO `kantor` VALUES ('020456', 'POS TANJUNG SIPATUNG', '');
INSERT INTO `kantor` VALUES ('020457', 'POS TANJUNG KAREPA', '');
INSERT INTO `kantor` VALUES ('020458', 'POS POKOB BARAT', '');
INSERT INTO `kantor` VALUES ('020459', 'POS TANJUNG CAKANG', '');
INSERT INTO `kantor` VALUES ('020500', 'KANTOR PELAYANAN TANJUNG PINANG', 'TANJUNG PINANG');
INSERT INTO `kantor` VALUES ('020536', 'POS TANJUNG PINANG', '');
INSERT INTO `kantor` VALUES ('020537', 'POS BANDARA KIJANG', '');
INSERT INTO `kantor` VALUES ('020538', 'POS PELABUHAN KIJANG', '');
INSERT INTO `kantor` VALUES ('020600', 'KANTOR PELAYANAN TANJUNG UBAN', 'TANJUNG UBAN');
INSERT INTO `kantor` VALUES ('020632', 'POS TANJUNG UBAN', '');
INSERT INTO `kantor` VALUES ('020633', 'POS LAGOI', '');
INSERT INTO `kantor` VALUES ('020634', 'POS LOBAM', '');
INSERT INTO `kantor` VALUES ('020800', 'KANTOR PELAYANAN DABO SINGKEP', 'DABO SINGKEP');
INSERT INTO `kantor` VALUES ('020831', 'POS PENUBA', '');
INSERT INTO `kantor` VALUES ('020832', 'POS SUNGAI BULUH', '');
INSERT INTO `kantor` VALUES ('020833', 'POS SENAYANG', '');
INSERT INTO `kantor` VALUES ('020834', 'POS  DAIK', '');
INSERT INTO `kantor` VALUES ('020835', 'POS BANDARA DABO', '');
INSERT INTO `kantor` VALUES ('020836', 'POS DABO SINGKEP', '');
INSERT INTO `kantor` VALUES ('020900', 'KANTOR PELAYANAN DUMAI', 'DUMAI');
INSERT INTO `kantor` VALUES ('020911', 'KANTOR BANTU TANJUNG MEDANG', '');
INSERT INTO `kantor` VALUES ('020931', 'POS SELAT MORONG', '');
INSERT INTO `kantor` VALUES ('020932', 'POS TANAH PUTIH', '');
INSERT INTO `kantor` VALUES ('020933', 'POS DUMAI', '');
INSERT INTO `kantor` VALUES ('020934', 'POS TANJUNG MEDANG', '');
INSERT INTO `kantor` VALUES ('021000', 'KANTOR PELAYANAN BAGAN SIAPI-API', 'BAGAN SIAPI-API');
INSERT INTO `kantor` VALUES ('021011', 'KANTOR BANTU PENIPAHAN', '');
INSERT INTO `kantor` VALUES ('021032', 'POS SINABOI', '');
INSERT INTO `kantor` VALUES ('021033', 'POS LUMBA-LUMBA', '');
INSERT INTO `kantor` VALUES ('021034', 'POS PULAU HALANG', '');
INSERT INTO `kantor` VALUES ('021035', 'POS BAGAN SIAPI-API', '');
INSERT INTO `kantor` VALUES ('021100', 'KANTOR PELAYANAN BENGKALIS', 'BENGKALIS');
INSERT INTO `kantor` VALUES ('021111', 'KANTOR BANTU SUNGAI PAKNING', '');
INSERT INTO `kantor` VALUES ('021112', 'KANTOR BANTU BANTAN TENGAH', '');
INSERT INTO `kantor` VALUES ('021131', 'POS SIAK KECIL', '');
INSERT INTO `kantor` VALUES ('021132', 'POS SEI KEMBUNG', '');
INSERT INTO `kantor` VALUES ('021133', 'POS BANDUL', '');
INSERT INTO `kantor` VALUES ('021134', 'POS BUKIT BATU', '');
INSERT INTO `kantor` VALUES ('021136', 'POS PRAPAT TUNGGAL', '');
INSERT INTO `kantor` VALUES ('021137', 'POS BENGKALIS', '');
INSERT INTO `kantor` VALUES ('021200', 'KANTOR PELAYANAN PEKANBARU', 'PEKANBARU');
INSERT INTO `kantor` VALUES ('021211', 'KANTOR BANTU PERAWANG', '');
INSERT INTO `kantor` VALUES ('021212', 'KANTOR BANTU RUMBAI', '');
INSERT INTO `kantor` VALUES ('021213', 'KANTOR BANTU RANTAU PANJANG', '');
INSERT INTO `kantor` VALUES ('021231', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('021232', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('021233', 'POS BUATAN', '');
INSERT INTO `kantor` VALUES ('021300', 'KANTOR PELAYANAN SIAK SRI INDRAPURA', 'SIAK SRI INDRAPURA');
INSERT INTO `kantor` VALUES ('021331', 'POS SUNGAI APIT', '');
INSERT INTO `kantor` VALUES ('021333', 'POS TANJUNG BUTON', '');
INSERT INTO `kantor` VALUES ('021334', 'POS SIAK SRI INDRA PURA', '');
INSERT INTO `kantor` VALUES ('021500', 'KANTOR PELAYANAN KUALA ENOK', 'KUALA ENOK');
INSERT INTO `kantor` VALUES ('021511', 'KANTOR BANTU SUNGAI GUNTUNG', '');
INSERT INTO `kantor` VALUES ('021513', 'KANTOR BANTU RENGAT', '');
INSERT INTO `kantor` VALUES ('021531', 'POS PERIGI RAJA', '');
INSERT INTO `kantor` VALUES ('021532', 'POS CONCONG LUAR', '');
INSERT INTO `kantor` VALUES ('021533', 'POS SEI BULUH, INDRAGIRI', '');
INSERT INTO `kantor` VALUES ('021534', 'POS PULAU KIJANG', '');
INSERT INTO `kantor` VALUES ('021535', 'POS KUALA GADUNG', '');
INSERT INTO `kantor` VALUES ('021536', 'POS KUALA BLARAS', '');
INSERT INTO `kantor` VALUES ('021538', 'POS KUALA ENOK', '');
INSERT INTO `kantor` VALUES ('021543', 'POS KUALACINAKU', '');
INSERT INTO `kantor` VALUES ('021544', 'POS BANDARA JAPURA', '');
INSERT INTO `kantor` VALUES ('021545', 'POS PULAU CAWAN', '');
INSERT INTO `kantor` VALUES ('021546', 'POS KUALA BAYAS', '');
INSERT INTO `kantor` VALUES ('021547', 'POS PULAU BURUNG', '');
INSERT INTO `kantor` VALUES ('021700', 'KANTOR PELAYANAN RANAI', '');
INSERT INTO `kantor` VALUES ('021711', 'KANTOR BANTU TAREMPA', '');
INSERT INTO `kantor` VALUES ('021731', 'POS UDANG NATUNA', '');
INSERT INTO `kantor` VALUES ('021732', 'POS MATAK', '');
INSERT INTO `kantor` VALUES ('021733', 'POS SERASAN', '');
INSERT INTO `kantor` VALUES ('021734', 'POS MIDAI', '');
INSERT INTO `kantor` VALUES ('021735', 'POS TAMBELAN', '');
INSERT INTO `kantor` VALUES ('021736', 'POS JEMAJA', '');
INSERT INTO `kantor` VALUES ('021737', 'POS BUNGURAN BARAT', '');
INSERT INTO `kantor` VALUES ('021738', 'POS BUNGURAN TIMUR', '');
INSERT INTO `kantor` VALUES ('030000', 'KANTOR WILAYAH III PALEMBANG', 'PALEMBANG');
INSERT INTO `kantor` VALUES ('030100', 'KANTOR PELAYANAN PALEMBANG', 'PALEMBANG');
INSERT INTO `kantor` VALUES ('030131', 'POS TANJUNG BUYUT', '');
INSERT INTO `kantor` VALUES ('030134', 'POS MUARAENIM', '');
INSERT INTO `kantor` VALUES ('030135', 'POS SEKAYU', '');
INSERT INTO `kantor` VALUES ('030136', 'POS LUBUKLINGGAU', '');
INSERT INTO `kantor` VALUES ('030138', 'POS BATURAJA', '');
INSERT INTO `kantor` VALUES ('030139', 'POS PALEMBANG', '');
INSERT INTO `kantor` VALUES ('030140', 'POS PLAJU', '');
INSERT INTO `kantor` VALUES ('030141', 'POS SUNGAI GERONG', '');
INSERT INTO `kantor` VALUES ('030142', 'POS KERTAPATI', '');
INSERT INTO `kantor` VALUES ('030143', 'POS PUSRI', '');
INSERT INTO `kantor` VALUES ('030144', 'POS BANDARA S. BADARUDIN II', '');
INSERT INTO `kantor` VALUES ('030200', 'KANTOR PELAYANAN BENGKULU', 'PULAU BAAI');
INSERT INTO `kantor` VALUES ('030231', 'POS LINAU', '');
INSERT INTO `kantor` VALUES ('030232', 'POS MUKO-MUKO', '');
INSERT INTO `kantor` VALUES ('030233', 'POS PULAU ENGGANO', '');
INSERT INTO `kantor` VALUES ('030235', 'POS P.BAI', '');
INSERT INTO `kantor` VALUES ('030237', 'POS BANDARA PADANG KEMILANG', '');
INSERT INTO `kantor` VALUES ('030300', 'KANTOR PELAYANAN PANGKAL PINANG', 'PANGKAL BALAM');
INSERT INTO `kantor` VALUES ('030311', 'KANTOR BANTU BELINYU', '');
INSERT INTO `kantor` VALUES ('030312', 'KANTOR BANTU MUNTOK', '');
INSERT INTO `kantor` VALUES ('030332', 'POS KURAU', '');
INSERT INTO `kantor` VALUES ('030333', 'POS SUNGAI LIAT', '');
INSERT INTO `kantor` VALUES ('030334', 'POS LUBUK BESAR', '');
INSERT INTO `kantor` VALUES ('030335', 'POS SUNGAI SELAN', '');
INSERT INTO `kantor` VALUES ('030337', 'POS PANGKAL BALAM', '');
INSERT INTO `kantor` VALUES ('030338', 'POS TOBOALI', '');
INSERT INTO `kantor` VALUES ('030339', 'POS AIR ITAM', '');
INSERT INTO `kantor` VALUES ('030340', 'POS DEPATI AMIR BANGKA', '');
INSERT INTO `kantor` VALUES ('030341', 'POS JEBUS', '');
INSERT INTO `kantor` VALUES ('030342', 'POS KAYU ARANG', '');
INSERT INTO `kantor` VALUES ('030343', 'POS TEMPILANG', '');
INSERT INTO `kantor` VALUES ('030344', 'POS MUNTOK', '');
INSERT INTO `kantor` VALUES ('030500', 'KANTOR PELAYANAN TANJUNG PANDAN', 'TANJUNG PANDAN');
INSERT INTO `kantor` VALUES ('030511', 'KANTOR BANTU MANGGAR', '');
INSERT INTO `kantor` VALUES ('030535', 'POS TANJUNG PANDAN', '');
INSERT INTO `kantor` VALUES ('030537', 'POS KAMPIT', '');
INSERT INTO `kantor` VALUES ('030538', 'POS BANDARA H. AS. HANANDJOEDDIN BELITUNG', '');
INSERT INTO `kantor` VALUES ('030600', 'KANTOR PELAYANAN JAMBI', 'JAMBI');
INSERT INTO `kantor` VALUES ('030611', 'KANTOR BANTU KUALA TUNGKAL', '');
INSERT INTO `kantor` VALUES ('030612', 'KANTOR BANTU MUARA SABAK', '');
INSERT INTO `kantor` VALUES ('030631', 'POS PANGKAL DURI', '');
INSERT INTO `kantor` VALUES ('030632', 'POS SIMBUR NAIR', '');
INSERT INTO `kantor` VALUES ('030633', 'POS KUALA MENDAHARA', '');
INSERT INTO `kantor` VALUES ('030634', 'POS KAMPUNG LAUT', '');
INSERT INTO `kantor` VALUES ('030635', 'POS NIPAH PANJANG', '');
INSERT INTO `kantor` VALUES ('030636', 'POS JAMBI', '');
INSERT INTO `kantor` VALUES ('030637', 'POS KUALA TUNGKAL', '');
INSERT INTO `kantor` VALUES ('030700', 'KANTOR PELAYANAN BANDAR LAMPUNG', 'PANJANG');
INSERT INTO `kantor` VALUES ('030712', 'KANTOR BANTU KOTA AGUNG', '');
INSERT INTO `kantor` VALUES ('030735', 'POS KALIANDA', '');
INSERT INTO `kantor` VALUES ('030736', 'POS PUTIH MATARAM', '');
INSERT INTO `kantor` VALUES ('030739', 'POS WAY SEPUTIH', '');
INSERT INTO `kantor` VALUES ('030744', 'POS BAKAUHENI', '');
INSERT INTO `kantor` VALUES ('030745', 'POS DIPASENA', '');
INSERT INTO `kantor` VALUES ('030746', 'POS BRATASENA', '');
INSERT INTO `kantor` VALUES ('030747', 'POS BANDARA RADIN INTEN', '');
INSERT INTO `kantor` VALUES ('040000', 'KANTOR WILAYAH IV JAKARTA', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040100', 'KANTOR PELAYANAN TANJUNG PRIOK I', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040101', 'PANGKALAN SARANA OPERASI TANJUNG PRIOK', '');
INSERT INTO `kantor` VALUES ('040111', 'KANTOR BANTU SUNDA KELAPA', '');
INSERT INTO `kantor` VALUES ('040138', 'POS UTAMA E', '');
INSERT INTO `kantor` VALUES ('040142', 'POS UTPK II', '');
INSERT INTO `kantor` VALUES ('040143', 'POS SUNDA KELAPA', '');
INSERT INTO `kantor` VALUES ('040145', 'POS WIDURI', '');
INSERT INTO `kantor` VALUES ('040146', 'POS ARJUNA', '');
INSERT INTO `kantor` VALUES ('040147', 'POS CINTA NATOMAR', '');
INSERT INTO `kantor` VALUES ('040148', 'POS KBN', '');
INSERT INTO `kantor` VALUES ('040149', 'POS NUSANTARA I (002)', '');
INSERT INTO `kantor` VALUES ('040150', 'POS NUSANTARA II (005)', '');
INSERT INTO `kantor` VALUES ('040151', 'POS 009 X', '');
INSERT INTO `kantor` VALUES ('040152', 'POS ARSA', '');
INSERT INTO `kantor` VALUES ('040153', 'PELAB. PELNI BARAT (POS 104)', '');
INSERT INTO `kantor` VALUES ('040154', 'TERMINAL PENUMPANG', '');
INSERT INTO `kantor` VALUES ('040155', 'POS LAPANGAN 207X', '');
INSERT INTO `kantor` VALUES ('040156', 'POS BANTU KADE 301/302', '');
INSERT INTO `kantor` VALUES ('040157', 'POS KADE 209/210', '');
INSERT INTO `kantor` VALUES ('040158', 'BANDA', '');
INSERT INTO `kantor` VALUES ('040159', 'MARINA ANCOL', '');
INSERT INTO `kantor` VALUES ('040160', 'MUARA BARU', '');
INSERT INTO `kantor` VALUES ('040200', 'KANTOR PELAYANAN TANJUNG PRIOK II', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040241', 'POS UTPK I (EKSPOR)', '');
INSERT INTO `kantor` VALUES ('040242', 'POS UTPK I (IMPOR)', '');
INSERT INTO `kantor` VALUES ('040245', 'POS BEA CUKAI 305', '');
INSERT INTO `kantor` VALUES ('040246', 'POS BITUNG UTAMA A', '');
INSERT INTO `kantor` VALUES ('040247', 'POS BITUNG UTAMA B', '');
INSERT INTO `kantor` VALUES ('040300', 'KANTOR PELAYANAN TANJUNG PRIOK III', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040333', 'POS DWIPA I', '');
INSERT INTO `kantor` VALUES ('040334', 'POS DWIPA II', '');
INSERT INTO `kantor` VALUES ('040335', 'POS UTPK KOJA I', '');
INSERT INTO `kantor` VALUES ('040337', 'AGUNG RAYA', '');
INSERT INTO `kantor` VALUES ('040338', 'POS CILINCING', '');
INSERT INTO `kantor` VALUES ('040339', 'POS PERTAMINA', '');
INSERT INTO `kantor` VALUES ('040340', 'POS BOGASARI', '');
INSERT INTO `kantor` VALUES ('040341', 'POS MARUNDA', '');
INSERT INTO `kantor` VALUES ('040342', 'DHARMA KARYA PERDANA', '');
INSERT INTO `kantor` VALUES ('040343', 'KALIBARU', '');
INSERT INTO `kantor` VALUES ('040400', 'KANTOR PELAYANAN JAKARTA', 'JAKARTA');
INSERT INTO `kantor` VALUES ('040432', 'POS UDARA HALIM PERDANA KUSUMA', '');
INSERT INTO `kantor` VALUES ('040600', 'KANTOR PELAYANAN KANTOR POS PASAR BARU', 'JAKARTA');
INSERT INTO `kantor` VALUES ('050000', 'KANTOR WILAYAH JAWA BARAT', 'BANDUNG');
INSERT INTO `kantor` VALUES ('050100', 'KANTOR PELAYANAN SUKARNO-HATTA', 'CENGKARENG');
INSERT INTO `kantor` VALUES ('050132', 'POS TANGERANG', '');
INSERT INTO `kantor` VALUES ('050134', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('050135', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('050136', 'POS BANDARA III', '');
INSERT INTO `kantor` VALUES ('050300', 'KANTOR PELAYANAN BOGOR', 'BOGOR');
INSERT INTO `kantor` VALUES ('050331', 'POS SUKABUMI', 'SUKABUMI');
INSERT INTO `kantor` VALUES ('050336', 'POS PEL. RATU', '');
INSERT INTO `kantor` VALUES ('050337', 'POS DEPOK', '');
INSERT INTO `kantor` VALUES ('050338', 'POS CIANJUR', '');
INSERT INTO `kantor` VALUES ('050339', 'POS CIBINONG', '');
INSERT INTO `kantor` VALUES ('050400', 'KANTOR PELAYANAN MERAK', 'MERAK');
INSERT INTO `kantor` VALUES ('050437', 'POS MERAK', '');
INSERT INTO `kantor` VALUES ('050439', 'POS TANJUNG LENENG', '');
INSERT INTO `kantor` VALUES ('050440', 'POS CIGADING', '');
INSERT INTO `kantor` VALUES ('050441', 'POS CHANDRA ASRI', '');
INSERT INTO `kantor` VALUES ('050442', 'POS CIWANDAN', '');
INSERT INTO `kantor` VALUES ('050500', 'KANTOR PELAYANAN BANDUNG', 'BANDUNG');
INSERT INTO `kantor` VALUES ('050531', 'POS SUMEDANG', '');
INSERT INTO `kantor` VALUES ('050535', 'POS GEDE BAGE', '');
INSERT INTO `kantor` VALUES ('050536', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('050537', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('050600', 'KANTOR PELAYANAN TASIKMALAYA', 'TASIKMALAYA');
INSERT INTO `kantor` VALUES ('050631', 'POS GARUT', '');
INSERT INTO `kantor` VALUES ('050632', 'POS CIAMIS', '');
INSERT INTO `kantor` VALUES ('050633', 'POS PANGANDARAN', '');
INSERT INTO `kantor` VALUES ('050634', 'POS TASIKMALAYA', '');
INSERT INTO `kantor` VALUES ('050700', 'KANTOR PELAYANAN CIREBON', 'CIREBON');
INSERT INTO `kantor` VALUES ('050711', 'KANTOR BANTU BALONGAN', '');
INSERT INTO `kantor` VALUES ('050745', 'POS CIREBON', '');
INSERT INTO `kantor` VALUES ('050746', 'POS NASA SARI ACID', '');
INSERT INTO `kantor` VALUES ('050747', 'POS PALIMANAN', '');
INSERT INTO `kantor` VALUES ('050800', 'KPPBC TIPE A2 PURWAKARTA', 'PURWAKARTA');
INSERT INTO `kantor` VALUES ('050833', 'POS PURWAKARTA', '');
INSERT INTO `kantor` VALUES ('050834', 'POS SUBANG', '');
INSERT INTO `kantor` VALUES ('050836', 'POS CILAMAYA', '');
INSERT INTO `kantor` VALUES ('050900', 'KANTOR PELAYANAN BEKASI', 'BEKASI');
INSERT INTO `kantor` VALUES ('060000', 'KANTOR WILAYAH VI SEMARANG', 'SEMARANG');
INSERT INTO `kantor` VALUES ('060100', 'KANTOR PELAYANAN TANJUNG EMAS', 'SEMARANG');
INSERT INTO `kantor` VALUES ('060133', 'POS DEMAK', '');
INSERT INTO `kantor` VALUES ('060134', 'POS PURWODADI', '');
INSERT INTO `kantor` VALUES ('060135', 'POS SALATIGA', '');
INSERT INTO `kantor` VALUES ('060136', 'POS TANJUNG EMAS I', '');
INSERT INTO `kantor` VALUES ('060137', 'POS TANJUNG EMAS II', '');
INSERT INTO `kantor` VALUES ('060138', 'POS TANJUNG EMAS III', '');
INSERT INTO `kantor` VALUES ('060139', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('060140', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('060141', 'POS KALIWUNGU', '');
INSERT INTO `kantor` VALUES ('060143', 'POS LIK SEMARANG', '');
INSERT INTO `kantor` VALUES ('060200', 'KANTOR PELAYANAN PEKALONGAN', 'PEKALONGAN');
INSERT INTO `kantor` VALUES ('060235', 'POS BATANG', '');
INSERT INTO `kantor` VALUES ('060236', 'POS PEKALONGAN', '');
INSERT INTO `kantor` VALUES ('060300', 'KANTOR PELAYANAN KUDUS', 'KUDUS');
INSERT INTO `kantor` VALUES ('060311', 'KANTOR BANTU JUWONO', '');
INSERT INTO `kantor` VALUES ('060312', 'KANTOR BANTU JEPARA', '');
INSERT INTO `kantor` VALUES ('060332', 'POS BANYUTOWO', '');
INSERT INTO `kantor` VALUES ('060333', 'POS REMBANG', 'REMBANG');
INSERT INTO `kantor` VALUES ('060334', 'POS CEPU', 'CEPU');
INSERT INTO `kantor` VALUES ('060338', 'POS BLORA', '');
INSERT INTO `kantor` VALUES ('060339', 'POS KARIMUN JAWA', '');
INSERT INTO `kantor` VALUES ('060400', 'KANTOR PELAYANAN CILACAP', 'CILACAP');
INSERT INTO `kantor` VALUES ('060412', 'KANTOR BANTU PURWOKERTO', '');
INSERT INTO `kantor` VALUES ('060413', 'KANTOR BANTU KEBUMEN', '');
INSERT INTO `kantor` VALUES ('060431', 'POS BANDARA TUNGGUL WULUNG', '');
INSERT INTO `kantor` VALUES ('060433', 'POS MAJENANG', '');
INSERT INTO `kantor` VALUES ('060434', 'POS TANJUNG INTAN', '');
INSERT INTO `kantor` VALUES ('060435', 'POS PURBALINGGA', '');
INSERT INTO `kantor` VALUES ('060436', 'POS BANJARNEGARA', '');
INSERT INTO `kantor` VALUES ('060437', 'POS PURWOREJO', '');
INSERT INTO `kantor` VALUES ('060600', 'KANTOR PELAYANAN SURAKARTA', 'SURAKARTA');
INSERT INTO `kantor` VALUES ('060637', 'POS KEBAK KRAMAT', '');
INSERT INTO `kantor` VALUES ('060638', 'POS KLATEN', '');
INSERT INTO `kantor` VALUES ('060639', 'POS KARANGANYAR', '');
INSERT INTO `kantor` VALUES ('060640', 'POS SRAGEN', '');
INSERT INTO `kantor` VALUES ('060641', 'POS SUKOHARDJO', '');
INSERT INTO `kantor` VALUES ('060642', 'POS WONOGIRI', '');
INSERT INTO `kantor` VALUES ('060643', 'POS BOYOLALI', '');
INSERT INTO `kantor` VALUES ('060644', 'POS JEBRES', '');
INSERT INTO `kantor` VALUES ('060645', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('060646', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('060700', 'KANTOR PELAYANAN YOGYAKARTA', 'YOGYAKARTA');
INSERT INTO `kantor` VALUES ('060711', 'KANTOR BANTU MAGELANG', '');
INSERT INTO `kantor` VALUES ('060732', 'POS SLEMAN', '');
INSERT INTO `kantor` VALUES ('060733', 'POS WATES', '');
INSERT INTO `kantor` VALUES ('060734', 'POS BANTUL', '');
INSERT INTO `kantor` VALUES ('060735', 'POS WONOSARI', '');
INSERT INTO `kantor` VALUES ('060736', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('060737', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('060738', 'POS TEMANGGUNG', '');
INSERT INTO `kantor` VALUES ('060739', 'POS WONOSOBO', '');
INSERT INTO `kantor` VALUES ('061000', 'KANTOR PELAYANAN TEGAL', 'TEGAL');
INSERT INTO `kantor` VALUES ('061035', 'POS BREBES', 'BREBES');
INSERT INTO `kantor` VALUES ('061036', 'POS PEMALANG', '');
INSERT INTO `kantor` VALUES ('061037', 'POS SLAWI', '');
INSERT INTO `kantor` VALUES ('061038', 'POS COMAL', '');
INSERT INTO `kantor` VALUES ('061039', 'POS SURODADI', '');
INSERT INTO `kantor` VALUES ('061040', 'POS TEGAL', '');
INSERT INTO `kantor` VALUES ('061041', 'POS SUGIH WARAS', '');
INSERT INTO `kantor` VALUES ('070000', 'KANTOR WILAYAH VII SURABAYA', 'SURABAYA');
INSERT INTO `kantor` VALUES ('070100', 'KANTOR PELAYANAN TANJUNG PERAK', 'SURABAYA');
INSERT INTO `kantor` VALUES ('070134', 'POS ICT I', '');
INSERT INTO `kantor` VALUES ('070135', 'POS ICT II', '');
INSERT INTO `kantor` VALUES ('070136', 'POS NILAM I', '');
INSERT INTO `kantor` VALUES ('070137', 'POS NILAM II', '');
INSERT INTO `kantor` VALUES ('070138', 'POS BERLIAN I', '');
INSERT INTO `kantor` VALUES ('070139', 'POS BERLIAN II', '');
INSERT INTO `kantor` VALUES ('070140', 'POS MIRAH I', '');
INSERT INTO `kantor` VALUES ('070141', 'POS MIRAH II', '');
INSERT INTO `kantor` VALUES ('070142', 'POS JAMRUD I', '');
INSERT INTO `kantor` VALUES ('070143', 'POS JAMRUD II', '');
INSERT INTO `kantor` VALUES ('070144', 'POS ICT III', '');
INSERT INTO `kantor` VALUES ('070145', 'POS ICT IV', '');
INSERT INTO `kantor` VALUES ('070200', 'KANTOR PELAYANAN KALIANGET', 'KALIANGET');
INSERT INTO `kantor` VALUES ('070201', 'BALAI PENGUJIAN DAN IDENTIFIKASI BARANG SURABAYA', '');
INSERT INTO `kantor` VALUES ('070233', 'POS PASEAN', '');
INSERT INTO `kantor` VALUES ('070234', 'POS SAMPANG', 'SAMPANG');
INSERT INTO `kantor` VALUES ('070236', 'POS BONGKEK', '');
INSERT INTO `kantor` VALUES ('070239', 'POS SAPUDI', '');
INSERT INTO `kantor` VALUES ('070240', 'POS KANGEAN', '');
INSERT INTO `kantor` VALUES ('070243', 'POS BRANTA', '');
INSERT INTO `kantor` VALUES ('070244', 'POS BANDARA TRUNOJOYO', '');
INSERT INTO `kantor` VALUES ('070245', 'POS KALIANGET', '');
INSERT INTO `kantor` VALUES ('070246', 'POS TELAGA BIRU', '');
INSERT INTO `kantor` VALUES ('070247', 'POS PAGERUNGAN', '');
INSERT INTO `kantor` VALUES ('070300', 'KANTOR PELAYANAN GRESIK', 'GRESIK');
INSERT INTO `kantor` VALUES ('070331', 'POS TAMBAK', '');
INSERT INTO `kantor` VALUES ('070332', 'POS SEDAYULAWAS', '');
INSERT INTO `kantor` VALUES ('070334', 'POS LAMONGAN', '');
INSERT INTO `kantor` VALUES ('070335', 'POS GRESIK', '');
INSERT INTO `kantor` VALUES ('070336', 'POS POLENG', '');
INSERT INTO `kantor` VALUES ('070337', 'POS SANGKA PURA', '');
INSERT INTO `kantor` VALUES ('070338', 'POS NGIMBOH', '');
INSERT INTO `kantor` VALUES ('070400', 'KANTOR PELAYANAN BOJONEGORO', 'BOJONEGORO');
INSERT INTO `kantor` VALUES ('070431', 'POS GLONDONG', '');
INSERT INTO `kantor` VALUES ('070432', 'POS SOCOREJO-JENU', '');
INSERT INTO `kantor` VALUES ('070433', 'POS TUBAN', '');
INSERT INTO `kantor` VALUES ('070500', 'KANTOR PELAYANAN JUANDA', 'SURABAYA');
INSERT INTO `kantor` VALUES ('070531', 'POS MOJOKERTO', 'MOJOKERTO');
INSERT INTO `kantor` VALUES ('070533', 'POS SIDOARJO', 'SIDOARJO');
INSERT INTO `kantor` VALUES ('070539', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('070540', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('070541', 'POS BANDARA III', '');
INSERT INTO `kantor` VALUES ('070543', 'POS WATES', '');
INSERT INTO `kantor` VALUES ('070600', 'KANTOR PELAYANAN MALANG', 'MALANG');
INSERT INTO `kantor` VALUES ('070634', 'POS SENDANG BIRU', '');
INSERT INTO `kantor` VALUES ('070635', 'POS BANDARA ABDULRACHMAN SALEH', '');
INSERT INTO `kantor` VALUES ('070700', 'KANTOR PELAYANAN BLITAR', 'BLITAR');
INSERT INTO `kantor` VALUES ('070800', 'KANTOR PELAYANAN KEDIRI', 'KEDIRI');
INSERT INTO `kantor` VALUES ('070831', 'POS NGANJUK', 'NGANJUK');
INSERT INTO `kantor` VALUES ('070833', 'POS KERTOSONO', 'KERTOSONO');
INSERT INTO `kantor` VALUES ('070834', 'POS CUKIR', '');
INSERT INTO `kantor` VALUES ('070835', 'POS JOMBANG', 'JOMBANG');
INSERT INTO `kantor` VALUES ('070900', 'KANTOR PELAYANAN TULUNGAGUNG', 'TULUNGAGUNG');
INSERT INTO `kantor` VALUES ('070932', 'POS POPOH', '');
INSERT INTO `kantor` VALUES ('071000', 'KANTOR PELAYANAN MADIUN', 'MADIUN');
INSERT INTO `kantor` VALUES ('071031', 'POS MAGETAN', 'MAGETAN');
INSERT INTO `kantor` VALUES ('071032', 'POS NGAWI', 'NGAWI');
INSERT INTO `kantor` VALUES ('071033', 'POS PONOROGO', 'PONOROGO');
INSERT INTO `kantor` VALUES ('071034', 'POS CARUBAN', 'CARUBAN');
INSERT INTO `kantor` VALUES ('071035', 'POS PACITAN', 'PACITAN');
INSERT INTO `kantor` VALUES ('071100', 'KANTOR PELAYANAN PANARUKAN', 'PANARUKAN');
INSERT INTO `kantor` VALUES ('071112', 'KANTOR BANTU TANJUNG WANGI', '');
INSERT INTO `kantor` VALUES ('071132', 'POS JEMBER', 'JEMBER');
INSERT INTO `kantor` VALUES ('071134', 'POS SITUBONDO', 'SITUBONDO');
INSERT INTO `kantor` VALUES ('071135', 'POS BESUKI', '');
INSERT INTO `kantor` VALUES ('071136', 'POS KALBUT', '');
INSERT INTO `kantor` VALUES ('071137', 'POS JANGKAR', '');
INSERT INTO `kantor` VALUES ('071138', 'POS BONDOWOSO', '');
INSERT INTO `kantor` VALUES ('071139', 'POS PUGER', '');
INSERT INTO `kantor` VALUES ('071140', 'POS PANARUKAN', '');
INSERT INTO `kantor` VALUES ('071141', 'POS RAMBI PUJI', '');
INSERT INTO `kantor` VALUES ('071142', 'POS BANYUWANGI', '');
INSERT INTO `kantor` VALUES ('071143', 'POS TANJUNG WANGI', '');
INSERT INTO `kantor` VALUES ('071144', 'POS MUNCAR', '');
INSERT INTO `kantor` VALUES ('071145', 'POS GRAJAGAN', '');
INSERT INTO `kantor` VALUES ('071146', 'POS KETAPANG', '');
INSERT INTO `kantor` VALUES ('071200', 'KANTOR PELAYANAN PROBOLINGGO', 'PROBOLINGGO');
INSERT INTO `kantor` VALUES ('071232', 'POS PEJARAKAN', '');
INSERT INTO `kantor` VALUES ('071235', 'POS LUMAJANG', '');
INSERT INTO `kantor` VALUES ('071236', 'POS PAITON', '');
INSERT INTO `kantor` VALUES ('071237', 'POS PROBOLINGGO', '');
INSERT INTO `kantor` VALUES ('071300', 'KANTOR PELAYANAN PASURUAN', 'PASURUAN');
INSERT INTO `kantor` VALUES ('071333', 'POS PASURUAN', '');
INSERT INTO `kantor` VALUES ('071334', 'POS LEKOK', '');
INSERT INTO `kantor` VALUES ('080000', 'KANTOR WILAYAH VIII DENPASAR', 'DENPASAR');
INSERT INTO `kantor` VALUES ('080100', 'KANTOR PELAYANAN NGURAH RAI', 'DENPASAR');
INSERT INTO `kantor` VALUES ('080131', 'POS BANDARA I', '');
INSERT INTO `kantor` VALUES ('080132', 'POS BANDARA II', '');
INSERT INTO `kantor` VALUES ('080133', 'POS BANDARA III', '');
INSERT INTO `kantor` VALUES ('080134', 'POS KARANGASEM', '');
INSERT INTO `kantor` VALUES ('080135', 'POS BANGLI', '');
INSERT INTO `kantor` VALUES ('080136', 'POS KLUNGKUNG', '');
INSERT INTO `kantor` VALUES ('080137', 'POS GIANYAR', '');
INSERT INTO `kantor` VALUES ('080138', 'POS TABANAN', '');
INSERT INTO `kantor` VALUES ('080139', 'POS PINTU UTAMA PADANG BAI', '');
INSERT INTO `kantor` VALUES ('080140', 'POS DARMAGA PADANG BAI', '');
INSERT INTO `kantor` VALUES ('080141', 'POS PERTAMINA AMUK', '');
INSERT INTO `kantor` VALUES ('080300', 'KANTOR PELAYANAN MATARAM', 'LEMBAR');
INSERT INTO `kantor` VALUES ('080331', 'POS LABUHAN HAJI', '');
INSERT INTO `kantor` VALUES ('080332', 'POS LABUHAN LOMBOK', '');
INSERT INTO `kantor` VALUES ('080333', 'POS BANDARA SELAPARANG', '');
INSERT INTO `kantor` VALUES ('080334', 'POS LEMBAR', '');
INSERT INTO `kantor` VALUES ('080335', 'POS PEMENANG', '');
INSERT INTO `kantor` VALUES ('080400', 'KANTOR PELAYANAN BIMA', 'BIMA');
INSERT INTO `kantor` VALUES ('080411', 'KANTOR BANTU BADAS SUMBAWA', '');
INSERT INTO `kantor` VALUES ('080412', 'KANTOR BANTU BENETE', '');
INSERT INTO `kantor` VALUES ('080431', 'POS SAPE', '');
INSERT INTO `kantor` VALUES ('080432', 'POS LABUHAN ALAS', '');
INSERT INTO `kantor` VALUES ('080433', 'POS BANDARA BRANG BIJI', '');
INSERT INTO `kantor` VALUES ('080434', 'POS BANDARA PALIBELO', '');
INSERT INTO `kantor` VALUES ('080435', 'POS BIMA', '');
INSERT INTO `kantor` VALUES ('080437', 'POS PEL. FERRY POTOTANO', '');
INSERT INTO `kantor` VALUES ('080439', 'POS KEMPU', '');
INSERT INTO `kantor` VALUES ('080500', 'KANTOR PELAYANAN KUPANG', 'TENAU KUPANG');
INSERT INTO `kantor` VALUES ('080513', 'KANTOR BANTU WAINGAPU', '');
INSERT INTO `kantor` VALUES ('080536', 'POS BAA/P. ROTE', '');
INSERT INTO `kantor` VALUES ('080537', 'POS BANDARA MAUHAI', '');
INSERT INTO `kantor` VALUES ('080538', 'POS BANDARA TAMBOLAKA', '');
INSERT INTO `kantor` VALUES ('080539', 'POS RUA', '');
INSERT INTO `kantor` VALUES ('080540', 'POS TENAU', '');
INSERT INTO `kantor` VALUES ('080700', 'KANTOR PELAYANAN MAUMERE', 'MAUMERE');
INSERT INTO `kantor` VALUES ('080711', 'KANTOR BANTU LARANTUKA', '');
INSERT INTO `kantor` VALUES ('080712', 'KANTOR BANTU KEDINDI REO', '');
INSERT INTO `kantor` VALUES ('080713', 'KANTOR BANTU ENDE (PL dan POS LALU BEA)', '');
INSERT INTO `kantor` VALUES ('080731', 'POS LABUHAN BAJO (PU)', '');
INSERT INTO `kantor` VALUES ('080733', 'POS BANDARA SATARTACIK', '');
INSERT INTO `kantor` VALUES ('080734', 'POS BANDARA GEWAYANGTANA', '');
INSERT INTO `kantor` VALUES ('080735', 'POS BANDARA WAJOTI', '');
INSERT INTO `kantor` VALUES ('080737', 'POS BANDARA PADHA MALEDA', '');
INSERT INTO `kantor` VALUES ('080738', 'POS MAUMERE', '');
INSERT INTO `kantor` VALUES ('080739', 'POS ENDE IPI', '');
INSERT INTO `kantor` VALUES ('080740', 'POS BANDARA H. AROEBOESMAN', '');
INSERT INTO `kantor` VALUES ('080741', 'POS LABUHAN BAJO dan KOMODO (PL)', '');
INSERT INTO `kantor` VALUES ('081200', 'KANTOR PELAYANAN BENOA', '');
INSERT INTO `kantor` VALUES ('081211', 'KANTOR BANTU CELUKAN BAWANG', '');
INSERT INTO `kantor` VALUES ('081231', 'POS NUSA PANIDA', '');
INSERT INTO `kantor` VALUES ('081232', 'POS DARMAGA CARGO I', '');
INSERT INTO `kantor` VALUES ('081233', 'POS DARMAGA CARGO II', '');
INSERT INTO `kantor` VALUES ('081234', 'POS DARMAGA KAPAL IKAN', '');
INSERT INTO `kantor` VALUES ('081235', 'POS DARMAGA KAPAL TURIS', '');
INSERT INTO `kantor` VALUES ('081237', 'POS BULELENG', '');
INSERT INTO `kantor` VALUES ('081238', 'POS NEGARA', '');
INSERT INTO `kantor` VALUES ('081239', 'POS GILIMANUK', '');
INSERT INTO `kantor` VALUES ('081300', 'KANTOR PELAYANAN ATAPUPU', '');
INSERT INTO `kantor` VALUES ('081311', 'KANTOR BANTU MOTA AIN (LBD)', '');
INSERT INTO `kantor` VALUES ('081312', 'KANTOR BANTU MOTA MAUK (LBD)', '');
INSERT INTO `kantor` VALUES ('081313', 'KANTOR BANTU NAPAN (LBD)', '');
INSERT INTO `kantor` VALUES ('081314', 'KANTOR BANTU KALABAHI (LBD)', '');
INSERT INTO `kantor` VALUES ('081331', 'POS BANDARA HALIWEN', '');
INSERT INTO `kantor` VALUES ('081332', 'POS LINTAS BATAS DAERAH WINI', '');
INSERT INTO `kantor` VALUES ('081333', 'POS BANDARA MALI', '');
INSERT INTO `kantor` VALUES ('090000', 'KANTOR WILAYAH IX PONTIANAK', 'PONTIANAK');
INSERT INTO `kantor` VALUES ('090100', 'KANTOR PELAYANAN PONTIANAK', 'PONTIANAK');
INSERT INTO `kantor` VALUES ('090111', 'KANTOR BANTU BANDARA SUPADIO', '');
INSERT INTO `kantor` VALUES ('090131', 'POS JUNGKAT', '');
INSERT INTO `kantor` VALUES ('090137', 'POS PONTIANAK', '');
INSERT INTO `kantor` VALUES ('090138', 'POS SUNGAI KAKAP', '');
INSERT INTO `kantor` VALUES ('090200', 'KANTOR PELAYANAN ENTIKONG', 'ENTIKONG');
INSERT INTO `kantor` VALUES ('090211', 'KANTOR BANTU NANGAU BADAU', '');
INSERT INTO `kantor` VALUES ('090231', 'POS MARAKAI PANJANG', '');
INSERT INTO `kantor` VALUES ('090234', 'POS SIMPANG TIGA LUBUK SABUK', '');
INSERT INTO `kantor` VALUES ('090235', 'POS SEGUMON', '');
INSERT INTO `kantor` VALUES ('090236', 'POS BANTAN', '');
INSERT INTO `kantor` VALUES ('090238', 'POS NANGA BAYAN', '');
INSERT INTO `kantor` VALUES ('090300', 'KANTOR PELAYANAN TELUK AIR', 'TELUK AIR');
INSERT INTO `kantor` VALUES ('090331', 'POS KUBU', '');
INSERT INTO `kantor` VALUES ('090332', 'POS TELUK AIR', '');
INSERT INTO `kantor` VALUES ('090333', 'POS PADANG TIKAR', '');
INSERT INTO `kantor` VALUES ('090400', 'KANTOR PELAYANAN KETAPANG', 'KETAPANG');
INSERT INTO `kantor` VALUES ('090411', 'KANTOR BANTU KENDAWANGAN', '');
INSERT INTO `kantor` VALUES ('090431', 'POS TELUK BATANG', '');
INSERT INTO `kantor` VALUES ('090433', 'POS TELUK MELANO', '');
INSERT INTO `kantor` VALUES ('090434', 'POS KETAPANG', '');
INSERT INTO `kantor` VALUES ('090435', 'POS BANDARA RAHADI USMAN', '');
INSERT INTO `kantor` VALUES ('090500', 'KANTOR PELAYANAN SINTETE', 'SINTETE');
INSERT INTO `kantor` VALUES ('090511', 'KANTOR BANTU JAGOI BABANG', '');
INSERT INTO `kantor` VALUES ('090512', 'KANTOR BANTU SAMBAS', '');
INSERT INTO `kantor` VALUES ('090531', 'POS SINGKAWANG', 'SINGKAWANG');
INSERT INTO `kantor` VALUES ('090532', 'POS TELUK SUAK', '');
INSERT INTO `kantor` VALUES ('090534', 'POS SIDDING', '');
INSERT INTO `kantor` VALUES ('090537', 'POS PEMANGKAT', '');
INSERT INTO `kantor` VALUES ('090538', 'POS PENJAJAB', '');
INSERT INTO `kantor` VALUES ('090539', 'POS ARUK', '');
INSERT INTO `kantor` VALUES ('090540', 'POS SAJINGAN', '');
INSERT INTO `kantor` VALUES ('090541', 'POS SAPARAN', '');
INSERT INTO `kantor` VALUES ('090542', 'POS TEMAJUK', '');
INSERT INTO `kantor` VALUES ('090543', 'POS TEBAS', '');
INSERT INTO `kantor` VALUES ('090700', 'KANTOR PELAYANAN SAMPIT', 'SAMPIT');
INSERT INTO `kantor` VALUES ('090731', 'POS SAMUDA', '');
INSERT INTO `kantor` VALUES ('090732', 'POS KUALA PEMBUANG', '');
INSERT INTO `kantor` VALUES ('090733', 'POS PEGATAN MENDAWAI', '');
INSERT INTO `kantor` VALUES ('090734', 'POS BANDARA H.ASAN', '');
INSERT INTO `kantor` VALUES ('090735', 'POS SAMPIT', '');
INSERT INTO `kantor` VALUES ('090800', 'KANTOR PELAYANAN PANGKALAN BUN', 'PANGKALAN BUN');
INSERT INTO `kantor` VALUES ('090811', 'KANTOR BANTU KUMAI', '');
INSERT INTO `kantor` VALUES ('090831', 'POS MUARA S. ARUT', '');
INSERT INTO `kantor` VALUES ('090833', 'POS KUALA JELAI', '');
INSERT INTO `kantor` VALUES ('090834', 'POS BANDARA ISKANDAR', '');
INSERT INTO `kantor` VALUES ('090835', 'POS PANGKALAN BUN', '');
INSERT INTO `kantor` VALUES ('090900', 'KANTOR PELAYANAN PULANG PISAU', 'PULANG PISAU');
INSERT INTO `kantor` VALUES ('090911', 'KANTOR BANTU KUALA KAPUAS', '');
INSERT INTO `kantor` VALUES ('090931', 'POS BAHAUR', '');
INSERT INTO `kantor` VALUES ('090932', 'POS BANDARA CILIKRIWUT', '');
INSERT INTO `kantor` VALUES ('090933', 'POS BANDARA BERINGIN', '');
INSERT INTO `kantor` VALUES ('090934', 'POS PULANG PISAU', '');
INSERT INTO `kantor` VALUES ('090935', 'POS MANGKAHOI', '');
INSERT INTO `kantor` VALUES ('100000', 'KANTOR WILAYAH X BALIKPAPAN', 'BALIKPAPAN');
INSERT INTO `kantor` VALUES ('100100', 'KANTOR PELAYANAN BANJARMASIN', 'BANJARMASIN');
INSERT INTO `kantor` VALUES ('100131', 'POS BANDARA SAMSUDIN NOOR', 'BANJARMASIN');
INSERT INTO `kantor` VALUES ('100134', 'POS BANDARA WARUKIN', '');
INSERT INTO `kantor` VALUES ('100135', 'POS ASAM-ASAM / KINTAP', '');
INSERT INTO `kantor` VALUES ('100136', 'POS BANJARMASIN', '');
INSERT INTO `kantor` VALUES ('100137', 'POS JORONG', '');
INSERT INTO `kantor` VALUES ('100200', 'KANTOR PELAYANAN KOTABARU', 'KOTABARU');
INSERT INTO `kantor` VALUES ('100211', 'KANTOR BANTU BATU LICIN', '');
INSERT INTO `kantor` VALUES ('100231', 'POS PEGATAN', '');
INSERT INTO `kantor` VALUES ('100233', 'POS TG.PEMANCINGAN', '');
INSERT INTO `kantor` VALUES ('100234', 'POS MEKAR PUTIH', '');
INSERT INTO `kantor` VALUES ('100235', 'POS BANDARA STAGEN', '');
INSERT INTO `kantor` VALUES ('100236', 'POS KOTA BARU', '');
INSERT INTO `kantor` VALUES ('100237', 'POS TARJUN', '');
INSERT INTO `kantor` VALUES ('100239', 'POS PELABUHAN STAGEN', '');
INSERT INTO `kantor` VALUES ('100240', 'POS SATUI', '');
INSERT INTO `kantor` VALUES ('100300', 'KANTOR PELAYANAN BALIKPAPAN', 'BALIKPAPAN');
INSERT INTO `kantor` VALUES ('100312', 'KANTOR BANTU TANAH GROGOT', '');
INSERT INTO `kantor` VALUES ('100313', 'KANTOR BANTU TANJUNG SANTAN', '');
INSERT INTO `kantor` VALUES ('100331', 'POS KAMPUNG BARU', '');
INSERT INTO `kantor` VALUES ('100332', 'POS PENAJAM', '');
INSERT INTO `kantor` VALUES ('100335', 'POS BALIKPAPAN', '');
INSERT INTO `kantor` VALUES ('100336', 'POS TANJUNG BATU', '');
INSERT INTO `kantor` VALUES ('100337', 'POS KARIANGGAU', '');
INSERT INTO `kantor` VALUES ('100500', 'KANTOR PELAYANAN SAMARINDA', 'SAMARINDA');
INSERT INTO `kantor` VALUES ('100512', 'KANTOR BANTU SENIPAH', '');
INSERT INTO `kantor` VALUES ('100531', 'POS HANDIL DUA', '');
INSERT INTO `kantor` VALUES ('100532', 'POS MUARA SANGA-SANGA', '');
INSERT INTO `kantor` VALUES ('100534', 'POS MUARA BADAK', '');
INSERT INTO `kantor` VALUES ('100535', 'POS TENGGARONG', '');
INSERT INTO `kantor` VALUES ('100536', 'POS BANDARA TEMINDUNG', '');
INSERT INTO `kantor` VALUES ('100538', 'POS SAMARINDA', '');
INSERT INTO `kantor` VALUES ('100600', 'KANTOR PELAYANAN BONTANG', 'BONTANG');
INSERT INTO `kantor` VALUES ('100631', 'POS LHOK TUAN', '');
INSERT INTO `kantor` VALUES ('100632', 'POS BONTANG', '');
INSERT INTO `kantor` VALUES ('100633', 'POS NYERANGAT SEKAMBING', '');
INSERT INTO `kantor` VALUES ('100800', 'KANTOR PELAYANAN TARAKAN', 'TARAKAN');
INSERT INTO `kantor` VALUES ('100811', 'KANTOR BANTU BUNYU', '');
INSERT INTO `kantor` VALUES ('100812', 'KANTOR BANTU REDEP', '');
INSERT INTO `kantor` VALUES ('100832', 'POS TANJUNG SELOR', '');
INSERT INTO `kantor` VALUES ('100833', 'POS BANDARA TARAKAN', '');
INSERT INTO `kantor` VALUES ('100834', 'POS BANDARA TANJUNG REDEP', '');
INSERT INTO `kantor` VALUES ('100835', 'POS TARAKAN', '');
INSERT INTO `kantor` VALUES ('100836', 'POS BUNYU', '');
INSERT INTO `kantor` VALUES ('100837', 'POS LONG NAWANG', '');
INSERT INTO `kantor` VALUES ('100838', 'POS LONG BAWAN', '');
INSERT INTO `kantor` VALUES ('100839', 'POS MALINO', '');
INSERT INTO `kantor` VALUES ('100900', 'KANTOR PELAYANAN NUNUKAN', 'NUNUKAN');
INSERT INTO `kantor` VALUES ('100912', 'KANTOR BANTU SUNGAI NYAMUK', '');
INSERT INTO `kantor` VALUES ('100932', 'POS LEMIJUNG', '');
INSERT INTO `kantor` VALUES ('100933', 'POS NUNUKAN', '');
INSERT INTO `kantor` VALUES ('100934', 'POS SUNGAI PANCANG', '');
INSERT INTO `kantor` VALUES ('100935', 'POS AJI KUNING', '');
INSERT INTO `kantor` VALUES ('101000', 'KANTOR PELAYANAN TANJUNG BARA /SANGATA', '');
INSERT INTO `kantor` VALUES ('101031', 'POS SANGKURILANG', '');
INSERT INTO `kantor` VALUES ('101032', 'POS TANJUNG BARA SANGATA', '');
INSERT INTO `kantor` VALUES ('110000', 'KANTOR WILAYAH XI MAKASAR', 'MAKASSAR');
INSERT INTO `kantor` VALUES ('110100', 'KANTOR PELAYANAN MAKASAR', 'MAKASSAR');
INSERT INTO `kantor` VALUES ('110101', 'PANGKALAN SARANA OPERASI PANTOLOAN', '');
INSERT INTO `kantor` VALUES ('110111', 'KANTOR BANTU BENTENG/P.SELAYAR', '');
INSERT INTO `kantor` VALUES ('110113', 'KANTOR BANTU BIRINGKASI', '');
INSERT INTO `kantor` VALUES ('110131', 'POS BANTAENG', '');
INSERT INTO `kantor` VALUES ('110132', 'POS BULU KUMBA', '');
INSERT INTO `kantor` VALUES ('110138', 'POS PAOTERE', '');
INSERT INTO `kantor` VALUES ('110139', 'POS SUKARNO I', '');
INSERT INTO `kantor` VALUES ('110140', 'POS SUKARNO II', '');
INSERT INTO `kantor` VALUES ('110141', 'POS HATTA I', '');
INSERT INTO `kantor` VALUES ('110142', 'POS HATTAII', '');
INSERT INTO `kantor` VALUES ('110300', 'KANTOR PELAYANAN PARE-PARE', 'PARE-PARE');
INSERT INTO `kantor` VALUES ('110332', 'POS BARRU', '');
INSERT INTO `kantor` VALUES ('110339', 'POS PARE-PARE', '');
INSERT INTO `kantor` VALUES ('110340', 'POS WATANSOPPENG', '');
INSERT INTO `kantor` VALUES ('110342', 'POS MAMUJU', '');
INSERT INTO `kantor` VALUES ('110400', 'KANTOR PELAYANAN MALILI', 'BALANTANG');
INSERT INTO `kantor` VALUES ('110411', 'KANTOR BANTU PALOPO', 'PALOPO');
INSERT INTO `kantor` VALUES ('110433', 'POS SIWA', '');
INSERT INTO `kantor` VALUES ('110436', 'POS BALANTANG', '');
INSERT INTO `kantor` VALUES ('110437', 'POS BANDARA SOROAKO', '');
INSERT INTO `kantor` VALUES ('110500', 'KANTOR PELAYANAN BAJO\'E', 'BAJO\'E');
INSERT INTO `kantor` VALUES ('110533', 'POS SINJAI', '');
INSERT INTO `kantor` VALUES ('110535', 'POS ULOE', '');
INSERT INTO `kantor` VALUES ('110537', 'POS BAJO\'E', '');
INSERT INTO `kantor` VALUES ('110539', 'POS ARESO\'E', '');
INSERT INTO `kantor` VALUES ('110540', 'POS PATTIRO', '');
INSERT INTO `kantor` VALUES ('110600', 'KANTOR PELAYANAN KENDARI', 'KENDARI');
INSERT INTO `kantor` VALUES ('110611', 'KANTOR BANTU BAU-BAU', '');
INSERT INTO `kantor` VALUES ('110631', 'POS WAWONI', '');
INSERT INTO `kantor` VALUES ('110632', 'POS LASOLO', '');
INSERT INTO `kantor` VALUES ('110634', 'POS WANCI', '');
INSERT INTO `kantor` VALUES ('110635', 'POS RAHA', '');
INSERT INTO `kantor` VALUES ('110636', 'POS SIKELI', '');
INSERT INTO `kantor` VALUES ('110637', 'POS BANABUNI', '');
INSERT INTO `kantor` VALUES ('110638', 'POS BANDARA WOLTER MONGINSIDI', '');
INSERT INTO `kantor` VALUES ('110639', 'POS KENDARI', '');
INSERT INTO `kantor` VALUES ('110640', 'POS EREKE', '');
INSERT INTO `kantor` VALUES ('110700', 'KANTOR PELAYANAN POMALAA', 'POMALAA');
INSERT INTO `kantor` VALUES ('110731', 'POS KOLAKA', '');
INSERT INTO `kantor` VALUES ('110734', 'POS POMALAA', '');
INSERT INTO `kantor` VALUES ('110735', 'POS BOEPINANG', '');
INSERT INTO `kantor` VALUES ('110800', 'KANTOR PELAYANAN PANTOLOAN', 'PANTOLOAN');
INSERT INTO `kantor` VALUES ('110811', 'KANTOR BANTU TOLI-TOLI', 'TOLI-TOLI');
INSERT INTO `kantor` VALUES ('110832', 'POS WANI', '');
INSERT INTO `kantor` VALUES ('110833', 'POS SABANG', '');
INSERT INTO `kantor` VALUES ('110834', 'POS PARIGI', '');
INSERT INTO `kantor` VALUES ('110835', 'POS BANDARA MUTIARA', '');
INSERT INTO `kantor` VALUES ('110836', 'POS LOLI', '');
INSERT INTO `kantor` VALUES ('110837', 'POS OGOTUA', '');
INSERT INTO `kantor` VALUES ('110838', 'POS LEOK', '');
INSERT INTO `kantor` VALUES ('110839', 'POS PALELEH', '');
INSERT INTO `kantor` VALUES ('110840', 'POS PANTOLOAN', '');
INSERT INTO `kantor` VALUES ('110841', 'POS PASANG KAYU', '');
INSERT INTO `kantor` VALUES ('110842', 'POS MOUTONG', '');
INSERT INTO `kantor` VALUES ('110843', 'POS DONGGALA', '');
INSERT INTO `kantor` VALUES ('110900', 'KANTOR PELAYANAN POSO', 'POSO');
INSERT INTO `kantor` VALUES ('110931', 'POS AMPANA', '');
INSERT INTO `kantor` VALUES ('110932', 'POS KOLONEDALE', '');
INSERT INTO `kantor` VALUES ('110933', 'POS BANDARA KASIGUNCU', '');
INSERT INTO `kantor` VALUES ('110934', 'POS MOAHINO/BOHUMBELU', '');
INSERT INTO `kantor` VALUES ('110935', 'POS POSO', '');
INSERT INTO `kantor` VALUES ('110936', 'POS WAKAI', '');
INSERT INTO `kantor` VALUES ('111000', 'KANTOR PELAYANAN LUWUK', 'LUWUK');
INSERT INTO `kantor` VALUES ('111031', 'POS PAGIMANA', '');
INSERT INTO `kantor` VALUES ('111032', 'POS BANGGAI', '');
INSERT INTO `kantor` VALUES ('111033', 'POS TOILI', '');
INSERT INTO `kantor` VALUES ('111034', 'POS BUNTA', '');
INSERT INTO `kantor` VALUES ('111035', 'POS BANDARA BUBUNG', '');
INSERT INTO `kantor` VALUES ('111036', 'POS LUWUK', '');
INSERT INTO `kantor` VALUES ('111100', 'KANTOR PELAYANAN BITUNG', 'BITUNG');
INSERT INTO `kantor` VALUES ('111131', 'POS KEMA', '');
INSERT INTO `kantor` VALUES ('111132', 'POS BELANG', '');
INSERT INTO `kantor` VALUES ('111133', 'POS KOTABUNAN', '');
INSERT INTO `kantor` VALUES ('111134', 'POS LIKUPANG', '');
INSERT INTO `kantor` VALUES ('111137', 'POS BITUNG', '');
INSERT INTO `kantor` VALUES ('111139', 'POS RATATOTOK', '');
INSERT INTO `kantor` VALUES ('111200', 'KANTOR PELAYANAN MANADO', 'MANADO');
INSERT INTO `kantor` VALUES ('111211', 'KANTOR BANTU LABUHAN UKI', '');
INSERT INTO `kantor` VALUES ('111212', 'KANTOR BANTU TAHUNA', '');
INSERT INTO `kantor` VALUES ('111213', 'KANTOR BANTU HULU SIAU', '');
INSERT INTO `kantor` VALUES ('111214', 'KANTOR BANTU MARORE', '');
INSERT INTO `kantor` VALUES ('111215', 'KANTOR BANTU MIANGAS', '');
INSERT INTO `kantor` VALUES ('111216', 'KANTOR BANTU AMURANG', '');
INSERT INTO `kantor` VALUES ('111217', 'KANTOR BANTU LIRUNG', '');
INSERT INTO `kantor` VALUES ('111233', 'POS INOBONTO', '');
INSERT INTO `kantor` VALUES ('111239', 'POS TAGULANDANG', '');
INSERT INTO `kantor` VALUES ('111240', 'POS MANADO', '');
INSERT INTO `kantor` VALUES ('111241', 'POS BANDARA SAM RATULANGI', '');
INSERT INTO `kantor` VALUES ('111242', 'POS MALIBAGU', '');
INSERT INTO `kantor` VALUES ('111300', 'KANTOR PELAYANAN GORONTALO', 'GORONTALO');
INSERT INTO `kantor` VALUES ('111331', 'POS KUANDANG', '');
INSERT INTO `kantor` VALUES ('111333', 'POS PAGUAT', '');
INSERT INTO `kantor` VALUES ('111334', 'POS PAPAYATO', '');
INSERT INTO `kantor` VALUES ('111335', 'POS BANDARA JALALUDIN', '');
INSERT INTO `kantor` VALUES ('111336', 'POS GORONTALO', '');
INSERT INTO `kantor` VALUES ('120000', 'KANTOR WILAYAH XII AMBON', 'AMBON');
INSERT INTO `kantor` VALUES ('120100', 'KANTOR PELAYANAN AMBON', 'AMBON');
INSERT INTO `kantor` VALUES ('120111', 'KANTOR BANTU WAISARISA', '');
INSERT INTO `kantor` VALUES ('120114', 'KANTOR BANTU BANDARA PATTIMURA', '');
INSERT INTO `kantor` VALUES ('120131', 'POS BANDA', '');
INSERT INTO `kantor` VALUES ('120132', 'POS NAMLEA', '');
INSERT INTO `kantor` VALUES ('120135', 'POS GESER', '');
INSERT INTO `kantor` VALUES ('120137', 'POS WAINIBE / P.BURU', '');
INSERT INTO `kantor` VALUES ('120138', 'POS MASOHI', '');
INSERT INTO `kantor` VALUES ('120139', 'POS AMBON', '');
INSERT INTO `kantor` VALUES ('120140', 'POS GALALA', '');
INSERT INTO `kantor` VALUES ('120141', 'POS TULEHU', '');
INSERT INTO `kantor` VALUES ('120143', 'POS HITU', '');
INSERT INTO `kantor` VALUES ('120144', 'POS OPIN/PASAHARI', '');
INSERT INTO `kantor` VALUES ('120200', 'KANTOR PELAYANAN TERNATE', 'TERNATE');
INSERT INTO `kantor` VALUES ('120211', 'KANTOR BANTU P. GEBE', '');
INSERT INTO `kantor` VALUES ('120212', 'KANTOR BANTU GALELA/TOBELO', '');
INSERT INTO `kantor` VALUES ('120213', 'KANTOR BANTU P. MANOLE', '');
INSERT INTO `kantor` VALUES ('120232', 'POS LABUHA', '');
INSERT INTO `kantor` VALUES ('120234', 'POS BANDARA BABULLAH', '');
INSERT INTO `kantor` VALUES ('120236', 'POS TERNATE', '');
INSERT INTO `kantor` VALUES ('120237', 'POS BASTIONG', '');
INSERT INTO `kantor` VALUES ('120238', 'POS SANANA', '');
INSERT INTO `kantor` VALUES ('120239', 'POS TANJUNG BARNABAS', '');
INSERT INTO `kantor` VALUES ('120300', 'KANTOR PELAYANAN SORONG', 'SORONG');
INSERT INTO `kantor` VALUES ('120311', 'KANTOR BANTU TELUK KASIM', '');
INSERT INTO `kantor` VALUES ('120331', 'POS BANDARA JEFMAN', '');
INSERT INTO `kantor` VALUES ('120332', 'POS PULAU GAK', '');
INSERT INTO `kantor` VALUES ('120335', 'POS DARMAGA KHUSUS USAHA MINA', 'MINA');
INSERT INTO `kantor` VALUES ('120337', 'POS ARAR', '');
INSERT INTO `kantor` VALUES ('120338', 'POS SORONG', '');
INSERT INTO `kantor` VALUES ('120400', 'KANTOR PELAYANAN MANOKWARI', 'MANOKWARI');
INSERT INTO `kantor` VALUES ('120412', 'KANTOR BANTU BABO', '');
INSERT INTO `kantor` VALUES ('120431', 'POS BINTUNI', '');
INSERT INTO `kantor` VALUES ('120432', 'POS BANDARA RENDANI', '');
INSERT INTO `kantor` VALUES ('120433', 'POS MANOKWARI', '');
INSERT INTO `kantor` VALUES ('120435', 'POS WIMRO', '');
INSERT INTO `kantor` VALUES ('120500', 'KANTOR PELAYANAN FAK-FAK', 'FAK-FAK');
INSERT INTO `kantor` VALUES ('120531', 'POS KAIMANA', '');
INSERT INTO `kantor` VALUES ('120532', 'POS KOKAS', '');
INSERT INTO `kantor` VALUES ('120533', 'POS PULAU ADI', '');
INSERT INTO `kantor` VALUES ('120534', 'POS BANDARA FAK-FAK', '');
INSERT INTO `kantor` VALUES ('120535', 'POS FAK-FAK', '');
INSERT INTO `kantor` VALUES ('120600', 'KANTOR PELAYANAN JAYAPURA', 'JAYAPURA');
INSERT INTO `kantor` VALUES ('120611', 'KANTOR BANTU BANDARA SENTANI', '');
INSERT INTO `kantor` VALUES ('120612', 'KANTOR BANTU SKOU', '');
INSERT INTO `kantor` VALUES ('120631', 'POS SARMI', '');
INSERT INTO `kantor` VALUES ('120633', 'POS KIWIROK', '');
INSERT INTO `kantor` VALUES ('120634', 'POS SENGAI', '');
INSERT INTO `kantor` VALUES ('120635', 'POS WARIS', '');
INSERT INTO `kantor` VALUES ('120636', 'POS WEMBI', '');
INSERT INTO `kantor` VALUES ('120637', 'POS DEMTA', '');
INSERT INTO `kantor` VALUES ('120638', 'POS WAMENA', '');
INSERT INTO `kantor` VALUES ('120639', 'POS JAYAPURA', '');
INSERT INTO `kantor` VALUES ('120700', 'KANTOR PELAYANAN MERAUKE', 'MERAUKE');
INSERT INTO `kantor` VALUES ('120731', 'POS SORTA', '');
INSERT INTO `kantor` VALUES ('120732', 'POS BUPUL', '');
INSERT INTO `kantor` VALUES ('120734', 'POS MINDIPTANAA', '');
INSERT INTO `kantor` VALUES ('120736', 'POS AGATS', '');
INSERT INTO `kantor` VALUES ('120737', 'POS  BADE', '');
INSERT INTO `kantor` VALUES ('120738', 'POS BANDARA MOPAH', '');
INSERT INTO `kantor` VALUES ('120739', 'POS MERAUKE', '');
INSERT INTO `kantor` VALUES ('120740', 'POS WANAM', '');
INSERT INTO `kantor` VALUES ('120800', 'KANTOR PELAYANAN AMAMAPARE', 'AMAMAPARE');
INSERT INTO `kantor` VALUES ('120812', 'KANTOR BANTU KULALA KENCANA/KOTA BARU', '');
INSERT INTO `kantor` VALUES ('120813', 'KANTOR BANTU BANDARA TIMIKA', '');
INSERT INTO `kantor` VALUES ('120831', 'POS AMAMAPARE', '');
INSERT INTO `kantor` VALUES ('120832', 'POS CARGO DOCK', '');
INSERT INTO `kantor` VALUES ('120833', 'POS PAD XI', '');
INSERT INTO `kantor` VALUES ('120834', 'POS ETNA', '');
INSERT INTO `kantor` VALUES ('120835', 'POS TEMBAGAPURA', '');
INSERT INTO `kantor` VALUES ('120836', 'POS POMAKO I', '');
INSERT INTO `kantor` VALUES ('120900', 'KANTOR PELAYANAN BIAK', 'BIAK');
INSERT INTO `kantor` VALUES ('120911', 'KANTOR BANTU NABIRE/TELUK KIMI', '');
INSERT INTO `kantor` VALUES ('120931', 'POS SERUI', '');
INSERT INTO `kantor` VALUES ('120933', 'POS BIAK', '');
INSERT INTO `kantor` VALUES ('120934', 'POS DAWAI', '');
INSERT INTO `kantor` VALUES ('121000', 'KANTOR PELAYANAN TUAL', '');
INSERT INTO `kantor` VALUES ('121031', 'POS DABO', '');
INSERT INTO `kantor` VALUES ('121032', 'POS BENJINA/P. KEI', '');
INSERT INTO `kantor` VALUES ('121033', 'POS SAUMLAKI', '');
INSERT INTO `kantor` VALUES ('121034', 'POS NGADI', '');
INSERT INTO `kantor` VALUES ('121035', 'POS ELAT', '');
INSERT INTO `kantor` VALUES ('121036', 'POS LARAT', '');
INSERT INTO `kantor` VALUES ('121037', 'POS WONRELI/KISAR', '');
INSERT INTO `kantor` VALUES ('121038', 'POS BANDARA D. DUMATUBUN LANGGUR', '');
INSERT INTO `kantor` VALUES ('121039', 'POS SERWARU', '');
INSERT INTO `kantor` VALUES ('121040', 'POS HWAKI/WETAR', '');
INSERT INTO `kantor` VALUES ('130000', 'KANTOR WILAYAH XIII BANDA ACEH', '');
INSERT INTO `kantor` VALUES ('130100', 'KANTOR PELAYANAN ULEELHEUE', '');
INSERT INTO `kantor` VALUES ('130111', 'KANTOR BANTU LHOK NGA', '');
INSERT INTO `kantor` VALUES ('130131', 'POS LAM PULO', '');
INSERT INTO `kantor` VALUES ('130132', 'POS SIGLI', '');
INSERT INTO `kantor` VALUES ('130133', 'POS COT BAU', '');
INSERT INTO `kantor` VALUES ('130134', 'POS MALAHAYATI', '');
INSERT INTO `kantor` VALUES ('130200', 'KANTOR PELAYANAN ISKANDAR MUDA', '');
INSERT INTO `kantor` VALUES ('130231', 'POS BANDARA ISKANDAR MUDA', '');
INSERT INTO `kantor` VALUES ('130300', 'KANTOR PELAYANAN SABANG', '');
INSERT INTO `kantor` VALUES ('130400', 'KANTOR PELAYANAN MEULABOH', '');
INSERT INTO `kantor` VALUES ('130411', 'KANTOR BANTU SINABANG', '');
INSERT INTO `kantor` VALUES ('130412', 'KANTOR BANTU TAPAK TUAN', '');
INSERT INTO `kantor` VALUES ('130413', 'KANTOR BANTU SINGKEL', '');
INSERT INTO `kantor` VALUES ('130431', 'POS SUSOH', '');
INSERT INTO `kantor` VALUES ('130500', 'KANTOR PELAYANAN LHOK SEUMAWE', '');
INSERT INTO `kantor` VALUES ('130511', 'KANTOR BANTU LHOK SUKON', '');
INSERT INTO `kantor` VALUES ('130531', 'POS BLANG LANCANG', '');
INSERT INTO `kantor` VALUES ('130532', 'POS KRUENG GEUKUH', '');
INSERT INTO `kantor` VALUES ('130600', 'KANTOR PELAYANAN KUALA LANGSA', '');
INSERT INTO `kantor` VALUES ('130631', 'POS KUALA LANGSA', '');
INSERT INTO `kantor` VALUES ('130632', 'POS SARANG JAYA', '');
INSERT INTO `kantor` VALUES ('150300', 'TANGERANG', 'Tangerang');
INSERT INTO `kantor` VALUES ('160200', 'KANTOR PENGAWASAN DAN PELAYANAN SUNDA KELAPA', 'JAKARTA');

-- ----------------------------
-- Table structure for `kemasan`
-- ----------------------------
DROP TABLE IF EXISTS `kemasan`;
CREATE TABLE `kemasan` (
  `KdKemas` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode Kemasan',
  `UrKemas` varchar(60) DEFAULT NULL COMMENT 'Uraian Kemasan',
  PRIMARY KEY (`KdKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kemasan
-- ----------------------------
INSERT INTO `kemasan` VALUES ('AE', 'Aerosol');
INSERT INTO `kemasan` VALUES ('AM', 'Ampoule, non protected');
INSERT INTO `kemasan` VALUES ('AP', 'Ampoule, protected');
INSERT INTO `kemasan` VALUES ('AT', 'Atomizer');
INSERT INTO `kemasan` VALUES ('BA', 'Barrel');
INSERT INTO `kemasan` VALUES ('BB', 'Bobbin');
INSERT INTO `kemasan` VALUES ('BC', 'Bottlecrate, bottlerack');
INSERT INTO `kemasan` VALUES ('BD', 'Board');
INSERT INTO `kemasan` VALUES ('BE', 'Bundle');
INSERT INTO `kemasan` VALUES ('BF', 'Balloon, non-protected');
INSERT INTO `kemasan` VALUES ('BG', 'Bag');
INSERT INTO `kemasan` VALUES ('BH', 'Bunch');
INSERT INTO `kemasan` VALUES ('BI', 'Bin');
INSERT INTO `kemasan` VALUES ('BJ', 'Bucket');
INSERT INTO `kemasan` VALUES ('BK', 'Basket');
INSERT INTO `kemasan` VALUES ('BL', 'Bale, compressed');
INSERT INTO `kemasan` VALUES ('BN', 'Bale, non -compressed');
INSERT INTO `kemasan` VALUES ('BO', 'Bottle, non-protected, cylindrical');
INSERT INTO `kemasan` VALUES ('BP', 'Balloon, protected');
INSERT INTO `kemasan` VALUES ('BQ', 'Bottle, protected cylindrical');
INSERT INTO `kemasan` VALUES ('BR', 'Bar');
INSERT INTO `kemasan` VALUES ('BS', 'Bottle, non-protected, bulbous');
INSERT INTO `kemasan` VALUES ('BT', 'Bolt');
INSERT INTO `kemasan` VALUES ('BU', 'Butt');
INSERT INTO `kemasan` VALUES ('BV', 'Bottle, protected bulbous');
INSERT INTO `kemasan` VALUES ('BX', 'Box');
INSERT INTO `kemasan` VALUES ('BY', 'Board, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('BZ', 'Bars, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('CA', 'Can, rectangular');
INSERT INTO `kemasan` VALUES ('CB', 'Beer crate');
INSERT INTO `kemasan` VALUES ('CC', 'Churn');
INSERT INTO `kemasan` VALUES ('CE', 'Creel');
INSERT INTO `kemasan` VALUES ('CF', 'Coffer');
INSERT INTO `kemasan` VALUES ('CG', 'Cage');
INSERT INTO `kemasan` VALUES ('CH', 'Chest');
INSERT INTO `kemasan` VALUES ('CI', 'Canister');
INSERT INTO `kemasan` VALUES ('CJ', 'Coffin');
INSERT INTO `kemasan` VALUES ('CK', 'Cask');
INSERT INTO `kemasan` VALUES ('CL', 'Coil');
INSERT INTO `kemasan` VALUES ('CO', 'Carboy, non-protected');
INSERT INTO `kemasan` VALUES ('CP', 'Carboy, protected');
INSERT INTO `kemasan` VALUES ('CR', 'Crate');
INSERT INTO `kemasan` VALUES ('CS', 'Case');
INSERT INTO `kemasan` VALUES ('CT', 'Carton');
INSERT INTO `kemasan` VALUES ('CU', 'Cup');
INSERT INTO `kemasan` VALUES ('CV', 'Cover');
INSERT INTO `kemasan` VALUES ('CX', 'Can, cylindical');
INSERT INTO `kemasan` VALUES ('CY', 'Cylinder');
INSERT INTO `kemasan` VALUES ('CZ', 'Canvas');
INSERT INTO `kemasan` VALUES ('DJ', 'Demijohn, non-protected');
INSERT INTO `kemasan` VALUES ('DP', 'Demijohn, protected');
INSERT INTO `kemasan` VALUES ('DR', 'Drum');
INSERT INTO `kemasan` VALUES ('EN', 'Envelope');
INSERT INTO `kemasan` VALUES ('FC', 'Fruit crate');
INSERT INTO `kemasan` VALUES ('FD', 'Framed crate');
INSERT INTO `kemasan` VALUES ('FI', 'Firkin');
INSERT INTO `kemasan` VALUES ('FL', 'Flask');
INSERT INTO `kemasan` VALUES ('FO', 'Footlocker');
INSERT INTO `kemasan` VALUES ('FP', 'Filmpack');
INSERT INTO `kemasan` VALUES ('FR', 'Frame');
INSERT INTO `kemasan` VALUES ('GB', 'Gas bottle');
INSERT INTO `kemasan` VALUES ('GI', 'Girder');
INSERT INTO `kemasan` VALUES ('GZ', 'Girders, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('HG', 'Hogshead');
INSERT INTO `kemasan` VALUES ('HR', 'Hamper');
INSERT INTO `kemasan` VALUES ('IN', 'Ingot');
INSERT INTO `kemasan` VALUES ('IZ', 'ingots, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('JC', 'Jerrican, rectangular');
INSERT INTO `kemasan` VALUES ('JG', 'Jug');
INSERT INTO `kemasan` VALUES ('JR', 'Jar');
INSERT INTO `kemasan` VALUES ('JT', 'Jutebag');
INSERT INTO `kemasan` VALUES ('JY', 'Jerrican, cylindrical');
INSERT INTO `kemasan` VALUES ('KG', 'Keg');
INSERT INTO `kemasan` VALUES ('LG', 'Log');
INSERT INTO `kemasan` VALUES ('LZ', 'Logs, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('MB', 'Multiply bag');
INSERT INTO `kemasan` VALUES ('MC', 'milk crate');
INSERT INTO `kemasan` VALUES ('MS', 'Multiwall sack');
INSERT INTO `kemasan` VALUES ('MT', 'Mat');
INSERT INTO `kemasan` VALUES ('MX', 'Macth box');
INSERT INTO `kemasan` VALUES ('NE', 'Unpacked or unpackaged');
INSERT INTO `kemasan` VALUES ('NS', 'Nest');
INSERT INTO `kemasan` VALUES ('NT', 'Net');
INSERT INTO `kemasan` VALUES ('PA', 'Packet');
INSERT INTO `kemasan` VALUES ('PB', 'POLYBAG');
INSERT INTO `kemasan` VALUES ('PC', 'Parcel');
INSERT INTO `kemasan` VALUES ('PG', 'Plate');
INSERT INTO `kemasan` VALUES ('PH', 'Pitcher');
INSERT INTO `kemasan` VALUES ('PI', 'Pipe');
INSERT INTO `kemasan` VALUES ('PK', 'Package');
INSERT INTO `kemasan` VALUES ('PL', 'Pail');
INSERT INTO `kemasan` VALUES ('PN', 'Plank');
INSERT INTO `kemasan` VALUES ('PO', 'Pouch');
INSERT INTO `kemasan` VALUES ('PT', 'Pot');
INSERT INTO `kemasan` VALUES ('PU', 'Tray pack');
INSERT INTO `kemasan` VALUES ('PY', 'Plates, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('PZ', 'Planks/Pipes, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('RD', 'Rod');
INSERT INTO `kemasan` VALUES ('RG', 'Ring');
INSERT INTO `kemasan` VALUES ('RL', 'Reel');
INSERT INTO `kemasan` VALUES ('RO', 'Roll');
INSERT INTO `kemasan` VALUES ('RT', 'Rednet');
INSERT INTO `kemasan` VALUES ('RZ', 'Rods, in bundle/ bunch/truss');
INSERT INTO `kemasan` VALUES ('SA', 'Sack');
INSERT INTO `kemasan` VALUES ('SC', 'Shallow crate');
INSERT INTO `kemasan` VALUES ('SD', 'Spindle');
INSERT INTO `kemasan` VALUES ('SE', 'Sea-chest');
INSERT INTO `kemasan` VALUES ('SH', 'Sachet');
INSERT INTO `kemasan` VALUES ('SK', 'Skeleton case');
INSERT INTO `kemasan` VALUES ('SL', 'Slipsheet');
INSERT INTO `kemasan` VALUES ('SM', 'Sheetmetal');
INSERT INTO `kemasan` VALUES ('ST', 'Sheet');
INSERT INTO `kemasan` VALUES ('SU', 'Suitcase');
INSERT INTO `kemasan` VALUES ('SW', 'Shrinkwrapped');
INSERT INTO `kemasan` VALUES ('SZ', 'Sheets, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('TB', 'Tub');
INSERT INTO `kemasan` VALUES ('TC', 'Tea-chest');
INSERT INTO `kemasan` VALUES ('TD', 'Tube, collapsible');
INSERT INTO `kemasan` VALUES ('TK', 'Tank, rectangular');
INSERT INTO `kemasan` VALUES ('TN', 'Tin');
INSERT INTO `kemasan` VALUES ('TO', 'Tun');
INSERT INTO `kemasan` VALUES ('TP', 'Tray');
INSERT INTO `kemasan` VALUES ('TR', 'Trunk');
INSERT INTO `kemasan` VALUES ('TS', 'Truss');
INSERT INTO `kemasan` VALUES ('TU', 'Tube');
INSERT INTO `kemasan` VALUES ('TY', 'Tank, cylindrical');
INSERT INTO `kemasan` VALUES ('TZ', 'Tubes, in bundle/bunch/truss');
INSERT INTO `kemasan` VALUES ('UN', 'Unit');
INSERT INTO `kemasan` VALUES ('VA', 'Vat');
INSERT INTO `kemasan` VALUES ('VG', 'Bulk, gas ( at 1031 mbar and 15C )');
INSERT INTO `kemasan` VALUES ('VI', 'Vial');
INSERT INTO `kemasan` VALUES ('VL', 'Bulk, liquid');
INSERT INTO `kemasan` VALUES ('VO', 'Bulk, solid, large particles (\"nodules\")');
INSERT INTO `kemasan` VALUES ('VP', 'Vacuumpacked');
INSERT INTO `kemasan` VALUES ('VQ', 'Bulk, liquefied gas (at abnormal temperature)');
INSERT INTO `kemasan` VALUES ('VR', 'Bulk, solid, granular particles (\"grains\")');
INSERT INTO `kemasan` VALUES ('VY', 'Bulk, solid, fine particles (\"powders\")');
INSERT INTO `kemasan` VALUES ('WB', 'Wickerbottle');

-- ----------------------------
-- Table structure for `kode_jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `kode_jenis_dok`;
CREATE TABLE `kode_jenis_dok` (
  `KdKdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis Dokumen',
  `UrKdJnsDok` varchar(15) DEFAULT NULL COMMENT 'Nama Dokumen',
  PRIMARY KEY (`KdKdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kode_jenis_dok
-- ----------------------------
INSERT INTO `kode_jenis_dok` VALUES ('1', 'Invoice');
INSERT INTO `kode_jenis_dok` VALUES ('2', 'Packing List');
INSERT INTO `kode_jenis_dok` VALUES ('3', 'Kontrak');
INSERT INTO `kode_jenis_dok` VALUES ('4', 'Surat Jalan');
INSERT INTO `kode_jenis_dok` VALUES ('5', 'Skep');
INSERT INTO `kode_jenis_dok` VALUES ('6', 'Lainnya');
INSERT INTO `kode_jenis_dok` VALUES ('7', 'ex BC 2.3');
INSERT INTO `kode_jenis_dok` VALUES ('8', 'ex BC 2.4');
INSERT INTO `kode_jenis_dok` VALUES ('9', 'ex BC 2.5');
INSERT INTO `kode_jenis_dok` VALUES ('10', 'ex BC 2.6.1');
INSERT INTO `kode_jenis_dok` VALUES ('11', 'ex BC 2.6.2');
INSERT INTO `kode_jenis_dok` VALUES ('12', 'ex BC 2.7');
INSERT INTO `kode_jenis_dok` VALUES ('13', 'ex BC 3.0');
INSERT INTO `kode_jenis_dok` VALUES ('14', 'ex BC 4.0');
INSERT INTO `kode_jenis_dok` VALUES ('15', 'ex BC 4.1');
INSERT INTO `kode_jenis_dok` VALUES ('16', 'LC');
INSERT INTO `kode_jenis_dok` VALUES ('17', 'BL/AWB');
INSERT INTO `kode_jenis_dok` VALUES ('18', 'BC 1.1');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `tgl` datetime DEFAULT NULL,
  `nama_user` varchar(20) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('668', '2012-11-14 22:28:30', 'admin', 'tambah data user administration gudang');
INSERT INTO `log` VALUES ('669', '2012-11-14 22:28:50', 'admin', 'tambah data user administration bc');
INSERT INTO `log` VALUES ('670', '2012-11-14 16:29:50', 'admin', 'logout');
INSERT INTO `log` VALUES ('671', '2012-11-14 22:30:11', 'bc', 'login');
INSERT INTO `log` VALUES ('672', '2012-11-14 16:30:17', 'bc', 'logout');
INSERT INTO `log` VALUES ('673', '2012-11-14 22:33:37', 'bc', 'login');
INSERT INTO `log` VALUES ('674', '2012-11-14 16:33:49', 'bc', 'logout');
INSERT INTO `log` VALUES ('675', '2012-11-14 22:34:08', 'exim', 'login');
INSERT INTO `log` VALUES ('676', '2012-11-14 16:34:51', 'exim', 'logout');
INSERT INTO `log` VALUES ('677', '2012-11-14 22:34:59', 'exim', 'login');
INSERT INTO `log` VALUES ('678', '2012-11-14 16:35:04', 'exim', 'logout');
INSERT INTO `log` VALUES ('679', '2012-11-14 22:39:21', 'admin', 'login');
INSERT INTO `log` VALUES ('680', '2012-11-14 23:44:39', 'admin', 'login');
INSERT INTO `log` VALUES ('681', '2012-11-15 22:04:31', 'admin', 'login');
INSERT INTO `log` VALUES ('682', '2012-12-20 12:45:44', 'admin', 'login');
INSERT INTO `log` VALUES ('683', '2012-12-20 14:34:07', 'admin', 'login');
INSERT INTO `log` VALUES ('684', '2012-12-20 15:00:43', 'admin', 'tambah data user administration dian');
INSERT INTO `log` VALUES ('685', '2012-12-20 15:01:50', 'admin', 'tambah data user administration retno');
INSERT INTO `log` VALUES ('686', '2012-12-20 15:02:21', 'admin', 'ubah data user administration exim');
INSERT INTO `log` VALUES ('687', '2012-12-20 15:02:50', 'admin', 'ubah data user administration gudang');
INSERT INTO `log` VALUES ('688', '2012-12-20 15:04:05', 'admin', 'tambah data user administration siti');
INSERT INTO `log` VALUES ('689', '2012-12-20 15:04:36', 'admin', 'tambah data user administration budi');
INSERT INTO `log` VALUES ('690', '2012-12-20 15:05:21', 'admin', 'tambah data user administration ika');
INSERT INTO `log` VALUES ('691', '2012-12-20 15:05:44', 'admin', 'ubah data user administration siti');
INSERT INTO `log` VALUES ('692', '2012-12-20 15:06:00', 'admin', 'tambah data user administration siti');
INSERT INTO `log` VALUES ('693', '2012-12-20 15:07:16', 'admin', 'ubah data user administration siti');
INSERT INTO `log` VALUES ('694', '2012-12-20 15:07:54', 'admin', 'ubah data user administration retno');
INSERT INTO `log` VALUES ('695', '2012-12-20 15:08:03', 'admin', 'ubah data user administration dian');
INSERT INTO `log` VALUES ('696', '2012-12-20 15:08:17', 'admin', 'ubah data user administration ika');
INSERT INTO `log` VALUES ('697', '2012-12-20 15:08:31', 'admin', 'ubah data user administration siti_n');
INSERT INTO `log` VALUES ('698', '2012-12-20 15:08:39', 'admin', 'ubah data user administration budi');
INSERT INTO `log` VALUES ('699', '2012-12-20 09:08:59', 'admin', 'logout');
INSERT INTO `log` VALUES ('700', '2012-12-20 15:09:15', 'admin', 'login');
INSERT INTO `log` VALUES ('701', '2012-12-20 15:10:09', 'admin', 'ubah data user administration atik');
INSERT INTO `log` VALUES ('702', '2012-12-20 15:10:21', 'admin', 'ubah data user administration budi');
INSERT INTO `log` VALUES ('703', '2012-12-20 15:10:30', 'admin', 'ubah data user administration dian');
INSERT INTO `log` VALUES ('704', '2012-12-20 15:10:37', 'admin', 'ubah data user administration ika');
INSERT INTO `log` VALUES ('705', '2012-12-20 15:10:45', 'admin', 'ubah data user administration retno');
INSERT INTO `log` VALUES ('706', '2012-12-20 15:10:53', 'admin', 'ubah data user administration siti');
INSERT INTO `log` VALUES ('707', '2012-12-20 15:11:02', 'admin', 'ubah data user administration siti_n');
INSERT INTO `log` VALUES ('708', '2012-12-20 15:11:11', 'admin', 'ubah data user administration wahyu');
INSERT INTO `log` VALUES ('709', '2012-12-20 09:11:14', 'admin', 'logout');
INSERT INTO `log` VALUES ('710', '2012-12-20 15:11:21', 'wahyu', 'login');
INSERT INTO `log` VALUES ('711', '2012-12-21 07:41:05', 'admin', 'logout');
INSERT INTO `log` VALUES ('712', '2012-12-21 13:41:13', 'dian', 'login');
INSERT INTO `log` VALUES ('713', '2012-12-21 07:59:01', 'dian', 'logout');
INSERT INTO `log` VALUES ('714', '2012-12-21 13:59:13', 'admin', 'login');
INSERT INTO `log` VALUES ('715', '2012-12-21 08:02:01', 'admin', 'logout');
INSERT INTO `log` VALUES ('716', '2012-12-21 14:02:15', 'admin', 'login');
INSERT INTO `log` VALUES ('717', '2012-12-21 08:05:15', 'admin', 'logout');
INSERT INTO `log` VALUES ('718', '2012-12-21 14:05:28', 'atik', 'login');
INSERT INTO `log` VALUES ('719', '2012-12-21 08:06:54', 'atik', 'logout');
INSERT INTO `log` VALUES ('720', '2012-12-21 14:07:00', 'dian', 'login');
INSERT INTO `log` VALUES ('721', '2012-12-21 08:18:39', 'dian', 'logout');
INSERT INTO `log` VALUES ('722', '2012-12-21 15:31:20', 'admin', 'login');
INSERT INTO `log` VALUES ('723', '2012-12-21 09:32:24', 'admin', 'logout');
INSERT INTO `log` VALUES ('724', '2012-12-24 20:25:24', 'admin', 'login');
INSERT INTO `log` VALUES ('725', '2012-12-24 14:29:11', 'admin', 'logout');
INSERT INTO `log` VALUES ('726', '2012-12-26 11:50:47', 'admin', 'tambah data KPBC 150300');
INSERT INTO `log` VALUES ('727', '2012-12-26 05:51:38', 'admin', 'logout');
INSERT INTO `log` VALUES ('728', '2012-12-26 11:51:43', 'admin', 'login');
INSERT INTO `log` VALUES ('729', '2012-12-26 05:52:39', 'admin', 'logout');
INSERT INTO `log` VALUES ('730', '2012-12-27 15:46:16', 'admin', 'login');
INSERT INTO `log` VALUES ('731', '2012-12-27 21:13:08', 'admin', 'login');
INSERT INTO `log` VALUES ('732', '2012-12-28 00:18:47', 'admin', 'login');
INSERT INTO `log` VALUES ('733', '2012-12-28 00:29:14', 'admin', 'login');
INSERT INTO `log` VALUES ('734', '2012-12-28 00:31:10', 'admin', 'Add delivery order 1');
INSERT INTO `log` VALUES ('735', '2012-12-28 06:52:00', 'admin', 'login');
INSERT INTO `log` VALUES ('736', '2012-12-28 00:57:30', 'admin', 'logout');
INSERT INTO `log` VALUES ('737', '2012-12-28 06:57:42', 'admin', 'login');
INSERT INTO `log` VALUES ('738', '2012-12-28 07:50:14', 'admin', 'Add delivery order 2');
INSERT INTO `log` VALUES ('739', '2012-12-28 07:55:32', 'admin', 'Delete delivery order 1');
INSERT INTO `log` VALUES ('740', '2012-12-28 10:39:25', 'admin', 'login');
INSERT INTO `log` VALUES ('741', '2012-12-28 10:40:44', 'admin', 'Edit delivery order 2');
INSERT INTO `log` VALUES ('742', '2012-12-28 04:41:14', 'admin', 'logout');
INSERT INTO `log` VALUES ('743', '2012-12-30 08:28:44', 'admin', 'login');
INSERT INTO `log` VALUES ('744', '2012-12-30 09:01:02', 'admin', 'login');
INSERT INTO `log` VALUES ('745', '2012-12-30 16:24:42', 'admin', 'login');
INSERT INTO `log` VALUES ('746', '2012-12-30 10:29:08', 'admin', 'logout');
INSERT INTO `log` VALUES ('747', '2012-12-30 16:29:19', 'admin', 'login');
INSERT INTO `log` VALUES ('748', '2012-12-30 20:47:31', 'admin', 'login');
INSERT INTO `log` VALUES ('749', '2012-12-31 10:09:41', 'admin', 'login');
INSERT INTO `log` VALUES ('750', '2012-12-31 17:47:34', 'admin', 'login');
INSERT INTO `log` VALUES ('751', '2012-12-31 18:09:46', 'admin', 'tambah data unit of items KG');
INSERT INTO `log` VALUES ('752', '2012-12-31 18:57:40', 'admin', 'login');
INSERT INTO `log` VALUES ('753', '2013-01-01 11:54:24', 'admin', 'login');
INSERT INTO `log` VALUES ('754', '2013-01-01 05:55:13', 'admin', 'logout');
INSERT INTO `log` VALUES ('755', '2013-01-01 11:55:19', 'admin', 'login');
INSERT INTO `log` VALUES ('756', '2013-01-01 05:56:00', 'admin', 'logout');
INSERT INTO `log` VALUES ('757', '2013-01-01 11:56:06', 'admin', 'login');

-- ----------------------------
-- Table structure for `mat_group`
-- ----------------------------
DROP TABLE IF EXISTS `mat_group`;
CREATE TABLE `mat_group` (
  `matgroup_code` varchar(4) NOT NULL,
  `matgroup_name` varchar(30) DEFAULT NULL,
  `HsNo` varchar(20) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`matgroup_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_group
-- ----------------------------
INSERT INTO `mat_group` VALUES ('CT', 'CONTACT', '', null);
INSERT INTO `mat_group` VALUES ('FM', 'FOAM', '', null);
INSERT INTO `mat_group` VALUES ('HS', 'HOUSING', '', null);
INSERT INTO `mat_group` VALUES ('OR', 'OTHER', '', null);
INSERT INTO `mat_group` VALUES ('PLS', 'PLASTICK INJECTION', '', null);
INSERT INTO `mat_group` VALUES ('WR', 'WIRE', '', null);

-- ----------------------------
-- Table structure for `mat_incdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_incdet`;
CREATE TABLE `mat_incdet` (
  `matin_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Incoming Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item di Transaksi Detail',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Masuk',
  `weight` decimal(12,4) DEFAULT NULL,
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Saat Masuk',
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`matin_id`,`child_no`),
  CONSTRAINT `mat_incdet_ibfk_1` FOREIGN KEY (`matin_id`) REFERENCES `mat_inchdr` (`matin_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Incoming Material';

-- ----------------------------
-- Records of mat_incdet
-- ----------------------------
INSERT INTO `mat_incdet` VALUES ('1', '1', 'RAC-0001', null, '10.00', '10.0000');
INSERT INTO `mat_incdet` VALUES ('2', '1', 'RAC-0002', null, '200.00', '1000.0000');
INSERT INTO `mat_incdet` VALUES ('2', '2', 'RAC-0003', null, '200.00', '100.0000');
INSERT INTO `mat_incdet` VALUES ('2', '3', 'RAC-0004', null, '100.00', '200.0000');
INSERT INTO `mat_incdet` VALUES ('3', '1', 'ST', null, '500.00', null);
INSERT INTO `mat_incdet` VALUES ('4', '1', 'ST', null, '20.00', null);

-- ----------------------------
-- Table structure for `mat_inchdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_inchdr`;
CREATE TABLE `mat_inchdr` (
  `matin_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Incoming',
  `matin_type` enum('0','1','2','3') DEFAULT '0' COMMENT '0=purchase,1=replacement,2=from production,3=scrap',
  `matin_no` varchar(30) NOT NULL COMMENT 'Nomor Transaksi Masuk Barang',
  `matin_date` date NOT NULL COMMENT 'Tanggal dan Jam Kedatangan Barang',
  `mat_type` int(2) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Purchase Order',
  `po_no` varchar(30) DEFAULT NULL,
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Gudang Tempat Menyimpan Barang',
  `supplier` varchar(50) DEFAULT NULL,
  `supl_do` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Surat Jalan dari Supplier',
  `supl_inv` varchar(20) DEFAULT NULL,
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `CAR` varchar(6) DEFAULT NULL,
  `tot_qty` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah Dalam Bentuang Rupiah',
  `tot_amount` decimal(15,4) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan dari Kedatangan Barang',
  PRIMARY KEY (`matin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Header Incoming Material';

-- ----------------------------
-- Records of mat_inchdr
-- ----------------------------
INSERT INTO `mat_inchdr` VALUES ('1', '0', '001', '2012-12-12', null, 'Rp', '0', '001', '0', 'BUANA BARU JAYA', 'DO001', 'Inv001', '6', null, '0', null, 'tes');
INSERT INTO `mat_inchdr` VALUES ('2', '0', 'inc/2012/12/01', '2012-12-12', null, 'Rp', '0', '00001', '0', 'CV. Anisa Mulya', '0001', '0001', '1', null, '0', null, 'TES');
INSERT INTO `mat_inchdr` VALUES ('3', '3', '', '2012-12-24', '12', null, '0', null, '0', null, '', null, null, null, '0', null, 'tess...');
INSERT INTO `mat_inchdr` VALUES ('4', '3', '', '2012-12-18', '12', null, '0', null, '0', null, '', null, null, null, '0', null, '');

-- ----------------------------
-- Table structure for `mat_opnamedet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamedet`;
CREATE TABLE `mat_opnamedet` (
  `opname_id` int(10) NOT NULL,
  `child_no` int(10) NOT NULL,
  `mat_id` varchar(8) NOT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'jumlah stok opname',
  `qty_bal` decimal(12,2) DEFAULT NULL,
  `qty_diff` decimal(12,2) DEFAULT NULL,
  `qty_in` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (tambah)',
  `qty_out` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (kurang)',
  PRIMARY KEY (`opname_id`,`child_no`),
  CONSTRAINT `mat_opnamedet_ibfk_1` FOREIGN KEY (`opname_id`) REFERENCES `mat_opnamehdr` (`opname_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamedet
-- ----------------------------
INSERT INTO `mat_opnamedet` VALUES ('1', '1', '123', '50.00', '105.00', '55.00', '0.00', '55.00');
INSERT INTO `mat_opnamedet` VALUES ('2', '1', 'ALME0002', '60.00', '-100.00', '160.00', '160.00', '0.00');
INSERT INTO `mat_opnamedet` VALUES ('2', '2', 'ALME0003', '900.00', '0.00', '900.00', '900.00', '0.00');
INSERT INTO `mat_opnamedet` VALUES ('3', '1', 'SC001', '30.00', '40.00', '10.00', '0.00', '10.00');
INSERT INTO `mat_opnamedet` VALUES ('3', '2', 'M001', '5.00', '10.00', '5.00', '0.00', '5.00');
INSERT INTO `mat_opnamedet` VALUES ('3', '3', 'P001', '5.00', '5.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for `mat_opnamehdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamehdr`;
CREATE TABLE `mat_opnamehdr` (
  `opname_id` int(10) NOT NULL AUTO_INCREMENT,
  `opname_date` date NOT NULL,
  `wh_id` int(10) NOT NULL COMMENT 'Warehouse ID',
  `mat_type` enum('0','1','2') DEFAULT NULL COMMENT '0= Finished Goods, 1= material, 2=wip',
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0' COMMENT '0=opname,1=adjust',
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`opname_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamehdr
-- ----------------------------
INSERT INTO `mat_opnamehdr` VALUES ('1', '2012-09-12', '3', '0', '50.00', '1', null);
INSERT INTO `mat_opnamehdr` VALUES ('2', '2012-09-12', '1', '1', '960.00', '1', null);
INSERT INTO `mat_opnamehdr` VALUES ('3', '2012-10-28', '1', '1', '40.00', '1', '');

-- ----------------------------
-- Table structure for `mat_outdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outdet`;
CREATE TABLE `mat_outdet` (
  `matout_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Transaksi OutGoing Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item detail OutGoing',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Dikeluarkan',
  `weight` decimal(9,2) DEFAULT NULL,
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity yang dikeluarkan',
  `price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`matout_id`,`child_no`),
  KEY `MAT_ID` (`matout_id`,`child_no`),
  CONSTRAINT `mat_outdet_ibfk_1` FOREIGN KEY (`matout_id`) REFERENCES `mat_outhdr` (`matout_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outdet
-- ----------------------------
INSERT INTO `mat_outdet` VALUES ('5', '1', 'RAC-0002', null, '200.00', null);
INSERT INTO `mat_outdet` VALUES ('6', '1', 'RAC-0001', null, '200.00', null);
INSERT INTO `mat_outdet` VALUES ('7', '1', 'ST', null, '222.00', null);
INSERT INTO `mat_outdet` VALUES ('8', '1', 'FAB-0001', '1.00', '2.00', '3.9876');
INSERT INTO `mat_outdet` VALUES ('9', '1', 'FAB-0001', '1.00', '2.00', '3.0000');

-- ----------------------------
-- Table structure for `mat_outhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outhdr`;
CREATE TABLE `mat_outhdr` (
  `matout_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID Transaksi OutGoing Material',
  `matout_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pengeluaran',
  `matout_date` date NOT NULL COMMENT 'Tanggal dan Jam PengeluaranMaterial',
  `matout_type` enum('0','1','2','3') DEFAULT NULL COMMENT '0=Consumption, 1=Return, 2=From Production, 3=scrap',
  `mat_type` int(2) DEFAULT NULL,
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `cust` varchar(50) DEFAULT NULL,
  `vehicle_no` varchar(15) NOT NULL DEFAULT '' COMMENT 'Nomor Polisi Kendaraan',
  `driver` varchar(30) NOT NULL DEFAULT '' COMMENT 'Nama Sopir Pengirim',
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `tot_amount` decimal(15,4) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Pengeluaran',
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `CAR` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`matout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outhdr
-- ----------------------------
INSERT INTO `mat_outhdr` VALUES ('5', '001', '2012-12-12', '1', null, null, null, null, '', '', '200.00', null, '', '4', null);
INSERT INTO `mat_outhdr` VALUES ('6', 'OUT001', '2012-12-12', '1', null, null, null, null, '', '', '200.00', null, '', '9', null);
INSERT INTO `mat_outhdr` VALUES ('7', 'SSS', '2012-12-22', '3', '12', '0', '', 'PT. Hartono Istana Teknologi', '1', '2', '222.00', null, '222', '3', null);
INSERT INTO `mat_outhdr` VALUES ('8', 'DO-0001', '2012-12-25', null, '0', '0', 'SO001', 'CV. Jaya Mulya Mandiri', 'D 5962', 'Kikin', '2.00', '7.9752', 'tes', '3', null);
INSERT INTO `mat_outhdr` VALUES ('9', 'DO002', '2012-12-29', null, '0', '0', '1233', 'PT. JVC Electronics Indonesia', 'D1010', 'KIkin', '2.00', '6.0000', '', '7', null);

-- ----------------------------
-- Table structure for `mat_stockcard`
-- ----------------------------
DROP TABLE IF EXISTS `mat_stockcard`;
CREATE TABLE `mat_stockcard` (
  `kd_fac` char(2) NOT NULL COMMENT 'Kode Factory',
  `wh_id` int(10) NOT NULL COMMENT 'Warehouse ID',
  `mat_type` tinyint(2) NOT NULL,
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material',
  `date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `type` char(1) NOT NULL DEFAULT 'B' COMMENT 'B=Begining,I=Incoming,O=Outgoing,R=Retur,D=Damage/Missing',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Transaksi',
  `price` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Harga Satuan Transaksi',
  `qty_bal` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah Quantity Saldo',
  `amt_bal` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Jumlah Amount Rupiah Saldo',
  PRIMARY KEY (`kd_fac`,`wh_id`,`mat_id`,`date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Transaksi Stock Card';

-- ----------------------------
-- Records of mat_stockcard
-- ----------------------------
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'ALME0001', '2012-10-17', 'B', '100.00', '0.000', '100', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'ALME0002', '2012-10-17', 'B', '200.00', '0.000', '200', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'ALME0003', '2012-10-17', 'B', '300.00', '0.000', '300', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', '123', '2012-10-17', 'B', '50.00', '0.000', '50', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', '501-08-1', '2012-10-17', 'B', '100.00', '0.000', '100', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', 'LV449720', '2012-10-17', 'B', '450.00', '0.000', '450', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'B', '25.00', '0.000', '25', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'WIP2', '2012-10-18', 'B', '50.00', '0.000', '50', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'WIP4', '2012-10-18', 'B', '75.00', '0.000', '75', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '3', 'M002', '2012-09-30', 'B', '20.00', '0.000', '20', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '3', 'M001', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '5', 'P002', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '5', 'P001', '2012-09-30', 'B', '5.00', '0.000', '5', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'I', '222.00', '0.000', '222', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'O', '2.00', '0.000', '2', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '3', '0', '123', '2012-10-18', 'I', '100.00', '0.000', '100', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '12', 'SC001', '2012-10-28', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '12', 'SC001', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '3', 'M003', '2012-09-30', 'B', '30.00', '0.000', '30', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '5', 'P003', '2012-09-30', 'B', '15.00', '0.000', '15', '0.000');
INSERT INTO `mat_stockcard` VALUES ('01', '1', '1', 'ALME0001', '2012-11-13', 'B', '20.00', '0.000', '20', '0.000');

-- ----------------------------
-- Table structure for `mat_warehouse`
-- ----------------------------
DROP TABLE IF EXISTS `mat_warehouse`;
CREATE TABLE `mat_warehouse` (
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Warehouse',
  `wh_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nama Warehouse',
  PRIMARY KEY (`wh_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master Gudang';

-- ----------------------------
-- Records of mat_warehouse
-- ----------------------------
INSERT INTO `mat_warehouse` VALUES ('1', 'WAREHOUSE MATERIAL');
INSERT INTO `mat_warehouse` VALUES ('2', 'WAREHOUSE PRODUKSI');
INSERT INTO `mat_warehouse` VALUES ('3', 'WAREHOUSE FINISHED GOODS');
INSERT INTO `mat_warehouse` VALUES ('4', 'WAREHOUSE SCRAP');

-- ----------------------------
-- Table structure for `mkt_comminvdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_comminvdet`;
CREATE TABLE `mkt_comminvdet` (
  `comm_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Id Paking',
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) DEFAULT NULL,
  `qty` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah quantity / pasang',
  `price` decimal(8,3) NOT NULL DEFAULT '0.000' COMMENT 'Jumlah Karton',
  PRIMARY KEY (`comm_id`,`child_no`),
  CONSTRAINT `mkt_comminvdet_ibfk_1` FOREIGN KEY (`comm_id`) REFERENCES `mkt_comminvhdr` (`comm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_comminvdet
-- ----------------------------
INSERT INTO `mkt_comminvdet` VALUES ('1', '1', 'LUS23003AY', '100', '200.000');

-- ----------------------------
-- Table structure for `mkt_comminvhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_comminvhdr`;
CREATE TABLE `mkt_comminvhdr` (
  `comm_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Commercial Invoice',
  `comm_no` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '' COMMENT 'Nomor Commercial Invoice',
  `comm_date` date NOT NULL COMMENT 'Tanggal Commercial Invoice',
  `do_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Delevery Order Yang Dipilih',
  `payment` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pol` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pod` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` char(5) CHARACTER SET latin1 NOT NULL DEFAULT '''USD''' COMMENT 'Jenis Mata Uang',
  `vessel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voy_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sail_date` date DEFAULT NULL,
  `fob` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'PPN 10%',
  `freight` decimal(12,2) NOT NULL COMMENT 'Ongkos Angkut',
  `insurance` decimal(12,2) NOT NULL COMMENT 'Asuransi',
  `cnf` decimal(12,2) DEFAULT NULL,
  `tot_qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Quantity',
  `tot_amount` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Uang',
  `notify` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_sign` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mkt_comminvhdr
-- ----------------------------
INSERT INTO `mkt_comminvhdr` VALUES ('1', '111', '2012-09-04', '1', 'LC', 'A', 'B', '123456', 'USD', '1', '2', '0000-00-00', '3.00', '4.00', '5.00', '6.00', '100.00', '20000.00', null, null, null);

-- ----------------------------
-- Table structure for `mkt_packingdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_packingdet`;
CREATE TABLE `mkt_packingdet` (
  `pack_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Id Paking',
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) DEFAULT NULL,
  `fromct` int(10) DEFAULT NULL,
  `toct` int(10) DEFAULT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah quantity / pasang',
  `amount` decimal(12,2) DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Keterangan Detail',
  PRIMARY KEY (`pack_id`,`child_no`),
  CONSTRAINT `mkt_packingdet_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `mkt_packinghdr` (`pack_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_packingdet
-- ----------------------------

-- ----------------------------
-- Table structure for `mkt_packinghdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_packinghdr`;
CREATE TABLE `mkt_packinghdr` (
  `pack_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Packing',
  `pack_no` varchar(25) NOT NULL DEFAULT '' COMMENT 'Nomor Packing',
  `pack_date` date NOT NULL COMMENT 'Tanggal dan Waktu Pengiriman',
  `comm_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Sales Order yang pilih',
  `tot_ctn` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Total Carton',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `size` varchar(100) NOT NULL,
  `notes` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Keterangan dari Entry Packing',
  PRIMARY KEY (`pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_packinghdr
-- ----------------------------

-- ----------------------------
-- Table structure for `mkt_sorderdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_sorderdet`;
CREATE TABLE `mkt_sorderdet` (
  `so_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Sales Order',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `fg_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `qty` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'Quantity yang Dipesan',
  `price` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Harga Baran Jadi',
  PRIMARY KEY (`so_id`,`child_no`),
  CONSTRAINT `mkt_sorderdet_ibfk_1` FOREIGN KEY (`so_id`) REFERENCES `mkt_sorderhdr` (`so_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang Produk dari Customer';

-- ----------------------------
-- Records of mkt_sorderdet
-- ----------------------------
INSERT INTO `mkt_sorderdet` VALUES ('25', '1', '123', '300', '2.000');

-- ----------------------------
-- Table structure for `mkt_sorderhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_sorderhdr`;
CREATE TABLE `mkt_sorderhdr` (
  `so_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi Sales Order',
  `so_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Pesanan Customer',
  `so_date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `cust` varchar(50) NOT NULL COMMENT 'Kode Customer',
  `currency` varchar(3) NOT NULL DEFAULT 'IDR' COMMENT 'Jenis Matauang yang digunakan',
  `due_date` date NOT NULL,
  `tot_qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Qty Pesanan',
  `tot_amount` decimal(15,2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='Table Header Pemesanan dari Customer';

-- ----------------------------
-- Records of mkt_sorderhdr
-- ----------------------------
INSERT INTO `mkt_sorderhdr` VALUES ('25', '002', '2012-09-11', 'DENON', 'USD', '2012-09-13', '300.00', '600.00', '1222');

-- ----------------------------
-- Table structure for `mst_bank`
-- ----------------------------
DROP TABLE IF EXISTS `mst_bank`;
CREATE TABLE `mst_bank` (
  `KdBank` varchar(3) NOT NULL DEFAULT '',
  `NmBank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdBank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_bank
-- ----------------------------
INSERT INTO `mst_bank` VALUES ('002', 'Bank BRI');
INSERT INTO `mst_bank` VALUES ('008', 'Bank Mandiri');
INSERT INTO `mst_bank` VALUES ('009', 'Bank BNI');
INSERT INTO `mst_bank` VALUES ('011', 'Bank Danamon');
INSERT INTO `mst_bank` VALUES ('013', 'Bank Permata');
INSERT INTO `mst_bank` VALUES ('016', 'Bank BII');
INSERT INTO `mst_bank` VALUES ('019', 'Bank Panin');
INSERT INTO `mst_bank` VALUES ('020', 'Bank Arta Niaga Kenc');
INSERT INTO `mst_bank` VALUES ('022', 'Bank Niaga');
INSERT INTO `mst_bank` VALUES ('023', 'Bank UOB Buana');
INSERT INTO `mst_bank` VALUES ('026', 'LippoBank');
INSERT INTO `mst_bank` VALUES ('028', 'Bank NISP');
INSERT INTO `mst_bank` VALUES ('050', 'Standard Chartered B');
INSERT INTO `mst_bank` VALUES ('052', 'ABN AMRO');
INSERT INTO `mst_bank` VALUES ('093', 'Bank IFI');
INSERT INTO `mst_bank` VALUES ('097', 'Bank Mayapada');
INSERT INTO `mst_bank` VALUES ('110', 'Bank Jabar');
INSERT INTO `mst_bank` VALUES ('111', 'Bank DKI');
INSERT INTO `mst_bank` VALUES ('112', 'Bank BPD DIY');
INSERT INTO `mst_bank` VALUES ('114', 'Bank Jatim');
INSERT INTO `mst_bank` VALUES ('115', 'Bank BPD Jambi');
INSERT INTO `mst_bank` VALUES ('116', 'Bank BPD Aceh');
INSERT INTO `mst_bank` VALUES ('117', 'Bank Sumut');
INSERT INTO `mst_bank` VALUES ('118', 'Bank Nagari');
INSERT INTO `mst_bank` VALUES ('119', 'Bank Riau');
INSERT INTO `mst_bank` VALUES ('121', 'Bank Lampung');
INSERT INTO `mst_bank` VALUES ('122', 'Bank Kalsel');
INSERT INTO `mst_bank` VALUES ('124', 'Bank BPD Kaltim');
INSERT INTO `mst_bank` VALUES ('126', 'Bank Sulsel');
INSERT INTO `mst_bank` VALUES ('127', 'Bank Sulut');
INSERT INTO `mst_bank` VALUES ('128', 'Bank BPD NTB');
INSERT INTO `mst_bank` VALUES ('129', 'Bank BPD Bali');
INSERT INTO `mst_bank` VALUES ('130', 'Bank NTT');
INSERT INTO `mst_bank` VALUES ('131', 'Bank Maluku');
INSERT INTO `mst_bank` VALUES ('132', 'Bank Papua');
INSERT INTO `mst_bank` VALUES ('133', 'Bank Bengkulu');
INSERT INTO `mst_bank` VALUES ('135', 'Bank Sultra');
INSERT INTO `mst_bank` VALUES ('145', 'Bank Nusantara Parah');
INSERT INTO `mst_bank` VALUES ('147', 'Bank Muamalat');
INSERT INTO `mst_bank` VALUES ('151', 'Bank Mestika');
INSERT INTO `mst_bank` VALUES ('212', 'Bank Saudara');
INSERT INTO `mst_bank` VALUES ('426', 'Bank Mega');
INSERT INTO `mst_bank` VALUES ('441', 'Bank Bukopin');
INSERT INTO `mst_bank` VALUES ('451', 'Bank Syariah Mandiri');
INSERT INTO `mst_bank` VALUES ('485', 'Bank Bumiputera');
INSERT INTO `mst_bank` VALUES ('494', 'Bank Agroniaga');
INSERT INTO `mst_bank` VALUES ('506', 'Bank Syariah Mega In');
INSERT INTO `mst_bank` VALUES ('513', 'Bank Ina Perdana');
INSERT INTO `mst_bank` VALUES ('558', 'Bank Eksekutif');
INSERT INTO `mst_bank` VALUES ('950', 'Bank Commonwealth');

-- ----------------------------
-- Table structure for `mst_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_barang`;
CREATE TABLE `mst_barang` (
  `KdBarang` varchar(15) NOT NULL DEFAULT '',
  `TpBarang` tinyint(2) DEFAULT NULL,
  `MatGroup` varchar(4) DEFAULT NULL,
  `NmBarang` varchar(25) DEFAULT NULL,
  `HsNo` varchar(12) DEFAULT NULL,
  `DieNo` varchar(30) DEFAULT NULL,
  `UWm` decimal(10,4) DEFAULT NULL,
  `LPc` decimal(10,4) DEFAULT NULL,
  `WPcs` decimal(10,4) DEFAULT NULL,
  `LBar` decimal(10,0) DEFAULT NULL,
  `PcBar` decimal(10,0) DEFAULT NULL,
  `WBar` decimal(10,4) DEFAULT NULL,
  `Finish` varchar(10) DEFAULT NULL,
  `twhmp` varchar(20) DEFAULT NULL,
  `Sat` varchar(3) DEFAULT NULL,
  `Harga` decimal(12,2) DEFAULT NULL,
  `Treatment` varchar(15) DEFAULT NULL COMMENT 'Support Treatment',
  `Ket` varchar(100) DEFAULT NULL,
  `cust` varchar(50) DEFAULT NULL COMMENT 'Nama Customer',
  PRIMARY KEY (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_barang
-- ----------------------------
INSERT INTO `mst_barang` VALUES ('25048HS-10', '1', 'HS', ' LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('25048HS-11', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35112-0210', '1', 'HS', 'LUPOX GP1006FD', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35128-1000', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35150-0210', '1', 'HS', 'LUPOX GP1006FD', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35150-0400', '1', 'HS', 'LUPOX GP1006F HS', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35150-0610', '1', 'HS', ' LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35196-0294', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35506-0510', '1', 'HS', 'LUPOX GP1006FD', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35524-0920', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35546-0700', '1', 'HS', ' LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35817-0290', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('35818-0290', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('65001HS-12', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('917691-1', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('917692-1', '1', 'HS', '	 LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('917696-1', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('917700-1', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('EAD60675504', '0', '', 'EAD60675504', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675507', '0', '', 'EAD60675507', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Ass 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675510', '0', '', 'EAD60675510', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', ' Harnes Ass 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675511', '0', '', 'EAD60675511', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Ass', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675601', '0', '', 'EAD60675601', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675602', '0', '', 'EAD60675602', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675603', '0', '', 'EAD60675603', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675605', '0', '', 'EAD60675605', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	 Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675606', '0', '', 'EAD60675606', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes As', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675607', '0', '', 'EAD60675607', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD60675608', '0', '', 'EAD60675608', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071801', '0', '', 'EAD61071801', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes As 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071802', '0', '', 'EAD61071802', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071804', '0', '', 'EAD61071804', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	 Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071809', '0', '', 'EAD61071809', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071811', '0', '', 'EAD61071811', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071815', '0', '', 'EAD61071815', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes As 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071817', '0', '', 'EAD61071817', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071818', '0', '', 'EAD61071818', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61071820', '0', '', 'EAD61071820', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes As 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308801', '0', '', 'EAD61308801', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes As 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308802', '0', '', 'EAD61308802', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308809', '0', '', 'EAD61308809', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '	 Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308813', '0', '', 'EAD61308813', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308819', '0', '', 'EAD61308819', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61308820', '0', '', 'EAD61308820', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy 	', 'PT. EPS');
INSERT INTO `mst_barang` VALUES ('EAD61852906', '0', '', 'EAD61852906', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', 'Harnes Assy', 'PT. LG ELECTRONICS INDONESIA');
INSERT INTO `mst_barang` VALUES ('MG610087', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');
INSERT INTO `mst_barang` VALUES ('YH396-11V', '1', 'HS', 'LUPOX GP1006F', '8501', '', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '', '', 'PCS', null, '', '', '');

-- ----------------------------
-- Table structure for `mst_caraangkut`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraangkut`;
CREATE TABLE `mst_caraangkut` (
  `KdCrAngkut` tinyint(1) NOT NULL,
  `NmCrAngkut` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrAngkut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraangkut
-- ----------------------------
INSERT INTO `mst_caraangkut` VALUES ('1', 'Laut');
INSERT INTO `mst_caraangkut` VALUES ('2', 'Kereta Api');
INSERT INTO `mst_caraangkut` VALUES ('3', 'Jalan Raya');
INSERT INTO `mst_caraangkut` VALUES ('4', 'Udara');
INSERT INTO `mst_caraangkut` VALUES ('5', 'POS');
INSERT INTO `mst_caraangkut` VALUES ('6', 'Multimoda');
INSERT INTO `mst_caraangkut` VALUES ('7', 'Instalasi / Pipa');
INSERT INTO `mst_caraangkut` VALUES ('8', 'Sungai');
INSERT INTO `mst_caraangkut` VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_carabayar`
-- ----------------------------
DROP TABLE IF EXISTS `mst_carabayar`;
CREATE TABLE `mst_carabayar` (
  `KdCrBayar` tinyint(1) NOT NULL DEFAULT '0',
  `CrBayar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrBayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_carabayar
-- ----------------------------
INSERT INTO `mst_carabayar` VALUES ('1', 'Dilakukan dimuka');
INSERT INTO `mst_carabayar` VALUES ('2', 'Kemudian');
INSERT INTO `mst_carabayar` VALUES ('3', 'Sight Letter of Cred');
INSERT INTO `mst_carabayar` VALUES ('4', 'Usance Letter of Cre');
INSERT INTO `mst_carabayar` VALUES ('5', 'Red Clause Letter of');
INSERT INTO `mst_carabayar` VALUES ('6', 'Wesel Inkaso');
INSERT INTO `mst_carabayar` VALUES ('7', 'Konsinyasi');
INSERT INTO `mst_carabayar` VALUES ('8', 'Interoffice Account');
INSERT INTO `mst_carabayar` VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caradagang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caradagang`;
CREATE TABLE `mst_caradagang` (
  `KdCrDagang` tinyint(1) NOT NULL DEFAULT '0',
  `CrDagang` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`KdCrDagang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caradagang
-- ----------------------------
INSERT INTO `mst_caradagang` VALUES ('1', 'Imbal dagang');
INSERT INTO `mst_caradagang` VALUES ('2', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caraserah_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraserah_barang`;
CREATE TABLE `mst_caraserah_barang` (
  `KdCrSerahBrg` varchar(3) NOT NULL DEFAULT '',
  `NmCrSerahBrg` varchar(30) DEFAULT NULL,
  `KetCrSerahBrg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KdCrSerahBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraserah_barang
-- ----------------------------
INSERT INTO `mst_caraserah_barang` VALUES ('CFR', 'Cost And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO `mst_caraserah_barang` VALUES ('CIF', 'Cost, Insurance, And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO `mst_caraserah_barang` VALUES ('CIP', 'Carriage and Insurance Paid To', null);
INSERT INTO `mst_caraserah_barang` VALUES ('CPT', 'Carriage Paid To', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DAF', 'Delivered and Frontier', null);
INSERT INTO `mst_caraserah_barang` VALUES ('DDP', 'Delivered Duty Paid', null);
INSERT INTO `mst_caraserah_barang` VALUES ('DDU', 'Delivered Duty Unpai', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DEQ', 'Delivered Ex Quay', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('DES', 'Delivered Ex Ship', 'nama pelabuhan tujuan');
INSERT INTO `mst_caraserah_barang` VALUES ('EXW', 'Ex Works', 'diikuti nama tempat/ pabrik penjual');
INSERT INTO `mst_caraserah_barang` VALUES ('FAS', 'Free Alongside Ship', 'nama pelabuhan muat');
INSERT INTO `mst_caraserah_barang` VALUES ('FCA', 'Free Carrier', null);
INSERT INTO `mst_caraserah_barang` VALUES ('FOB', 'Free On Board', 'diikuti nama pelabuhan muat');

-- ----------------------------
-- Table structure for `mst_daerah`
-- ----------------------------
DROP TABLE IF EXISTS `mst_daerah`;
CREATE TABLE `mst_daerah` (
  `KdDaerah` varchar(4) NOT NULL DEFAULT '',
  `NmDaerah` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdDaerah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_daerah
-- ----------------------------
INSERT INTO `mst_daerah` VALUES ('3100', 'Prov. D K I Jakarta');
INSERT INTO `mst_daerah` VALUES ('3200', 'Prov. Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3204', 'Soreang');
INSERT INTO `mst_daerah` VALUES ('3205', 'Garut, Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3213', 'Subang, Jawa Barat');
INSERT INTO `mst_daerah` VALUES ('3214', 'Purwakarta, Jawa Barat');

-- ----------------------------
-- Table structure for `mst_factory`
-- ----------------------------
DROP TABLE IF EXISTS `mst_factory`;
CREATE TABLE `mst_factory` (
  `kode_fac` char(2) NOT NULL COMMENT 'kode pabrik',
  `nama_fac` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `nm_pimp` varchar(30) NOT NULL COMMENT 'nama pimpinan',
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_fac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_factory
-- ----------------------------
INSERT INTO `mst_factory` VALUES ('01', 'PT. YANJIN INDONESIA FACTORY', '', '', '', '', '');

-- ----------------------------
-- Table structure for `mst_in_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_in_type`;
CREATE TABLE `mst_in_type` (
  `matin_type` varchar(1) NOT NULL DEFAULT '0',
  `matin_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matin_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_in_type
-- ----------------------------
INSERT INTO `mst_in_type` VALUES ('0', 'Purchase');
INSERT INTO `mst_in_type` VALUES ('1', 'Replacement');
INSERT INTO `mst_in_type` VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_jenisbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisbarang`;
CREATE TABLE `mst_jenisbarang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `JnsBarang` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisbarang
-- ----------------------------
INSERT INTO `mst_jenisbarang` VALUES ('0', 'Barang Jadi');
INSERT INTO `mst_jenisbarang` VALUES ('1', 'Bahan Baku');
INSERT INTO `mst_jenisbarang` VALUES ('2', 'Bahan Penolong');
INSERT INTO `mst_jenisbarang` VALUES ('3', 'Mesin/Sparepart');
INSERT INTO `mst_jenisbarang` VALUES ('4', 'Peralatan Pabrik');
INSERT INTO `mst_jenisbarang` VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO `mst_jenisbarang` VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO `mst_jenisbarang` VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO `mst_jenisbarang` VALUES ('8', 'Brg Contoh/Test');
INSERT INTO `mst_jenisbarang` VALUES ('9', 'Lainnya');
INSERT INTO `mst_jenisbarang` VALUES ('10', 'Lebih dr 1 Jenis Brg');
INSERT INTO `mst_jenisbarang` VALUES ('11', 'WIP');
INSERT INTO `mst_jenisbarang` VALUES ('12', 'Scrap');

-- ----------------------------
-- Table structure for `mst_jenisekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisekspor`;
CREATE TABLE `mst_jenisekspor` (
  `KdJnsEkspor` tinyint(1) NOT NULL DEFAULT '0',
  `JnsEkspor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdJnsEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisekspor
-- ----------------------------
INSERT INTO `mst_jenisekspor` VALUES ('1', 'Biasa');
INSERT INTO `mst_jenisekspor` VALUES ('2', 'Akan Diimpor Kembali');
INSERT INTO `mst_jenisekspor` VALUES ('3', 'Reekspor');

-- ----------------------------
-- Table structure for `mst_kategoriekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_kategoriekspor`;
CREATE TABLE `mst_kategoriekspor` (
  `KdKatEkspor` tinyint(2) NOT NULL DEFAULT '0',
  `KatEkspor` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`KdKatEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_kategoriekspor
-- ----------------------------
INSERT INTO `mst_kategoriekspor` VALUES ('1', 'Umum');
INSERT INTO `mst_kategoriekspor` VALUES ('2', 'Kemudahan Impor Tujuan Ekspor (KITE) dengan pembeb');
INSERT INTO `mst_kategoriekspor` VALUES ('3', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pengembalian');
INSERT INTO `mst_kategoriekspor` VALUES ('4', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pembebasan dan pengembalian');
INSERT INTO `mst_kategoriekspor` VALUES ('5', 'Khusus barang kiriman');
INSERT INTO `mst_kategoriekspor` VALUES ('6', 'Khusus barang pindahan');
INSERT INTO `mst_kategoriekspor` VALUES ('7', 'Khusus barang perwakilan negara asing atau badan international');
INSERT INTO `mst_kategoriekspor` VALUES ('8', 'Khusus untuk keperluan ibadah untuk umum, sosial, pendidikan, kebudayaan ');
INSERT INTO `mst_kategoriekspor` VALUES ('9', 'Khusus barang cinderamata');
INSERT INTO `mst_kategoriekspor` VALUES ('10', 'Khusus barang contoh');
INSERT INTO `mst_kategoriekspor` VALUES ('11', 'Khusus barang keperluan penelitian');
INSERT INTO `mst_kategoriekspor` VALUES ('12', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('13', 'Tempat Penimbunan Berikat (TPB) dari Gudang Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('14', 'Tempat Penimbunan Berikat (TPB) dari Tempat Pameran Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('15', 'Tempat Penimbunan Berikat (TPB) dari Toko Bebas Bea');
INSERT INTO `mst_kategoriekspor` VALUES ('16', 'Tempat Penimbunan Berikat (TPB) dari Tempat Lelang Berikat');
INSERT INTO `mst_kategoriekspor` VALUES ('17', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `mst_lokasiperiksa`
-- ----------------------------
DROP TABLE IF EXISTS `mst_lokasiperiksa`;
CREATE TABLE `mst_lokasiperiksa` (
  `KdLokPeriksa` tinyint(1) NOT NULL DEFAULT '0',
  `LokPeriksa` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdLokPeriksa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_lokasiperiksa
-- ----------------------------
INSERT INTO `mst_lokasiperiksa` VALUES ('1', 'Kawasan Pabean');
INSERT INTO `mst_lokasiperiksa` VALUES ('2', 'Luar Kawasan Pabean');

-- ----------------------------
-- Table structure for `mst_negara`
-- ----------------------------
DROP TABLE IF EXISTS `mst_negara`;
CREATE TABLE `mst_negara` (
  `KdNegara` varchar(2) NOT NULL DEFAULT '',
  `NmNegara` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdNegara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_negara
-- ----------------------------
INSERT INTO `mst_negara` VALUES ('CN', 'Cina');
INSERT INTO `mst_negara` VALUES ('ID', 'Indonesia');
INSERT INTO `mst_negara` VALUES ('JP', 'Jepang');
INSERT INTO `mst_negara` VALUES ('KR', 'Korea, Republic Of');
INSERT INTO `mst_negara` VALUES ('US', 'United States');

-- ----------------------------
-- Table structure for `mst_out_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_out_type`;
CREATE TABLE `mst_out_type` (
  `matout_type` varchar(1) NOT NULL DEFAULT '0',
  `matout_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matout_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_out_type
-- ----------------------------
INSERT INTO `mst_out_type` VALUES ('0', 'Consumption');
INSERT INTO `mst_out_type` VALUES ('1', 'Return');
INSERT INTO `mst_out_type` VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_pelabuhan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pelabuhan`;
CREATE TABLE `mst_pelabuhan` (
  `KdPelabuhan` varchar(5) NOT NULL DEFAULT '',
  `NmPelabuhan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdPelabuhan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_pelabuhan
-- ----------------------------
INSERT INTO `mst_pelabuhan` VALUES ('IDTPP', 'Tanjung Priok');
INSERT INTO `mst_pelabuhan` VALUES ('KRPUS', 'Busan (ex Pusan)');
INSERT INTO `mst_pelabuhan` VALUES ('USFAT', 'Fresno');

-- ----------------------------
-- Table structure for `mst_penggunaanbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penggunaanbarang`;
CREATE TABLE `mst_penggunaanbarang` (
  `KdGuna` varchar(1) NOT NULL DEFAULT '',
  `NmGuna` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`KdGuna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penggunaanbarang
-- ----------------------------
INSERT INTO `mst_penggunaanbarang` VALUES ('1', 'Barang Berhubungan Langsung');
INSERT INTO `mst_penggunaanbarang` VALUES ('2', 'Barang Tidak Berhubungan Langsung');
INSERT INTO `mst_penggunaanbarang` VALUES ('3', 'Barang Konsumsi');
INSERT INTO `mst_penggunaanbarang` VALUES ('4', 'Hasil Olahan');
INSERT INTO `mst_penggunaanbarang` VALUES ('5', 'Barang Lainnya');

-- ----------------------------
-- Table structure for `mst_penimbunan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penimbunan`;
CREATE TABLE `mst_penimbunan` (
  `KdTimbun` varchar(5) NOT NULL DEFAULT '',
  `NmTimbun` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdTimbun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penimbunan
-- ----------------------------
INSERT INTO `mst_penimbunan` VALUES ('UTPK', 'UTPK III');

-- ----------------------------
-- Table structure for `mst_perusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_perusahaan`;
CREATE TABLE `mst_perusahaan` (
  `NmPrshn` varchar(50) NOT NULL DEFAULT '',
  `TpPrshn` enum('o','c','s','p') DEFAULT NULL COMMENT '''o''=Owner, ''c''=Customer/Buyer, ''s''=Supplier,''p''=PPJK',
  `NpwpPrshn` varchar(30) DEFAULT NULL,
  `AlmtPrshn` varchar(100) DEFAULT NULL,
  `AlmtPrshn2` varchar(100) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `Prov` varchar(20) DEFAULT NULL,
  `Negara` varchar(20) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `tlp` varchar(30) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `StatusKB` enum('KB','Non KB') DEFAULT NULL,
  `NoTpb` varchar(50) DEFAULT NULL,
  `TgTpb` date DEFAULT NULL,
  `Niper` varchar(50) DEFAULT NULL,
  `NoTDP` varchar(10) DEFAULT NULL,
  `TgTDP` date DEFAULT NULL,
  `Cp` varchar(30) DEFAULT NULL,
  `NipCp` varchar(20) DEFAULT NULL,
  `NoPokokPpjk` varchar(20) DEFAULT NULL,
  `TgPokokPpjk` date DEFAULT NULL,
  `KdApi` enum('1','2') DEFAULT NULL,
  `NoApi` varchar(15) DEFAULT NULL,
  `KdPengguna` varchar(6) DEFAULT NULL,
  `NoReg1` varchar(6) DEFAULT NULL,
  `NoReg2` varchar(6) DEFAULT NULL,
  `KpbcPengawas` varchar(6) DEFAULT NULL,
  `NmPejabat` varchar(30) DEFAULT NULL,
  `NipPejabat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NmPrshn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_perusahaan
-- ----------------------------
INSERT INTO `mst_perusahaan` VALUES ('FANAH JAYA MAINDO', 's', '018698795056000', 'Kawasan Industri Delta Silicon3, Jl. Pinang Blok F No.11 A-B', null, 'Bekasi', 'Jawa Barat', 'ID', '021-89908557', '021-89908556', '31', 'KB', '', null, '', null, null, 'LIM CHIN HON', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. EPS', 'c', '', 'Ds. Cirarab Kec. Legok Tangerang\r\nBanten', null, 'Tangerang', 'Banten', 'ID', '', '021-5978377', '21', 'KB', '', null, '', null, null, 'Mr. Budi', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. FEELUX INDONESIA', 's', '010718773055000', 'JL.Jababeka Raya Blok F No.34 Kawasan Industri Cikarang', null, 'Bekasi', 'Jawa Barat', 'ID', '021-8936788', '021-8936785', '31', 'KB', '', null, '', null, null, 'song jae young', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. KOSTEC INDONESIA', 'o', '01.061.837.9-057.000', '', null, 'Bekasi', 'Jawa Barat', 'Indonesia', null, null, '0', null, '865/KM.4/2010', '2010-05-19', '_', '102747857', '2004-02-17', 'Mr. Y. Tobusawa', null, null, null, '2', '536/APIT/198', '000000', '000192', '001269', '050800', null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. LG ELECTRONICS INDONESIA', 'c', '001', 'Ds. Cirarab Rt02/03 Kec. Legok Kab. Tangerang Banten', null, 'Tangerang', 'Banten', 'ID', '0215979701', '0215978320', '31', 'KB', '', null, '', null, null, 'Wiyono', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. OSTEC', 's', '020265716052000', 'Zona Industri IV, Jl.Manis IV No.22 Jatiuwung Tangerang Banten 15138', null, 'Tangerang', 'Banten', 'ID', '021-5918005', '021-5918025', '31', 'KB', '', null, '', null, null, 'Ardi', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT. TITON MAKAMUR SENTOSA', 's', '023210396034000', 'Ruko Mutiara Taman Palem Blok A 16 No.25 Rt 006/014 Cengkareng -Jakarta Barat. DKI Jakarta Raya', null, 'Jakarta', 'DKI', 'ID', '54350451', '54356633', '31', 'KB', '', null, '', null, null, 'MR. IBNU', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT.CABLEX SENTOSA', 's', '', 'Jl.Perjuangan Blok D No.17, Kebon Jeruk , Jakarta 11530', null, 'Jakarta', 'DKI', 'ID', '021-5310563', '021-5310563', '31', 'Non KB', '', null, '', null, null, 'SURYANI', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT.Global Intijaya', 'c', '', 'Kp. Bungaok', null, '', '', '', '', '', '0', '', '', null, '', null, null, '', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT.INNOTECH INDONESIA', 's', '018693085055000', 'Kawasan Industri Jababeka Blok C -17F', null, 'Bekasi', 'Jawa Barat', 'ID', '021-8935217', '021-89830365', '31', 'KB', '', null, '', null, null, 'HA SONG SOO', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT.MOVING -TECH', 's', '018696534055000', 'Jl.Desa Cukanggalih 2 Rt/Rw 002/02 Curug Tangerang Banten', null, 'Tangerang', 'Banten', 'ID', '021-71683399', '021-71683377', '31', 'KB', '', null, '', null, null, 'Ms. Diah', null, '', '0000-00-00', null, null, null, null, null, null, null, null);
INSERT INTO `mst_perusahaan` VALUES ('PT.SHIN WON HI- TECH', 's', '018826651052000', 'Jl.Raya Serang KM.12 Cikupa Tangerang Banten 15710', null, 'Tangerang', 'Banten', 'ID', '021-59405930-32', '021-59405933', '31', 'KB', '', null, '', null, null, 'Ms. Linda', null, '', '0000-00-00', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `mst_status`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status`;
CREATE TABLE `mst_status` (
  `KdStatus` varchar(2) NOT NULL DEFAULT '',
  `NmStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status
-- ----------------------------
INSERT INTO `mst_status` VALUES ('10', 'Koperasi');
INSERT INTO `mst_status` VALUES ('20', 'PMDN (migas)');
INSERT INTO `mst_status` VALUES ('21', 'PMDN (non migas)');
INSERT INTO `mst_status` VALUES ('30', 'PMA (migas)');
INSERT INTO `mst_status` VALUES ('31', 'PMA (non migas)');
INSERT INTO `mst_status` VALUES ('40', 'BUMN');
INSERT INTO `mst_status` VALUES ('50', 'BUMD');
INSERT INTO `mst_status` VALUES ('60', 'Perorangan');
INSERT INTO `mst_status` VALUES ('90', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_status_petikemas`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status_petikemas`;
CREATE TABLE `mst_status_petikemas` (
  `KdStPetiKemas` varchar(6) NOT NULL DEFAULT '',
  `NmStPetiKemas` varchar(20) DEFAULT NULL,
  `UrStPetiKemas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStPetiKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status_petikemas
-- ----------------------------
INSERT INTO `mst_status_petikemas` VALUES ('1', 'FCL', 'Full Container Load');
INSERT INTO `mst_status_petikemas` VALUES ('2', 'LCL', 'Less Container Load');
INSERT INTO `mst_status_petikemas` VALUES ('3', 'Gabungan FCL dan LCL', 'Gabungan FCL dan LCL');

-- ----------------------------
-- Table structure for `penggunaanbarang`
-- ----------------------------
DROP TABLE IF EXISTS `penggunaanbarang`;
CREATE TABLE `penggunaanbarang` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` tinyint(2) NOT NULL COMMENT 'No. Urut',
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `NoAju` varchar(6) DEFAULT NULL,
  `NoUrut` tinyint(2) NOT NULL DEFAULT '0',
  `KdBarang` varchar(11) DEFAULT NULL,
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `qty` int(11) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `BM` decimal(12,2) DEFAULT NULL,
  `Cukai` decimal(12,2) DEFAULT NULL,
  `PPN` decimal(12,2) DEFAULT NULL,
  `PPnBM` decimal(12,2) DEFAULT NULL,
  `PPh` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penggunaanbarang
-- ----------------------------
INSERT INTO `penggunaanbarang` VALUES ('3', '000001', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '000003', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '000004', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '000005', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '000006', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '201..2', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '201.20', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO `penggunaanbarang` VALUES ('3', '201207', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');

-- ----------------------------
-- Table structure for `penjamin`
-- ----------------------------
DROP TABLE IF EXISTS `penjamin`;
CREATE TABLE `penjamin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NmPenjamin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjamin
-- ----------------------------
INSERT INTO `penjamin` VALUES ('1', 'PT.ASURANSI MEGA PRATAMA');
INSERT INTO `penjamin` VALUES ('7', '1');
INSERT INTO `penjamin` VALUES ('8', '');

-- ----------------------------
-- Table structure for `ppic_fgmatcon`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_fgmatcon`;
CREATE TABLE `ppic_fgmatcon` (
  `matcon_id` varchar(20) NOT NULL COMMENT 'ID Material Consumption',
  `child_no` int(10) NOT NULL COMMENT 'Nomor Urut Detail',
  `mat_id` varchar(20) NOT NULL COMMENT 'ID Material',
  `qty` decimal(10,2) NOT NULL COMMENT 'Jumlah Pemakaian',
  PRIMARY KEY (`matcon_id`,`child_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ppic_fgmatcon
-- ----------------------------
INSERT INTO `ppic_fgmatcon` VALUES ('123', '1', 'ALME0001', '900.00');
INSERT INTO `ppic_fgmatcon` VALUES ('123', '2', 'ALME0002', '300.00');

-- ----------------------------
-- Table structure for `ppic_wodet`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_wodet`;
CREATE TABLE `ppic_wodet` (
  `wo_id` int(10) NOT NULL,
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `qty_plan` decimal(12,2) NOT NULL,
  PRIMARY KEY (`wo_id`,`child_no`),
  CONSTRAINT `ppic_wodet_ibfk_1` FOREIGN KEY (`wo_id`) REFERENCES `ppic_wohdr` (`wo_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Work Order';

-- ----------------------------
-- Records of ppic_wodet
-- ----------------------------
INSERT INTO `ppic_wodet` VALUES ('3', '1', '123', '1.00');

-- ----------------------------
-- Table structure for `ppic_wohdr`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_wohdr`;
CREATE TABLE `ppic_wohdr` (
  `wo_id` int(10) NOT NULL AUTO_INCREMENT,
  `wo_no` varchar(20) NOT NULL,
  `wo_date` date NOT NULL,
  `so_id` int(10) NOT NULL,
  `expplan_date` date NOT NULL COMMENT 'Tanggal Ekspor Rencana',
  `tot_qty` decimal(9,2) NOT NULL,
  `notes` varchar(80) NOT NULL,
  PRIMARY KEY (`wo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Header Work Order';

-- ----------------------------
-- Records of ppic_wohdr
-- ----------------------------
INSERT INTO `ppic_wohdr` VALUES ('3', '002', '2012-09-19', '25', '2012-09-20', '1.00', 'sial');

-- ----------------------------
-- Table structure for `pur_podet`
-- ----------------------------
DROP TABLE IF EXISTS `pur_podet`;
CREATE TABLE `pur_podet` (
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Material',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Qty saat pemesanan',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Harga Satuan Barang',
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`po_id`,`child_no`),
  CONSTRAINT `pur_podet_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `pur_pohdr` (`po_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang';

-- ----------------------------
-- Records of pur_podet
-- ----------------------------
INSERT INTO `pur_podet` VALUES ('3', '1', 'TESMAT-2', '2.00', '2.00', null);
INSERT INTO `pur_podet` VALUES ('4', '1', 'TESMAT-1', '1.00', '2.00', null);
INSERT INTO `pur_podet` VALUES ('5', '1', 'ALME0002', '200.00', '100.00', null);
INSERT INTO `pur_podet` VALUES ('6', '1', 'M001', '100.00', '200.00', null);
INSERT INTO `pur_podet` VALUES ('6', '2', 'P001', '200.00', '100.00', null);

-- ----------------------------
-- Table structure for `pur_pohdr`
-- ----------------------------
DROP TABLE IF EXISTS `pur_pohdr`;
CREATE TABLE `pur_pohdr` (
  `po_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `po_type` enum('0','1') DEFAULT '0' COMMENT '0=po normal, 1=po return',
  `po_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pesanan',
  `po_date` date NOT NULL COMMENT 'Tanggal dan Jam Pemesanan',
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'Kode Supplier Tujuan',
  `attn` varchar(40) NOT NULL DEFAULT '' COMMENT 'Contact Person Supplier',
  `currency` varchar(3) NOT NULL DEFAULT 'IDR',
  `dlv_date` datetime NOT NULL COMMENT 'Tanggal Barang akan Dikirim',
  `wh_id` int(2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  `sub_total` decimal(19,2) NOT NULL COMMENT 'Total field ''amount_po'' pada tabel detailnya',
  `disc_pct` decimal(5,2) NOT NULL COMMENT 'Persentase Diskon',
  `disc_amt` decimal(15,2) NOT NULL COMMENT 'Nilai Diskon',
  `ppn` decimal(10,2) NOT NULL,
  `tot_qty` decimal(10,2) NOT NULL COMMENT 'Nilai setelah dikurangi Diskon, ditambah PPn',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `terms` varchar(30) NOT NULL DEFAULT '1',
  `spec` varchar(50) DEFAULT NULL,
  `width_tol` varchar(20) DEFAULT NULL,
  `thick_tol` varchar(20) DEFAULT NULL,
  `Wrmax` int(10) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `auth_sign` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Pesanan Material ke Supplier';

-- ----------------------------
-- Records of pur_pohdr
-- ----------------------------
INSERT INTO `pur_pohdr` VALUES ('3', '1', '1', '2012-08-31', '2', '222', 'PT. ALUMINDO LIGHT METAL INDUSTRY', '2', 'USD', '2012-08-31 00:00:00', '1', '2', '0.00', '0.00', '0.00', '1.00', '0.00', null, '1', '1', '1', '1', '1', '2', '2');
INSERT INTO `pur_pohdr` VALUES ('4', '1', '2', '2012-08-31', '1', '111', 'PT. INDAL ALUMINIUM INDUSTRY - DIV. ISS', '1', 'USD', '2012-08-31 00:00:00', '1', '1', '0.00', '0.00', '0.00', '2.00', '0.00', null, '2', '2', '1', '1', '1', '2', '2');
INSERT INTO `pur_pohdr` VALUES ('5', '0', '001', '2012-08-06', null, null, 'PT. ALUMINDO LIGHT METAL INDUSTRY', '1', 'USD', '2012-09-13 00:00:00', '1', '3', '0.00', '0.00', '0.00', '10.00', '0.00', null, '2', '4', '6', '7', '9', '8', '10');
INSERT INTO `pur_pohdr` VALUES ('6', '0', '002', '2012-10-28', null, null, 'PT. DIHEN BERSAMA', 'Kikin', 'Rp', '2012-10-31 00:00:00', '0', 'Just a test', '0.00', '0.00', '0.00', '10.00', '0.00', null, 'tes', '', '', '', '0', '', '');

-- ----------------------------
-- Table structure for `satuan`
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `KdSat` varchar(3) NOT NULL DEFAULT '' COMMENT 'Kode Satuan',
  `UrSat` varchar(30) DEFAULT NULL COMMENT 'Uraian Satuan',
  PRIMARY KEY (`KdSat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of satuan
-- ----------------------------
INSERT INTO `satuan` VALUES ('ACR', 'Acre (4840 yd2)');
INSERT INTO `satuan` VALUES ('AMH', 'Ampere-hour  (3,6 kC)');
INSERT INTO `satuan` VALUES ('AMP', 'Ampere');
INSERT INTO `satuan` VALUES ('ANN', 'Year');
INSERT INTO `satuan` VALUES ('APZ', 'Ounce GB,US (31,10348 g)');
INSERT INTO `satuan` VALUES ('ARE', 'Are (100m2)');
INSERT INTO `satuan` VALUES ('ATM', 'Standard atmosphere (101325 Pa');
INSERT INTO `satuan` VALUES ('ATT', 'Technical atmosphere (98066,5 ');
INSERT INTO `satuan` VALUES ('BAR', 'Bar');
INSERT INTO `satuan` VALUES ('BIL', 'Trillion US / Billion');
INSERT INTO `satuan` VALUES ('BLD', 'Dry barrel (115,627 dm3)');
INSERT INTO `satuan` VALUES ('BLL', 'Barrel (petroleum) (458,987 dm');
INSERT INTO `satuan` VALUES ('BUA', 'Bushel (35,2391 dm3)');
INSERT INTO `satuan` VALUES ('BUI', 'Bushel (36,36874 dm3)');
INSERT INTO `satuan` VALUES ('CCT', 'Carrying capacity in metric to');
INSERT INTO `satuan` VALUES ('CDL', 'Candela');
INSERT INTO `satuan` VALUES ('CEL', 'Degree celcius');
INSERT INTO `satuan` VALUES ('CEN', 'Hundred');
INSERT INTO `satuan` VALUES ('CKG', 'Coulomb per kilogram');
INSERT INTO `satuan` VALUES ('CLT', 'Centilitre');
INSERT INTO `satuan` VALUES ('CMK', 'Square centimetre');
INSERT INTO `satuan` VALUES ('CMQ', 'Cubic centimetre');
INSERT INTO `satuan` VALUES ('CMT', 'Centimetre');
INSERT INTO `satuan` VALUES ('CNP', 'Hundred packs');
INSERT INTO `satuan` VALUES ('CNT', 'Cental GB (45,359237 kg)');
INSERT INTO `satuan` VALUES ('COU', 'Coulomb');
INSERT INTO `satuan` VALUES ('CTM', 'Metric carat (200 mg = 2.10-4 ');
INSERT INTO `satuan` VALUES ('CWA', 'Hundredweight, US (45,3592 kg)');
INSERT INTO `satuan` VALUES ('CWI', 'Long/ hundredweight GB (50,802');
INSERT INTO `satuan` VALUES ('DAA', 'Decare');
INSERT INTO `satuan` VALUES ('DAD', 'Ten day');
INSERT INTO `satuan` VALUES ('DAY', 'Day');
INSERT INTO `satuan` VALUES ('DBC', 'Decade (ten years)');
INSERT INTO `satuan` VALUES ('DMK', 'Square decimetre');
INSERT INTO `satuan` VALUES ('DMQ', 'Cubic decimetre');
INSERT INTO `satuan` VALUES ('DMT', 'Decimetre');
INSERT INTO `satuan` VALUES ('DPR', 'Dozen pairs');
INSERT INTO `satuan` VALUES ('DPT', 'Displecement tonnege');
INSERT INTO `satuan` VALUES ('DRA', 'Dram US (3,887935 g)');
INSERT INTO `satuan` VALUES ('DRI', 'Dram GB (1,771745 g)');
INSERT INTO `satuan` VALUES ('DRL', 'Dozen rolls');
INSERT INTO `satuan` VALUES ('DRM', 'Drachm, GB (3,887935 g)');
INSERT INTO `satuan` VALUES ('DTN', 'Decitonne, Centner, Quintall, ');
INSERT INTO `satuan` VALUES ('DWT', 'Pennyweight GB,US (1,555174 g)');
INSERT INTO `satuan` VALUES ('DZN', 'Dozen');
INSERT INTO `satuan` VALUES ('DZP', 'Dozen packs');
INSERT INTO `satuan` VALUES ('FAH', 'degree Fahrenheit');
INSERT INTO `satuan` VALUES ('FOT', 'Foot (0.3048 m)');
INSERT INTO `satuan` VALUES ('FTK', 'Square foot');
INSERT INTO `satuan` VALUES ('FTQ', 'Cubic foot');
INSERT INTO `satuan` VALUES ('GBQ', 'Gigabecquerel');
INSERT INTO `satuan` VALUES ('GGR', 'Great gross (12 gross)');
INSERT INTO `satuan` VALUES ('GIA', 'Gill (11,8294 cm3)');
INSERT INTO `satuan` VALUES ('GII', 'Gill (0,142065 dm3)');
INSERT INTO `satuan` VALUES ('GLD', 'Dry gallon (4,404884 dm3)');
INSERT INTO `satuan` VALUES ('GLI', 'Gallon (4,546092 dm3)');
INSERT INTO `satuan` VALUES ('GLL', 'Liquid gallon (3,78541 dm3)');
INSERT INTO `satuan` VALUES ('GRM', 'Gram');
INSERT INTO `satuan` VALUES ('GRN', 'Grain GB,US (64,798910 mg)');
INSERT INTO `satuan` VALUES ('GRO', 'Gross');
INSERT INTO `satuan` VALUES ('GRT', 'Gross (register) ton');
INSERT INTO `satuan` VALUES ('GWH', 'Gigawatt-hour (1 million KW/h)');
INSERT INTO `satuan` VALUES ('HAR', 'Hectare');
INSERT INTO `satuan` VALUES ('HBA', 'Hectobar');
INSERT INTO `satuan` VALUES ('HGM', 'Hectogram');
INSERT INTO `satuan` VALUES ('HIU', 'Hundred intenational units');
INSERT INTO `satuan` VALUES ('HLT', 'Hectolitre');
INSERT INTO `satuan` VALUES ('HMQ', 'Million cubic metres');
INSERT INTO `satuan` VALUES ('HMT', 'Hectometre');
INSERT INTO `satuan` VALUES ('HPA', 'Hectolitre of pure alcohol');
INSERT INTO `satuan` VALUES ('HTZ', 'Hertz');
INSERT INTO `satuan` VALUES ('HUR', 'Hour');
INSERT INTO `satuan` VALUES ('INH', 'Inch (2.54 mm)');
INSERT INTO `satuan` VALUES ('INK', 'Square inch');
INSERT INTO `satuan` VALUES ('INQ', 'Cubic inch');
INSERT INTO `satuan` VALUES ('JOU', 'Joule');
INSERT INTO `satuan` VALUES ('KBA', 'Kilobar');
INSERT INTO `satuan` VALUES ('KEL', 'Kelvin');
INSERT INTO `satuan` VALUES ('KG', 'Kilogram');
INSERT INTO `satuan` VALUES ('KGM', 'Kilogram');
INSERT INTO `satuan` VALUES ('KJO', 'Kilojoule');
INSERT INTO `satuan` VALUES ('KMH', 'Kilometre per hour');
INSERT INTO `satuan` VALUES ('KMK', 'Square kilometre');
INSERT INTO `satuan` VALUES ('KMQ', 'Kilogram per cubic meter');
INSERT INTO `satuan` VALUES ('KMT', 'Kilometre');
INSERT INTO `satuan` VALUES ('KNI', 'Kilogram of nitrogen');
INSERT INTO `satuan` VALUES ('KNS', 'Kilogram of named substance');
INSERT INTO `satuan` VALUES ('KNT', 'Knot ( 1 n mile oer hour');
INSERT INTO `satuan` VALUES ('KPH', 'Kilogram of potassium hydroxid');
INSERT INTO `satuan` VALUES ('KPO', 'Kilogram of potassium oxide');
INSERT INTO `satuan` VALUES ('KPP', 'Kilogram of phosphorus pentoxi');
INSERT INTO `satuan` VALUES ('KSD', 'Kilogram of substance 90 per c');
INSERT INTO `satuan` VALUES ('KSH', 'Kilogram of sodium hydyoxide  ');
INSERT INTO `satuan` VALUES ('KTN', 'Kilotonne');
INSERT INTO `satuan` VALUES ('KUR', 'Kilogram of uranium');
INSERT INTO `satuan` VALUES ('KVA', 'Kilovolt - ampere');
INSERT INTO `satuan` VALUES ('KWH', 'Kilowatt-hour');
INSERT INTO `satuan` VALUES ('KWT', 'Kilowatt');
INSERT INTO `satuan` VALUES ('LBR', 'Pound GB,US (0,45359237 kg)');
INSERT INTO `satuan` VALUES ('LBT', 'Troy pound, US 9373,242 g)');
INSERT INTO `satuan` VALUES ('LNT', 'Long ton GB, US 2/ (1,0160469 ');
INSERT INTO `satuan` VALUES ('LPA', 'Litre of pure alcohol');
INSERT INTO `satuan` VALUES ('LTR', 'Litre ( 1 dm3 )');
INSERT INTO `satuan` VALUES ('LUM', 'Lumen');
INSERT INTO `satuan` VALUES ('MAL', 'Megalitre');
INSERT INTO `satuan` VALUES ('MAM', 'Megametre');
INSERT INTO `satuan` VALUES ('MAW', 'Megawatt');
INSERT INTO `satuan` VALUES ('MGM', 'Milligram');
INSERT INTO `satuan` VALUES ('MID', 'Thousand');
INSERT INTO `satuan` VALUES ('MIK', 'Square mile');
INSERT INTO `satuan` VALUES ('MIN', 'Minute');
INSERT INTO `satuan` VALUES ('MIO', 'Million');
INSERT INTO `satuan` VALUES ('MIU', 'Million international units');
INSERT INTO `satuan` VALUES ('MLD', 'Milliard, Billion US');
INSERT INTO `satuan` VALUES ('MLT', 'Millilitre');
INSERT INTO `satuan` VALUES ('MMK', 'Square millimetre');
INSERT INTO `satuan` VALUES ('MMQ', 'Cubic millimetre');
INSERT INTO `satuan` VALUES ('MMT', 'Millimetre');
INSERT INTO `satuan` VALUES ('MON', 'Month');
INSERT INTO `satuan` VALUES ('MQH', 'cubic metre per hour');
INSERT INTO `satuan` VALUES ('MSK', 'Metre per second squared');
INSERT INTO `satuan` VALUES ('MTK', 'Square metre');
INSERT INTO `satuan` VALUES ('MTQ', 'Cubic metre');
INSERT INTO `satuan` VALUES ('MTR', 'Metre');
INSERT INTO `satuan` VALUES ('MVA', 'Megavolt -  ampere (1000 KVA)');
INSERT INTO `satuan` VALUES ('MWH', 'Megawatt-hour (1000 KW/h)');
INSERT INTO `satuan` VALUES ('NAR', 'Number of articles');
INSERT INTO `satuan` VALUES ('NBB', 'Number bobbins');
INSERT INTO `satuan` VALUES ('NEW', 'Newton');
INSERT INTO `satuan` VALUES ('NIU', 'Number of international units');
INSERT INTO `satuan` VALUES ('NMB', 'Number');
INSERT INTO `satuan` VALUES ('NMI', 'Nautical mile (1852 m)');
INSERT INTO `satuan` VALUES ('NMP', 'Number of packs');
INSERT INTO `satuan` VALUES ('NPL', 'Number of parcels');
INSERT INTO `satuan` VALUES ('NPR', 'number of pairs');
INSERT INTO `satuan` VALUES ('NPT', 'Number of parts');
INSERT INTO `satuan` VALUES ('NRL', 'Number of rolls');
INSERT INTO `satuan` VALUES ('NTT', 'Net (regirter) ton');
INSERT INTO `satuan` VALUES ('OHM', 'Ohm');
INSERT INTO `satuan` VALUES ('ONZ', 'Ounce GB,US (28,349523 g)');
INSERT INTO `satuan` VALUES ('OZA', 'Fluid ounce (29,5735 cm3)');
INSERT INTO `satuan` VALUES ('OZI', 'Fluid ounce (29,5735 cm3)');
INSERT INTO `satuan` VALUES ('PAL', 'Pascal');
INSERT INTO `satuan` VALUES ('PCS', 'Pieces');
INSERT INTO `satuan` VALUES ('PGL', 'Proof gallon');
INSERT INTO `satuan` VALUES ('PTD', 'Dry pint (0.55061 dm3)');
INSERT INTO `satuan` VALUES ('PTI', 'Pint (0,568262 dm3)');
INSERT INTO `satuan` VALUES ('PTL', 'Liquid Pint (0,473176 dm3)');
INSERT INTO `satuan` VALUES ('QAN', 'Quarter (of a year)');
INSERT INTO `satuan` VALUES ('QTD', 'Dry quart (1,101221 dm3)');
INSERT INTO `satuan` VALUES ('QTI', 'Quart (1,136523 dm3)');
INSERT INTO `satuan` VALUES ('QTL', 'Liquid quart (0,946353 dm3)');
INSERT INTO `satuan` VALUES ('QTR', 'Quarter GB (12,700586 kg)');
INSERT INTO `satuan` VALUES ('RPM', 'Revolution per minute');
INSERT INTO `satuan` VALUES ('RPS', 'Revolution per second');
INSERT INTO `satuan` VALUES ('SAN', 'Half year (six Months)');
INSERT INTO `satuan` VALUES ('SCO', 'Score');
INSERT INTO `satuan` VALUES ('SCR', 'Scruple GP,US (1,295982 g)');
INSERT INTO `satuan` VALUES ('SEC', 'Second');
INSERT INTO `satuan` VALUES ('SET', 'Set');
INSERT INTO `satuan` VALUES ('SHT', 'Shipping ton');
INSERT INTO `satuan` VALUES ('SIE', 'Siemens');
INSERT INTO `satuan` VALUES ('SMI', 'Statute mile (1609.344 m)');
INSERT INTO `satuan` VALUES ('SST', 'Short standard  (7200 matches ');
INSERT INTO `satuan` VALUES ('STI', 'Stone GB (6,350293 kg)');
INSERT INTO `satuan` VALUES ('STN', 'Short ton GB, US 2/ (0,9071847');
INSERT INTO `satuan` VALUES ('TAH', 'Thousand ampere-hour');
INSERT INTO `satuan` VALUES ('TNE', 'Tonne, Metric ton (1000 kg)');
INSERT INTO `satuan` VALUES ('TPR', 'Ten pairs');
INSERT INTO `satuan` VALUES ('TQD', 'Thousand cubic metres per day');
INSERT INTO `satuan` VALUES ('TRL', 'Trillion Eur');
INSERT INTO `satuan` VALUES ('TSD', 'Tonne of subtance 90 per cent ');
INSERT INTO `satuan` VALUES ('TSH', 'Ton of steam per hour');
INSERT INTO `satuan` VALUES ('VLT', 'Volt');
INSERT INTO `satuan` VALUES ('WCD', 'Cord (3,63 m3)');
INSERT INTO `satuan` VALUES ('WEB', 'Weber');
INSERT INTO `satuan` VALUES ('WEE', 'Week');
INSERT INTO `satuan` VALUES ('WHR', 'Watt-hour');
INSERT INTO `satuan` VALUES ('WSD', 'Standard');
INSERT INTO `satuan` VALUES ('WTT', 'Watt');
INSERT INTO `satuan` VALUES ('YDK', 'Square yard');
INSERT INTO `satuan` VALUES ('YDQ', 'Cubic yard');
INSERT INTO `satuan` VALUES ('YRD', 'Yard (0.9144 m)');

-- ----------------------------
-- Table structure for `tujuan_pengiriman`
-- ----------------------------
DROP TABLE IF EXISTS `tujuan_pengiriman`;
CREATE TABLE `tujuan_pengiriman` (
  `KdTp` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Tujuan Pengiriman',
  `UrTp` varchar(25) DEFAULT NULL COMMENT 'Uraian Tujuan Pengiriman',
  PRIMARY KEY (`KdTp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tujuan_pengiriman
-- ----------------------------
INSERT INTO `tujuan_pengiriman` VALUES ('1', 'Ditimbun');
INSERT INTO `tujuan_pengiriman` VALUES ('2', 'Diproses');
INSERT INTO `tujuan_pengiriman` VALUES ('3', 'Disubkontrakkan');
INSERT INTO `tujuan_pengiriman` VALUES ('4', 'Dipinjamkan');
INSERT INTO `tujuan_pengiriman` VALUES ('5', 'Diperbaiki');
INSERT INTO `tujuan_pengiriman` VALUES ('6', 'Pengembalian Subkontrak');
INSERT INTO `tujuan_pengiriman` VALUES ('7', 'Pengembalian Pinjaman');
INSERT INTO `tujuan_pengiriman` VALUES ('8', 'Pengembalian Perbaikan');
INSERT INTO `tujuan_pengiriman` VALUES ('9', 'Lainnya');
INSERT INTO `tujuan_pengiriman` VALUES ('10', 'Dijual');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `nama_user` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `kd_fact` varchar(2) DEFAULT NULL,
  `kd_cmpy` varchar(2) NOT NULL,
  `grup` enum('admin','gudang','exim','bc','produksi','marketing','purchasing','eksekutif') DEFAULT NULL,
  PRIMARY KEY (`nama_user`,`kd_cmpy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '9c8f9b597c7e4b218d58ed8631e6d6a3', null, '01', 'admin');
INSERT INTO `user` VALUES ('asep', 'e3569ae13f3f2f1d6b9971ff27e84c7a', null, '', 'eksekutif');
INSERT INTO `user` VALUES ('atik', 'fa0ee05e910da67ed3f6b832da51828b', null, '', 'exim');
INSERT INTO `user` VALUES ('wahyu', '7d6ba1990fc2791c9ad7c19287b76fea', null, '', 'gudang');
INSERT INTO `user` VALUES ('bc', 'fe51fce2cf2e87b6bf2aa84b0968e877', null, '', 'bc');
INSERT INTO `user` VALUES ('dian', '91106d17822e4c623880fef2551ea2c2', null, '', 'purchasing');
INSERT INTO `user` VALUES ('retno', '6a72865a04fba26cde9d0957f9a6c7cc', null, '', 'purchasing');
INSERT INTO `user` VALUES ('siti_n', '26af34f2e7d9b2f0d47b4bb1437024be', null, '', 'produksi');
INSERT INTO `user` VALUES ('budi', '9c7a5bce0a2b65c62a02481d87715608', null, '', 'produksi');
INSERT INTO `user` VALUES ('ika', 'f5256bd6d7712d8c744decd6684e98a3', null, '', 'marketing');
INSERT INTO `user` VALUES ('siti', 'd7764c3ad48f13cd5c15710912b47476', null, '', 'marketing');

-- ----------------------------
-- Table structure for `valuta`
-- ----------------------------
DROP TABLE IF EXISTS `valuta`;
CREATE TABLE `valuta` (
  `KdVal` varchar(3) NOT NULL,
  `UrVal` varchar(30) NOT NULL,
  PRIMARY KEY (`KdVal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of valuta
-- ----------------------------
INSERT INTO `valuta` VALUES ('BRL', 'Brazilian Real');
INSERT INTO `valuta` VALUES ('BSD', 'Bahamian Dollar');
INSERT INTO `valuta` VALUES ('BTN', 'Ngultrum');
INSERT INTO `valuta` VALUES ('BWP', 'Pula');
INSERT INTO `valuta` VALUES ('BYB', 'Belarussian Ruble');
INSERT INTO `valuta` VALUES ('BZD', 'Belize Dollar');
INSERT INTO `valuta` VALUES ('CAD', 'Canadian Dollar');
INSERT INTO `valuta` VALUES ('CHF', 'Swiss Franc');
INSERT INTO `valuta` VALUES ('CLP', 'Chilean Peso');
INSERT INTO `valuta` VALUES ('CNY', 'Yuan Renminbi');
INSERT INTO `valuta` VALUES ('COP', 'Colombian Peso');
INSERT INTO `valuta` VALUES ('CRC', 'Costa Rican Colon');
INSERT INTO `valuta` VALUES ('CUP', 'Cuban Peso');
INSERT INTO `valuta` VALUES ('CVE', 'Cape Verde Escudo');
INSERT INTO `valuta` VALUES ('CYP', 'Cyprus Pound');
INSERT INTO `valuta` VALUES ('CZK', 'Czech Koruna');
INSERT INTO `valuta` VALUES ('DEM', 'Deustche Mark');
INSERT INTO `valuta` VALUES ('DJF', 'Djibouti Franc');
INSERT INTO `valuta` VALUES ('DKK', 'Danish Krone');
INSERT INTO `valuta` VALUES ('DOP', 'Domincan Peso');
INSERT INTO `valuta` VALUES ('DZD', 'Algerian Dinar');
INSERT INTO `valuta` VALUES ('ECS', 'Sucre');
INSERT INTO `valuta` VALUES ('EEK', 'Kroon');
INSERT INTO `valuta` VALUES ('EGP', 'Egyptian Pound');
INSERT INTO `valuta` VALUES ('ESP', 'Spainish peseta');
INSERT INTO `valuta` VALUES ('ETB', 'Ethiopian Birr');
INSERT INTO `valuta` VALUES ('EUR', 'Euro');
INSERT INTO `valuta` VALUES ('FIM', 'Markka');
INSERT INTO `valuta` VALUES ('FJD', 'Fiji Dollar');
INSERT INTO `valuta` VALUES ('FKP', 'Falkland Islands Pound');
INSERT INTO `valuta` VALUES ('FRF', 'Franch Franc');
INSERT INTO `valuta` VALUES ('GBP', 'Pound Sterling');
INSERT INTO `valuta` VALUES ('GEK', 'Georgian Coupon');
INSERT INTO `valuta` VALUES ('GHC', 'Cedi');
INSERT INTO `valuta` VALUES ('GIP', 'Gibraltar Pound');
INSERT INTO `valuta` VALUES ('GMD', 'Dalasi');
INSERT INTO `valuta` VALUES ('GNF', 'Guinea Franc');
INSERT INTO `valuta` VALUES ('GRD', 'Drachma');
INSERT INTO `valuta` VALUES ('GTQ', 'Quetzal');
INSERT INTO `valuta` VALUES ('GWP', 'Guinea-Bissau Peso');
INSERT INTO `valuta` VALUES ('GYD', 'Guyana Dollar');
INSERT INTO `valuta` VALUES ('HKD', 'Hong Kong Dollar');
INSERT INTO `valuta` VALUES ('HNL', 'Lempira');
INSERT INTO `valuta` VALUES ('HRD', 'Croatian Dinar');
INSERT INTO `valuta` VALUES ('HRK', 'Kuna');
INSERT INTO `valuta` VALUES ('HTG', 'Gourde');
INSERT INTO `valuta` VALUES ('HUF', 'Forint');
INSERT INTO `valuta` VALUES ('IDR', 'Rupiah');
INSERT INTO `valuta` VALUES ('IEP', 'Irish Pound');
INSERT INTO `valuta` VALUES ('ILS', 'Shekel');
INSERT INTO `valuta` VALUES ('INR', 'Indian Rupee');
INSERT INTO `valuta` VALUES ('IQD', 'Iraqi Dinar');
INSERT INTO `valuta` VALUES ('IRR', 'Iranian Rial');
INSERT INTO `valuta` VALUES ('ISK', 'Iceland Krona');
INSERT INTO `valuta` VALUES ('ITL', 'Italian Lira');
INSERT INTO `valuta` VALUES ('JMD', 'Jamaican Dollar');
INSERT INTO `valuta` VALUES ('JOD', 'Jordanian Dinar');
INSERT INTO `valuta` VALUES ('JPY', 'Yen');
INSERT INTO `valuta` VALUES ('KES', 'Kenyan Shilling');
INSERT INTO `valuta` VALUES ('KGS', 'Som');
INSERT INTO `valuta` VALUES ('KHR', 'Riel');
INSERT INTO `valuta` VALUES ('KMF', 'Comoro Franc');
INSERT INTO `valuta` VALUES ('KPW', 'North Korean Won');
INSERT INTO `valuta` VALUES ('KRW', 'Won');
INSERT INTO `valuta` VALUES ('KWD', 'Kuwauti Dinar');
INSERT INTO `valuta` VALUES ('KYD', 'Cayman Islands Dollar');
INSERT INTO `valuta` VALUES ('KZT', 'Tenge');
INSERT INTO `valuta` VALUES ('LAK', 'Kip');
INSERT INTO `valuta` VALUES ('LBP', 'Lebanese Pound');
INSERT INTO `valuta` VALUES ('LKR', 'Sri Langka Rupee');
INSERT INTO `valuta` VALUES ('LRD', 'Liberian Dollar');
INSERT INTO `valuta` VALUES ('LSL', 'Loli');
INSERT INTO `valuta` VALUES ('LTL', 'Lithuanian Litas');
INSERT INTO `valuta` VALUES ('LUF', 'Luxembourg Franc');
INSERT INTO `valuta` VALUES ('LVL', 'Latvian Lats#');
INSERT INTO `valuta` VALUES ('LVR', 'Latvian Ruble');
INSERT INTO `valuta` VALUES ('LYD', 'Libyan Dinar');
INSERT INTO `valuta` VALUES ('MAD', 'Moroccoan Dirham');
INSERT INTO `valuta` VALUES ('MDL', 'Moldovan Leu');
INSERT INTO `valuta` VALUES ('MGF', 'Malagasy Franc');
INSERT INTO `valuta` VALUES ('MMK', 'Kyat');
INSERT INTO `valuta` VALUES ('MNT', 'Tugrik');
INSERT INTO `valuta` VALUES ('MOP', 'Pataca');
INSERT INTO `valuta` VALUES ('MRO', 'Ouguiya');
INSERT INTO `valuta` VALUES ('MTL', 'Mallese Lira');
INSERT INTO `valuta` VALUES ('MUR', 'Mauritius Pupee');
INSERT INTO `valuta` VALUES ('MVR', 'Rufiyaa');
INSERT INTO `valuta` VALUES ('MWK', 'Kwacha');
INSERT INTO `valuta` VALUES ('MXN', 'Mexican  Nuevo Peso');
INSERT INTO `valuta` VALUES ('MYR', 'Malaysian Ringgit');
INSERT INTO `valuta` VALUES ('MZM', 'Metical');
INSERT INTO `valuta` VALUES ('NAD', 'Namibia Dollar');
INSERT INTO `valuta` VALUES ('NGN', 'Naira');
INSERT INTO `valuta` VALUES ('NIO', 'Cordoba Oro');
INSERT INTO `valuta` VALUES ('NLG', 'Netherlands Guilder');
INSERT INTO `valuta` VALUES ('NOK', 'Norwegian Krone');
INSERT INTO `valuta` VALUES ('NPR', 'Nepalese Rupee');
INSERT INTO `valuta` VALUES ('NZD', 'New Zealand Dollar');
INSERT INTO `valuta` VALUES ('OMR', 'Rial Omani');
INSERT INTO `valuta` VALUES ('PAB', 'Balboa/US  Dollar');
INSERT INTO `valuta` VALUES ('PEN', 'Nuevo Sol');
INSERT INTO `valuta` VALUES ('PGK', 'Kina');
INSERT INTO `valuta` VALUES ('PHP', 'Philippines Peso');
INSERT INTO `valuta` VALUES ('PKR', 'Pakistan Rupee');
INSERT INTO `valuta` VALUES ('PLZ', 'Zloty');
INSERT INTO `valuta` VALUES ('PTE', 'Portuguese Escudo');
INSERT INTO `valuta` VALUES ('PYG', 'Guarani');
INSERT INTO `valuta` VALUES ('QAR', 'Qatari Rial');
INSERT INTO `valuta` VALUES ('ROL', 'Leu');
INSERT INTO `valuta` VALUES ('Rp', 'Rupiah');
INSERT INTO `valuta` VALUES ('RUR', 'Russian Ruble');
INSERT INTO `valuta` VALUES ('RWF', 'Rwanda Franc');
INSERT INTO `valuta` VALUES ('SAR', 'Saudi Riyal');
INSERT INTO `valuta` VALUES ('SBD', 'Solomon Islands Dollar');
INSERT INTO `valuta` VALUES ('SCR', 'Seychelles Rupee');
INSERT INTO `valuta` VALUES ('SDD', 'Sudanase Dinar');
INSERT INTO `valuta` VALUES ('SDP', 'Sudanese Pound');
INSERT INTO `valuta` VALUES ('SEK', 'Swedish Krone');
INSERT INTO `valuta` VALUES ('SGD', 'Singapore Dollar');
INSERT INTO `valuta` VALUES ('SHP', 'St. Helena Pound');
INSERT INTO `valuta` VALUES ('SIT', 'Tolar');
INSERT INTO `valuta` VALUES ('SKK', 'Slovak Koruna');
INSERT INTO `valuta` VALUES ('SLL', 'Leone');
INSERT INTO `valuta` VALUES ('SOS', 'Somalia shilling');
INSERT INTO `valuta` VALUES ('SRG', 'Surinam Guilder');
INSERT INTO `valuta` VALUES ('STD', 'Dobra');
INSERT INTO `valuta` VALUES ('SVC', 'El Salvador Colon');
INSERT INTO `valuta` VALUES ('SYP', 'Syrian Pound');
INSERT INTO `valuta` VALUES ('SZL', 'Lilangeni');
INSERT INTO `valuta` VALUES ('THB', 'Baht');
INSERT INTO `valuta` VALUES ('TMM', 'Manat');
INSERT INTO `valuta` VALUES ('TND', 'Tunisian Dinar');
INSERT INTO `valuta` VALUES ('TOP', 'Pa\'anga');
INSERT INTO `valuta` VALUES ('TRL', 'Turkish Lira');
INSERT INTO `valuta` VALUES ('TTD', 'Trinidad & Tobago Dollar');
INSERT INTO `valuta` VALUES ('TWD', 'New Taiwan Dollar');
INSERT INTO `valuta` VALUES ('TZS', 'Tanzania Shilling');
INSERT INTO `valuta` VALUES ('UAK', 'Karbovanet');
INSERT INTO `valuta` VALUES ('UGX', 'Uganda Shilling');
INSERT INTO `valuta` VALUES ('USD', 'US Dollar');
INSERT INTO `valuta` VALUES ('UYU', 'Peso Uruguayo');
INSERT INTO `valuta` VALUES ('UZS', 'Ubekistan Sum');
INSERT INTO `valuta` VALUES ('VEB', 'Bolivar');
INSERT INTO `valuta` VALUES ('VND', 'Dong');
INSERT INTO `valuta` VALUES ('VUV', 'Vatu');
INSERT INTO `valuta` VALUES ('WST', 'Tala');
INSERT INTO `valuta` VALUES ('XAF', 'CFA  Franc BAEC');
INSERT INTO `valuta` VALUES ('XCD', 'East Caribbean Dollar');
INSERT INTO `valuta` VALUES ('XOF', 'CFA Franc BCEAO');
INSERT INTO `valuta` VALUES ('XPF', 'CFA Franc BEAC');
INSERT INTO `valuta` VALUES ('YER', 'Yemeni Rial');
INSERT INTO `valuta` VALUES ('YUN', 'New Yugosslavian');
INSERT INTO `valuta` VALUES ('ZAL', 'Financial Rand');
INSERT INTO `valuta` VALUES ('ZAR', 'Rand');
INSERT INTO `valuta` VALUES ('ZMK', 'Kwacha');
INSERT INTO `valuta` VALUES ('ZRN', 'Zaife');
INSERT INTO `valuta` VALUES ('ZWD', 'Zimbabwe Dollar');
