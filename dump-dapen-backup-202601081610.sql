-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dapen-backup
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `akuntansi_aturan_kebijakan`
--

DROP TABLE IF EXISTS `akuntansi_aturan_kebijakan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akuntansi_aturan_kebijakan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_folder` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_folder` (`id_folder`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_aturan_kebijakan`
--

LOCK TABLES `akuntansi_aturan_kebijakan` WRITE;
/*!40000 ALTER TABLE `akuntansi_aturan_kebijakan` DISABLE KEYS */;
/*!40000 ALTER TABLE `akuntansi_aturan_kebijakan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akuntansi_jurnal_umum`
--

DROP TABLE IF EXISTS `akuntansi_jurnal_umum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akuntansi_jurnal_umum` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int unsigned DEFAULT NULL,
  `bulan` int unsigned DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_jurnal_umum`
--

LOCK TABLES `akuntansi_jurnal_umum` WRITE;
/*!40000 ALTER TABLE `akuntansi_jurnal_umum` DISABLE KEYS */;
INSERT INTO `akuntansi_jurnal_umum` VALUES (48,2024,1,'Jurnal Umum Januari 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(49,2024,2,'Jurnal Umum Februari 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(50,2024,3,'Jurnal Umum Maret 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(51,2024,4,'Jurnal Umum April 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(52,2024,5,'Jurnal Umum Mei 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(53,2024,1,'Jurnal Umum Januari 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(54,2024,2,'Jurnal Umum Februari 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(55,2024,3,'Jurnal Umum Maret 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(56,2024,4,'Jurnal Umum April 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(57,2024,5,'Jurnal Umum Mei 2024 - Transaksi Rutin',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `akuntansi_jurnal_umum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akuntansi_laporan_audit_investasi`
--

DROP TABLE IF EXISTS `akuntansi_laporan_audit_investasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akuntansi_laporan_audit_investasi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nama_kap` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_audit_investasi`
--

LOCK TABLES `akuntansi_laporan_audit_investasi` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_investasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_investasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akuntansi_laporan_audit_keuangan`
--

DROP TABLE IF EXISTS `akuntansi_laporan_audit_keuangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akuntansi_laporan_audit_keuangan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nama_kap` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_audit_keuangan`
--

LOCK TABLES `akuntansi_laporan_audit_keuangan` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_keuangan` DISABLE KEYS */;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_keuangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akuntansi_laporan_bulanan`
--

DROP TABLE IF EXISTS `akuntansi_laporan_bulanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akuntansi_laporan_bulanan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_bulanan`
--

LOCK TABLES `akuntansi_laporan_bulanan` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_bulanan` DISABLE KEYS */;
INSERT INTO `akuntansi_laporan_bulanan` VALUES (48,'2024-01-31','Laporan Keuangan Bulanan Januari 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(49,'2024-02-29','Laporan Keuangan Bulanan Februari 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(50,'2024-03-31','Laporan Keuangan Bulanan Maret 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(51,'2024-04-30','Laporan Keuangan Bulanan April 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(52,'2024-05-31','Laporan Keuangan Bulanan Mei 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(53,'2024-06-30','Laporan Keuangan Bulanan Juni 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(54,'2024-01-31','Laporan Keuangan Bulanan Januari 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(55,'2024-02-29','Laporan Keuangan Bulanan Februari 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(56,'2024-03-31','Laporan Keuangan Bulanan Maret 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(57,'2024-04-30','Laporan Keuangan Bulanan April 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(58,'2024-05-31','Laporan Keuangan Bulanan Mei 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(59,'2024-06-30','Laporan Keuangan Bulanan Juni 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `akuntansi_laporan_bulanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_aturan_kebijakan`
--

DROP TABLE IF EXISTS `anggaran_aturan_kebijakan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_aturan_kebijakan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_aturan_kebijakan`
--

LOCK TABLES `anggaran_aturan_kebijakan` WRITE;
/*!40000 ALTER TABLE `anggaran_aturan_kebijakan` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggaran_aturan_kebijakan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_dokumen_rra`
--

DROP TABLE IF EXISTS `anggaran_dokumen_rra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_dokumen_rra` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `direktorat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nomor_nota` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nomor_sukka` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_dokumen_rra`
--

LOCK TABLES `anggaran_dokumen_rra` WRITE;
/*!40000 ALTER TABLE `anggaran_dokumen_rra` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggaran_dokumen_rra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_laporan_prbc`
--

DROP TABLE IF EXISTS `anggaran_laporan_prbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_laporan_prbc` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int unsigned DEFAULT NULL,
  `bulan` int unsigned DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_laporan_prbc`
--

LOCK TABLES `anggaran_laporan_prbc` WRITE;
/*!40000 ALTER TABLE `anggaran_laporan_prbc` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggaran_laporan_prbc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_rencana_kerja_direktorat`
--

DROP TABLE IF EXISTS `anggaran_rencana_kerja_direktorat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_rencana_kerja_direktorat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int unsigned DEFAULT NULL,
  `direktorat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_direktorat`
--

LOCK TABLES `anggaran_rencana_kerja_direktorat` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_direktorat` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_direktorat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_rencana_kerja_tahunan`
--

DROP TABLE IF EXISTS `anggaran_rencana_kerja_tahunan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_rencana_kerja_tahunan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int unsigned DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_tahunan`
--

LOCK TABLES `anggaran_rencana_kerja_tahunan` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_tahunan` DISABLE KEYS */;
INSERT INTO `anggaran_rencana_kerja_tahunan` VALUES (139,2024,'Rencana Kerja dan Anggaran Tahunan 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(140,2025,'Rencana Kerja dan Anggaran Tahunan 2025',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(141,2024,'Rencana Kerja dan Anggaran Tahunan 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(142,2025,'Rencana Kerja dan Anggaran Tahunan 2025',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `anggaran_rencana_kerja_tahunan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_rencana_kerja_triwulan`
--

DROP TABLE IF EXISTS `anggaran_rencana_kerja_triwulan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anggaran_rencana_kerja_triwulan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` int unsigned DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_triwulan`
--

LOCK TABLES `anggaran_rencana_kerja_triwulan` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_triwulan` DISABLE KEYS */;
INSERT INTO `anggaran_rencana_kerja_triwulan` VALUES (24,2024,'Rencana Kerja Triwulan I 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(25,2024,'Rencana Kerja Triwulan II 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(26,2024,'Rencana Kerja Triwulan III 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(27,2024,'Rencana Kerja Triwulan IV 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(28,2024,'Rencana Kerja Triwulan I 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(29,2024,'Rencana Kerja Triwulan II 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(30,2024,'Rencana Kerja Triwulan III 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(31,2024,'Rencana Kerja Triwulan IV 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `anggaran_rencana_kerja_triwulan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` int unsigned DEFAULT NULL,
  `old_values` json DEFAULT NULL,
  `new_values` json DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_action` (`user_id`,`action`),
  KEY `idx_table_record` (`table_name`,`record_id`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_functions`
--

DROP TABLE IF EXISTS `base_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_functions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `function_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_functions`
--

LOCK TABLES `base_functions` WRITE;
/*!40000 ALTER TABLE `base_functions` DISABLE KEYS */;
INSERT INTO `base_functions` VALUES (1,'Create','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(2,'Read','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(3,'Update','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(4,'Delete','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(5,'Search','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_groups`
--

DROP TABLE IF EXISTS `base_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `groups_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_groups`
--

LOCK TABLES `base_groups` WRITE;
/*!40000 ALTER TABLE `base_groups` DISABLE KEYS */;
INSERT INTO `base_groups` VALUES (1,'Administrator',NULL,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(2,'Global Users',NULL,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_menu_functions`
--

DROP TABLE IF EXISTS `base_menu_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_menu_functions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_menu` int unsigned DEFAULT NULL,
  `id_function` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `craeted_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_base_menu_functions_base_menu_id` (`id_menu`) USING BTREE,
  KEY `FK_base_menu_functions_base_functions_id` (`id_function`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_menu_functions`
--

LOCK TABLES `base_menu_functions` WRITE;
/*!40000 ALTER TABLE `base_menu_functions` DISABLE KEYS */;
INSERT INTO `base_menu_functions` VALUES (946,2,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(947,3,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(948,4,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(949,4,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(950,4,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(951,4,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(952,4,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(953,5,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(954,5,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(955,5,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(956,5,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(957,5,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(958,6,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(959,6,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(960,6,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(961,6,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(962,6,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(963,7,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(964,7,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(965,7,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(966,7,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(967,7,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(968,8,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(969,8,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(970,8,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(971,8,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(972,8,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(973,101,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(974,102,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(975,103,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(976,104,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(977,105,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(978,106,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(979,107,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(980,10,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(981,10,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(982,10,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(983,10,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(984,10,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(985,11,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(986,11,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(987,11,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(988,11,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(989,11,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(990,12,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(991,12,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(992,12,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(993,12,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(994,12,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(995,20,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(996,20,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(997,20,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(998,20,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(999,20,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1000,21,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1001,21,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1002,21,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1003,21,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1004,21,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1005,22,1,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1006,22,2,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1007,22,3,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1008,22,4,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1009,22,5,'2025-12-31 03:37:47',NULL,NULL,NULL,NULL,NULL),(1010,291,1,'2026-01-02 11:56:48',NULL,NULL,NULL,NULL,NULL),(1011,291,2,'2026-01-02 11:56:48',NULL,NULL,NULL,NULL,NULL),(1012,291,3,'2026-01-02 11:56:48',NULL,NULL,NULL,NULL,NULL),(1013,291,4,'2026-01-02 11:56:48',NULL,NULL,NULL,NULL,NULL),(1014,291,5,'2026-01-02 11:56:48',NULL,NULL,NULL,NULL,NULL),(1015,292,2,'2026-01-02 11:57:08',NULL,NULL,NULL,NULL,NULL),(1016,293,2,'2026-01-02 11:57:20',NULL,NULL,NULL,NULL,NULL),(1017,293,3,'2026-01-02 11:57:20',NULL,NULL,NULL,NULL,NULL),(1018,294,2,'2026-01-02 11:57:32',NULL,NULL,NULL,NULL,NULL),(1019,295,2,'2026-01-02 11:57:44',NULL,NULL,NULL,NULL,NULL),(1020,295,5,'2026-01-02 11:57:44',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_menu_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_menus`
--

DROP TABLE IF EXISTS `base_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int unsigned NOT NULL,
  `id_module` int unsigned DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  `parent_sub_id` int unsigned DEFAULT NULL,
  `parent_sub_parent_id` int unsigned DEFAULT NULL,
  `code_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_label` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_type` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_base_menus_base_group_id` (`id_group`) USING BTREE,
  KEY `FK_base_menus_base_id_module` (`id_module`) USING BTREE,
  KEY `idx_menus_code_name` (`code_name`),
  KEY `idx_menus_group_module` (`id_group`,`id_module`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_menus`
--

LOCK TABLES `base_menus` WRITE;
/*!40000 ALTER TABLE `base_menus` DISABLE KEYS */;
INSERT INTO `base_menus` VALUES (1,0,0,0,NULL,NULL,'root','root',NULL,1,'#','',NULL,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(2,1,1,1,NULL,NULL,'landing','Landing',NULL,2,'admin/landing','fa fa-columns',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(3,1,1,1,NULL,NULL,'system-access','System Access','System Administration',101,NULL,'fa fa-chalkboard-teacher',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(4,1,1,3,NULL,NULL,'group','Group',NULL,102,'admin/system-access/group','fa fa-sitemap',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(5,1,1,3,NULL,NULL,'role','Role',NULL,103,'admin/system-access/role','fa fa-project-diagram',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(6,1,1,3,NULL,NULL,'privilege','Privilege',NULL,104,'admin/system-access/privilege','fa fa-check-double',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(7,1,1,1,NULL,NULL,'administrator','Administrator','Users & Permission',100,'admin/administrator','fa fa-user-tie',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(8,1,1,1,NULL,NULL,'maintenance','Maintenance',NULL,200,'admin/maintenance','fa fa-tools',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(101,1,2,1,NULL,NULL,'genaff-dashboard','Dashboard',NULL,3,'general-affair/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(102,1,3,1,NULL,NULL,'manrisk-dashboard','Dashboard',NULL,3,'perencanaan-manrisk/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(103,1,4,1,NULL,NULL,'audit-dashboard','Dashboard',NULL,3,'internal-audit/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(104,1,5,1,NULL,NULL,'kepatuhan-dashboard','Dashboard',NULL,3,'hukum-kepatuhan/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(105,1,6,1,NULL,NULL,'invst-dashboard','Dashboard',NULL,3,'investasi/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(10,1,6,1,NULL,NULL,'invst-data-transaksi','Data Transaksi','Transaksi',10,'investasi/data-transaksi','fa fa-exchange-alt',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(11,1,6,10,NULL,NULL,'invst-transaksi-pembelian','Transaksi Pembelian',NULL,11,'investasi/transaksi/pembelian','fa fa-long-arrow-alt-right',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(12,1,6,10,NULL,NULL,'invst-transaksi-penjualan','Transaksi Penjualan',NULL,12,'investasi/transaksi/penjualan','fa fa-long-arrow-alt-left',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(20,1,6,1,NULL,NULL,'invst-data-surat','Data Surat','Surat',20,'investasi/data-surat','fa fa-envelope-open-text',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(21,1,6,20,NULL,NULL,'invst-surat-masuk','Surat Masuk',NULL,21,'investasi/surat/masuk','fa fa-share',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(22,1,6,20,NULL,NULL,'invst-surat-keluar','Surat Keluar',NULL,22,'investasi/surat/keluar','fa fa-reply',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(106,1,7,1,NULL,NULL,'kesdm-dashboard','Dashboard',NULL,3,'keuangan-sdm/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(107,1,8,1,NULL,NULL,'peserta-dashboard','Dashboard',NULL,3,'kepesertaan/dashboard','fa fa-th-large',2,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(291,1,1,1,NULL,NULL,'folder_management','Folder Management',NULL,201,'admin/folders','fa fa-folder',2,'2026-01-02 11:56:40','2026-01-02 11:56:40',NULL,NULL,NULL,NULL),(292,1,1,1,NULL,NULL,'workflow','Workflow','Document Approval',202,NULL,'fa fa-tasks',2,'2026-01-02 11:57:01','2026-01-02 11:57:01',NULL,NULL,NULL,NULL),(293,1,1,292,NULL,NULL,'workflow_pending','Pending Approvals',NULL,1,'admin/workflow/pending','fa fa-clock',2,'2026-01-02 11:57:13','2026-01-02 11:57:13',NULL,NULL,NULL,NULL),(294,1,1,292,NULL,NULL,'workflow_my','My Workflows',NULL,2,'admin/workflow/my-workflows','fa fa-file-alt',2,'2026-01-02 11:57:27','2026-01-02 11:57:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_modules`
--

DROP TABLE IF EXISTS `base_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_modules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_modules`
--

LOCK TABLES `base_modules` WRITE;
/*!40000 ALTER TABLE `base_modules` DISABLE KEYS */;
INSERT INTO `base_modules` VALUES (1,'System Access','System Administration Module'),(2,'General Affair','General Affair Module'),(3,'Perencanaan & Manrisk','Planning and Risk Management'),(4,'Internal Audit','Internal Audit Module'),(5,'Hukum & Kepatuhan','Legal and Compliance'),(6,'Investasi','Investment Module'),(7,'Keuangan & SDM','Finance and HR Module'),(8,'Kepesertaan','Membership Module'),(9,'Informasi Terpadu','Integrated Information');
/*!40000 ALTER TABLE `base_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_privileges`
--

DROP TABLE IF EXISTS `base_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_privileges` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_roles` int unsigned DEFAULT NULL,
  `id_menu` int unsigned DEFAULT NULL,
  `id_function` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_base_privileges_base_roles_id` (`id_roles`) USING BTREE,
  KEY `FK_base_privileges_base_menu_id` (`id_menu`) USING BTREE,
  KEY `FK_base_privileges_base_functions_id` (`id_function`) USING BTREE,
  KEY `idx_privileges_role_menu_func` (`id_roles`,`id_menu`,`id_function`)
) ENGINE=MyISAM AUTO_INCREMENT=18751 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_privileges`
--

LOCK TABLES `base_privileges` WRITE;
/*!40000 ALTER TABLE `base_privileges` DISABLE KEYS */;
INSERT INTO `base_privileges` VALUES (18621,1,22,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18616,1,21,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18611,1,12,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18577,1,292,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18576,1,291,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18575,1,291,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18574,1,291,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18573,1,291,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18606,1,11,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18601,1,20,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18596,1,10,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18591,1,6,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18586,1,5,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18581,1,4,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18572,1,291,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18571,1,8,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18625,1,22,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18624,1,22,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18623,1,22,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18622,1,22,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18620,1,21,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18619,1,21,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18618,1,21,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18617,1,21,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18615,1,12,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18614,1,12,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18613,1,12,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18612,1,12,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18610,1,11,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18609,1,11,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18608,1,11,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18607,1,11,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18605,1,20,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18604,1,20,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18603,1,20,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18602,1,20,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18600,1,10,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18599,1,10,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18598,1,10,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18597,1,10,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18595,1,294,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18594,1,293,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18593,1,293,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18592,1,6,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18590,1,6,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18589,1,6,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18588,1,6,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18587,1,5,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18585,1,5,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18584,1,5,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18583,1,5,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18582,1,4,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18580,1,4,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18579,1,4,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18578,1,4,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18403,NULL,0,1,'2026-01-02 11:49:17',NULL,NULL,NULL,NULL,NULL),(18404,NULL,0,2,'2026-01-02 11:49:17',NULL,NULL,NULL,NULL,NULL),(18405,NULL,0,3,'2026-01-02 11:49:17',NULL,NULL,NULL,NULL,NULL),(18406,NULL,0,4,'2026-01-02 11:49:17',NULL,NULL,NULL,NULL,NULL),(18407,NULL,18403,2,'2026-01-02 11:49:40',NULL,NULL,NULL,NULL,NULL),(18408,NULL,18403,3,'2026-01-02 11:49:40',NULL,NULL,NULL,NULL,NULL),(18409,NULL,18407,2,'2026-01-02 11:49:50',NULL,NULL,NULL,NULL,NULL),(18410,NULL,18409,2,'2026-01-02 11:49:58',NULL,NULL,NULL,NULL,NULL),(18411,NULL,18410,1,'2026-01-02 11:50:50',NULL,NULL,NULL,NULL,NULL),(18412,NULL,18410,2,'2026-01-02 11:50:50',NULL,NULL,NULL,NULL,NULL),(18413,NULL,18410,3,'2026-01-02 11:50:50',NULL,NULL,NULL,NULL,NULL),(18414,NULL,18410,4,'2026-01-02 11:50:50',NULL,NULL,NULL,NULL,NULL),(18570,1,8,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18569,1,8,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18568,1,8,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18567,1,8,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18566,1,3,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18565,1,7,5,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18564,1,7,4,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18563,1,7,3,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18562,1,7,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18561,1,7,1,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18560,1,2,2,'2026-01-08 01:35:50',NULL,NULL,1,NULL,NULL),(18750,1,1,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18749,1,2,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18748,1,3,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18747,1,4,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18746,1,5,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18745,1,6,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18744,1,7,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18743,1,8,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18742,1,101,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18741,1,102,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18740,1,103,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18739,1,104,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18738,1,105,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18737,1,10,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18736,1,11,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18735,1,12,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18734,1,20,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18733,1,21,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18732,1,22,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18731,1,106,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18730,1,107,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18729,1,291,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18728,1,292,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18727,1,293,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18726,1,294,5,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18725,1,1,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18724,1,2,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18723,1,3,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18722,1,4,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18721,1,5,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18720,1,6,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18719,1,7,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18718,1,8,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18717,1,101,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18716,1,102,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18715,1,103,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18714,1,104,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18713,1,105,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18712,1,10,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18711,1,11,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18710,1,12,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18709,1,20,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18708,1,21,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18707,1,22,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18706,1,106,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18705,1,107,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18704,1,291,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18703,1,292,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18702,1,293,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18701,1,294,4,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18700,1,1,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18699,1,2,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18698,1,3,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18697,1,4,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18696,1,5,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18695,1,6,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18694,1,7,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18693,1,8,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18692,1,101,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18691,1,102,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18690,1,103,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18689,1,104,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18688,1,105,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18687,1,10,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18686,1,11,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18685,1,12,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18684,1,20,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18683,1,21,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18682,1,22,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18681,1,106,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18680,1,107,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18679,1,291,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18678,1,292,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18677,1,293,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18676,1,294,3,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18675,1,1,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18674,1,2,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18673,1,3,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18672,1,4,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18671,1,5,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18670,1,6,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18669,1,7,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18668,1,8,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18667,1,101,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18666,1,102,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18665,1,103,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18664,1,104,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18663,1,105,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18662,1,10,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18661,1,11,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18660,1,12,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18659,1,20,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18658,1,21,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18657,1,22,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18656,1,106,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18655,1,107,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18654,1,291,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18653,1,292,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18652,1,293,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18651,1,294,2,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18650,1,1,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18649,1,2,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18648,1,3,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18647,1,4,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18646,1,5,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18645,1,6,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18644,1,7,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18643,1,8,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18642,1,101,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18641,1,102,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18640,1,103,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18639,1,104,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18638,1,105,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18637,1,10,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18636,1,11,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18635,1,12,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18634,1,20,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18633,1,21,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18632,1,22,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18631,1,106,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18630,1,107,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18629,1,291,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18628,1,292,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18627,1,293,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL),(18626,1,294,1,'2026-01-08 08:54:13',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `base_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_roles`
--

DROP TABLE IF EXISTS `base_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int unsigned NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `access_scope` enum('global','division','department') COLLATE utf8mb4_unicode_ci DEFAULT 'division',
  `roles_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_base_roles_base_groups_id` (`id_group`) USING BTREE,
  KEY `id_divisi` (`id_divisi`),
  CONSTRAINT `base_roles_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_roles`
--

LOCK TABLES `base_roles` WRITE;
/*!40000 ALTER TABLE `base_roles` DISABLE KEYS */;
INSERT INTO `base_roles` VALUES (1,1,NULL,'division','Master Admin','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(2,1,NULL,'division','Admin Staf','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(3,2,NULL,'division','Default User','2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(13,1,1,'division','Admin Investasi1','2026-01-02 03:35:08','2026-01-02 06:22:50',NULL,NULL,1,NULL),(14,1,2,'division','Admin Keuangan & SDM','2026-01-02 03:35:08',NULL,NULL,NULL,NULL,NULL),(15,1,3,'division','Admin General Affair','2026-01-02 03:35:08',NULL,NULL,NULL,NULL,NULL),(16,1,4,'division','Admin Akuntansi','2026-01-02 03:35:08',NULL,NULL,NULL,NULL,NULL),(17,1,5,'division','Admin Anggaran','2026-01-02 03:35:08',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_user_roles`
--

DROP TABLE IF EXISTS `base_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_user_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned DEFAULT NULL,
  `id_roles` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_base_user_roles_users_id` (`id_user`) USING BTREE,
  KEY `FK_base_user_roles_base_roles_id` (`id_roles`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_user_roles`
--

LOCK TABLES `base_user_roles` WRITE;
/*!40000 ALTER TABLE `base_user_roles` DISABLE KEYS */;
INSERT INTO `base_user_roles` VALUES (30,1,1,'2025-12-31 03:37:47','2025-12-31 03:37:47',NULL,NULL,NULL,NULL),(31,2,1,'2026-01-02 06:19:06','2026-01-02 06:19:06',NULL,1,NULL,NULL),(32,3,14,'2026-01-08 00:17:15','2026-01-08 00:17:15',NULL,1,NULL,NULL),(33,4,15,'2026-01-08 00:20:18','2026-01-08 00:20:18',NULL,3,NULL,NULL),(34,5,14,'2026-01-08 00:25:58','2026-01-08 00:25:58',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `base_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_folders`
--

DROP TABLE IF EXISTS `document_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `folder_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `id_module` int unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_divisi` (`id_divisi`),
  KEY `id_module` (`id_module`),
  KEY `idx_parent_folder` (`parent_id`,`folder_name`),
  KEY `idx_folder_path` (`folder_path`),
  CONSTRAINT `document_folders_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `document_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `document_folders_ibfk_2` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_folders_ibfk_3` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_folders`
--

LOCK TABLES `document_folders` WRITE;
/*!40000 ALTER TABLE `document_folders` DISABLE KEYS */;
INSERT INTO `document_folders` VALUES (1,NULL,'test','/test',1,NULL,'test','2026-01-02 05:04:56','2026-01-02 05:05:50','2026-01-02 05:05:50',1,NULL,1),(2,NULL,'sertifikat','/sertifikat',1,NULL,'test','2026-01-02 06:02:38','2026-01-02 06:03:04','2026-01-02 06:03:04',1,NULL,1),(3,NULL,'keuangan','/keuangan',2,NULL,NULL,'2026-01-02 06:12:29','2026-01-02 06:12:39','2026-01-02 06:12:39',1,NULL,1),(4,NULL,'test','/test',2,NULL,'tes','2026-01-08 00:31:33','2026-01-08 00:31:33',NULL,1,NULL,NULL),(5,NULL,'test','/test',3,NULL,NULL,'2026-01-08 01:19:11','2026-01-08 01:19:11',NULL,1,NULL,NULL),(6,NULL,'test','/test',5,NULL,'22','2026-01-08 01:20:41','2026-01-08 01:20:41',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `document_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_versions`
--

DROP TABLE IF EXISTS `document_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_versions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` int unsigned NOT NULL,
  `version_number` int NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` bigint DEFAULT NULL,
  `uploaded_by` bigint unsigned NOT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `change_notes` text COLLATE utf8mb4_unicode_ci,
  `is_current` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploaded_by` (`uploaded_by`),
  KEY `idx_document` (`document_type`,`document_id`),
  KEY `idx_document_current` (`document_type`,`document_id`,`is_current`),
  KEY `idx_version` (`version_number`),
  CONSTRAINT `document_versions_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_versions`
--

LOCK TABLES `document_versions` WRITE;
/*!40000 ALTER TABLE `document_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow`
--

DROP TABLE IF EXISTS `document_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_workflow` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Table name of document',
  `document_id` int unsigned NOT NULL,
  `workflow_status` enum('draft','pending_review','approved','rejected','revision') COLLATE utf8mb4_unicode_ci DEFAULT 'draft',
  `maker_id` bigint unsigned NOT NULL,
  `checker_id` bigint unsigned DEFAULT NULL,
  `approver_id` bigint unsigned DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `revision_notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checker_id` (`checker_id`),
  KEY `approver_id` (`approver_id`),
  KEY `idx_document` (`document_type`,`document_id`),
  KEY `idx_workflow_status` (`workflow_status`,`checker_id`),
  KEY `idx_maker` (`maker_id`),
  CONSTRAINT `document_workflow_ibfk_1` FOREIGN KEY (`maker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `document_workflow_ibfk_2` FOREIGN KEY (`checker_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_workflow_ibfk_3` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow`
--

LOCK TABLES `document_workflow` WRITE;
/*!40000 ALTER TABLE `document_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_history`
--

DROP TABLE IF EXISTS `document_workflow_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_workflow_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_workflow` int unsigned NOT NULL,
  `action` enum('created','submitted','reviewed','approved','rejected','revised') COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_by` bigint unsigned NOT NULL,
  `action_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_action` (`id_workflow`,`action_at`),
  KEY `idx_action_by` (`action_by`),
  CONSTRAINT `document_workflow_history_ibfk_1` FOREIGN KEY (`id_workflow`) REFERENCES `document_workflow` (`id`) ON DELETE CASCADE,
  CONSTRAINT `document_workflow_history_ibfk_2` FOREIGN KEY (`action_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_history`
--

LOCK TABLES `document_workflow_history` WRITE;
/*!40000 ALTER TABLE `document_workflow_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_workflow_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder_permissions`
--

DROP TABLE IF EXISTS `folder_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folder_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_folder` int unsigned NOT NULL,
  `id_role` int unsigned DEFAULT NULL,
  `id_user` bigint unsigned DEFAULT NULL,
  `permission_type` enum('read','write','delete','full') COLLATE utf8mb4_unicode_ci DEFAULT 'read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_role` (`id_role`),
  KEY `id_user` (`id_user`),
  KEY `idx_folder_role` (`id_folder`,`id_role`),
  KEY `idx_folder_user` (`id_folder`,`id_user`),
  CONSTRAINT `folder_permissions_ibfk_1` FOREIGN KEY (`id_folder`) REFERENCES `document_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `folder_permissions_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `base_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `folder_permissions_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder_permissions`
--

LOCK TABLES `folder_permissions` WRITE;
/*!40000 ALTER TABLE `folder_permissions` DISABLE KEYS */;
INSERT INTO `folder_permissions` VALUES (1,1,1,NULL,'full','2026-01-02 05:04:56','2026-01-02 05:04:56',NULL,1,NULL,NULL),(2,2,1,NULL,'full','2026-01-02 06:02:38','2026-01-02 06:02:38',NULL,1,NULL,NULL),(3,3,1,NULL,'full','2026-01-02 06:12:29','2026-01-02 06:12:29',NULL,1,NULL,NULL),(4,4,1,NULL,'full','2026-01-08 00:31:33','2026-01-08 00:32:10','2026-01-08 00:32:10',1,NULL,NULL),(5,4,NULL,3,'full','2026-01-08 00:32:10','2026-01-08 00:41:30','2026-01-08 00:41:30',1,NULL,NULL),(6,4,NULL,3,'full','2026-01-08 00:41:30','2026-01-08 00:41:42','2026-01-08 00:41:42',1,NULL,NULL),(7,4,NULL,3,'full','2026-01-08 00:41:42','2026-01-08 01:17:34','2026-01-08 01:17:34',1,NULL,NULL),(8,4,1,NULL,'full','2026-01-08 00:41:42','2026-01-08 01:17:34','2026-01-08 01:17:34',1,NULL,NULL),(9,4,NULL,3,'full','2026-01-08 01:17:34','2026-01-08 01:17:43','2026-01-08 01:17:43',1,NULL,NULL),(10,4,1,NULL,'full','2026-01-08 01:17:34','2026-01-08 01:17:43','2026-01-08 01:17:43',1,NULL,NULL),(11,4,NULL,3,'full','2026-01-08 01:17:43','2026-01-08 01:17:43',NULL,1,NULL,NULL),(12,4,1,NULL,'full','2026-01-08 01:17:43','2026-01-08 01:17:43',NULL,1,NULL,NULL),(13,4,NULL,1,'full','2026-01-08 01:17:43','2026-01-08 01:17:43',NULL,1,NULL,NULL),(14,5,1,NULL,'full','2026-01-08 01:19:11','2026-01-08 01:19:11',NULL,1,NULL,NULL),(15,6,1,NULL,'full','2026-01-08 01:20:41','2026-01-08 01:20:41',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `folder_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_compliance_check`
--

DROP TABLE IF EXISTS `hukumkepatuhan_compliance_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_compliance_check` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_compliance_check`
--

LOCK TABLES `hukumkepatuhan_compliance_check` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_compliance_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_compliance_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_executive_summary`
--

DROP TABLE IF EXISTS `hukumkepatuhan_executive_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_executive_summary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_executive_summary`
--

LOCK TABLES `hukumkepatuhan_executive_summary` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_executive_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_executive_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_kajian_hukum`
--

DROP TABLE IF EXISTS `hukumkepatuhan_kajian_hukum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_kajian_hukum` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_kajian_hukum`
--

LOCK TABLES `hukumkepatuhan_kajian_hukum` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_kajian_hukum` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_kajian_hukum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_kontrak`
--

DROP TABLE IF EXISTS `hukumkepatuhan_kontrak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_kontrak` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `berlaku_awal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berlaku_akhir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pihak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemilik` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_kontrak`
--

LOCK TABLES `hukumkepatuhan_kontrak` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_kontrak` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_kontrak` VALUES (30,'KTR/001/2024','Kontrak Kustodian dengan Bank Mandiri','2024-01-10','2024-01-01','2024-12-31','Kustodian','PT Bank Mandiri Tbk','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(31,'KTR/002/2024','Kontrak Audit Eksternal KAP EY','2024-02-01','2024-02-01','2025-01-31','Audit','KAP Ernst & Young','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(32,'KTR/003/2024','Perjanjian Pengelolaan Investasi','2024-03-01','2024-03-01','2025-02-28','Investasi','PT Manulife Aset Manajemen','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(33,'KTR/001/2024','Kontrak Kustodian dengan Bank Mandiri','2024-01-10','2024-01-01','2024-12-31','Kustodian','PT Bank Mandiri Tbk','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(34,'KTR/002/2024','Kontrak Audit Eksternal KAP EY','2024-02-01','2024-02-01','2025-01-31','Audit','KAP Ernst & Young','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(35,'KTR/003/2024','Perjanjian Pengelolaan Investasi','2024-03-01','2024-03-01','2025-02-28','Investasi','PT Manulife Aset Manajemen','Dana Pensiun','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hukumkepatuhan_kontrak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_legal_memo`
--

DROP TABLE IF EXISTS `hukumkepatuhan_legal_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_legal_memo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_legal_memo`
--

LOCK TABLES `hukumkepatuhan_legal_memo` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_legal_memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_legal_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_lembar_keputusan`
--

DROP TABLE IF EXISTS `hukumkepatuhan_lembar_keputusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_lembar_keputusan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_lembar_keputusan`
--

LOCK TABLES `hukumkepatuhan_lembar_keputusan` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_keputusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_keputusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_lembar_rekomendasi`
--

DROP TABLE IF EXISTS `hukumkepatuhan_lembar_rekomendasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_lembar_rekomendasi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_lembar_rekomendasi`
--

LOCK TABLES `hukumkepatuhan_lembar_rekomendasi` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_rekomendasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_rekomendasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_penomoran`
--

DROP TABLE IF EXISTS `hukumkepatuhan_penomoran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_penomoran` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_penomoran`
--

LOCK TABLES `hukumkepatuhan_penomoran` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_penomoran` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_penomoran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_putusan`
--

DROP TABLE IF EXISTS `hukumkepatuhan_putusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_putusan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `klarifikasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_pengadilan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pihak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_putusan`
--

LOCK TABLES `hukumkepatuhan_putusan` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_putusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_putusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_regulasi_external`
--

DROP TABLE IF EXISTS `hukumkepatuhan_regulasi_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_regulasi_external` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_regulasi_external`
--

LOCK TABLES `hukumkepatuhan_regulasi_external` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hukumkepatuhan_regulasi_internal`
--

DROP TABLE IF EXISTS `hukumkepatuhan_regulasi_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hukumkepatuhan_regulasi_internal` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `inisiator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_regulasi_internal`
--

LOCK TABLES `hukumkepatuhan_regulasi_internal` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_internal` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_regulasi_internal` VALUES (384,'REG/INT/001/2024','Peraturan Investasi Dana Pensiun 2024','2024-01-15','Direktur Investasi','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(385,'REG/INT/002/2024','Pedoman Tata Kelola Perusahaan','2024-02-01','Direktur Utama','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(386,'REG/INT/003/2024','Standar Operasional Prosedur Keuangan','2024-02-20','Direktur Keuangan','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(387,'REG/INT/004/2024','Kebijakan Manajemen Risiko','2024-03-10','Kepala Manajemen Risiko','Aktif',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(388,'REG/INT/001/2024','Peraturan Investasi Dana Pensiun 2024','2024-01-15','Direktur Investasi','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(389,'REG/INT/002/2024','Pedoman Tata Kelola Perusahaan','2024-02-01','Direktur Utama','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(390,'REG/INT/003/2024','Standar Operasional Prosedur Keuangan','2024-02-20','Direktur Keuangan','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(391,'REG/INT/004/2024','Kebijakan Manajemen Risiko','2024-03-10','Kepala Manajemen Risiko','Aktif',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_internal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investasi_perencanaan_surat`
--

DROP TABLE IF EXISTS `investasi_perencanaan_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investasi_perencanaan_surat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `perihal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_perencanaan_surat`
--

LOCK TABLES `investasi_perencanaan_surat` WRITE;
/*!40000 ALTER TABLE `investasi_perencanaan_surat` DISABLE KEYS */;
/*!40000 ALTER TABLE `investasi_perencanaan_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investasi_perencanaan_transaksi`
--

DROP TABLE IF EXISTS `investasi_perencanaan_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investasi_perencanaan_transaksi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_perencanaan_transaksi`
--

LOCK TABLES `investasi_perencanaan_transaksi` WRITE;
/*!40000 ALTER TABLE `investasi_perencanaan_transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `investasi_perencanaan_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investasi_propensa_surat`
--

DROP TABLE IF EXISTS `investasi_propensa_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investasi_propensa_surat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `perihal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_propensa_surat`
--

LOCK TABLES `investasi_propensa_surat` WRITE;
/*!40000 ALTER TABLE `investasi_propensa_surat` DISABLE KEYS */;
/*!40000 ALTER TABLE `investasi_propensa_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investasi_propensa_transaksi`
--

DROP TABLE IF EXISTS `investasi_propensa_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investasi_propensa_transaksi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_propensa_transaksi`
--

LOCK TABLES `investasi_propensa_transaksi` WRITE;
/*!40000 ALTER TABLE `investasi_propensa_transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `investasi_propensa_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_cashflow`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_cashflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_cashflow` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_cashflow`
--

LOCK TABLES `keuangan_bendaharapajak_cashflow` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_cashflow` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_cashflow` VALUES (1231,'2024-01-05',500000000.00,'Penerimaan Iuran Peserta Januari 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1232,'2024-01-10',-95000000.00,'Pembelian Saham BBCA',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1233,'2024-01-15',25000000.00,'Dividen Saham BBRI',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1234,'2024-02-05',550000000.00,'Penerimaan Iuran Peserta Februari 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1235,'2024-02-10',-78000000.00,'Pembelian Saham ASII',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1236,'2024-03-05',600000000.00,'Penerimaan Iuran Peserta Maret 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(1237,'2024-01-05',500000000.00,'Penerimaan Iuran Peserta Januari 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(1238,'2024-01-10',-95000000.00,'Pembelian Saham BBCA',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(1239,'2024-01-15',25000000.00,'Dividen Saham BBRI',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(1240,'2024-02-05',550000000.00,'Penerimaan Iuran Peserta Februari 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(1241,'2024-02-10',-78000000.00,'Pembelian Saham ASII',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(1242,'2024-03-05',600000000.00,'Penerimaan Iuran Peserta Maret 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `keuangan_bendaharapajak_cashflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_pajak`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_pajak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_pajak` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `masa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=785 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_pajak`
--

LOCK TABLES `keuangan_bendaharapajak_pajak` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pajak` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pajak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_pemindahbukuan`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_pemindahbukuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_pemindahbukuan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_pemindahbukuan`
--

LOCK TABLES `keuangan_bendaharapajak_pemindahbukuan` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pemindahbukuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pemindahbukuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_penempatan`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_penempatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_penempatan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=841 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_penempatan`
--

LOCK TABLES `keuangan_bendaharapajak_penempatan` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_penempatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_penempatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_spb`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_spb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_spb` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_bayar` int unsigned NOT NULL,
  `tanggal_spb` date DEFAULT NULL,
  `nomor_spb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_keuangan_bendaharapajak_surat_id` (`id_surat_bayar`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38820 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_spb`
--

LOCK TABLES `keuangan_bendaharapajak_spb` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_spb` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_spb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_sppb`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_sppb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_sppb` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_surat_bayar` int unsigned NOT NULL,
  `id_spb` int unsigned NOT NULL,
  `tanggal_sppb` date DEFAULT NULL,
  `nomor_sppb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_keuangan_bendaharapajak_surat_id` (`id_surat_bayar`) USING BTREE,
  KEY `FK_keuangan_bendaharapajak_spb_id` (`id_spb`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_sppb`
--

LOCK TABLES `keuangan_bendaharapajak_sppb` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_sppb` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_sppb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keuangan_bendaharapajak_surat`
--

DROP TABLE IF EXISTS `keuangan_bendaharapajak_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keuangan_bendaharapajak_surat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal_surat_bayar` date DEFAULT NULL,
  `nomor_surat_bayar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30508 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_surat`
--

LOCK TABLES `keuangan_bendaharapajak_surat` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_surat` DISABLE KEYS */;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_cleaning_service`
--

DROP TABLE IF EXISTS `logistiksarpen_cleaning_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_cleaning_service` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_cleaning_service`
--

LOCK TABLES `logistiksarpen_cleaning_service` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_cleaning_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_cleaning_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_jaminan`
--

DROP TABLE IF EXISTS `logistiksarpen_jaminan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_jaminan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `jenis_jaminan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Jaminan Penawaran\r\nJaminan Uang Muka\r\nJaminan Pelaksanaan\r\nJaminan Pemeliharaan',
  `nomor_drp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pengadaan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_jaminan`
--

LOCK TABLES `logistiksarpen_jaminan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_jaminan` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_jaminan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_keamanan`
--

DROP TABLE IF EXISTS `logistiksarpen_keamanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_keamanan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_keamanan`
--

LOCK TABLES `logistiksarpen_keamanan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_keamanan` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_keamanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_kendaraan`
--

DROP TABLE IF EXISTS `logistiksarpen_kendaraan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_kendaraan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_kendaraan`
--

LOCK TABLES `logistiksarpen_kendaraan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_kendaraan` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_kendaraan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_pelaporan_prbc`
--

DROP TABLE IF EXISTS `logistiksarpen_pelaporan_prbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_pelaporan_prbc` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_pelaporan_prbc`
--

LOCK TABLES `logistiksarpen_pelaporan_prbc` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_pelaporan_prbc` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_pelaporan_prbc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_polis_asuransi`
--

DROP TABLE IF EXISTS `logistiksarpen_polis_asuransi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_polis_asuransi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `berlaku_mulai` date DEFAULT NULL,
  `berlaku_akhir` date DEFAULT NULL,
  `nilai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_polis_asuransi`
--

LOCK TABLES `logistiksarpen_polis_asuransi` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_polis_asuransi` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_polis_asuransi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_procurement`
--

DROP TABLE IF EXISTS `logistiksarpen_procurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_procurement` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `no_drp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `direktorat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_procurement`
--

LOCK TABLES `logistiksarpen_procurement` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_procurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_procurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_sarana_penunjang`
--

DROP TABLE IF EXISTS `logistiksarpen_sarana_penunjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_sarana_penunjang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_sarana_penunjang`
--

LOCK TABLES `logistiksarpen_sarana_penunjang` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_sarana_penunjang` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_sarana_penunjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_smk3`
--

DROP TABLE IF EXISTS `logistiksarpen_smk3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_smk3` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_smk3`
--

LOCK TABLES `logistiksarpen_smk3` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_smk3` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_smk3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_user_satisfaction`
--

DROP TABLE IF EXISTS `logistiksarpen_user_satisfaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_user_satisfaction` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_user_satisfaction`
--

LOCK TABLES `logistiksarpen_user_satisfaction` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_user_satisfaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_user_satisfaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistiksarpen_vendor_satisfaction`
--

DROP TABLE IF EXISTS `logistiksarpen_vendor_satisfaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistiksarpen_vendor_satisfaction` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tahun` year DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_vendor_satisfaction`
--

LOCK TABLES `logistiksarpen_vendor_satisfaction` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_vendor_satisfaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `logistiksarpen_vendor_satisfaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_queries`
--

DROP TABLE IF EXISTS `maintenance_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_queries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `query` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=544 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_queries`
--

LOCK TABLES `maintenance_queries` WRITE;
/*!40000 ALTER TABLE `maintenance_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_divisi`
--

DROP TABLE IF EXISTS `master_divisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_divisi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_divisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_module` int unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_divisi` (`kode_divisi`),
  KEY `id_module` (`id_module`),
  CONSTRAINT `master_divisi_ibfk_1` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_divisi`
--

LOCK TABLES `master_divisi` WRITE;
/*!40000 ALTER TABLE `master_divisi` DISABLE KEYS */;
INSERT INTO `master_divisi` VALUES (1,'INV','Investasi',6,'Divisi Investasi','2026-01-02 03:34:51',NULL,NULL,NULL,NULL,NULL),(2,'KEU','Keuangan & SDM',7,'Divisi Keuangan & SDM','2026-01-02 03:34:51',NULL,NULL,NULL,NULL,NULL),(3,'GA','General Affair',2,'Divisi General Affair','2026-01-02 03:34:51',NULL,NULL,NULL,NULL,NULL),(4,'AKT','Akuntansi',8,'Divisi Akuntansi','2026-01-02 03:34:51',NULL,NULL,NULL,NULL,NULL),(5,'ANG','Anggaran',9,'Divisi Anggaran','2026-01-02 03:34:51',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `master_divisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_jabatan`
--

DROP TABLE IF EXISTS `master_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_jabatan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kode_jabatan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `id_role_default` int unsigned DEFAULT NULL,
  `level_jabatan` tinyint DEFAULT NULL COMMENT '1:Staff, 2:Supervisor, 3:Manager, 4:Director',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_jabatan` (`kode_jabatan`),
  KEY `id_divisi` (`id_divisi`),
  KEY `id_role_default` (`id_role_default`),
  CONSTRAINT `master_jabatan_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL,
  CONSTRAINT `master_jabatan_ibfk_2` FOREIGN KEY (`id_role_default`) REFERENCES `base_roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jabatan`
--

LOCK TABLES `master_jabatan` WRITE;
/*!40000 ALTER TABLE `master_jabatan` DISABLE KEYS */;
INSERT INTO `master_jabatan` VALUES (1,'MGR-INV','Manager Investasi',1,NULL,3,NULL,'2026-01-02 03:50:21',NULL,NULL,NULL,NULL,NULL),(2,'SPV-KEU','Supervisor Keuangan',2,NULL,2,NULL,'2026-01-02 03:50:21',NULL,NULL,NULL,NULL,NULL),(3,'STF-GA','Staff General Affair',3,NULL,1,NULL,'2026-01-02 03:50:21',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `master_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_division_access`
--

DROP TABLE IF EXISTS `role_division_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_division_access` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_role` int unsigned NOT NULL,
  `id_divisi` int unsigned NOT NULL,
  `id_module` int unsigned NOT NULL,
  `access_level` enum('read','write','full') COLLATE utf8mb4_unicode_ci DEFAULT 'read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_division_module` (`id_role`,`id_divisi`,`id_module`),
  KEY `id_divisi` (`id_divisi`),
  KEY `id_module` (`id_module`),
  CONSTRAINT `role_division_access_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `base_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_division_access_ibfk_2` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_division_access_ibfk_3` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_division_access`
--

LOCK TABLES `role_division_access` WRITE;
/*!40000 ALTER TABLE `role_division_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_division_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_aspurjab`
--

DROP TABLE IF EXISTS `sdm_aspurjab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_aspurjab` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varbinary(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kontrak Induk\r\nNama Perjanjian\r\nNama Sertifikat',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_aspurjab`
--

LOCK TABLES `sdm_aspurjab` WRITE;
/*!40000 ALTER TABLE `sdm_aspurjab` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_aspurjab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_capeg_pegrus`
--

DROP TABLE IF EXISTS `sdm_capeg_pegrus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_capeg_pegrus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2718 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_capeg_pegrus`
--

LOCK TABLES `sdm_capeg_pegrus` WRITE;
/*!40000 ALTER TABLE `sdm_capeg_pegrus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_capeg_pegrus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_ikut_organisasi`
--

DROP TABLE IF EXISTS `sdm_ikut_organisasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_ikut_organisasi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_ikut_organisasi`
--

LOCK TABLES `sdm_ikut_organisasi` WRITE;
/*!40000 ALTER TABLE `sdm_ikut_organisasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_ikut_organisasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_naik_gaji`
--

DROP TABLE IF EXISTS `sdm_naik_gaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_naik_gaji` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_naik_gaji`
--

LOCK TABLES `sdm_naik_gaji` WRITE;
/*!40000 ALTER TABLE `sdm_naik_gaji` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_naik_gaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_penghargaan`
--

DROP TABLE IF EXISTS `sdm_penghargaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_penghargaan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2371 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_penghargaan`
--

LOCK TABLES `sdm_penghargaan` WRITE;
/*!40000 ALTER TABLE `sdm_penghargaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_penghargaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_peraturan`
--

DROP TABLE IF EXISTS `sdm_peraturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_peraturan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Remunerasi\r\nPola Karir\r\nOrganisasi\r\nPensiun Normal\r\nPensiun Pendi\r\nPensiun APS\r\nPerusahaan\r\nIC\r\nLain-Lain',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_peraturan`
--

LOCK TABLES `sdm_peraturan` WRITE;
/*!40000 ALTER TABLE `sdm_peraturan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_peraturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_pks`
--

DROP TABLE IF EXISTS `sdm_pks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_pks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mulai` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Prohire/Kontrak\r\nYakes\r\nTelkomedika\r\nInsani\r\nRenang\r\nBank\r\nLain-Lain',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_pks`
--

LOCK TABLES `sdm_pks` WRITE;
/*!40000 ALTER TABLE `sdm_pks` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_pks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_promosi_mutasi`
--

DROP TABLE IF EXISTS `sdm_promosi_mutasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_promosi_mutasi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_promosi_mutasi`
--

LOCK TABLES `sdm_promosi_mutasi` WRITE;
/*!40000 ALTER TABLE `sdm_promosi_mutasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_promosi_mutasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_rarus`
--

DROP TABLE IF EXISTS `sdm_rarus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_rarus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Remunerasi\r\nOrganisasi\r\nPromosi & Mutasi\r\nIBO\r\nLain-Lain',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rarus`
--

LOCK TABLES `sdm_rarus` WRITE;
/*!40000 ALTER TABLE `sdm_rarus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_rarus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_rekon`
--

DROP TABLE IF EXISTS `sdm_rekon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_rekon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `ba` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasil` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telkom\r\nYAKES\r\nDapen\r\nBPJS\r\nLain-Lain',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rekon`
--

LOCK TABLES `sdm_rekon` WRITE;
/*!40000 ALTER TABLE `sdm_rekon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_rekon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_rekrut_masuk`
--

DROP TABLE IF EXISTS `sdm_rekrut_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_rekrut_masuk` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1677 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rekrut_masuk`
--

LOCK TABLES `sdm_rekrut_masuk` WRITE;
/*!40000 ALTER TABLE `sdm_rekrut_masuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_rekrut_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_surat_keluar`
--

DROP TABLE IF EXISTS `sdm_surat_keluar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_surat_keluar` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Keluar Umum\r\nSurat Magang/PKL',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_surat_keluar`
--

LOCK TABLES `sdm_surat_keluar` WRITE;
/*!40000 ALTER TABLE `sdm_surat_keluar` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_surat_keluar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm_surat_masuk`
--

DROP TABLE IF EXISTS `sdm_surat_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdm_surat_masuk` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Masuk Umum\r\nSurat Magang/PKL\r\nSurat Lamaran',
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=424 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_surat_masuk`
--

LOCK TABLES `sdm_surat_masuk` WRITE;
/*!40000 ALTER TABLE `sdm_surat_masuk` DISABLE KEYS */;
/*!40000 ALTER TABLE `sdm_surat_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_laporan`
--

DROP TABLE IF EXISTS `sekretariat_laporan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_laporan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bulanan\r\nTriwulanan\r\nSemesteran\r\nTahunan\r\nLainnya',
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dilaporkan` date DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=790 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_laporan`
--

LOCK TABLES `sekretariat_laporan` WRITE;
/*!40000 ALTER TABLE `sekretariat_laporan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekretariat_laporan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_materi`
--

DROP TABLE IF EXISTS `sekretariat_materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_materi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_materi`
--

LOCK TABLES `sekretariat_materi` WRITE;
/*!40000 ALTER TABLE `sekretariat_materi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekretariat_materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_pengadaan`
--

DROP TABLE IF EXISTS `sekretariat_pengadaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_pengadaan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TOR\r\nJustifikasi\r\nKontrak\r\nSPMK\r\nBerita Acara',
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tujuan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `masa_akhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1513 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_pengadaan`
--

LOCK TABLES `sekretariat_pengadaan` WRITE;
/*!40000 ALTER TABLE `sekretariat_pengadaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekretariat_pengadaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_remunerasi_dokumen`
--

DROP TABLE IF EXISTS `sekretariat_remunerasi_dokumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_remunerasi_dokumen` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bulanan\r\nTHR\r\nJasa Usaha',
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_remunerasi_dokumen`
--

LOCK TABLES `sekretariat_remunerasi_dokumen` WRITE;
/*!40000 ALTER TABLE `sekretariat_remunerasi_dokumen` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekretariat_remunerasi_dokumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_remunerasi_pedoman`
--

DROP TABLE IF EXISTS `sekretariat_remunerasi_pedoman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_remunerasi_pedoman` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `masa_akhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_remunerasi_pedoman`
--

LOCK TABLES `sekretariat_remunerasi_pedoman` WRITE;
/*!40000 ALTER TABLE `sekretariat_remunerasi_pedoman` DISABLE KEYS */;
/*!40000 ALTER TABLE `sekretariat_remunerasi_pedoman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_risalah_rapat`
--

DROP TABLE IF EXISTS `sekretariat_risalah_rapat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_risalah_rapat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PRBC\r\nRapat Pengurus\r\nRapat Gabungan \r\nRapat Sekretariat\r\nLainnya',
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `peserta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_risalah_rapat`
--

LOCK TABLES `sekretariat_risalah_rapat` WRITE;
/*!40000 ALTER TABLE `sekretariat_risalah_rapat` DISABLE KEYS */;
INSERT INTO `sekretariat_risalah_rapat` VALUES (155,'RR/001/I/2024','2024-01-15','Januari 2024','Rapat Pengurus','Rapat Evaluasi Kinerja 2023','Direktur Utama, Direktur Investasi, Direktur Keuangan',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(156,'RR/002/I/2024','2024-01-25','Januari 2024','PRBC','Rapat PRBC Triwulan IV 2023','Seluruh Pengurus dan Dewan Pengawas',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(157,'RR/003/II/2024','2024-02-10','Februari 2024','Rapat Sekretariat','Koordinasi Program Kerja 2024','Kepala Sekretariat, Staff Sekretariat',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(158,'RR/004/III/2024','2024-03-20','Maret 2024','Rapat Gabungan','Rapat Gabungan Evaluasi Q1 2024','Pengurus, Dewan Pengawas, Kepala Bagian',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(159,'RR/005/IV/2024','2024-04-15','April 2024','Rapat Pengurus','Pembahasan Strategi Investasi Semester II','Direktur Utama, Direktur Investasi',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(160,'RR/001/I/2024','2024-01-15','Januari 2024','Rapat Pengurus','Rapat Evaluasi Kinerja 2023','Direktur Utama, Direktur Investasi, Direktur Keuangan',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(161,'RR/002/I/2024','2024-01-25','Januari 2024','PRBC','Rapat PRBC Triwulan IV 2023','Seluruh Pengurus dan Dewan Pengawas',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(162,'RR/003/II/2024','2024-02-10','Februari 2024','Rapat Sekretariat','Koordinasi Program Kerja 2024','Kepala Sekretariat, Staff Sekretariat',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(163,'RR/004/III/2024','2024-03-20','Maret 2024','Rapat Gabungan','Rapat Gabungan Evaluasi Q1 2024','Pengurus, Dewan Pengawas, Kepala Bagian',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(164,'RR/005/IV/2024','2024-04-15','April 2024','Rapat Pengurus','Pembahasan Strategi Investasi Semester II','Direktur Utama, Direktur Investasi',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sekretariat_risalah_rapat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekretariat_surat`
--

DROP TABLE IF EXISTS `sekretariat_surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekretariat_surat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Masuk\r\nSurat Keluar',
  `perihal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disposisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3712 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_surat`
--

LOCK TABLES `sekretariat_surat` WRITE;
/*!40000 ALTER TABLE `sekretariat_surat` DISABLE KEYS */;
INSERT INTO `sekretariat_surat` VALUES (3702,'SM/001/I/2024','2024-01-08','Surat Masuk','Undangan Rapat Koordinasi','Kementerian Keuangan','Direktur Utama','Untuk ditindaklanjuti',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3703,'SK/001/I/2024','2024-01-12','Surat Keluar','Pemberitahuan Libur Nasional','Sekretariat','Seluruh Karyawan',NULL,NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3704,'SM/005/II/2024','2024-02-05','Surat Masuk','Permohonan Data Kepesertaan','OJK','Direktur Kepesertaan','Segera diproses',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3705,'SK/008/II/2024','2024-02-20','Surat Keluar','Laporan Tahunan 2023','Direktur Utama','Dewan Pengawas',NULL,NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3706,'SM/012/III/2024','2024-03-10','Surat Masuk','Audit Eksternal 2024','KAP Ernst & Young','Direktur Keuangan','Koordinasi dengan tim audit',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3707,'SM/001/I/2024','2024-01-08','Surat Masuk','Undangan Rapat Koordinasi','Kementerian Keuangan','Direktur Utama','Untuk ditindaklanjuti',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(3708,'SK/001/I/2024','2024-01-12','Surat Keluar','Pemberitahuan Libur Nasional','Sekretariat','Seluruh Karyawan',NULL,NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(3709,'SM/005/II/2024','2024-02-05','Surat Masuk','Permohonan Data Kepesertaan','OJK','Direktur Kepesertaan','Segera diproses',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(3710,'SK/008/II/2024','2024-02-20','Surat Keluar','Laporan Tahunan 2023','Direktur Utama','Dewan Pengawas',NULL,NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(3711,'SM/012/III/2024','2024-03-10','Surat Masuk','Audit Eksternal 2024','KAP Ernst & Young','Direktur Keuangan','Koordinasi dengan tim audit',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sekretariat_surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat`
--

DROP TABLE IF EXISTS `surat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tgl_surat` date DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL COMMENT '1: Keluar;\r\n2: Masuk;',
  `no_surat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `no_agenda` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `perihal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `jenis` tinyint unsigned DEFAULT NULL COMMENT '1: Keluar;\r\n2: Masuk;',
  `nama_perusahaan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `klasifikasi` smallint unsigned DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat`
--

LOCK TABLES `surat` WRITE;
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
INSERT INTO `surat` VALUES (2,'2024-01-10',2,'INV/001/I/2024','A-001/2024','Laporan Kinerja Portofolio Investasi Q4 2023',1,'PT Mandiri Sekuritas',NULL,'Surat masuk berisi laporan kinerja portofolio',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(3,'2024-01-15',1,'OUT/001/I/2024','K-001/2024','Permohonan Informasi Produk Investasi',2,'PT BNI Securities',NULL,'Surat keluar permintaan info produk',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(4,'2024-02-05',2,'INV/015/II/2024','A-015/2024','Konfirmasi Transaksi Pembelian Saham',1,'PT Indo Premier Securities',NULL,'Konfirmasi pembelian saham ASII',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5,'2024-02-20',1,'OUT/008/II/2024','K-008/2024','Instruksi Penjualan Saham',2,'PT Mandiri Sekuritas',NULL,'Instruksi jual saham TLKM',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(6,'2024-03-01',2,'INV/025/III/2024','A-025/2024','Laporan Bulanan Investasi Februari 2024',1,'PT Bahana Securities',NULL,'Laporan bulanan portofolio',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(7,'2024-03-15',1,'OUT/015/III/2024','K-015/2024','Permohonan Pembukaan Rekening Efek',2,'PT BCA Sekuritas',NULL,'Permohonan buka rekening baru',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(8,'2024-04-10',2,'INV/040/IV/2024','A-040/2024','Pemberitahuan Dividen Saham BBCA',1,'PT Bank Central Asia Tbk',NULL,'Pemberitahuan pembagian dividen',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(9,'2024-05-05',1,'OUT/025/V/2024','K-025/2024','Laporan Triwulan I 2024',2,'Dewan Pengawas',NULL,'Laporan kinerja investasi Q1 2024',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(10,'2024-01-10',2,'INV/001/I/2024','A-001/2024','Laporan Kinerja Portofolio Investasi Q4 2023',1,'PT Mandiri Sekuritas',NULL,'Surat masuk berisi laporan kinerja portofolio',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(11,'2024-01-15',1,'OUT/001/I/2024','K-001/2024','Permohonan Informasi Produk Investasi',2,'PT BNI Securities',NULL,'Surat keluar permintaan info produk',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(12,'2024-02-05',2,'INV/015/II/2024','A-015/2024','Konfirmasi Transaksi Pembelian Saham',1,'PT Indo Premier Securities',NULL,'Konfirmasi pembelian saham ASII',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(13,'2024-02-20',1,'OUT/008/II/2024','K-008/2024','Instruksi Penjualan Saham',2,'PT Mandiri Sekuritas',NULL,'Instruksi jual saham TLKM',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(14,'2024-03-01',2,'INV/025/III/2024','A-025/2024','Laporan Bulanan Investasi Februari 2024',1,'PT Bahana Securities',NULL,'Laporan bulanan portofolio',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(15,'2024-03-15',1,'OUT/015/III/2024','K-015/2024','Permohonan Pembukaan Rekening Efek',2,'PT BCA Sekuritas',NULL,'Permohonan buka rekening baru',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(16,'2024-04-10',2,'INV/040/IV/2024','A-040/2024','Pemberitahuan Dividen Saham BBCA',1,'PT Bank Central Asia Tbk',NULL,'Pemberitahuan pembagian dividen',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(17,'2024-05-05',1,'OUT/025/V/2024','K-025/2024','Laporan Triwulan I 2024',2,'Dewan Pengawas',NULL,'Laporan kinerja investasi Q1 2024',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `surat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint unsigned DEFAULT NULL COMMENT '1: Pembelian;\r\n2: Penjualan;',
  `tgl_transaksi` date DEFAULT NULL,
  `perihal` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `saham` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `broker` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5805 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (5785,1,'2024-01-15','Pembelian Saham BBCA','BBCA','PT Mandiri Sekuritas','Pembelian 10,000 lembar saham BBCA @Rp 9,500',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5786,1,'2024-01-20','Pembelian Saham BBRI','BBRI','PT BNI Securities','Pembelian 15,000 lembar saham BBRI @Rp 5,200',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5787,2,'2024-02-10','Penjualan Saham TLKM','TLKM','PT Mandiri Sekuritas','Penjualan 8,000 lembar saham TLKM @Rp 4,100',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5788,1,'2024-02-25','Pembelian Saham ASII','ASII','PT Indo Premier Securities','Pembelian 5,000 lembar saham ASII @Rp 6,800',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5789,2,'2024-03-05','Penjualan Saham UNVR','UNVR','PT BNI Securities','Penjualan 3,000 lembar saham UNVR @Rp 4,500',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5790,1,'2024-03-15','Pembelian Obligasi Negara','FR0089','PT Bahana Securities','Pembelian Obligasi Negara FR0089 nominal Rp 5M',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5791,1,'2024-04-01','Pembelian Saham BMRI','BMRI','PT Mandiri Sekuritas','Pembelian 12,000 lembar saham BMRI @Rp 6,100',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5792,2,'2024-04-20','Penjualan Saham BBCA','BBCA','PT Mandiri Sekuritas','Penjualan 5,000 lembar saham BBCA @Rp 10,200',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5793,1,'2024-05-10','Pembelian Saham INDF','INDF','PT BNI Securities','Pembelian 20,000 lembar saham INDF @Rp 7,300',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5794,1,'2024-06-01','Pembelian Reksadana Pendapatan Tetap','RDPT001','PT Manulife Aset Manajemen','Pembelian Reksadana Pendapatan Tetap Rp 10M',NULL,NULL,'2025-12-31 04:09:31','2025-12-31 04:09:31',NULL,1,NULL,NULL,NULL),(5795,1,'2024-01-15','Pembelian Saham BBCA','BBCA','PT Mandiri Sekuritas','Pembelian 10,000 lembar saham BBCA @Rp 9,500',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5796,1,'2024-01-20','Pembelian Saham BBRI','BBRI','PT BNI Securities','Pembelian 15,000 lembar saham BBRI @Rp 5,200',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5797,2,'2024-02-10','Penjualan Saham TLKM','TLKM','PT Mandiri Sekuritas','Penjualan 8,000 lembar saham TLKM @Rp 4,100',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5798,1,'2024-02-25','Pembelian Saham ASII','ASII','PT Indo Premier Securities','Pembelian 5,000 lembar saham ASII @Rp 6,800',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5799,2,'2024-03-05','Penjualan Saham UNVR','UNVR','PT BNI Securities','Penjualan 3,000 lembar saham UNVR @Rp 4,500',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5800,1,'2024-03-15','Pembelian Obligasi Negara','FR0089','PT Bahana Securities','Pembelian Obligasi Negara FR0089 nominal Rp 5M',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5801,1,'2024-04-01','Pembelian Saham BMRI','BMRI','PT Mandiri Sekuritas','Pembelian 12,000 lembar saham BMRI @Rp 6,100',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5802,2,'2024-04-20','Penjualan Saham BBCA','BBCA','PT Mandiri Sekuritas','Penjualan 5,000 lembar saham BBCA @Rp 10,200',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5803,1,'2024-05-10','Pembelian Saham INDF','INDF','PT BNI Securities','Pembelian 20,000 lembar saham INDF @Rp 7,300',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL),(5804,1,'2024-06-01','Pembelian Reksadana Pendapatan Tetap','RDPT001','PT Manulife Aset Manajemen','Pembelian Reksadana Pendapatan Tetap Rp 10M',NULL,NULL,'2025-12-31 04:10:10','2025-12-31 04:10:10',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jabatan_history`
--

DROP TABLE IF EXISTS `user_jabatan_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_jabatan_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned DEFAULT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jabatan` int unsigned DEFAULT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_jabatan` (`id_jabatan`),
  KEY `id_divisi` (`id_divisi`),
  KEY `idx_nik_active` (`nik`,`is_active`),
  KEY `idx_valid_dates` (`valid_from`,`valid_till`),
  CONSTRAINT `user_jabatan_history_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_jabatan_history_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `master_jabatan` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_jabatan_history_ibfk_3` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jabatan_history`
--

LOCK TABLES `user_jabatan_history` WRITE;
/*!40000 ALTER TABLE `user_jabatan_history` DISABLE KEYS */;
INSERT INTO `user_jabatan_history` VALUES (1,2,'3171031110061003',1,2,'2026-01-02','2026-01-31',1,'2026-01-02 06:19:06','2026-01-02 06:19:06',NULL,1,NULL,NULL),(2,3,'31710311100610032',2,2,'2025-12-01','2026-01-09',1,'2026-01-08 00:17:15','2026-01-08 00:17:15',NULL,1,NULL,NULL),(3,4,'12321312312',3,3,'2026-01-08','2026-01-09',1,'2026-01-08 00:20:18','2026-01-08 00:20:18',NULL,3,NULL,NULL),(4,5,'123213123122',1,2,'2026-01-08','2026-01-29',1,'2026-01-08 00:25:58','2026-01-08 00:25:58',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `user_jabatan_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divisi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_till` date DEFAULT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Full Name',
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` smallint unsigned DEFAULT NULL COMMENT '0:inactive; 1:active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `nik` (`nik`),
  KEY `idx_users_nik` (`nik`),
  KEY `idx_users_email` (`email`),
  KEY `idx_users_active_valid` (`is_active`,`valid_till`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,NULL,NULL,'Admin','admin@admin.com',NULL,'$2y$10$38KeCzYflMkkLN8N7Au3A.XhtHYUpys9YDYnXjAh4bvSRt/kQZOGC',NULL,1,'2025-12-30 20:35:22',NULL,NULL,NULL),(2,'admin1','3171031110061003','Keuangan & SDM','2026-01-02','2026-01-31','Farizi Adam','admin@test.com',NULL,'$2y$10$OlJ0wrGOfR60FAnZKgPYReiSTuUf0WA6LvWnUZ/5L79ndbrhyZ0sW',NULL,1,'2026-01-02 06:19:06','2026-01-02 06:19:41','2026-01-02 06:19:41','9SwS6YmPdcFdA243gRlOnHY6Sp92uGZz'),(3,'menkeu','31710311100610032',NULL,NULL,NULL,'Farizi Adam','menkeu@gmail.com',NULL,'$2y$10$f6Wietl1b18Mo9bDBLy6MeTGOqChQgRlOmbyB4CD0mwrcQq1QhvqO',NULL,1,'2026-01-08 00:17:15','2026-01-08 00:17:15',NULL,'HK4lIQzFyMQU9I1u0ng6WzAgiiZPTe93'),(4,'ga','12321312312',NULL,NULL,NULL,'GA ','Tahun.genda@gmail.com',NULL,'$2y$10$4kXT3Gm.s5bUGCfU1qIC..JXs5JMp3ApsquGlyhWGzikGXsc1Ybsa',NULL,0,'2026-01-08 00:20:18','2026-01-08 00:24:52','2026-01-08 00:24:52','smmfhw1yVa5lFQxFdl4ieKT8wETuyy0R'),(5,'test','123213123122',NULL,NULL,NULL,'Farizi Adam','farizi@gmail.com',NULL,'$2y$10$PyBy/oZf7jRdRxNjEiNwZ.8TBD7gNgakT5WhyCPtOBwHOGAAFe5BO',NULL,0,'2026-01-08 00:25:58','2026-01-08 00:28:58','2026-01-08 00:28:58','mwVhE2tXN8nb7HNzhOzPIeY9Mm4fX3gA');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int unsigned NOT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divisi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_status` enum('Permanent','Contract','Internship') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `npwp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` enum('A','B','AB','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` enum('Islam','Kristen','Katolik','Hindu','Buddha','Konghucu') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_level` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Digital signature for document approval',
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` smallint unsigned DEFAULT NULL COMMENT '0:Woman; 1:Man',
  `birth_date` date DEFAULT NULL,
  `id_vilages` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poscode` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_users_profile_users_id` (`id_user`) USING BTREE,
  KEY `idx_profile_user` (`id_user`),
  KEY `idx_profile_nik` (`nik`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Admin','Istrator','administrator.png',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'3171031110061003','Keuangan & SDM',NULL,'Contract','2026-01-02','3171031110061003','1231231231',NULL,NULL,'A','Islam','Single','S1',NULL,'Farizi','Adam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'2026-01-02 06:19:06','2026-01-02 06:19:06',NULL,1,1,NULL),(3,3,'31710311100610032',NULL,NULL,'Permanent','2020-08-08','31710311100610032','1231231231','Farizi Adam',NULL,'A','Islam','Single','S1',NULL,'Farizi','Adam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+6285156400833',NULL,NULL,NULL,NULL,NULL,'2026-01-08 00:17:15','2026-01-08 00:17:15',NULL,1,1,NULL),(4,4,'12321312312',NULL,NULL,'Contract','2025-12-08','3321321321','3213213213',NULL,NULL,'A','Islam','Single','S1',NULL,'GA','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'2026-01-08 00:20:18','2026-01-08 00:20:18',NULL,3,3,NULL),(5,5,'123213123122',NULL,NULL,'Contract','2025-10-29','31710311100610032','222',NULL,NULL,'A','Islam','Single',NULL,NULL,'Farizi','Adam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'2026-01-08 00:25:58','2026-01-08 00:25:58',NULL,1,1,NULL);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_rules`
--

DROP TABLE IF EXISTS `workflow_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_rules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `require_checker` tinyint(1) DEFAULT '1',
  `require_approver` tinyint(1) DEFAULT '0',
  `checker_role_id` int unsigned DEFAULT NULL,
  `approver_role_id` int unsigned DEFAULT NULL,
  `auto_assign_checker` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_workflow_rule` (`document_type`,`id_divisi`),
  KEY `id_divisi` (`id_divisi`),
  KEY `checker_role_id` (`checker_role_id`),
  KEY `approver_role_id` (`approver_role_id`),
  CONSTRAINT `workflow_rules_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workflow_rules_ibfk_2` FOREIGN KEY (`checker_role_id`) REFERENCES `base_roles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `workflow_rules_ibfk_3` FOREIGN KEY (`approver_role_id`) REFERENCES `base_roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_rules`
--

LOCK TABLES `workflow_rules` WRITE;
/*!40000 ALTER TABLE `workflow_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dapen-backup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-08 16:10:04
