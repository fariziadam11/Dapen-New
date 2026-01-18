-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dapennew
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akuntansi_aturan_kebijakan_id_folder_index` (`id_folder`),
  KEY `akuntansi_aturan_kebijakan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_aturan_kebijakan`
--

LOCK TABLES `akuntansi_aturan_kebijakan` WRITE;
/*!40000 ALTER TABLE `akuntansi_aturan_kebijakan` DISABLE KEYS */;
INSERT INTO `akuntansi_aturan_kebijakan` VALUES (1,NULL,1,'2026-01-16','AK-0001','Kebijakan','43ac35f7-1006-440c-bf58-fd033c36599d.pdf','STNK.pdf','lemari',2,'Rahasia','2026-01-16 00:31:22','2026-01-16 00:34:31','2026-01-16 00:34:31',1,1,1),(2,NULL,5,'2026-01-16','AK-0001','Kebijakan baru','f478ad5a-d266-4a60-a6e4-40bbe05fe7a3.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 00:35:14','2026-01-16 18:42:54',NULL,1,1,NULL),(3,NULL,5,'2026-01-16','AK-0002','Kebijakan baruu','a478edd4-76dc-4999-ab2e-d7f5a92768e2.pdf','STNK.pdf','lemari',3,'Umum','2026-01-16 05:03:44','2026-01-16 18:42:54',NULL,1,1,NULL),(4,NULL,1,'2026-01-17','555525','Kebijakan','d6651653-28f0-4e0e-a4bc-26b59e8d6c7c.pdf','VMmanager_pilot_project_checklist.pdf',NULL,2,'Rahasia','2026-01-17 00:13:04','2026-01-17 01:03:36',NULL,1,1,NULL),(5,NULL,1,'2026-01-17','AK-0002','Kebijakan','19526daf-0c85-4180-9940-7caaa8eaa522.pdf','CV Farizi Adam.pdf',NULL,1,'Umum','2026-01-17 01:03:50','2026-01-17 01:03:50',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` int unsigned DEFAULT NULL,
  `bulan` int unsigned DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akuntansi_jurnal_umum_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_jurnal_umum`
--

LOCK TABLES `akuntansi_jurnal_umum` WRITE;
/*!40000 ALTER TABLE `akuntansi_jurnal_umum` DISABLE KEYS */;
INSERT INTO `akuntansi_jurnal_umum` VALUES (1,1,NULL,NULL,NULL,'6ffc6640-ea90-4aed-9635-3dbaeec8114e.pdf','Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf',NULL,1,'Rahasia','2026-01-16 05:04:55','2026-01-17 00:30:38','2026-01-17 00:30:38',1,1,1),(2,1,2025,1,'test','ac526a49-c620-4077-9b58-a84fd5787ab0.pdf','STNK.pdf',NULL,1,'Umum','2026-01-17 00:31:11','2026-01-17 00:31:11',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `nama_kap` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akuntansi_laporan_audit_investasi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_audit_investasi`
--

LOCK TABLES `akuntansi_laporan_audit_investasi` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_investasi` DISABLE KEYS */;
INSERT INTO `akuntansi_laporan_audit_investasi` VALUES (1,1,'2026-01-16','test',NULL,'57c96189-3d02-4cd2-82b9-6cc0ff106462.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 05:06:42','2026-01-16 05:06:42',NULL,1,NULL,NULL),(2,1,'2026-01-17','Laporan Audit','Bos Wawan','3c37e338-3440-4068-9065-468567e416c8.pdf','STNK.pdf',NULL,1,'Umum','2026-01-17 04:21:48','2026-01-17 04:21:48',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `nama_kap` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akuntansi_laporan_audit_keuangan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_audit_keuangan`
--

LOCK TABLES `akuntansi_laporan_audit_keuangan` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_audit_keuangan` DISABLE KEYS */;
INSERT INTO `akuntansi_laporan_audit_keuangan` VALUES (1,1,'2026-01-16','Kebijakan baruu',NULL,'bf37178a-ab2f-4744-b195-3e8aa3870b81.pdf','STNK.pdf',NULL,1,'Rahasia','2026-01-16 05:07:21','2026-01-16 05:07:21',NULL,1,NULL,NULL),(2,1,'2026-01-17','Audit Keuangan','Bos Wawan','809d0406-73f0-4bd9-a3d2-0d350e11798a.pdf','1058-API_Basic_Guide_for_InvGate_Service_Management.pdf',NULL,1,'Umum','2026-01-17 04:22:31','2026-01-17 04:22:31',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akuntansi_laporan_bulanan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akuntansi_laporan_bulanan`
--

LOCK TABLES `akuntansi_laporan_bulanan` WRITE;
/*!40000 ALTER TABLE `akuntansi_laporan_bulanan` DISABLE KEYS */;
INSERT INTO `akuntansi_laporan_bulanan` VALUES (1,1,'2026-01-16','Kebijakan baruu','1733970f-0487-4793-b57c-dca3123a382c.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 05:07:46','2026-01-16 05:07:46',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_aturan_kebijakan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_aturan_kebijakan`
--

LOCK TABLES `anggaran_aturan_kebijakan` WRITE;
/*!40000 ALTER TABLE `anggaran_aturan_kebijakan` DISABLE KEYS */;
INSERT INTO `anggaran_aturan_kebijakan` VALUES (1,2,'2026-01-16','AG-001','Kebijakan baruu','e578b2d3-ba19-4f35-bf80-19a163c69aca.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 05:27:19','2026-01-16 05:27:19',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `direktorat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_nota` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_sukka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_dokumen_rra_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_dokumen_rra`
--

LOCK TABLES `anggaran_dokumen_rra` WRITE;
/*!40000 ALTER TABLE `anggaran_dokumen_rra` DISABLE KEYS */;
INSERT INTO `anggaran_dokumen_rra` VALUES (1,2,NULL,NULL,NULL,NULL,'0a873efe-d34a-4110-9997-bd1997b51fc8.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 05:33:37','2026-01-17 04:27:28',NULL,1,1,NULL),(2,2,'2026-01-17',NULL,NULL,NULL,'a490e487-33bc-461e-a809-541ad780c140.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:27:13','2026-01-17 04:38:26',NULL,1,1,NULL),(3,1,'2026-02-25',NULL,NULL,NULL,'a1ef7ff6-2b0d-45b0-ac7c-ce295e2e55e3.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:56:05','2026-01-17 05:56:05',NULL,1,NULL,NULL),(4,6,'2026-02-10',NULL,NULL,NULL,'edd68b89-6a32-4b02-9609-8aba30b006e0.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 06:11:44','2026-01-17 06:11:44',NULL,1,NULL,NULL),(5,8,'2025-05-07',NULL,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:24:47','2026-01-17 06:24:47',NULL,1,NULL,NULL),(6,4,'2025-02-07','Dignissimos cupiditate ex.','217','561',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:35:51','2026-01-17 06:35:51',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` int unsigned DEFAULT NULL,
  `bulan` int unsigned DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_laporan_prbc_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_laporan_prbc`
--

LOCK TABLES `anggaran_laporan_prbc` WRITE;
/*!40000 ALTER TABLE `anggaran_laporan_prbc` DISABLE KEYS */;
INSERT INTO `anggaran_laporan_prbc` VALUES (1,2,NULL,NULL,'cd26bb3f-8605-4d3f-9043-4d0a5c0e4a08.pdf','STNK.pdf',NULL,1,'Rahasia','2026-01-16 05:35:12','2026-01-17 04:30:29',NULL,1,1,NULL),(2,2,NULL,NULL,'26a63f5f-40f2-4743-acb1-e3b636d6feb5.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:29:08','2026-01-17 04:29:08',NULL,1,NULL,NULL),(3,8,NULL,NULL,'4e8df75e-72b5-41a1-9ba8-1623751d7e1e.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:58:32','2026-01-17 05:58:32',NULL,1,NULL,NULL),(4,4,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:12:38','2026-01-17 06:12:38',NULL,1,NULL,NULL),(5,2,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:25:24','2026-01-17 06:25:24',NULL,1,NULL,NULL),(6,9,2000,3,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:38:26','2026-01-17 06:38:26',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` int unsigned DEFAULT NULL,
  `direktorat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_rencana_kerja_direktorat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_direktorat`
--

LOCK TABLES `anggaran_rencana_kerja_direktorat` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_direktorat` DISABLE KEYS */;
INSERT INTO `anggaran_rencana_kerja_direktorat` VALUES (1,2,NULL,NULL,'Kebijakan','9d281c60-d64b-4575-be38-5cb951c57c68.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:32:37','2026-01-17 04:32:37',NULL,1,NULL,NULL),(2,8,NULL,NULL,'Cupiditate aspernatur pariatur officia.','4d6dae2f-6795-4963-9513-6b55e4cdd734.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:59:18','2026-01-17 05:59:18',NULL,1,NULL,NULL),(3,9,NULL,NULL,'Quia ducimus odio reiciendis exercitationem eligendi numquam excepturi perspiciatis quas.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:25:47','2026-01-17 06:25:47',NULL,1,NULL,NULL),(4,4,2000,'Hic vel necessitatibus omnis.','Qui dolorem voluptatum amet quasi molestias sit modi nostrum.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:38:45','2026-01-17 06:38:45',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` int unsigned DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_rencana_kerja_tahunan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_tahunan`
--

LOCK TABLES `anggaran_rencana_kerja_tahunan` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_tahunan` DISABLE KEYS */;
INSERT INTO `anggaran_rencana_kerja_tahunan` VALUES (1,1,NULL,'Kebijaakan','c69da233-5812-4dc5-b6a8-99c0dab96b44.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:33:42','2026-01-17 04:33:42',NULL,1,NULL,NULL),(2,6,NULL,'Veniam ex deserunt ut.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:26:03','2026-01-17 06:26:03',NULL,1,NULL,NULL),(3,5,2000,'Aliquam dolorum natus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:38:55','2026-01-17 06:38:55',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` int unsigned DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `anggaran_rencana_kerja_triwulan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_rencana_kerja_triwulan`
--

LOCK TABLES `anggaran_rencana_kerja_triwulan` WRITE;
/*!40000 ALTER TABLE `anggaran_rencana_kerja_triwulan` DISABLE KEYS */;
INSERT INTO `anggaran_rencana_kerja_triwulan` VALUES (1,2,NULL,'Kebijakan','5763685c-42a7-4195-ba1f-15fd53c76449.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:35:12','2026-01-17 04:35:12',NULL,1,NULL,NULL),(2,1,NULL,'Id qui veniam impedit facere quisquam error.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:26:41','2026-01-17 06:26:41',NULL,1,NULL,NULL),(3,6,2000,'Necessitatibus dignissimos dolorem enim occaecati distinctio temporibus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:39:05','2026-01-17 06:39:05',NULL,1,NULL,NULL);
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_action` (`user_id`,`action`),
  KEY `idx_table_record` (`table_name`,`record_id`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `audit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (1,1,'create','hukumkepatuhan_kajian_hukum',1,NULL,'{\"file\": \"6220202c-a015-4d22-8058-4271e3bc4d6c.pdf\", \"judul\": \"test\", \"nomor\": \"555525\", \"lokasi\": null, \"tanggal\": null, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Linux; Android 13; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36','2026-01-16 00:20:14'),(2,1,'view','hukumkepatuhan_kajian_hukum',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:20:26'),(3,1,'download','hukumkepatuhan_kajian_hukum',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:20:30'),(4,1,'create','akuntansi_aturan_kebijakan',1,NULL,'{\"file\": \"d683d1c3-d37f-4ddc-adb0-07a015b6f4b7.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:31:22'),(5,1,'view','akuntansi_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:31:25'),(6,1,'download','akuntansi_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:31:29'),(7,1,'view','akuntansi_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:31:45'),(8,1,'view','akuntansi_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:31:57'),(9,1,'view','akuntansi_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:32:06'),(10,1,'delete','hukumkepatuhan_kajian_hukum',1,'{\"id\": 1, \"file\": \"6220202c-a015-4d22-8058-4271e3bc4d6c.pdf\", \"judul\": \"test\", \"lokasi\": null, \"tanggal\": null, \"version\": 1, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": 1, \"created_at\": \"2026-01-16T07:20:14.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T07:20:14.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:32:30'),(11,1,'update','akuntansi_aturan_kebijakan',1,'{\"id\": 1, \"file\": \"d683d1c3-d37f-4ddc-adb0-07a015b6f4b7.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-16T07:31:22.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T07:31:22.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Rahasia\"}','{\"file\": \"43ac35f7-1006-440c-bf58-fd033c36599d.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"version\": 2, \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:32:55'),(12,1,'delete','akuntansi_aturan_kebijakan',1,'{\"id\": 1, \"file\": \"43ac35f7-1006-440c-bf58-fd033c36599d.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 2, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-16T07:31:22.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T07:32:55.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:34:31'),(13,1,'create','akuntansi_aturan_kebijakan',2,NULL,'{\"file\": \"f478ad5a-d266-4a60-a6e4-40bbe05fe7a3.pdf\", \"judul\": \"Kebijakan baru\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 00:35:14'),(14,1,'view','akuntansi_aturan_kebijakan',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:03:10'),(15,1,'create','akuntansi_aturan_kebijakan',3,NULL,'{\"file\": \"9e8cab6b-a946-43cf-adeb-cabba2e5f6bb.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AK-0002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:03:44'),(16,1,'update','akuntansi_aturan_kebijakan',3,'{\"id\": 3, \"file\": \"9e8cab6b-a946-43cf-adeb-cabba2e5f6bb.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AK-0002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-16T12:03:44.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T12:03:44.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\"}','{\"file\": \"8066cd65-e236-4b10-b8af-d2edee4ce301.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AK-0002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"version\": 2, \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:04:16'),(17,1,'update','akuntansi_aturan_kebijakan',3,'{\"id\": 3, \"file\": \"8066cd65-e236-4b10-b8af-d2edee4ce301.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AK-0002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 2, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-16T12:03:44.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T12:04:16.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Umum\"}','{\"file\": \"a478edd4-76dc-4999-ab2e-d7f5a92768e2.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AK-0002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"version\": 3, \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:04:24'),(18,1,'create','akuntansi_jurnal_umum',1,NULL,'{\"file\": \"6ffc6640-ea90-4aed-9635-3dbaeec8114e.pdf\", \"lokasi\": null, \"file_name\": \"Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:04:55'),(19,1,'update','akuntansi_jurnal_umum',1,'{\"id\": 1, \"file\": \"6ffc6640-ea90-4aed-9635-3dbaeec8114e.pdf\", \"bulan\": null, \"tahun\": null, \"lokasi\": null, \"version\": 1, \"file_name\": \"Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf\", \"id_divisi\": 1, \"created_at\": \"2026-01-16T12:04:55.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T12:04:55.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Rahasia\"}','{\"lokasi\": null, \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:05:06'),(20,1,'update','akuntansi_jurnal_umum',1,'{\"id\": 1, \"file\": \"6ffc6640-ea90-4aed-9635-3dbaeec8114e.pdf\", \"bulan\": null, \"tahun\": null, \"lokasi\": null, \"version\": 1, \"file_name\": \"Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf\", \"id_divisi\": 1, \"created_at\": \"2026-01-16T12:04:55.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T12:04:55.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Rahasia\"}','{\"lokasi\": null, \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:05:15'),(21,1,'create','akuntansi_laporan_audit_investasi',1,NULL,'{\"file\": \"57c96189-3d02-4cd2-82b9-6cc0ff106462.pdf\", \"judul\": \"test\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:06:42'),(22,1,'create','akuntansi_laporan_audit_keuangan',1,NULL,'{\"file\": \"bf37178a-ab2f-4744-b195-3e8aa3870b81.pdf\", \"judul\": \"Kebijakan baruu\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:07:21'),(23,1,'create','akuntansi_laporan_bulanan',1,NULL,'{\"file\": \"1733970f-0487-4793-b57c-dca3123a382c.pdf\", \"judul\": \"Kebijakan baruu\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:07:46'),(24,1,'create','anggaran_aturan_kebijakan',1,NULL,'{\"file\": \"e578b2d3-ba19-4f35-bf80-19a163c69aca.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AG-001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:27:19'),(25,1,'view','akuntansi_laporan_audit_keuangan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:28:18'),(26,1,'create','anggaran_dokumen_rra',1,NULL,'{\"file\": \"0a873efe-d34a-4110-9997-bd1997b51fc8.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AG-002\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:33:37'),(27,1,'create','anggaran_laporan_prbc',1,NULL,'{\"file\": \"cd26bb3f-8605-4d3f-9043-4d0a5c0e4a08.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"AG001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:35:12'),(28,1,'create','hukumkepatuhan_kajian_hukum',2,NULL,'{\"file\": \"6c92a4de-3c59-4778-91d3-07eaafce9a10.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"HK001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:37:40'),(29,1,'update','hukumkepatuhan_kajian_hukum',2,'{\"id\": 2, \"file\": \"6c92a4de-3c59-4778-91d3-07eaafce9a10.pdf\", \"judul\": \"Kebijakan\", \"lokasi\": null, \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 3, \"created_at\": \"2026-01-16T12:37:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T12:37:40.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\"}','{\"file\": \"eff1d34d-2b70-46dd-9f8b-a945eab1ab34.pdf\", \"judul\": \"Kebijakan\", \"nomor\": null, \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"version\": 2, \"file_name\": \"STNK.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:38:57'),(30,1,'create','hukumkepatuhan_legal_memo',1,NULL,'{\"file\": \"65bb941a-3868-42b1-a1f7-c9b65f794ab4.pdf\", \"judul\": \"test\", \"nomor\": \"HK001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:40:07'),(31,1,'create','hukumkepatuhan_kontrak',1,NULL,'{\"file\": \"bb6b2af2-8052-427e-a140-9197973856cf.pdf\", \"judul\": \"Kebijakan baruu\", \"nomor\": \"HK001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:41:43'),(32,1,'create','surat',1,NULL,'{\"file\": \"ca4c7907-11f8-4466-b22b-111ddc7e947e.pdf\", \"judul\": \"test\", \"nomor\": null, \"lokasi\": null, \"tanggal\": null, \"file_name\": \"STNK.pdf\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 05:44:58'),(33,1,'create','keuangan_bendaharapajak_surat',1,NULL,'{\"file\": \"5016feb0-7b98-416f-9d57-5c9edb5cfc19.pdf\", \"judul\": \"kebijakan\", \"nomor\": \"surat bayar 001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:01:59'),(34,1,'create','keuangan_bendaharapajak_cashflow',1,NULL,'{\"file\": \"e076db19-29ba-40c6-9f6e-d21c6e7a0fde.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"KEU001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:03:44'),(35,1,'update','keuangan_bendaharapajak_surat',1,'{\"id\": 1, \"file\": \"5016feb0-7b98-416f-9d57-5c9edb5cfc19.pdf\", \"lokasi\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 5, \"created_at\": \"2026-01-16T13:01:59.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T13:01:59.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\", \"nomor_surat_bayar\": null, \"tanggal_surat_bayar\": null}','{\"judul\": \"Kebijakan\", \"nomor\": null, \"lokasi\": \"test\", \"tanggal\": null, \"id_divisi\": \"5\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:04:58'),(36,1,'create','sdm_pks',1,NULL,'{\"file\": \"aeb9e0ea-90fd-4fb5-8271-32e2e0c219ed.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SDM001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:10:12'),(37,1,'create','sdm_peraturan',1,NULL,'{\"file\": \"d7a9e8e1-3bbf-44dc-9c37-5ad93cb70cb9.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SDM001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:12:31'),(38,1,'create','sdm_surat_masuk',1,NULL,'{\"file\": \"ae6426dc-3b5a-4aaa-a6ff-09cd5c5c7a22.pdf\", \"judul\": \"test\", \"nomor\": \"AK-0001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:14:52'),(39,1,'create','sekretariat_risalah_rapat',1,NULL,'{\"file\": \"44ecd56f-3db3-4073-baf1-4b949e16355a.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SK001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:19:35'),(40,1,'create','sekretariat_materi',1,NULL,'{\"file\": \"abaa650d-f558-41b2-853d-40d36d2b6420.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SK001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:20:27'),(41,1,'create','sekretariat_laporan',1,NULL,'{\"file\": \"6f8f93c2-9c29-493a-bd70-4ad7dc74cda8.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SK001\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:34:17'),(42,1,'create','logistiksarpen_procurement',1,NULL,'{\"file\": \"5e89dc4f-aa0d-4e42-b055-062186706581.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"LS001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:42:58'),(43,1,'update','logistiksarpen_procurement',1,'{\"id\": 1, \"file\": \"5e89dc4f-aa0d-4e42-b055-062186706581.pdf\", \"lokasi\": null, \"no_drp\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-16T13:42:58.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-16T13:42:58.000000Z\", \"updated_by\": null, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}','{\"judul\": \"Kebijakan\", \"nomor\": null, \"lokasi\": \"test\", \"tanggal\": null, \"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:43:49'),(44,1,'create','logistiksarpen_keamanan',1,NULL,'{\"file\": \"e30c2cb5-22f2-47ab-bb60-dc31f9ef6a81.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"LS001\", \"lokasi\": null, \"tanggal\": \"2026-01-16\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 06:44:18'),(45,1,'download','akuntansi_jurnal_umum',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 19:23:20'),(46,1,'download','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 19:23:42'),(47,1,'download','akuntansi_aturan_kebijakan',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 19:26:00'),(48,1,'download','akuntansi_aturan_kebijakan',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 19:26:03'),(49,1,'create','transaksi',1,NULL,'{\"file\": \"5c0a8e27-5660-4a31-8204-68b592f8ed3c.pdf\", \"type\": \"1\", \"saham\": \"makan\", \"broker\": \"makan\", \"perihal\": \"makan\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"4\", \"keterangan\": \"makan\", \"sifat_dokumen\": \"Umum\", \"tgl_transaksi\": \"2026-01-17\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 20:12:25'),(50,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 20:12:31'),(51,1,'update','transaksi',1,'{\"id\": 1, \"file\": \"5c0a8e27-5660-4a31-8204-68b592f8ed3c.pdf\", \"type\": 1, \"saham\": \"makan\", \"broker\": \"makan\", \"lokasi\": null, \"perihal\": \"makan\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 4, \"created_at\": \"2026-01-17T03:12:25.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": \"makan\", \"updated_at\": \"2026-01-17T03:12:25.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\", \"tgl_transaksi\": \"2026-01-17T00:00:00.000000Z\"}','{\"type\": \"1\", \"saham\": \"makan\", \"broker\": \"makan\", \"perihal\": \"makan\", \"id_divisi\": \"4\", \"keterangan\": \"makan\", \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": null}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-16 20:22:20'),(52,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:08:48'),(53,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:08:56'),(54,1,'create','akuntansi_aturan_kebijakan',4,NULL,'{\"file\": \"979a2e6d-13fd-480d-af5b-7c40cf8ffc31.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:13:04'),(55,1,'update','akuntansi_aturan_kebijakan',4,'{\"id\": 4, \"file\": \"979a2e6d-13fd-480d-af5b-7c40cf8ffc31.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"lokasi\": null, \"tanggal\": \"2026-01-17T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-17T07:13:04.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-17T07:13:04.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\"}','{\"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": null, \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:13:16'),(56,1,'update','akuntansi_aturan_kebijakan',4,'{\"id\": 4, \"file\": \"979a2e6d-13fd-480d-af5b-7c40cf8ffc31.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"lokasi\": null, \"tanggal\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-17T07:13:04.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-17T07:13:16.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\"}','{\"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:13:40'),(57,1,'download','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:22:36'),(58,1,'download','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:22:40'),(59,1,'download','anggaran_dokumen_rra',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:22:43'),(60,1,'view','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:28:24'),(61,1,'download','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:28:29'),(62,1,'create','logistiksarpen_procurement',2,NULL,'{\"file\": \"01a5992b-3a09-4dfd-a34e-548c7eb3a0a3.pdf\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:28:57'),(63,1,'update','logistiksarpen_procurement',2,'{\"id\": 2, \"file\": \"01a5992b-3a09-4dfd-a34e-548c7eb3a0a3.pdf\", \"lokasi\": null, \"no_drp\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-17T07:28:57.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-17T07:28:57.000000Z\", \"updated_by\": null, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}','{\"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:29:18'),(64,1,'update','logistiksarpen_procurement',2,'{\"id\": 2, \"file\": \"01a5992b-3a09-4dfd-a34e-548c7eb3a0a3.pdf\", \"lokasi\": null, \"no_drp\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-17T07:28:57.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-17T07:28:57.000000Z\", \"updated_by\": null, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}','{\"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:29:40'),(65,1,'create','logistiksarpen_procurement',3,NULL,'{\"id_divisi\": \"8\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:29:59'),(66,1,'delete','logistiksarpen_procurement',3,'{\"id\": 3, \"file\": null, \"lokasi\": null, \"no_drp\": null, \"version\": 1, \"file_name\": null, \"id_divisi\": 8, \"created_at\": \"2026-01-17T07:29:59.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-17T07:29:59.000000Z\", \"updated_by\": null, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:30:11'),(67,1,'delete','logistiksarpen_procurement',2,'{\"id\": 2, \"file\": \"01a5992b-3a09-4dfd-a34e-548c7eb3a0a3.pdf\", \"lokasi\": null, \"no_drp\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-17T07:28:57.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-17T07:28:57.000000Z\", \"updated_by\": null, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:30:13'),(68,1,'delete','logistiksarpen_procurement',1,'{\"id\": 1, \"file\": \"5e89dc4f-aa0d-4e42-b055-062186706581.pdf\", \"lokasi\": \"test\", \"no_drp\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-16T13:42:58.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"updated_at\": \"2026-01-16T13:43:49.000000Z\", \"updated_by\": 1, \"nama_kegiatan\": null, \"sifat_dokumen\": \"Umum\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:30:15'),(69,1,'delete','akuntansi_jurnal_umum',1,'{\"id\": 1, \"file\": \"6ffc6640-ea90-4aed-9635-3dbaeec8114e.pdf\", \"bulan\": null, \"tahun\": null, \"lokasi\": null, \"version\": 1, \"file_name\": \"Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf\", \"id_divisi\": 1, \"created_at\": \"2026-01-16T12:04:55.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T12:04:55.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Rahasia\"}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:30:38'),(70,1,'create','akuntansi_jurnal_umum',2,NULL,'{\"file\": \"ac526a49-c620-4077-9b58-a84fd5787ab0.pdf\", \"bulan\": \"1\", \"tahun\": \"2025\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"keterangan\": \"test\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:31:11'),(71,1,'update','transaksi',1,'{\"id\": 1, \"file\": \"5c0a8e27-5660-4a31-8204-68b592f8ed3c.pdf\", \"type\": 1, \"saham\": \"makan\", \"broker\": \"makan\", \"lokasi\": null, \"perihal\": \"makan\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 4, \"created_at\": \"2026-01-17T03:12:25.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": \"makan\", \"updated_at\": \"2026-01-17T03:22:20.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": null}','{\"type\": \"1\", \"saham\": \"makan\", \"broker\": \"makan\", \"perihal\": \"makan\", \"id_divisi\": \"4\", \"keterangan\": \"makan\", \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": \"2026-01-17\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:33:11'),(72,1,'delete','surat',1,'{\"id\": 1, \"file\": \"ca4c7907-11f8-4466-b22b-111ddc7e947e.pdf\", \"type\": null, \"jenis\": null, \"lokasi\": null, \"perihal\": null, \"version\": 1, \"no_surat\": null, \"file_name\": \"STNK.pdf\", \"id_divisi\": 4, \"no_agenda\": null, \"tgl_surat\": null, \"created_at\": \"2026-01-16T12:44:58.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-16T12:44:58.000000Z\", \"updated_by\": null, \"klasifikasi\": null, \"sifat_dokumen\": \"Umum\", \"nama_perusahaan\": null}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:33:31'),(73,1,'create','surat',2,NULL,'{\"file\": \"98387ad0-2c3b-41fa-9e40-3cd2f4d3e5ab.pdf\", \"perihal\": \"makan\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:34:12'),(74,1,'view','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:43:15'),(75,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:45:51'),(76,1,'download','surat',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:12'),(77,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:21'),(78,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:28'),(79,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:41'),(80,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:45'),(81,1,'view','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:55'),(82,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:53:56'),(83,1,'download','akuntansi_jurnal_umum',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:54:46'),(84,1,'download','akuntansi_jurnal_umum',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:55:13'),(85,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:55:44'),(86,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:56:15'),(87,1,'update','akuntansi_aturan_kebijakan',4,'{\"id\": 4, \"file\": \"979a2e6d-13fd-480d-af5b-7c40cf8ffc31.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"lokasi\": null, \"tanggal\": \"2026-01-17T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-17T07:13:04.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-17T07:13:40.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\"}','{\"file\": \"d6651653-28f0-4e0e-a4bc-26b59e8d6c7c.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": null, \"version\": 2, \"file_name\": \"VMmanager_pilot_project_checklist.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:56:44'),(88,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:56:50'),(89,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:58:20'),(90,1,'download','akuntansi_aturan_kebijakan',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:58:23'),(91,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:58:37'),(92,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:58:49'),(93,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 00:58:52'),(94,1,'download','keuangan_bendaharapajak_surat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:01:45'),(95,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:01:49'),(96,1,'download','akuntansi_aturan_kebijakan',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:01:56'),(97,1,'update','akuntansi_aturan_kebijakan',4,'{\"id\": 4, \"file\": \"d6651653-28f0-4e0e-a4bc-26b59e8d6c7c.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"lokasi\": null, \"tanggal\": null, \"version\": 2, \"file_name\": \"VMmanager_pilot_project_checklist.pdf\", \"id_divisi\": 1, \"id_folder\": null, \"created_at\": \"2026-01-17T07:13:04.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-17T07:56:44.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\"}','{\"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:03:36'),(98,1,'create','akuntansi_aturan_kebijakan',5,NULL,'{\"file\": \"19526daf-0c85-4180-9940-7caaa8eaa522.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"AK-0002\", \"tanggal\": \"2026-01-17\", \"file_name\": \"CV Farizi Adam.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:03:50'),(99,1,'download','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:03:53'),(100,1,'view','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:03:55'),(101,1,'download','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:03:58'),(102,1,'view','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 01:04:17'),(103,1,'download','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:18:52'),(104,1,'download','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:18:54'),(105,1,'view','akuntansi_aturan_kebijakan',5,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:18:57'),(106,1,'create','akuntansi_laporan_audit_investasi',2,NULL,'{\"file\": \"3c37e338-3440-4068-9065-468567e416c8.pdf\", \"judul\": \"Laporan Audit\", \"tanggal\": \"2026-01-17\", \"nama_kap\": \"Bos Wawan\", \"file_name\": \"STNK.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:21:48'),(107,1,'download','akuntansi_laporan_audit_investasi',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:21:56'),(108,1,'create','akuntansi_laporan_audit_keuangan',2,NULL,'{\"file\": \"809d0406-73f0-4bd9-a3d2-0d350e11798a.pdf\", \"judul\": \"Audit Keuangan\", \"tanggal\": \"2026-01-17\", \"nama_kap\": \"Bos Wawan\", \"file_name\": \"1058-API_Basic_Guide_for_InvGate_Service_Management.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:22:31'),(109,1,'download','akuntansi_laporan_audit_keuangan',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:22:33'),(110,1,'download','anggaran_aturan_kebijakan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:26:04'),(111,1,'create','anggaran_dokumen_rra',2,NULL,'{\"file\": \"a490e487-33bc-461e-a809-541ad780c140.pdf\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:27:13'),(112,1,'update','anggaran_dokumen_rra',1,'{\"id\": 1, \"file\": \"0a873efe-d34a-4110-9997-bd1997b51fc8.pdf\", \"lokasi\": \"lemari\", \"tanggal\": \"2026-01-16T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 2, \"created_at\": \"2026-01-16T12:33:37.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"nomor_nota\": null, \"updated_at\": \"2026-01-16T12:33:37.000000Z\", \"updated_by\": null, \"nomor_sukka\": null, \"sifat_dokumen\": \"Umum\"}','{\"tanggal\": null, \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:27:28'),(113,1,'update','anggaran_dokumen_rra',2,'{\"id\": 2, \"file\": \"a490e487-33bc-461e-a809-541ad780c140.pdf\", \"lokasi\": null, \"tanggal\": \"2026-01-17T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": 2, \"created_at\": \"2026-01-17T11:27:13.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"nomor_nota\": null, \"updated_at\": \"2026-01-17T11:27:13.000000Z\", \"updated_by\": null, \"nomor_sukka\": null, \"sifat_dokumen\": \"Umum\"}','{\"tanggal\": null, \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:27:49'),(114,1,'create','anggaran_laporan_prbc',2,NULL,'{\"file\": \"26a63f5f-40f2-4743-acb1-e3b636d6feb5.pdf\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:29:08'),(115,1,'update','anggaran_laporan_prbc',1,'{\"id\": 1, \"file\": \"cd26bb3f-8605-4d3f-9043-4d0a5c0e4a08.pdf\", \"bulan\": null, \"tahun\": null, \"lokasi\": null, \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 2, \"created_at\": \"2026-01-16T12:35:12.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_at\": \"2026-01-16T12:35:12.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Umum\"}','{\"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:30:29'),(116,1,'create','anggaran_rencana_kerja_direktorat',1,NULL,'{\"file\": \"9d281c60-d64b-4575-be38-5cb951c57c68.pdf\", \"judul\": \"Kebijakan\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:32:37'),(117,1,'create','anggaran_rencana_kerja_tahunan',1,NULL,'{\"file\": \"c69da233-5812-4dc5-b6a8-99c0dab96b44.pdf\", \"judul\": \"Kebijaakan\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:33:42'),(118,1,'create','anggaran_rencana_kerja_triwulan',1,NULL,'{\"file\": \"5763685c-42a7-4195-ba1f-15fd53c76449.pdf\", \"judul\": \"Kebijakan\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:35:12'),(119,1,'update','anggaran_dokumen_rra',2,'{\"id\": 2, \"file\": \"a490e487-33bc-461e-a809-541ad780c140.pdf\", \"lokasi\": null, \"tanggal\": null, \"version\": 1, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": 2, \"created_at\": \"2026-01-17T11:27:13.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"nomor_nota\": null, \"updated_at\": \"2026-01-17T11:27:49.000000Z\", \"updated_by\": 1, \"nomor_sukka\": null, \"sifat_dokumen\": \"Umum\"}','{\"tanggal\": \"2026-01-17\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:38:26'),(120,1,'create','hukumkepatuhan_kajian_hukum',3,NULL,'{\"file\": \"4ce90a8b-da7f-40a8-a24d-dbdff84e5d23.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"SK001\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:38:49'),(121,1,'create','hukumkepatuhan_legal_memo',2,NULL,'{\"file\": \"d7291e46-d0f7-41f9-a72f-945a28c7751f.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:40:27'),(122,1,'create','hukumkepatuhan_kontrak',2,NULL,'{\"file\": \"8b6c1e81-8138-4e08-a66d-616a85fb1215.pdf\", \"judul\": \"kontrak karyawan\", \"nomor\": \"0001\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:43:41'),(123,1,'create','hukumkepatuhan_putusan',1,NULL,'{\"file\": \"a82bca8b-48fe-4fa8-a088-1b954411255d.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:46:22'),(124,1,'create','hukumkepatuhan_regulasi_internal',1,NULL,'{\"file\": \"206c3cd2-2c4c-450e-ba80-5b40ae4c3b90.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:49:28'),(125,1,'view','hukumkepatuhan_regulasi_internal',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:52:22'),(126,1,'create','hukumkepatuhan_regulasi_external',1,NULL,'{\"file\": \"cb87434f-dbd8-4297-a368-ee84b2b9dd4c.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:53:08'),(127,1,'create','hukumkepatuhan_compliance_check',1,NULL,'{\"file\": \"baef4305-5acb-4432-9dbc-638d95634303.pdf\", \"judul\": \"Kebijakan\", \"nomor\": \"555525\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:54:19'),(128,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:58:40'),(129,1,'view','surat',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:58:48'),(130,1,'delete','surat',2,'{\"id\": 2, \"file\": \"98387ad0-2c3b-41fa-9e40-3cd2f4d3e5ab.pdf\", \"type\": null, \"jenis\": null, \"lokasi\": null, \"perihal\": \"makan\", \"version\": 1, \"no_surat\": null, \"file_name\": \"STNK.pdf\", \"id_divisi\": 4, \"no_agenda\": null, \"tgl_surat\": null, \"created_at\": \"2026-01-17T07:34:12.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-17T07:34:12.000000Z\", \"updated_by\": null, \"klasifikasi\": null, \"sifat_dokumen\": \"Umum\", \"nama_perusahaan\": null}',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 04:58:51'),(131,1,'create','surat',3,NULL,'{\"file\": \"8e44fe89-afb9-4474-9ceb-b4b35485a4d8.pdf\", \"perihal\": \"makan\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:00:02'),(132,1,'create','investasi_perencanaan_transaksi',1,NULL,'{\"file\": \"26363e2c-8261-4d8c-836e-d1809b886479.pdf\", \"perihal\": \"makan\", \"tanggal\": \"2026-01-17\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:02:36'),(133,1,'create','investasi_perencanaan_surat',1,NULL,'{\"file\": \"e245fbb3-caea-4598-8819-a4d547211de0.pdf\", \"nomor\": \"295\", \"perihal\": \"Atque optio fugit id nobis ratione doloribus nobis et.\", \"tanggal\": \"2025-01-31\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:05:12'),(134,1,'create','investasi_propensa_transaksi',1,NULL,'{\"file\": \"ba06c1a9-26bb-47e8-87b4-82b0786284de.pdf\", \"perihal\": \"Totam repudiandae incidunt.\", \"tanggal\": \"2027-01-04\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:06:48'),(135,1,'update','investasi_propensa_transaksi',1,'{\"id\": 1, \"file\": \"ba06c1a9-26bb-47e8-87b4-82b0786284de.pdf\", \"type\": null, \"lokasi\": null, \"perihal\": \"Totam repudiandae incidunt.\", \"tanggal\": \"2027-01-04T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": 8, \"created_at\": \"2026-01-17T12:06:48.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": null, \"updated_at\": \"2026-01-17T12:06:48.000000Z\", \"updated_by\": null, \"sifat_dokumen\": \"Rahasia\"}','{\"perihal\": \"Totam repudiandae incidunt.\", \"tanggal\": null, \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:20:04'),(136,1,'create','investasi_propensa_surat',1,NULL,'{\"file\": \"5b2add63-8d38-4166-9c76-33a126d0d139.pdf\", \"nomor\": \"193\", \"perihal\": \"Possimus dolores totam.\", \"tanggal\": \"2026-11-11\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"9\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:20:47'),(137,1,'create','keuangan_bendaharapajak_surat',2,NULL,'{\"file\": \"b306b3ed-af28-4796-9f45-9014685e9578.pdf\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:22:13'),(138,1,'create','keuangan_bendaharapajak_spb',1,NULL,'{\"file\": \"2b03d775-016b-4342-9f73-1a58df84f3c7.pdf\", \"tujuan\": \"Itaque a velit maxime laboriosam.\", \"nominal\": \"30\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"6\", \"nomor_spb\": \"76\", \"tanggal_spb\": \"2026-03-16\", \"sifat_dokumen\": \"Rahasia\", \"id_surat_bayar\": \"1\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:24:35'),(139,1,'create','keuangan_bendaharapajak_cashflow',2,NULL,'{\"file\": \"a93ddc88-0942-4d9f-b59f-71957a589d8d.pdf\", \"tanggal\": \"2026-07-11\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:31:22'),(140,1,'create','keuangan_bendaharapajak_penempatan',1,NULL,'{\"file\": \"425c7986-e4d8-46b3-8827-6100b5e78650.pdf\", \"tanggal\": \"2026-07-11\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:33:03'),(141,1,'create','keuangan_bendaharapajak_pemindahbukuan',1,NULL,'{\"file\": \"9f20360f-3248-44d5-bdde-99a6f9f84dde.pdf\", \"tanggal\": \"2025-04-18\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:34:58'),(142,1,'view','keuangan_bendaharapajak_pemindahbukuan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:35:02'),(143,1,'create','keuangan_bendaharapajak_pajak',1,NULL,'{\"file\": \"5c93ead4-e9fa-4b04-ad73-1a56675e8b50.pdf\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:35:37'),(144,1,'create','anggaran_dokumen_rra',3,NULL,'{\"file\": \"a1ef7ff6-2b0d-45b0-ac7c-ce295e2e55e3.pdf\", \"tanggal\": \"2026-02-25\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:56:05'),(145,1,'create','anggaran_laporan_prbc',3,NULL,'{\"file\": \"4e8df75e-72b5-41a1-9ba8-1623751d7e1e.pdf\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:58:32'),(146,1,'create','anggaran_rencana_kerja_direktorat',2,NULL,'{\"file\": \"4d6dae2f-6795-4963-9513-6b55e4cdd734.pdf\", \"judul\": \"Cupiditate aspernatur pariatur officia.\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:59:18'),(147,1,'create','hukumkepatuhan_executive_summary',1,NULL,'{\"file\": \"80a494e9-d070-4538-9e58-9d7b76dff008.pdf\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"9\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 05:59:55'),(148,1,'create','anggaran_dokumen_rra',4,NULL,'{\"file\": \"edd68b89-6a32-4b02-9609-8aba30b006e0.pdf\", \"tanggal\": \"2026-02-10\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:11:44'),(149,1,'update','anggaran_dokumen_rra',4,'{\"id\": 4, \"file\": \"edd68b89-6a32-4b02-9609-8aba30b006e0.pdf\", \"lokasi\": null, \"tanggal\": \"2026-02-10T00:00:00.000000Z\", \"version\": 1, \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": 6, \"created_at\": \"2026-01-17T13:11:44.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"direktorat\": null, \"nomor_nota\": null, \"updated_at\": \"2026-01-17T13:11:44.000000Z\", \"updated_by\": null, \"nomor_sukka\": null, \"sifat_dokumen\": \"Rahasia\"}','{\"tanggal\": \"2026-02-10\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:12:24'),(150,1,'create','anggaran_laporan_prbc',4,NULL,'{\"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:12:38'),(151,1,'create','surat',4,NULL,'{\"perihal\": \"Nesciunt placeat laudantium quam.\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:12:58'),(152,1,'create','keuangan_bendaharapajak_surat',3,NULL,'{\"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\", \"nomor_surat_bayar\": \"608\", \"tanggal_surat_bayar\": \"2026-11-14\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:13:28'),(153,1,'create','keuangan_bendaharapajak_spb',2,NULL,'{\"tujuan\": \"Enim voluptas nostrum maxime ut eos aut beatae cum.\", \"nominal\": \"622\", \"id_divisi\": \"1\", \"nomor_spb\": \"646\", \"tanggal_spb\": \"2026-07-12\", \"sifat_dokumen\": \"Rahasia\", \"id_surat_bayar\": \"3\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:13:49'),(154,1,'create','keuangan_bendaharapajak_sppb',1,NULL,'{\"dibuat\": \"Ex unde fuga mollitia.\", \"id_spb\": \"1\", \"tujuan\": \"Earum repudiandae itaque dicta dolores modi.\", \"nominal\": \"652\", \"id_divisi\": \"8\", \"nomor_sppb\": \"99\", \"tanggal_sppb\": \"2026-12-11\", \"sifat_dokumen\": \"Rahasia\", \"id_surat_bayar\": \"3\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:14:00'),(155,1,'create','keuangan_bendaharapajak_cashflow',3,NULL,'{\"uraian\": \"Minima similique maiores impedit minima nostrum a.\", \"nominal\": \"364\", \"tanggal\": \"2026-10-06\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:14:12'),(156,1,'create','keuangan_bendaharapajak_penempatan',2,NULL,'{\"uraian\": \"Expedita doloribus delectus perspiciatis neque voluptatem.\", \"nominal\": \"396\", \"tanggal\": \"2025-11-18\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:14:27'),(157,1,'create','keuangan_bendaharapajak_pemindahbukuan',2,NULL,'{\"uraian\": \"Ab a libero.\", \"nominal\": \"18\", \"tanggal\": \"2026-12-01\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:14:36'),(158,1,'create','keuangan_bendaharapajak_pajak',2,NULL,'{\"masa\": \"Consequuntur dolore sequi nam veritatis\", \"tahun\": \"2025\", \"uraian\": \"Itaque adipisci laboriosam rerum nobis laboriosam id.\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:14:58'),(159,1,'create','investasi_perencanaan_transaksi',2,NULL,'{\"perihal\": \"Rerum consequatur iure nulla provident labore vitae hic facilis nobis.\", \"tanggal\": \"2025-04-25\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:15:23'),(160,1,'create','investasi_perencanaan_surat',2,NULL,'{\"nomor\": \"629\", \"perihal\": \"Eius velit provident fugiat.\", \"tanggal\": \"2026-06-17\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:15:31'),(161,1,'create','investasi_propensa_transaksi',2,NULL,'{\"perihal\": \"Laborum inventore quasi exercitationem at natus atque fuga.\", \"tanggal\": \"2025-02-14\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:15:38'),(162,1,'create','investasi_propensa_surat',2,NULL,'{\"nomor\": \"227\", \"perihal\": \"Quam aliquid doloremque rerum enim.\", \"tanggal\": \"2025-03-19\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:15:45'),(163,1,'create','surat',5,NULL,'{\"perihal\": \"Earum dolores explicabo explicabo.\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:15:59'),(164,1,'create','hukumkepatuhan_kajian_hukum',4,NULL,'{\"judul\": \"Asperiores ipsa vitae harum.\", \"tanggal\": \"2026-09-03\", \"id_divisi\": \"2\", \"keterangan\": \"Dolores mollitia quae nemo deleniti quisquam blanditiis itaque amet dolorum.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:16:18'),(165,1,'create','hukumkepatuhan_legal_memo',3,NULL,'{\"judul\": \"Sint porro numquam non officia dolorem nulla nulla vel.\", \"tanggal\": \"2026-11-06\", \"id_divisi\": \"4\", \"keterangan\": \"Quisquam vel commodi.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:16:52'),(166,1,'create','hukumkepatuhan_kontrak',3,NULL,'{\"jenis\": \"Enim nostrum fugiat.\", \"judul\": \"Voluptate vitae ratione facere tempora possimus.\", \"nomor\": \"202\", \"pihak\": \"Debitis aut vero voluptas fugiat quia.\", \"status\": \"Aktif\", \"pemilik\": \"Odit fugit illum.\", \"tanggal\": \"2027-01-17\", \"id_divisi\": \"1\", \"berlaku_awal\": \"2025-09-20\", \"berlaku_akhir\": \"2025-03-24\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:17:34'),(167,1,'create','hukumkepatuhan_putusan',2,NULL,'{\"nomor\": \"632\", \"pihak\": \"Velit perspiciatis blanditiis magnam aut error deleniti.\", \"status\": \"Kalah\", \"tanggal\": \"2026-07-05\", \"id_divisi\": \"5\", \"klarifikasi\": \"Distinctio deserunt quaerat laborum libero amet atque nostrum dicta ex.\", \"sifat_dokumen\": \"Rahasia\", \"tingkat_pengadilan\": \"Laboriosam tenetur libero.\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:17:52'),(168,1,'create','hukumkepatuhan_regulasi_internal',2,NULL,'{\"judul\": \"Consectetur delectus porro placeat culpa.\", \"nomor\": \"52\", \"status\": \"Aktif\", \"tanggal\": \"2026-09-28\", \"id_divisi\": \"4\", \"inisiator\": \"Mollitia laudantium nulla officia autem ea itaque.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:18:41'),(169,1,'create','hukumkepatuhan_regulasi_external',2,NULL,'{\"judul\": \"Reiciendis exercitationem quos ex eum alias voluptas laborum animi.\", \"nomor\": \"426\", \"status\": \"Aktif\", \"tanggal\": \"2025-05-08\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:18:57'),(170,1,'create','hukumkepatuhan_compliance_check',2,NULL,'{\"nomor\": \"568\", \"perihal\": \"Officiis qui perspiciatis laudantium numquam.\", \"tanggal\": \"2025-04-05\", \"id_divisi\": \"5\", \"keterangan\": \"Assumenda dolores minima delectus delectus qui assumenda magnam debitis.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:22:00'),(171,1,'create','hukumkepatuhan_executive_summary',2,NULL,'{\"perihal\": \"Earum praesentium repudiandae laudantium ea excepturi architecto aut natus.\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:22:24'),(172,1,'create','hukumkepatuhan_lembar_keputusan',1,NULL,'{\"perihal\": \"Provident ea corrupti nulla asperiores ad esse.\", \"id_divisi\": \"2\", \"keterangan\": \"Accusamus at explicabo in maxime facilis officiis deleniti soluta suscipit.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:22:41'),(173,1,'create','hukumkepatuhan_lembar_rekomendasi',1,NULL,'{\"perihal\": \"Eius sapiente numquam consequuntur autem esse quo.\", \"id_divisi\": \"9\", \"keterangan\": \"Repellendus libero odit sit cum veritatis voluptate fugit.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:22:56'),(174,1,'create','hukumkepatuhan_penomoran',1,NULL,'{\"perihal\": \"Voluptas labore nesciunt ipsum similique quisquam amet aut aliquid.\", \"id_divisi\": \"6\", \"keterangan\": \"Quis tenetur ad suscipit provident cum blanditiis.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:23:10'),(175,1,'create','transaksi',2,NULL,'{\"file\": \"438fb465-1f7e-47d5-ab72-c43fa5f4852f.pdf\", \"type\": \"1\", \"saham\": \"Delectus dolorem quia voluptatibus possimus ad.\", \"broker\": \"Itaque omnis et dolorem pariatur cum harum hic ullam error.\", \"perihal\": \"Ipsum ex modi nisi dignissimos.\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"9\", \"keterangan\": \"Officia neque veritatis nulla cumque veritatis ea officia ipsam.\", \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": \"2025-12-11\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:23:42'),(176,1,'download','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:23:58'),(177,1,'create','anggaran_dokumen_rra',5,NULL,'{\"tanggal\": \"2025-05-07\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:24:47'),(178,1,'create','anggaran_laporan_prbc',5,NULL,'{\"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:25:24'),(179,1,'create','anggaran_rencana_kerja_direktorat',3,NULL,'{\"judul\": \"Quia ducimus odio reiciendis exercitationem eligendi numquam excepturi perspiciatis quas.\", \"id_divisi\": \"9\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:25:47'),(180,1,'create','anggaran_rencana_kerja_tahunan',2,NULL,'{\"judul\": \"Veniam ex deserunt ut.\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:26:03'),(181,1,'create','anggaran_rencana_kerja_triwulan',2,NULL,'{\"judul\": \"Id qui veniam impedit facere quisquam error.\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:26:41'),(182,1,'create','anggaran_dokumen_rra',6,NULL,'{\"tanggal\": \"2025-02-07\", \"id_divisi\": \"4\", \"direktorat\": \"Dignissimos cupiditate ex.\", \"nomor_nota\": \"217\", \"nomor_sukka\": \"561\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:35:51'),(183,1,'create','anggaran_laporan_prbc',6,NULL,'{\"bulan\": \"3\", \"tahun\": \"2000\", \"id_divisi\": \"9\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:38:26'),(184,1,'create','anggaran_rencana_kerja_direktorat',4,NULL,'{\"judul\": \"Qui dolorem voluptatum amet quasi molestias sit modi nostrum.\", \"tahun\": \"2000\", \"id_divisi\": \"4\", \"direktorat\": \"Hic vel necessitatibus omnis.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:38:45'),(185,1,'create','anggaran_rencana_kerja_tahunan',3,NULL,'{\"judul\": \"Aliquam dolorum natus.\", \"tahun\": \"2000\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:38:55'),(186,1,'create','anggaran_rencana_kerja_triwulan',3,NULL,'{\"judul\": \"Necessitatibus dignissimos dolorem enim occaecati distinctio temporibus.\", \"tahun\": \"2000\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:39:05'),(187,1,'view','keuangan_bendaharapajak_sppb',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:40:07'),(188,1,'view','keuangan_bendaharapajak_sppb',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:40:22'),(189,1,'view','keuangan_bendaharapajak_cashflow',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:40:26'),(190,1,'create','surat',6,NULL,'{\"type\": \"2\", \"jenis\": \"1\", \"perihal\": \"Veniam quis quis pariatur.\", \"no_surat\": \"223\", \"id_divisi\": \"4\", \"no_agenda\": \"438\", \"tgl_surat\": \"2026-10-12\", \"keterangan\": \"Corporis nemo voluptatibus dolorem aspernatur sequi exercitationem mollitia cum quisquam.\", \"klasifikasi\": \"3\", \"sifat_dokumen\": \"Rahasia\", \"nama_perusahaan\": \"Wyatt.Adams-Dibbert34\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:40:50'),(191,1,'view','surat',6,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:40:51'),(192,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:41:38'),(193,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:42:10'),(194,1,'update','transaksi',1,'{\"id\": 1, \"file\": \"5c0a8e27-5660-4a31-8204-68b592f8ed3c.pdf\", \"type\": 1, \"saham\": \"makan\", \"broker\": \"makan\", \"lokasi\": null, \"perihal\": \"makan\", \"version\": 1, \"file_name\": \"STNK.pdf\", \"id_divisi\": 4, \"created_at\": \"2026-01-17T03:12:25.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"keterangan\": \"makan\", \"updated_at\": \"2026-01-17T07:33:11.000000Z\", \"updated_by\": 1, \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": \"2026-01-17T00:00:00.000000Z\"}','{\"type\": \"2\", \"saham\": \"makan\", \"broker\": \"makan\", \"perihal\": \"makan\", \"id_divisi\": \"4\", \"keterangan\": \"makan\", \"sifat_dokumen\": \"Rahasia\", \"tgl_transaksi\": \"2026-01-17\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:42:19'),(195,1,'view','surat',6,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:45:39'),(196,1,'view','surat',6,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:46:21'),(197,1,'view','transaksi',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:46:25'),(198,1,'create','sdm_pks',2,NULL,'{\"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:47:51'),(199,1,'view','transaksi',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:48:20'),(200,1,'create','sdm_rarus',1,NULL,'{\"file\": \"15a43a31-395c-4508-b66d-73edd8cc71ac.pdf\", \"judul\": \"Aut vitae quam qui ullam cumque accusantium possimus occaecati hic.\", \"nomor\": \"292\", \"lokasi\": \"Vitae illo accusantium numquam earum.\", \"tanggal\": \"2025-05-21\", \"file_name\": \"Invoice-8H4WV3RV-0002.pdf\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 06:51:51'),(201,1,'create','sdm_pks',3,NULL,'{\"nama\": \"Laudantium non iusto qui eaque.\", \"akhir\": \"2025-10-14\", \"mulai\": \"2025-09-21\", \"nomor\": \"139\", \"kategori\": \"At incidunt sint quos porro sapiente.\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 07:17:28'),(202,1,'create','sdm_rarus',2,NULL,'{\"perihal\": \"Nemo dolorum pariatur voluptates doloremque itaque autem culpa.\", \"tanggal\": \"2027-01-05\", \"kategori\": \"Voluptatibus enim ducimus vitae iusto quae.\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 07:49:55'),(203,1,'create','sdm_aspurjab',1,NULL,'{\"nama\": \"Fugiat autem dolorem aliquam perferendis cumque.\", \"akhir\": \"2025-06-14\", \"mulai\": \"2025-03-27\", \"nomor\": \"313\", \"tanggal\": \"2026-03-29\", \"kategori\": \"Eligendi doloremque non assumenda nesciunt.\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 07:59:36'),(204,1,'view','sdm_aspurjab',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 07:59:46'),(205,1,'view','keuangan_bendaharapajak_pajak',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 07:59:56'),(206,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:00:00'),(207,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:00:11'),(208,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:52'),(209,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:54'),(210,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:55'),(211,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:56'),(212,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:56'),(213,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:57'),(214,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:58'),(215,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:01:59'),(216,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:08'),(217,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:09'),(218,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:12'),(219,1,'view','keuangan_bendaharapajak_pajak',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:26'),(220,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:53'),(221,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:03:57'),(222,1,'view','sdm_peraturan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:04:17'),(223,1,'view','sdm_aspurjab',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:05:11'),(224,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:05:41'),(225,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:05:46'),(226,1,'view','sdm_peraturan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:05:55'),(227,1,'download','sdm_peraturan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:05:57'),(228,1,'view','keuangan_bendaharapajak_spb',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:06:03'),(229,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:06:13'),(230,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:02'),(231,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:08'),(232,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:19'),(233,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:21'),(234,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:21'),(235,1,'view','sekretariat_risalah_rapat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:07:46'),(236,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:08:49'),(237,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:08:53'),(238,1,'create','sdm_rarus',3,NULL,'{\"perihal\": \"Accusamus modi maiores necessitatibus voluptatibus atque dolorem et cupiditate.\", \"tanggal\": \"2025-06-30\", \"kategori\": \"Vel ducimus reiciendis ut accusamus.\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:01'),(239,1,'view','sdm_rarus',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:03'),(240,1,'view','sdm_rarus',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:08'),(241,1,'create','sdm_peraturan',2,NULL,'{\"nomor\": \"127\", \"perihal\": \"Totam ad sequi laudantium vero placeat.\", \"tanggal\": \"2026-08-27\", \"kategori\": \"Minima provident reprehenderit vero tempore vel natus.\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:16'),(242,1,'view','sdm_peraturan',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:18'),(243,1,'create','sdm_rekrut_masuk',1,NULL,'{\"nik\": \"123123123123\", \"nama\": \"Iste impedit aperiam.\", \"status\": \"1\", \"perihal\": \"Vel rem placeat provident accusantium optio.\", \"tanggal\": \"2025-09-09\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:34'),(244,1,'view','sdm_rekrut_masuk',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:36'),(245,1,'create','sdm_capeg_pegrus',1,NULL,'{\"nik\": \"123123123123\", \"nama\": \"Dolorum enim id occaecati enim.\", \"status\": \"0\", \"perihal\": \"In reiciendis in eum voluptatibus modi a.\", \"tanggal\": \"2025-06-21\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:09:52'),(246,1,'create','sdm_promosi_mutasi',1,NULL,'{\"nik\": \"123123123123\", \"nama\": \"Sequi unde nisi voluptatum alias laboriosam.\", \"status\": \"0\", \"perihal\": \"Libero quae aspernatur officiis necessitatibus distinctio illum at id porro.\", \"tanggal\": \"2026-11-20\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:01'),(247,1,'create','sdm_naik_gaji',1,NULL,'{\"nik\": \"123213123123\", \"nama\": \"Cupiditate tempora dolores sunt ipsa at laboriosam voluptate.\", \"status\": \"1\", \"perihal\": \"Provident tempore optio aspernatur cumque magni at vero.\", \"tanggal\": \"2025-05-05\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:10'),(248,1,'create','sdm_penghargaan',1,NULL,'{\"nik\": \"12312312312\", \"nama\": \"Atque molestias placeat aspernatur.\", \"status\": \"1\", \"perihal\": \"Corrupti magni temporibus at.\", \"tanggal\": \"2026-01-23\", \"id_divisi\": \"9\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:26'),(249,1,'create','sdm_ikut_organisasi',1,NULL,'{\"nik\": \"123123123123\", \"nama\": \"Quasi numquam ex culpa numquam neque maiores nihil.\", \"status\": \"0\", \"perihal\": \"Reprehenderit voluptatum aperiam itaque.\", \"tanggal\": \"2026-04-17\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:33'),(250,1,'create','sdm_surat_masuk',2,NULL,'{\"nomor\": \"12312312312\", \"perihal\": \"Ad voluptatum blanditiis neque nam.\", \"tanggal\": \"2026-07-19\", \"kategori\": \"Consequuntur perspiciatis quibusdam ullam quam.\", \"id_divisi\": \"1\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:43'),(251,1,'create','sdm_surat_keluar',1,NULL,'{\"nomor\": \"123123123\", \"perihal\": \"Distinctio suscipit incidunt iste accusamus ad a voluptas.\", \"tanggal\": \"2025-10-02\", \"kategori\": \"Ipsa minima culpa dolorum ut.\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:10:52'),(252,1,'create','sdm_aspurjab',2,NULL,'{\"nama\": \"Quas consectetur saepe eveniet totam sit.\", \"akhir\": \"2026-06-15\", \"mulai\": \"2026-01-23\", \"nomor\": \"38\", \"tanggal\": \"2025-03-01\", \"kategori\": \"Omnis natus debitis.\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:11:00'),(253,1,'create','sdm_rekon',1,NULL,'{\"ba\": \"Ab hic magnam quis alias ipsa expedita nemo aspernatur nisi.\", \"hasil\": \"your.email+fakedata14493@gmail.com\", \"tanggal\": \"2026-04-06\", \"kategori\": \"Perferendis a minima voluptatem id hic.\", \"id_divisi\": \"3\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:11:07'),(254,1,'download','sekretariat_risalah_rapat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:13:19'),(255,1,'view','sekretariat_risalah_rapat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:13:21'),(256,1,'view','sekretariat_risalah_rapat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:14:06'),(257,1,'view','sekretariat_laporan',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:14:10'),(258,1,'view','sekretariat_risalah_rapat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:20:42'),(259,1,'create','sekretariat_risalah_rapat',2,NULL,'{\"nomor\": \"220\", \"perihal\": \"Quidem atque dicta.\", \"periode\": \"08357\", \"peserta\": \"Fugiat magni accusantium expedita minima.\", \"tanggal\": \"2026-01-13\", \"kategori\": \"Rapat Sekretariat\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:20:51'),(260,1,'view','sekretariat_risalah_rapat',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:20:55'),(261,1,'view','sekretariat_risalah_rapat',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:21:02'),(262,1,'create','sekretariat_materi',2,NULL,'{\"nomor\": \"459\", \"perihal\": \"Officiis at eligendi.\", \"periode\": \"79876\", \"tanggal\": \"2026-06-19\", \"id_divisi\": \"2\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:21:10'),(263,1,'view','sekretariat_materi',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:21:12'),(264,1,'create','sekretariat_laporan',2,NULL,'{\"nomor\": \"592\", \"tujuan\": \"Sed nemo omnis saepe voluptatum sapiente ipsam voluptatem.\", \"perihal\": \"Voluptas ad ullam omnis voluptatibus impedit aliquid aspernatur.\", \"periode\": \"96376\", \"tanggal\": \"2026-01-16\", \"kategori\": \"Semesteran\", \"id_divisi\": \"9\", \"dilaporkan\": \"2026-09-12\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:21:24'),(265,1,'view','sekretariat_laporan',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:21:26'),(266,1,'create','logistiksarpen_procurement',4,NULL,'{\"no_drp\": \"65\", \"id_divisi\": \"1\", \"direktorat\": \"Consectetur repellat veritatis natus pariatur eos voluptatum officia.\", \"nama_kegiatan\": \"test\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:22:16'),(267,1,'view','logistiksarpen_procurement',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:22:18'),(268,1,'view','logistiksarpen_procurement',4,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:22:23'),(269,1,'create','logistiksarpen_pelaporan_prbc',1,NULL,'{\"bulan\": \"April\", \"tanggal\": \"2027-01-13\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:22:47'),(270,1,'create','logistiksarpen_user_satisfaction',1,NULL,'{\"tahun\": \"2000\", \"tanggal\": \"2025-11-27\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:23:00'),(271,1,'create','logistiksarpen_vendor_satisfaction',1,NULL,'{\"tahun\": \"2000\", \"tanggal\": \"2025-03-02\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:23:14'),(272,1,'create','logistiksarpen_polis_asuransi',1,NULL,'{\"nilai\": \"1000000\", \"tahun\": \"2000\", \"id_divisi\": \"1\", \"berlaku_akhir\": \"2025-06-20\", \"berlaku_mulai\": \"2025-02-22\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:23:39'),(273,1,'create','logistiksarpen_jaminan',1,NULL,'{\"vendor\": \"Ipsa dolorum dolore aut dolorem commodi porro asperiores.\", \"id_divisi\": \"9\", \"nomor_drp\": \"503\", \"jenis_jaminan\": \"Jaminan Penawaran\", \"sifat_dokumen\": \"Rahasia\", \"nama_pengadaan\": \"Sapiente eveniet sunt debitis consectetur numquam ipsa reiciendis culpa impedit.\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:23:50'),(274,1,'view','sdm_pks',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:31:11'),(275,1,'create','sdm_pks',4,NULL,'{\"nama\": \"Similique tempore cupiditate distinctio et doloribus nostrum.\", \"akhir\": \"2026-01-24\", \"mulai\": \"2026-09-24\", \"nomor\": \"154\", \"kategori\": \"Error adipisci officia quis consequatur officiis iusto libero ipsam natus.\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:32:44'),(276,1,'view','sekretariat_risalah_rapat',2,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:33:01'),(277,1,'create','sekretariat_surat',1,NULL,'[]','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:33:18'),(278,1,'view','sekretariat_surat',1,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:33:23'),(279,1,'create','sekretariat_laporan',3,NULL,'{\"nomor\": \"270\", \"tujuan\": \"Laborum necessitatibus id maxime repudiandae.\", \"perihal\": \"Ipsum quos sapiente suscipit odit.\", \"periode\": \"64669-5474\", \"tanggal\": \"2026-08-30\", \"kategori\": \"Tahunan\", \"id_divisi\": \"1\", \"dilaporkan\": \"2026-09-29\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:33:59'),(280,1,'view','sekretariat_laporan',3,NULL,NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:35:09'),(281,1,'create','logistiksarpen_cleaning_service',1,NULL,'[]','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:38:04'),(282,1,'create','logistiksarpen_sarana_penunjang',1,NULL,'[]','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:39:08'),(283,1,'create','logistiksarpen_pelaporan_prbc',2,NULL,'{\"bulan\": \"Maret\", \"tanggal\": \"2026-03-21\", \"id_divisi\": \"4\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:40:05'),(284,1,'create','logistiksarpen_smk3',1,NULL,'[]','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:40:49'),(285,1,'create','sekretariat_surat',2,NULL,'{\"dari\": \"Voluptatem magni quibusdam reprehenderit laborum similique explicabo.\", \"nomor\": \"208\", \"tujuan\": \"Earum unde earum.\", \"perihal\": \"Fuga atque vel aspernatur quia reiciendis ipsam qui.\", \"tanggal\": \"2025-07-05\", \"kategori\": \"Surat Keluar\", \"disposisi\": \"Odio temporibus fuga numquam inventore itaque.\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:52:23'),(286,1,'create','sekretariat_pengadaan',1,NULL,'{\"nomor\": \"365\", \"tujuan\": \"Dicta cum voluptatibus sint perspiciatis accusamus similique amet atque.\", \"perihal\": \"Dolorum aliquam accusantium.\", \"tanggal\": \"2026-09-16\", \"kategori\": \"Justifikasi\", \"id_divisi\": \"2\", \"masa_akhir\": \"Distinctio culpa quo.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:52:31'),(287,1,'create','sekretariat_remunerasi_pedoman',1,NULL,'{\"nomor\": \"317\", \"perihal\": \"Quaerat voluptatibus aliquid qui saepe illo velit laudantium.\", \"periode\": \"77626-6147\", \"tanggal\": \"2025-06-27\", \"id_divisi\": \"4\", \"masa_akhir\": \"Eveniet rem eos.\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:52:37'),(288,1,'create','sekretariat_remunerasi_dokumen',1,NULL,'{\"nomor\": \"174\", \"perihal\": \"Cupiditate sed aliquam quis possimus corporis incidunt earum corporis numquam.\", \"periode\": \"39535-9448\", \"tanggal\": \"2026-11-18\", \"kategori\": \"Jasa Usaha\", \"id_divisi\": \"6\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:52:49'),(289,1,'create','logistiksarpen_procurement',5,NULL,'{\"no_drp\": \"83\", \"id_divisi\": \"9\", \"direktorat\": \"Suscipit libero suscipit.\", \"nama_kegiatan\": \"null\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:53:07'),(290,1,'create','logistiksarpen_cleaning_service',2,NULL,'{\"bulan\": \"Voluptate laborum commodi impedit.\", \"tahun\": \"2000\", \"id_divisi\": \"6\", \"nama_kegiatan\": \"test\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:53:27'),(291,1,'create','logistiksarpen_keamanan',2,NULL,'{\"bulan\": \"jan\", \"tahun\": \"2025\", \"id_divisi\": \"8\", \"nama_kegiatan\": \"test\", \"sifat_dokumen\": \"Umum\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:54:13'),(292,1,'create','logistiksarpen_keamanan',3,NULL,'{\"bulan\": \"Alias corrupti quibusdam molestias.\", \"tahun\": \"2000\", \"id_divisi\": \"6\", \"nama_kegiatan\": \"test\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:54:26'),(293,1,'create','logistiksarpen_kendaraan',1,NULL,'{\"bulan\": \"Inventore quae consequatur magnam.\", \"tahun\": \"2000\", \"id_divisi\": \"4\", \"nama_kegiatan\": \"kendaraan\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:54:55'),(294,1,'create','logistiksarpen_sarana_penunjang',2,NULL,'{\"bulan\": \"Est aut vel minima voluptatibus.\", \"tahun\": \"2000\", \"id_divisi\": \"9\", \"nama_kegiatan\": \"sarana\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:55:08'),(295,1,'create','logistiksarpen_pelaporan_prbc',3,NULL,'{\"bulan\": \"januari\", \"tanggal\": \"2026-04-14\", \"id_divisi\": \"5\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:55:30'),(296,1,'create','logistiksarpen_user_satisfaction',2,NULL,'{\"tahun\": \"2000\", \"tanggal\": \"2026-06-01\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:55:45'),(297,1,'create','logistiksarpen_vendor_satisfaction',2,NULL,'{\"tahun\": \"2000\", \"tanggal\": \"2026-06-08\", \"id_divisi\": \"8\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:55:58'),(298,1,'create','logistiksarpen_smk3',2,NULL,'{\"bulan\": \"Magni modi quasi magni temporibus nam maiores.\", \"tahun\": \"2000\", \"id_divisi\": \"1\", \"nama_kegiatan\": \"test\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:56:52'),(299,1,'create','logistiksarpen_polis_asuransi',2,NULL,'{\"nilai\": \"your.email+fakedata20122@gmail.com\", \"tahun\": \"2000\", \"id_divisi\": \"6\", \"berlaku_akhir\": \"2025-08-23\", \"berlaku_mulai\": \"2026-07-25\", \"sifat_dokumen\": \"Rahasia\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:57:06'),(300,1,'create','logistiksarpen_jaminan',2,NULL,'{\"vendor\": \"Molestias ea libero itaque eum vel similique minus impedit.\", \"id_divisi\": \"3\", \"nomor_drp\": \"314\", \"jenis_jaminan\": \"Illo occaecati facilis animi aliquid quaerat.\", \"sifat_dokumen\": \"Rahasia\", \"nama_pengadaan\": \"Quisquam sunt voluptatibus quis.\"}','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','2026-01-17 08:57:21');
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
  `function_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_functions`
--

LOCK TABLES `base_functions` WRITE;
/*!40000 ALTER TABLE `base_functions` DISABLE KEYS */;
INSERT INTO `base_functions` VALUES (1,'View','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL),(2,'Create','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL),(3,'Edit','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL),(4,'Delete','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL),(5,'Download','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL),(6,'Upload','2026-01-15 19:47:34','2026-01-15 19:47:34',NULL,NULL,NULL,NULL);
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
  `groups_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_groups`
--

LOCK TABLES `base_groups` WRITE;
/*!40000 ALTER TABLE `base_groups` DISABLE KEYS */;
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
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_menu_functions_id_menu_index` (`id_menu`),
  KEY `base_menu_functions_id_function_index` (`id_function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_menu_functions`
--

LOCK TABLES `base_menu_functions` WRITE;
/*!40000 ALTER TABLE `base_menu_functions` DISABLE KEYS */;
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
  `id_group` int unsigned NOT NULL DEFAULT '0',
  `id_module` int unsigned DEFAULT '0',
  `parent_id` int unsigned DEFAULT NULL,
  `parent_sub_id` int unsigned DEFAULT NULL,
  `parent_sub_parent_id` int unsigned DEFAULT NULL,
  `code_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_type` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_menus_code_name` (`code_name`),
  KEY `idx_menus_group_module` (`id_group`,`id_module`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_menus`
--

LOCK TABLES `base_menus` WRITE;
/*!40000 ALTER TABLE `base_menus` DISABLE KEYS */;
INSERT INTO `base_menus` VALUES (1,0,0,NULL,NULL,NULL,'dashboard','Dashboard','Dashboard',1,'/dashboard','bi-grid-1x2',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(2,0,0,NULL,NULL,NULL,'akuntansi','Akuntansi','Akuntansi',2,'#','bi-calculator',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(3,0,0,2,NULL,NULL,'akuntansi.aturan-kebijakan','Aturan Kebijakan','Aturan Kebijakan',1,'/akuntansi/aturan-kebijakan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(4,0,0,2,NULL,NULL,'akuntansi.jurnal-umum','Jurnal Umum','Jurnal Umum',2,'/akuntansi/jurnal-umum',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(5,0,0,2,NULL,NULL,'akuntansi.laporan-audit-investasi','Laporan Audit Investasi','Laporan Audit Investasi',3,'/akuntansi/laporan-audit-investasi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(6,0,0,2,NULL,NULL,'akuntansi.laporan-audit-keuangan','Laporan Audit Keuangan','Laporan Audit Keuangan',4,'/akuntansi/laporan-audit-keuangan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(7,0,0,2,NULL,NULL,'akuntansi.laporan-bulanan','Laporan Bulanan','Laporan Bulanan',5,'/akuntansi/laporan-bulanan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(8,0,0,NULL,NULL,NULL,'anggaran','Anggaran','Anggaran',3,'#','bi-cash-stack',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(9,0,0,8,NULL,NULL,'anggaran.aturan-kebijakan','Aturan Kebijakan','Aturan Kebijakan',1,'/anggaran/aturan-kebijakan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(10,0,0,8,NULL,NULL,'anggaran.dokumen-rra','Dokumen RRA','Dokumen RRA',2,'/anggaran/dokumen-rra',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(11,0,0,8,NULL,NULL,'anggaran.laporan-prbc','Laporan PRBC','Laporan PRBC',3,'/anggaran/laporan-prbc',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(12,0,0,8,NULL,NULL,'anggaran.rencana-kerja-direktorat','Rencana Kerja Direktorat','Rencana Kerja Direktorat',4,'/anggaran/rencana-kerja-direktorat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(13,0,0,8,NULL,NULL,'anggaran.rencana-kerja-tahunan','Rencana Kerja Tahunan','Rencana Kerja Tahunan',5,'/anggaran/rencana-kerja-tahunan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(14,0,0,8,NULL,NULL,'anggaran.rencana-kerja-triwulan','Rencana Kerja Triwulan','Rencana Kerja Triwulan',6,'/anggaran/rencana-kerja-triwulan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(15,0,0,NULL,NULL,NULL,'hukum-kepatuhan','Hukum Kepatuhan','Hukum Kepatuhan',4,'#','bi-shield-check',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(16,0,0,15,NULL,NULL,'hukum-kepatuhan.kajian-hukum','Kajian Hukum','Kajian Hukum',1,'/hukum-kepatuhan/kajian-hukum',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(17,0,0,15,NULL,NULL,'hukum-kepatuhan.legal-memo','Legal Memo','Legal Memo',2,'/hukum-kepatuhan/legal-memo',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(18,0,0,15,NULL,NULL,'hukum-kepatuhan.regulasi-internal','Regulasi Internal','Regulasi Internal',3,'/hukum-kepatuhan/regulasi-internal',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(19,0,0,15,NULL,NULL,'hukum-kepatuhan.regulasi-external','Regulasi External','Regulasi External',4,'/hukum-kepatuhan/regulasi-external',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(20,0,0,15,NULL,NULL,'hukum-kepatuhan.kontrak','Kontrak','Kontrak',5,'/hukum-kepatuhan/kontrak',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(21,0,0,15,NULL,NULL,'hukum-kepatuhan.putusan','Putusan','Putusan',6,'/hukum-kepatuhan/putusan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(22,0,0,15,NULL,NULL,'hukum-kepatuhan.compliance-check','Compliance Check','Compliance Check',7,'/hukum-kepatuhan/compliance-check',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(23,0,0,NULL,NULL,NULL,'investasi','Investasi','Investasi',5,'#','bi-graph-up-arrow',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(24,0,0,23,NULL,NULL,'investasi.transaksi','Transaksi','Transaksi',1,'/investasi/transaksi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(25,0,0,23,NULL,NULL,'investasi.surat','Surat','Surat',2,'/investasi/surat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(26,0,0,23,NULL,NULL,'investasi.perencanaan-transaksi','Perencanaan Transaksi','Perencanaan Transaksi',3,'/investasi/perencanaan-transaksi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(27,0,0,23,NULL,NULL,'investasi.perencanaan-surat','Perencanaan Surat','Perencanaan Surat',4,'/investasi/perencanaan-surat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(28,0,0,23,NULL,NULL,'investasi.propensa-transaksi','Propensa Transaksi','Propensa Transaksi',5,'/investasi/propensa-transaksi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(29,0,0,23,NULL,NULL,'investasi.propensa-surat','Propensa Surat','Propensa Surat',6,'/investasi/propensa-surat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(30,0,0,NULL,NULL,NULL,'keuangan','Keuangan','Keuangan',6,'#','bi-wallet2',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(31,0,0,30,NULL,NULL,'keuangan.surat-bayar','Surat Bayar','Surat Bayar',1,'/keuangan/surat-bayar',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(32,0,0,30,NULL,NULL,'keuangan.spb','SPB','SPB',2,'/keuangan/spb',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(33,0,0,30,NULL,NULL,'keuangan.sppb','SPPB','SPPB',3,'/keuangan/sppb',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(34,0,0,30,NULL,NULL,'keuangan.cashflow','Cashflow','Cashflow',4,'/keuangan/cashflow',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(35,0,0,30,NULL,NULL,'keuangan.penempatan','Penempatan','Penempatan',5,'/keuangan/penempatan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(36,0,0,30,NULL,NULL,'keuangan.pemindahbukuan','Pemindahbukuan','Pemindahbukuan',6,'/keuangan/pemindahbukuan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(37,0,0,30,NULL,NULL,'keuangan.pajak','Pajak','Pajak',7,'/keuangan/pajak',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(38,0,0,NULL,NULL,NULL,'sdm','SDM','SDM',7,'#','bi-people',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(39,0,0,38,NULL,NULL,'sdm.pks','PKS','PKS',1,'/sdm/pks',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(40,0,0,38,NULL,NULL,'sdm.rarus','Rarus','Rarus',2,'/sdm/rarus',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(41,0,0,38,NULL,NULL,'sdm.peraturan','Peraturan','Peraturan',3,'/sdm/peraturan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(42,0,0,38,NULL,NULL,'sdm.rekrut-masuk','Rekrut Masuk','Rekrut Masuk',4,'/sdm/rekrut-masuk',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(43,0,0,38,NULL,NULL,'sdm.promosi-mutasi','Promosi Mutasi','Promosi Mutasi',5,'/sdm/promosi-mutasi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(44,0,0,38,NULL,NULL,'sdm.naik-gaji','Naik Gaji','Naik Gaji',6,'/sdm/naik-gaji',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(45,0,0,38,NULL,NULL,'sdm.surat-masuk','Surat Masuk','Surat Masuk',7,'/sdm/surat-masuk',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(46,0,0,38,NULL,NULL,'sdm.surat-keluar','Surat Keluar','Surat Keluar',8,'/sdm/surat-keluar',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(47,0,0,NULL,NULL,NULL,'sekretariat','Sekretariat','Sekretariat',8,'#','bi-journal-text',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(48,0,0,47,NULL,NULL,'sekretariat.risalah-rapat','Risalah Rapat','Risalah Rapat',1,'/sekretariat/risalah-rapat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(49,0,0,47,NULL,NULL,'sekretariat.materi','Materi','Materi',2,'/sekretariat/materi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(50,0,0,47,NULL,NULL,'sekretariat.laporan','Laporan','Laporan',3,'/sekretariat/laporan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(51,0,0,47,NULL,NULL,'sekretariat.surat','Surat','Surat',4,'/sekretariat/surat',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(52,0,0,47,NULL,NULL,'sekretariat.pengadaan','Pengadaan','Pengadaan',5,'/sekretariat/pengadaan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(53,0,0,NULL,NULL,NULL,'logistik','Logistik Sarpen','Logistik Sarpen',9,'#','bi-box-seam',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(54,0,0,53,NULL,NULL,'logistik.procurement','Procurement','Procurement',1,'/logistik/procurement',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(55,0,0,53,NULL,NULL,'logistik.cleaning-service','Cleaning Service','Cleaning Service',2,'/logistik/cleaning-service',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(56,0,0,53,NULL,NULL,'logistik.keamanan','Keamanan','Keamanan',3,'/logistik/keamanan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(57,0,0,53,NULL,NULL,'logistik.kendaraan','Kendaraan','Kendaraan',4,'/logistik/kendaraan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(58,0,0,53,NULL,NULL,'logistik.sarana-penunjang','Sarana Penunjang','Sarana Penunjang',5,'/logistik/sarana-penunjang',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(59,0,0,53,NULL,NULL,'logistik.smk3','SMK3','SMK3',6,'/logistik/smk3',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(60,0,0,53,NULL,NULL,'logistik.polis-asuransi','Polis Asuransi','Polis Asuransi',7,'/logistik/polis-asuransi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(61,0,0,53,NULL,NULL,'logistik.jaminan','Jaminan','Jaminan',8,'/logistik/jaminan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(62,0,0,NULL,NULL,NULL,'master','Master Data','Master Data',10,'#','bi-database',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(63,0,0,62,NULL,NULL,'master.divisi','Divisi','Divisi',1,'/master/divisi',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(64,0,0,62,NULL,NULL,'master.department','Department','Department',2,'/master/department',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(65,0,0,62,NULL,NULL,'master.jabatan','Jabatan','Jabatan',3,'/master/jabatan',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(66,0,0,NULL,NULL,NULL,'admin','System Admin','System Admin',11,'#','bi-gear',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(67,0,0,66,NULL,NULL,'admin.menus','Menu','Menu',1,'/admin/menus',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(68,0,0,66,NULL,NULL,'admin.roles','Role','Role',2,'/admin/roles',NULL,NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL),(69,0,0,NULL,NULL,NULL,'access','Akses Dokumen','Akses Dokumen',12,'/access','bi-key',NULL,'2026-01-15 19:49:59','2026-01-15 19:49:59',NULL,NULL,NULL,NULL);
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_modules`
--

LOCK TABLES `base_modules` WRITE;
/*!40000 ALTER TABLE `base_modules` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `base_privileges_id_roles_index` (`id_roles`),
  KEY `base_privileges_id_menu_index` (`id_menu`),
  KEY `base_privileges_id_function_index` (`id_function`),
  KEY `idx_privileges_role_menu_func` (`id_roles`,`id_menu`,`id_function`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_privileges`
--

LOCK TABLES `base_privileges` WRITE;
/*!40000 ALTER TABLE `base_privileges` DISABLE KEYS */;
INSERT INTO `base_privileges` VALUES (1,1,1,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(2,1,2,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(3,1,3,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(4,1,3,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(5,1,3,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(6,1,3,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(7,1,3,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(8,1,3,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(9,1,4,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(10,1,4,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(11,1,4,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(12,1,4,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(13,1,4,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(14,1,4,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(15,1,5,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(16,1,5,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(17,1,5,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(18,1,5,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(19,1,5,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(20,1,5,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(21,1,6,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(22,1,6,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(23,1,6,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(24,1,6,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(25,1,6,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(26,1,6,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(27,1,7,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(28,1,7,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(29,1,7,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(30,1,7,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(31,1,7,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(32,1,7,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(33,1,8,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(34,1,9,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(35,1,9,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(36,1,9,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(37,1,9,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(38,1,9,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(39,1,9,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(40,1,10,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(41,1,10,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(42,1,10,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(43,1,10,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(44,1,10,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(45,1,10,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(46,1,11,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(47,1,11,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(48,1,11,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(49,1,11,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(50,1,11,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(51,1,11,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(52,1,12,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(53,1,12,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(54,1,12,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(55,1,12,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(56,1,12,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(57,1,12,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(58,1,13,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(59,1,13,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(60,1,13,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(61,1,13,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(62,1,13,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(63,1,13,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(64,1,14,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(65,1,14,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(66,1,14,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(67,1,14,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(68,1,14,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(69,1,14,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(70,1,15,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(71,1,16,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(72,1,16,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(73,1,16,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(74,1,16,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(75,1,16,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(76,1,16,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(77,1,17,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(78,1,17,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(79,1,17,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(80,1,17,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(81,1,17,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(82,1,17,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(83,1,18,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(84,1,18,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(85,1,18,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(86,1,18,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(87,1,18,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(88,1,18,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(89,1,19,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(90,1,19,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(91,1,19,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(92,1,19,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(93,1,19,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(94,1,19,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(95,1,20,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(96,1,20,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(97,1,20,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(98,1,20,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(99,1,20,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(100,1,20,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(101,1,21,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(102,1,21,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(103,1,21,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(104,1,21,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(105,1,21,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(106,1,21,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(107,1,22,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(108,1,22,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(109,1,22,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(110,1,22,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(111,1,22,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(112,1,22,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(113,1,23,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(114,1,24,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(115,1,24,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(116,1,24,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(117,1,24,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(118,1,24,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(119,1,24,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(120,1,25,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(121,1,25,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(122,1,25,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(123,1,25,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(124,1,25,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(125,1,25,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(126,1,26,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(127,1,26,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(128,1,26,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(129,1,26,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(130,1,26,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(131,1,26,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(132,1,27,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(133,1,27,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(134,1,27,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(135,1,27,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(136,1,27,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(137,1,27,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(138,1,28,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(139,1,28,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(140,1,28,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(141,1,28,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(142,1,28,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(143,1,28,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(144,1,29,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(145,1,29,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(146,1,29,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(147,1,29,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(148,1,29,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(149,1,29,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(150,1,30,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(151,1,31,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(152,1,31,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(153,1,31,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(154,1,31,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(155,1,31,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(156,1,31,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(157,1,32,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(158,1,32,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(159,1,32,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(160,1,32,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(161,1,32,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(162,1,32,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(163,1,33,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(164,1,33,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(165,1,33,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(166,1,33,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(167,1,33,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(168,1,33,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(169,1,34,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(170,1,34,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(171,1,34,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(172,1,34,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(173,1,34,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(174,1,34,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(175,1,35,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(176,1,35,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(177,1,35,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(178,1,35,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(179,1,35,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(180,1,35,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(181,1,36,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(182,1,36,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(183,1,36,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(184,1,36,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(185,1,36,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(186,1,36,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(187,1,37,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(188,1,37,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(189,1,37,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(190,1,37,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(191,1,37,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(192,1,37,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(193,1,38,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(194,1,39,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(195,1,39,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(196,1,39,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(197,1,39,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(198,1,39,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(199,1,39,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(200,1,40,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(201,1,40,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(202,1,40,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(203,1,40,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(204,1,40,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(205,1,40,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(206,1,41,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(207,1,41,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(208,1,41,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(209,1,41,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(210,1,41,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(211,1,41,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(212,1,42,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(213,1,42,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(214,1,42,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(215,1,42,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(216,1,42,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(217,1,42,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(218,1,43,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(219,1,43,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(220,1,43,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(221,1,43,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(222,1,43,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(223,1,43,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(224,1,44,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(225,1,44,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(226,1,44,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(227,1,44,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(228,1,44,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(229,1,44,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(230,1,45,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(231,1,45,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(232,1,45,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(233,1,45,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(234,1,45,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(235,1,45,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(236,1,46,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(237,1,46,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(238,1,46,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(239,1,46,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(240,1,46,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(241,1,46,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(242,1,53,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(243,1,54,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(244,1,54,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(245,1,54,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(246,1,54,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(247,1,54,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(248,1,54,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(249,1,55,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(250,1,55,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(251,1,55,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(252,1,55,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(253,1,55,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(254,1,55,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(255,1,56,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(256,1,56,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(257,1,56,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(258,1,56,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(259,1,56,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(260,1,56,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(261,1,57,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(262,1,57,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(263,1,57,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(264,1,57,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(265,1,57,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(266,1,57,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(267,1,58,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(268,1,58,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(269,1,58,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(270,1,58,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(271,1,58,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(272,1,58,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(273,1,59,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(274,1,59,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(275,1,59,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(276,1,59,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(277,1,59,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(278,1,59,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(279,1,60,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(280,1,60,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(281,1,60,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(282,1,60,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(283,1,60,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(284,1,60,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(285,1,61,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(286,1,61,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(287,1,61,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(288,1,61,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(289,1,61,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(290,1,61,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(291,1,62,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(292,1,63,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(293,1,63,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(294,1,63,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(295,1,63,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(296,1,63,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(297,1,63,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(298,1,64,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(299,1,64,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(300,1,64,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(301,1,64,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(302,1,64,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(303,1,64,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(304,1,65,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(305,1,65,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(306,1,65,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(307,1,65,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(308,1,65,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(309,1,65,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(310,1,66,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(311,1,67,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(312,1,67,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(313,1,67,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(314,1,67,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(315,1,67,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(316,1,67,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(317,1,68,1,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(318,1,68,2,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(319,1,68,3,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(320,1,68,4,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(321,1,68,5,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(322,1,68,6,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL),(323,1,69,NULL,'2026-01-16 18:46:52','2026-01-16 18:47:18','2026-01-16 18:47:18',NULL,NULL,NULL);
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
  `id_group` int unsigned NOT NULL DEFAULT '0',
  `id_divisi` int unsigned DEFAULT NULL,
  `access_scope` enum('global','division','department') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'division',
  `roles_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_roles_id_group_index` (`id_group`),
  KEY `base_roles_id_divisi_index` (`id_divisi`),
  CONSTRAINT `base_roles_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_roles`
--

LOCK TABLES `base_roles` WRITE;
/*!40000 ALTER TABLE `base_roles` DISABLE KEYS */;
INSERT INTO `base_roles` VALUES (1,0,NULL,'global','Super Admin','2026-01-15 19:33:04','2026-01-15 19:33:04',NULL,NULL,NULL,NULL),(2,0,NULL,'division','Division Admin','2026-01-15 19:33:04','2026-01-15 19:33:04',NULL,NULL,NULL,NULL),(3,0,NULL,'department','Staff','2026-01-15 19:33:04','2026-01-15 19:33:04',NULL,NULL,NULL,NULL),(4,0,NULL,'department','Viewer','2026-01-15 19:33:04','2026-01-15 19:33:04',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`id`),
  KEY `base_user_roles_id_user_index` (`id_user`),
  KEY `base_user_roles_id_roles_index` (`id_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_user_roles`
--

LOCK TABLES `base_user_roles` WRITE;
/*!40000 ALTER TABLE `base_user_roles` DISABLE KEYS */;
INSERT INTO `base_user_roles` VALUES (1,1,1,'2026-01-15 19:33:40','2026-01-15 19:33:40',NULL,NULL,NULL,NULL),(2,2,3,'2026-01-15 19:34:10','2026-01-15 19:34:10',NULL,NULL,NULL,NULL),(3,3,3,'2026-01-15 19:34:10','2026-01-15 19:34:10',NULL,NULL,NULL,NULL),(4,4,3,'2026-01-15 19:34:11','2026-01-15 19:34:11',NULL,NULL,NULL,NULL);
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
  KEY `document_folders_id_divisi_foreign` (`id_divisi`),
  KEY `document_folders_id_module_foreign` (`id_module`),
  KEY `idx_parent_folder` (`parent_id`,`folder_name`),
  KEY `idx_folder_path` (`folder_path`),
  CONSTRAINT `document_folders_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_folders_id_module_foreign` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_folders_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `document_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_folders`
--

LOCK TABLES `document_folders` WRITE;
/*!40000 ALTER TABLE `document_folders` DISABLE KEYS */;
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
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Table name of document',
  `document_id` int unsigned NOT NULL,
  `version_number` int NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` bigint DEFAULT NULL,
  `uploaded_by` bigint unsigned NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_notes` text COLLATE utf8mb4_unicode_ci,
  `is_current` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_versions_uploaded_by_foreign` (`uploaded_by`),
  KEY `idx_document` (`document_type`,`document_id`),
  KEY `idx_document_current` (`document_type`,`document_id`,`is_current`),
  KEY `idx_version` (`version_number`),
  CONSTRAINT `document_versions_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_versions`
--

LOCK TABLES `document_versions` WRITE;
/*!40000 ALTER TABLE `document_versions` DISABLE KEYS */;
INSERT INTO `document_versions` VALUES (1,'hukumkepatuhan_kajian_hukum',1,1,'c2a691a0-b431-489e-922f-31eeb1649917.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-16 00:20:14',NULL,1,'2026-01-16 00:20:14','2026-01-16 00:20:14',NULL),(2,'akuntansi_aturan_kebijakan',1,1,'47a170a0-a48c-42e5-aa5f-e275700048f8.pdf','STNK.pdf',4783863,1,'2026-01-16 00:31:22',NULL,0,'2026-01-16 00:31:22','2026-01-16 00:32:55',NULL),(3,'akuntansi_aturan_kebijakan',1,2,'748c7fcf-6af5-4803-9d77-191a2757e0cf.pdf','STNK.pdf',4783863,1,'2026-01-16 00:32:55',NULL,1,'2026-01-16 00:32:55','2026-01-16 00:32:55',NULL),(4,'akuntansi_aturan_kebijakan',2,1,'768979a1-18db-41f3-8232-f81ce87542fd.pdf','STNK.pdf',4783863,1,'2026-01-16 00:35:14',NULL,1,'2026-01-16 00:35:14','2026-01-16 00:35:14',NULL),(5,'akuntansi_aturan_kebijakan',3,1,'ad9aa066-1f0e-48aa-877f-f2efef646b0d.pdf','STNK.pdf',4783863,1,'2026-01-16 05:03:44',NULL,0,'2026-01-16 05:03:44','2026-01-16 05:04:16',NULL),(6,'akuntansi_aturan_kebijakan',3,2,'bdd2ff67-9408-4d7f-aa13-7b62aba4c4de.pdf','STNK.pdf',4783863,1,'2026-01-16 05:04:16',NULL,0,'2026-01-16 05:04:16','2026-01-16 05:04:24',NULL),(7,'akuntansi_aturan_kebijakan',3,3,'45bf72d0-7a4b-4429-a2db-3e0f97c1dba4.pdf','STNK.pdf',4783863,1,'2026-01-16 05:04:24',NULL,1,'2026-01-16 05:04:24','2026-01-16 05:04:24',NULL),(8,'akuntansi_jurnal_umum',1,1,'626ccfce-b76b-424b-8e28-cdc8cd595ccd.pdf','Sertifikat_ Materi Panduan Karyawan _ LMS Werk.pdf',158159,1,'2026-01-16 05:04:55',NULL,1,'2026-01-16 05:04:55','2026-01-16 05:04:55',NULL),(9,'akuntansi_laporan_audit_investasi',1,1,'52cb2911-b38d-4ec0-97aa-4ce8f4f9db07.pdf','STNK.pdf',4783863,1,'2026-01-16 05:06:42',NULL,1,'2026-01-16 05:06:42','2026-01-16 05:06:42',NULL),(10,'akuntansi_laporan_audit_keuangan',1,1,'811e92e3-fbee-4433-9c4f-b5ca7179b37d.pdf','STNK.pdf',4783863,1,'2026-01-16 05:07:21',NULL,1,'2026-01-16 05:07:21','2026-01-16 05:07:21',NULL),(11,'akuntansi_laporan_bulanan',1,1,'c3231eba-22cb-43aa-9105-8c7f057e360f.pdf','STNK.pdf',4783863,1,'2026-01-16 05:07:46',NULL,1,'2026-01-16 05:07:46','2026-01-16 05:07:46',NULL),(12,'anggaran_aturan_kebijakan',1,1,'939476ae-7fb2-4240-b3e1-4846d95c29da.pdf','STNK.pdf',4783863,1,'2026-01-16 05:27:19',NULL,1,'2026-01-16 05:27:19','2026-01-16 05:27:19',NULL),(13,'anggaran_dokumen_rra',1,1,'cfe81ab3-62d2-4081-a918-27b39b5e091c.pdf','STNK.pdf',4783863,1,'2026-01-16 05:33:37',NULL,1,'2026-01-16 05:33:37','2026-01-16 05:33:37',NULL),(14,'anggaran_laporan_prbc',1,1,'dac86942-d2f0-41da-a44a-1d60457cb64d.pdf','STNK.pdf',4783863,1,'2026-01-16 05:35:12',NULL,1,'2026-01-16 05:35:12','2026-01-16 05:35:12',NULL),(15,'hukumkepatuhan_kajian_hukum',2,1,'3807b907-382a-403d-b5f9-0b6ab712514b.pdf','STNK.pdf',4783863,1,'2026-01-16 05:37:40',NULL,0,'2026-01-16 05:37:40','2026-01-16 05:38:57',NULL),(16,'hukumkepatuhan_kajian_hukum',2,2,'0b1347a0-9f54-42de-b0b0-a759fbb98676.pdf','STNK.pdf',4783863,1,'2026-01-16 05:38:57','test',1,'2026-01-16 05:38:57','2026-01-16 05:38:57',NULL),(17,'hukumkepatuhan_legal_memo',1,1,'aae8d86c-326b-4945-b1de-4cbe91097d32.pdf','STNK.pdf',4783863,1,'2026-01-16 05:40:07',NULL,1,'2026-01-16 05:40:07','2026-01-16 05:40:07',NULL),(18,'hukumkepatuhan_kontrak',1,1,'ff55efb3-6679-427f-a9b2-bcf29dab680b.pdf','STNK.pdf',4783863,1,'2026-01-16 05:41:43',NULL,1,'2026-01-16 05:41:43','2026-01-16 05:41:43',NULL),(19,'surat',1,1,'1f228557-50cf-48c9-b2d0-60f580dffab5.pdf','STNK.pdf',4783863,1,'2026-01-16 05:44:58',NULL,1,'2026-01-16 05:44:58','2026-01-16 05:44:58',NULL),(20,'keuangan_bendaharapajak_surat',1,1,'15553e72-a98e-4ce9-a7ef-d22c8f045b39.pdf','STNK.pdf',4783863,1,'2026-01-16 06:01:59',NULL,1,'2026-01-16 06:01:59','2026-01-16 06:01:59',NULL),(21,'keuangan_bendaharapajak_cashflow',1,1,'5aaa5d85-7651-4c61-9b62-3a1dd2822b0a.pdf','STNK.pdf',4783863,1,'2026-01-16 06:03:44',NULL,1,'2026-01-16 06:03:44','2026-01-16 06:03:44',NULL),(22,'sdm_pks',1,1,'3e540380-ee51-479b-926a-f8193f876f4b.pdf','STNK.pdf',4783863,1,'2026-01-16 06:10:12',NULL,1,'2026-01-16 06:10:12','2026-01-16 06:10:12',NULL),(23,'sdm_peraturan',1,1,'bd3564e6-30f4-4e31-b5c5-f39c28b3d3ad.pdf','STNK.pdf',4783863,1,'2026-01-16 06:12:31',NULL,1,'2026-01-16 06:12:31','2026-01-16 06:12:31',NULL),(24,'sdm_surat_masuk',1,1,'6904cb05-7e25-41ab-8026-22ae64336a21.pdf','STNK.pdf',4783863,1,'2026-01-16 06:14:52',NULL,1,'2026-01-16 06:14:52','2026-01-16 06:14:52',NULL),(25,'sekretariat_risalah_rapat',1,1,'df446868-2203-4791-a5fc-6520170db213.pdf','STNK.pdf',4783863,1,'2026-01-16 06:19:35',NULL,1,'2026-01-16 06:19:35','2026-01-16 06:19:35',NULL),(26,'sekretariat_materi',1,1,'46fad77e-bd6a-44b6-aada-b716f79f35a5.pdf','STNK.pdf',4783863,1,'2026-01-16 06:20:27',NULL,1,'2026-01-16 06:20:27','2026-01-16 06:20:27',NULL),(27,'sekretariat_laporan',1,1,'dfce0b2b-9ec1-4495-88b5-0d42de6150cd.pdf','STNK.pdf',4783863,1,'2026-01-16 06:34:17',NULL,1,'2026-01-16 06:34:17','2026-01-16 06:34:17',NULL),(28,'logistiksarpen_procurement',1,1,'c0e34631-9d08-4ba9-a188-95f97829a5f1.pdf','STNK.pdf',4783863,1,'2026-01-16 06:42:58',NULL,1,'2026-01-16 06:42:58','2026-01-16 06:42:58',NULL),(29,'logistiksarpen_keamanan',1,1,'2d2004da-ed1d-43d6-82b4-a54d2c47ef25.pdf','STNK.pdf',4783863,1,'2026-01-16 06:44:18',NULL,1,'2026-01-16 06:44:18','2026-01-16 06:44:18',NULL),(30,'transaksi',1,1,'766ab4d6-55f0-487f-a152-c4c08e04b11e.pdf','STNK.pdf',4783863,1,'2026-01-16 20:12:25',NULL,1,'2026-01-16 20:12:25','2026-01-16 20:12:25',NULL),(31,'akuntansi_aturan_kebijakan',4,1,'cd35150a-4a8d-4710-8a09-622b3170f5c8.pdf','STNK.pdf',4783863,1,'2026-01-17 00:13:04',NULL,0,'2026-01-17 00:13:04','2026-01-17 00:56:44',NULL),(32,'logistiksarpen_procurement',2,1,'632cd71b-d174-4fb2-9fc2-f102ed46de88.pdf','STNK.pdf',4783863,1,'2026-01-17 00:28:57',NULL,1,'2026-01-17 00:28:57','2026-01-17 00:28:57',NULL),(33,'akuntansi_jurnal_umum',2,1,'a1b3698b-4bd4-40af-8cd2-595d1c06689d.pdf','STNK.pdf',4783863,1,'2026-01-17 00:31:11',NULL,1,'2026-01-17 00:31:11','2026-01-17 00:31:11',NULL),(34,'surat',2,1,'5b04a377-fe38-40c1-ae81-a7218ca6a22a.pdf','STNK.pdf',4783863,1,'2026-01-17 00:34:12',NULL,1,'2026-01-17 00:34:12','2026-01-17 00:34:12',NULL),(35,'akuntansi_aturan_kebijakan',4,2,'a62c8b97-33e8-4a1b-b4b0-7972ada5f76e.pdf','VMmanager_pilot_project_checklist.pdf',459856,1,'2026-01-17 00:56:44',NULL,1,'2026-01-17 00:56:44','2026-01-17 00:56:44',NULL),(36,'akuntansi_aturan_kebijakan',5,1,'ddcfe12e-af43-473c-9b4d-3b96d3c514bc.pdf','CV Farizi Adam.pdf',33667,1,'2026-01-17 01:03:50',NULL,1,'2026-01-17 01:03:50','2026-01-17 01:03:50',NULL),(37,'akuntansi_laporan_audit_investasi',2,1,'fa26fac4-e09e-4f2c-ae4c-4909a9f0f175.pdf','STNK.pdf',4783863,1,'2026-01-17 04:21:48',NULL,1,'2026-01-17 04:21:48','2026-01-17 04:21:48',NULL),(38,'akuntansi_laporan_audit_keuangan',2,1,'c6abd0ea-25c8-4377-b358-e4f4307589f1.pdf','1058-API_Basic_Guide_for_InvGate_Service_Management.pdf',1376778,1,'2026-01-17 04:22:31',NULL,1,'2026-01-17 04:22:31','2026-01-17 04:22:31',NULL),(39,'anggaran_dokumen_rra',2,1,'1b722987-281a-4f16-97cb-2c0bffba4401.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:27:13',NULL,1,'2026-01-17 04:27:13','2026-01-17 04:27:13',NULL),(40,'anggaran_laporan_prbc',2,1,'465f6543-dce5-4b30-8aed-5be9da5ac6c5.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:29:08',NULL,1,'2026-01-17 04:29:08','2026-01-17 04:29:08',NULL),(41,'anggaran_rencana_kerja_direktorat',1,1,'3fd6a00a-20c6-42b8-a1bf-3a6781a0886c.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:32:37',NULL,1,'2026-01-17 04:32:37','2026-01-17 04:32:37',NULL),(42,'anggaran_rencana_kerja_tahunan',1,1,'11384d15-a1df-4c3c-9759-1eb207731b21.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:33:42',NULL,1,'2026-01-17 04:33:42','2026-01-17 04:33:42',NULL),(43,'anggaran_rencana_kerja_triwulan',1,1,'952bc7bb-1915-4d86-8f45-dc9fc9c82c2d.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:35:12',NULL,1,'2026-01-17 04:35:12','2026-01-17 04:35:12',NULL),(44,'hukumkepatuhan_kajian_hukum',3,1,'114e0c41-edc5-44ea-9398-b785fb3c6c84.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:38:49',NULL,1,'2026-01-17 04:38:49','2026-01-17 04:38:49',NULL),(45,'hukumkepatuhan_legal_memo',2,1,'7d6b840d-629c-4d34-a84f-d1f619c00c39.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:40:27',NULL,1,'2026-01-17 04:40:27','2026-01-17 04:40:27',NULL),(46,'hukumkepatuhan_kontrak',2,1,'19a7a2fd-0130-460d-b1e7-716786845bda.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:43:41',NULL,1,'2026-01-17 04:43:41','2026-01-17 04:43:41',NULL),(47,'hukumkepatuhan_putusan',1,1,'9e7681e8-9a20-4692-a184-0fccc8d3fe3c.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:46:22',NULL,1,'2026-01-17 04:46:22','2026-01-17 04:46:22',NULL),(48,'hukumkepatuhan_regulasi_internal',1,1,'092c8f0e-1157-4a2e-b409-a9b7d19ca8d7.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:49:28',NULL,1,'2026-01-17 04:49:28','2026-01-17 04:49:28',NULL),(49,'hukumkepatuhan_regulasi_external',1,1,'73c69a22-600c-469a-b3b7-dd0e8db1a703.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:53:08',NULL,1,'2026-01-17 04:53:08','2026-01-17 04:53:08',NULL),(50,'hukumkepatuhan_compliance_check',1,1,'1a8ff1db-dd8f-44d1-b7be-7974b3dd39d7.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 04:54:19',NULL,1,'2026-01-17 04:54:19','2026-01-17 04:54:19',NULL),(51,'surat',3,1,'c76f2b0f-23d6-4bf2-916d-61f25d1c4ffa.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:00:02',NULL,1,'2026-01-17 05:00:02','2026-01-17 05:00:02',NULL),(52,'investasi_perencanaan_transaksi',1,1,'18ca18ce-b824-46b9-877e-de5e8db7a91d.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:02:36',NULL,1,'2026-01-17 05:02:36','2026-01-17 05:02:36',NULL),(53,'investasi_perencanaan_surat',1,1,'a638277a-ca9e-4868-8769-7134857f81ae.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:05:12',NULL,1,'2026-01-17 05:05:12','2026-01-17 05:05:12',NULL),(54,'investasi_propensa_transaksi',1,1,'fe75cfc4-bb6a-406f-9d10-8ebfa662e55b.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:06:48',NULL,1,'2026-01-17 05:06:48','2026-01-17 05:06:48',NULL),(55,'investasi_propensa_surat',1,1,'857ef272-3a99-4257-8808-5a27950f5046.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:20:47',NULL,1,'2026-01-17 05:20:47','2026-01-17 05:20:47',NULL),(56,'keuangan_bendaharapajak_surat',2,1,'c30a883a-1e05-49d4-a175-b6feefa63cb8.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:22:13',NULL,1,'2026-01-17 05:22:13','2026-01-17 05:22:13',NULL),(57,'keuangan_bendaharapajak_spb',1,1,'50192802-0423-4b90-9006-247817403ac2.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:24:35',NULL,1,'2026-01-17 05:24:35','2026-01-17 05:24:35',NULL),(58,'keuangan_bendaharapajak_cashflow',2,1,'cfd56e1a-98c7-4987-b722-03c26b7ac5a0.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:31:22',NULL,1,'2026-01-17 05:31:22','2026-01-17 05:31:22',NULL),(59,'keuangan_bendaharapajak_penempatan',1,1,'09c55ab0-e5ed-44d2-8110-3f0f6ad67670.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:33:03',NULL,1,'2026-01-17 05:33:03','2026-01-17 05:33:03',NULL),(60,'keuangan_bendaharapajak_pemindahbukuan',1,1,'52673410-062f-449f-a233-f09a633d262e.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:34:58',NULL,1,'2026-01-17 05:34:58','2026-01-17 05:34:58',NULL),(61,'keuangan_bendaharapajak_pajak',1,1,'6a52edfd-2bbc-4fa4-8a0b-26d7fcaa8b77.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:35:37',NULL,1,'2026-01-17 05:35:37','2026-01-17 05:35:37',NULL),(62,'anggaran_dokumen_rra',3,1,'2841c328-dce9-494e-9935-3933940add70.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:56:05',NULL,1,'2026-01-17 05:56:05','2026-01-17 05:56:05',NULL),(63,'anggaran_laporan_prbc',3,1,'f6ee6f9f-091a-4b6d-88a0-5ca79908208b.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:58:32',NULL,1,'2026-01-17 05:58:32','2026-01-17 05:58:32',NULL),(64,'anggaran_rencana_kerja_direktorat',2,1,'01a4f0ee-6553-4929-959b-88bcf9378403.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:59:18',NULL,1,'2026-01-17 05:59:18','2026-01-17 05:59:18',NULL),(65,'hukumkepatuhan_executive_summary',1,1,'081d880b-8074-4466-bd43-b94486d8bf31.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 05:59:55',NULL,1,'2026-01-17 05:59:55','2026-01-17 05:59:55',NULL),(66,'anggaran_dokumen_rra',4,1,'45ed491d-b1a8-444d-9059-22e6ea60820e.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 06:11:44',NULL,1,'2026-01-17 06:11:44','2026-01-17 06:11:44',NULL),(67,'transaksi',2,1,'530fe865-f4bc-4643-889c-1074bf5363ce.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 06:23:42',NULL,1,'2026-01-17 06:23:42','2026-01-17 06:23:42',NULL),(68,'sdm_rarus',1,1,'78b6cbb3-4882-493d-9a63-ea19fbadea8e.pdf','Invoice-8H4WV3RV-0002.pdf',309955,1,'2026-01-17 06:51:51',NULL,1,'2026-01-17 06:51:51','2026-01-17 06:51:51',NULL);
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
  `workflow_status` enum('draft','pending_review','approved','rejected','revision') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
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
  KEY `document_workflow_checker_id_foreign` (`checker_id`),
  KEY `document_workflow_approver_id_foreign` (`approver_id`),
  KEY `idx_document` (`document_type`,`document_id`),
  KEY `idx_workflow_status` (`workflow_status`,`checker_id`),
  KEY `idx_maker` (`maker_id`),
  CONSTRAINT `document_workflow_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_workflow_checker_id_foreign` FOREIGN KEY (`checker_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `document_workflow_maker_id_foreign` FOREIGN KEY (`maker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
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
  `action_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_action` (`id_workflow`,`action_at`),
  KEY `idx_action_by` (`action_by`),
  CONSTRAINT `document_workflow_history_action_by_foreign` FOREIGN KEY (`action_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `document_workflow_history_id_workflow_foreign` FOREIGN KEY (`id_workflow`) REFERENCES `document_workflow` (`id`) ON DELETE CASCADE
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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_access_requests`
--

DROP TABLE IF EXISTS `file_access_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_access_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned NOT NULL,
  `document_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Table name of document',
  `document_id` int unsigned NOT NULL,
  `id_divisi` int unsigned NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `request_reason` text COLLATE utf8mb4_unicode_ci,
  `response_reason` text COLLATE utf8mb4_unicode_ci,
  `responded_by` bigint unsigned DEFAULT NULL,
  `responded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `file_access_requests_responded_by_foreign` (`responded_by`),
  KEY `idx_user_status` (`id_user`,`status`),
  KEY `idx_divisi_status` (`id_divisi`,`status`),
  CONSTRAINT `file_access_requests_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE CASCADE,
  CONSTRAINT `file_access_requests_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `file_access_requests_responded_by_foreign` FOREIGN KEY (`responded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_access_requests`
--

LOCK TABLES `file_access_requests` WRITE;
/*!40000 ALTER TABLE `file_access_requests` DISABLE KEYS */;
INSERT INTO `file_access_requests` VALUES (1,1,'anggaran_aturan_kebijakan',1,2,'approved','test',NULL,1,'2026-01-16 05:28:53','2026-01-16 05:28:45','2026-01-16 05:28:53',NULL),(2,1,'anggaran_aturan_kebijakan',1,2,'approved','halo',NULL,1,'2026-01-16 05:29:37','2026-01-16 05:29:25','2026-01-16 05:29:37',NULL),(3,1,'anggaran_aturan_kebijakan',1,2,'approved','test',NULL,1,'2026-01-16 06:30:37','2026-01-16 06:30:29','2026-01-16 06:30:37',NULL),(4,2,'akuntansi_aturan_kebijakan',3,1,'approved','aku mau file itu',NULL,1,'2026-01-16 06:32:47','2026-01-16 06:32:04','2026-01-16 06:32:47',NULL);
/*!40000 ALTER TABLE `file_access_requests` ENABLE KEYS */;
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
  `permission_type` enum('read','write','delete','full') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `folder_permissions_id_role_foreign` (`id_role`),
  KEY `folder_permissions_id_user_foreign` (`id_user`),
  KEY `idx_folder_role` (`id_folder`,`id_role`),
  KEY `idx_folder_user` (`id_folder`,`id_user`),
  CONSTRAINT `folder_permissions_id_folder_foreign` FOREIGN KEY (`id_folder`) REFERENCES `document_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `folder_permissions_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `base_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `folder_permissions_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder_permissions`
--

LOCK TABLES `folder_permissions` WRITE;
/*!40000 ALTER TABLE `folder_permissions` DISABLE KEYS */;
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_compliance_check_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_compliance_check`
--

LOCK TABLES `hukumkepatuhan_compliance_check` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_compliance_check` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_compliance_check` VALUES (1,3,'555525',NULL,'2026-01-17',NULL,'baef4305-5acb-4432-9dbc-638d95634303.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:54:19','2026-01-17 04:54:19',NULL,1,NULL,NULL),(2,5,'568','Officiis qui perspiciatis laudantium numquam.','2025-04-05','Assumenda dolores minima delectus delectus qui assumenda magnam debitis.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:22:00','2026-01-17 06:22:00',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_executive_summary_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_executive_summary`
--

LOCK TABLES `hukumkepatuhan_executive_summary` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_executive_summary` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_executive_summary` VALUES (1,9,NULL,'80a494e9-d070-4538-9e58-9d7b76dff008.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:59:55','2026-01-17 05:59:55',NULL,1,NULL,NULL),(2,4,'Earum praesentium repudiandae laudantium ea excepturi architecto aut natus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:22:24','2026-01-17 06:22:24',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_kajian_hukum_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_kajian_hukum`
--

LOCK TABLES `hukumkepatuhan_kajian_hukum` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_kajian_hukum` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_kajian_hukum` VALUES (1,1,'test',NULL,NULL,'6220202c-a015-4d22-8058-4271e3bc4d6c.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-16 00:20:14','2026-01-16 00:32:30','2026-01-16 00:32:30',1,1,1),(2,3,'Kebijakan','2026-01-16',NULL,'eff1d34d-2b70-46dd-9f8b-a945eab1ab34.pdf','STNK.pdf',NULL,2,'Umum','2026-01-16 05:37:40','2026-01-16 05:38:57',NULL,1,1,NULL),(3,3,'Kebijakan','2026-01-17',NULL,'4ce90a8b-da7f-40a8-a24d-dbdff84e5d23.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:38:49','2026-01-17 04:38:49',NULL,1,NULL,NULL),(4,2,'Asperiores ipsa vitae harum.','2026-09-03','Dolores mollitia quae nemo deleniti quisquam blanditiis itaque amet dolorum.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:16:18','2026-01-17 06:16:18',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `berlaku_awal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berlaku_akhir` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pihak` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemilik` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_kontrak_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_kontrak`
--

LOCK TABLES `hukumkepatuhan_kontrak` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_kontrak` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_kontrak` VALUES (1,3,'HK001','Kebijakan baruu','2026-01-16',NULL,NULL,NULL,NULL,NULL,NULL,'bb6b2af2-8052-427e-a140-9197973856cf.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 05:41:43','2026-01-16 05:41:43',NULL,1,NULL,NULL),(2,3,'0001','kontrak karyawan','2026-01-17',NULL,NULL,NULL,NULL,NULL,NULL,'8b6c1e81-8138-4e08-a66d-616a85fb1215.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 04:43:41','2026-01-17 04:43:41',NULL,1,NULL,NULL),(3,1,'202','Voluptate vitae ratione facere tempora possimus.','2027-01-17','2025-09-20','2025-03-24','Enim nostrum fugiat.','Debitis aut vero voluptas fugiat quia.','Odit fugit illum.','Aktif',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:17:34','2026-01-17 06:17:34',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_legal_memo_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_legal_memo`
--

LOCK TABLES `hukumkepatuhan_legal_memo` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_legal_memo` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_legal_memo` VALUES (1,3,'test','2026-01-16',NULL,'65bb941a-3868-42b1-a1f7-c9b65f794ab4.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 05:40:07','2026-01-16 05:40:07',NULL,1,NULL,NULL),(2,3,'Kebijakan','2026-01-17',NULL,'d7291e46-d0f7-41f9-a72f-945a28c7751f.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:40:27','2026-01-17 04:40:27',NULL,1,NULL,NULL),(3,4,'Sint porro numquam non officia dolorem nulla nulla vel.','2026-11-06','Quisquam vel commodi.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:16:52','2026-01-17 06:16:52',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_lembar_keputusan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_lembar_keputusan`
--

LOCK TABLES `hukumkepatuhan_lembar_keputusan` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_keputusan` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_lembar_keputusan` VALUES (1,2,'Provident ea corrupti nulla asperiores ad esse.','Accusamus at explicabo in maxime facilis officiis deleniti soluta suscipit.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:22:41','2026-01-17 06:22:41',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_lembar_rekomendasi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_lembar_rekomendasi`
--

LOCK TABLES `hukumkepatuhan_lembar_rekomendasi` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_lembar_rekomendasi` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_lembar_rekomendasi` VALUES (1,9,'Eius sapiente numquam consequuntur autem esse quo.','Repellendus libero odit sit cum veritatis voluptate fugit.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:22:56','2026-01-17 06:22:56',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_penomoran_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_penomoran`
--

LOCK TABLES `hukumkepatuhan_penomoran` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_penomoran` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_penomoran` VALUES (1,6,'Voluptas labore nesciunt ipsum similique quisquam amet aut aliquid.','Quis tenetur ad suscipit provident cum blanditiis.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:23:10','2026-01-17 06:23:10',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `klarifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_pengadilan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pihak` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_putusan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_putusan`
--

LOCK TABLES `hukumkepatuhan_putusan` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_putusan` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_putusan` VALUES (1,3,'555525','2026-01-17',NULL,NULL,NULL,NULL,'a82bca8b-48fe-4fa8-a088-1b954411255d.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:46:22','2026-01-17 04:46:22',NULL,1,NULL,NULL),(2,5,'632','2026-07-05','Distinctio deserunt quaerat laborum libero amet atque nostrum dicta ex.','Laboriosam tenetur libero.','Kalah','Velit perspiciatis blanditiis magnam aut error deleniti.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:17:52','2026-01-17 06:17:52',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_regulasi_external_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_regulasi_external`
--

LOCK TABLES `hukumkepatuhan_regulasi_external` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_external` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_regulasi_external` VALUES (1,3,'555525','Kebijakan','2026-01-17',NULL,'cb87434f-dbd8-4297-a368-ee84b2b9dd4c.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:53:08','2026-01-17 04:53:08',NULL,1,NULL,NULL),(2,8,'426','Reiciendis exercitationem quos ex eum alias voluptas laborum animi.','2025-05-08','Aktif',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:18:57','2026-01-17 06:18:57',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `inisiator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hukumkepatuhan_regulasi_internal_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hukumkepatuhan_regulasi_internal`
--

LOCK TABLES `hukumkepatuhan_regulasi_internal` WRITE;
/*!40000 ALTER TABLE `hukumkepatuhan_regulasi_internal` DISABLE KEYS */;
INSERT INTO `hukumkepatuhan_regulasi_internal` VALUES (1,3,'555525','Kebijakan','2026-01-17',NULL,NULL,'206c3cd2-2c4c-450e-ba80-5b40ae4c3b90.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 04:49:28','2026-01-17 04:49:28',NULL,1,NULL,NULL),(2,4,'52','Consectetur delectus porro placeat culpa.','2026-09-28','Mollitia laudantium nulla officia autem ea itaque.','Aktif',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:18:41','2026-01-17 06:18:41',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investasi_perencanaan_surat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_perencanaan_surat`
--

LOCK TABLES `investasi_perencanaan_surat` WRITE;
/*!40000 ALTER TABLE `investasi_perencanaan_surat` DISABLE KEYS */;
INSERT INTO `investasi_perencanaan_surat` VALUES (1,8,NULL,'2025-01-31','295','Atque optio fugit id nobis ratione doloribus nobis et.',NULL,'e245fbb3-caea-4598-8819-a4d547211de0.pdf','Invoice-8H4WV3RV-0002.pdf',1,'Rahasia','2026-01-17 05:05:12','2026-01-17 05:05:12',NULL,1,NULL,NULL),(2,2,NULL,'2026-06-17','629','Eius velit provident fugiat.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:15:31','2026-01-17 06:15:31',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investasi_perencanaan_transaksi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_perencanaan_transaksi`
--

LOCK TABLES `investasi_perencanaan_transaksi` WRITE;
/*!40000 ALTER TABLE `investasi_perencanaan_transaksi` DISABLE KEYS */;
INSERT INTO `investasi_perencanaan_transaksi` VALUES (1,4,NULL,'2026-01-17','makan',NULL,NULL,'26363e2c-8261-4d8c-836e-d1809b886479.pdf','Invoice-8H4WV3RV-0002.pdf',1,'Umum','2026-01-17 05:02:36','2026-01-17 05:02:36',NULL,1,NULL,NULL),(2,3,NULL,'2025-04-25','Rerum consequatur iure nulla provident labore vitae hic facilis nobis.',NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:15:23','2026-01-17 06:15:23',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investasi_propensa_surat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_propensa_surat`
--

LOCK TABLES `investasi_propensa_surat` WRITE;
/*!40000 ALTER TABLE `investasi_propensa_surat` DISABLE KEYS */;
INSERT INTO `investasi_propensa_surat` VALUES (1,9,NULL,'2026-11-11','193','Possimus dolores totam.',NULL,'5b2add63-8d38-4166-9c76-33a126d0d139.pdf','Invoice-8H4WV3RV-0002.pdf',1,'Rahasia','2026-01-17 05:20:47','2026-01-17 05:20:47',NULL,1,NULL,NULL),(2,6,NULL,'2025-03-19','227','Quam aliquid doloremque rerum enim.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:15:45','2026-01-17 06:15:45',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investasi_propensa_transaksi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investasi_propensa_transaksi`
--

LOCK TABLES `investasi_propensa_transaksi` WRITE;
/*!40000 ALTER TABLE `investasi_propensa_transaksi` DISABLE KEYS */;
INSERT INTO `investasi_propensa_transaksi` VALUES (1,8,NULL,NULL,'Totam repudiandae incidunt.',NULL,NULL,'ba06c1a9-26bb-47e8-87b4-82b0786284de.pdf','Invoice-8H4WV3RV-0002.pdf',1,'Rahasia','2026-01-17 05:06:48','2026-01-17 05:20:04',NULL,1,1,NULL),(2,3,NULL,'2025-02-14','Laborum inventore quasi exercitationem at natus atque fuga.',NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:15:38','2026-01-17 06:15:38',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_cashflow_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_cashflow`
--

LOCK TABLES `keuangan_bendaharapajak_cashflow` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_cashflow` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_cashflow` VALUES (1,5,'2026-01-16',NULL,NULL,'e076db19-29ba-40c6-9f6e-d21c6e7a0fde.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 06:03:44','2026-01-16 06:03:44',NULL,1,NULL,NULL),(2,3,'2026-07-11',NULL,NULL,'a93ddc88-0942-4d9f-b59f-71957a589d8d.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:31:22','2026-01-17 05:31:22',NULL,1,NULL,NULL),(3,3,'2026-10-06',364.00,'Minima similique maiores impedit minima nostrum a.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:14:12','2026-01-17 06:14:12',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `masa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_pajak_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_pajak`
--

LOCK TABLES `keuangan_bendaharapajak_pajak` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pajak` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_pajak` VALUES (1,8,NULL,NULL,NULL,'5c93ead4-e9fa-4b04-ad73-1a56675e8b50.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:35:37','2026-01-17 05:35:37',NULL,1,NULL,NULL),(2,4,'Consequuntur dolore sequi nam veritatis',2025,'Itaque adipisci laboriosam rerum nobis laboriosam id.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:14:58','2026-01-17 06:14:58',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_pemindahbukuan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_pemindahbukuan`
--

LOCK TABLES `keuangan_bendaharapajak_pemindahbukuan` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_pemindahbukuan` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_pemindahbukuan` VALUES (1,3,'2025-04-18',NULL,NULL,'9f20360f-3248-44d5-bdde-99a6f9f84dde.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:34:58','2026-01-17 05:34:58',NULL,1,NULL,NULL),(2,1,'2026-12-01',18.00,'Ab a libero.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:14:36','2026-01-17 06:14:36',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_penempatan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_penempatan`
--

LOCK TABLES `keuangan_bendaharapajak_penempatan` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_penempatan` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_penempatan` VALUES (1,1,'2026-07-11',NULL,NULL,'425c7986-e4d8-46b3-8827-6100b5e78650.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:33:03','2026-01-17 05:33:03',NULL,1,NULL,NULL),(2,5,'2025-11-18',396.00,'Expedita doloribus delectus perspiciatis neque voluptatem.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:14:27','2026-01-17 06:14:27',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal_spb` date DEFAULT NULL,
  `nomor_spb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_spb_id_surat_bayar_foreign` (`id_surat_bayar`),
  KEY `keuangan_bendaharapajak_spb_id_divisi_index` (`id_divisi`),
  CONSTRAINT `keuangan_bendaharapajak_spb_id_surat_bayar_foreign` FOREIGN KEY (`id_surat_bayar`) REFERENCES `keuangan_bendaharapajak_surat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_spb`
--

LOCK TABLES `keuangan_bendaharapajak_spb` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_spb` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_spb` VALUES (1,1,6,'2026-03-16','76',30.00,'Itaque a velit maxime laboriosam.','2b03d775-016b-4342-9f73-1a58df84f3c7.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:24:35','2026-01-17 05:24:35',NULL,1,NULL,NULL),(2,3,1,'2026-07-12','646',622.00,'Enim voluptas nostrum maxime ut eos aut beatae cum.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:13:49','2026-01-17 06:13:49',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal_sppb` date DEFAULT NULL,
  `nomor_sppb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` double(16,2) DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_sppb_id_surat_bayar_foreign` (`id_surat_bayar`),
  KEY `keuangan_bendaharapajak_sppb_id_spb_foreign` (`id_spb`),
  KEY `keuangan_bendaharapajak_sppb_id_divisi_index` (`id_divisi`),
  CONSTRAINT `keuangan_bendaharapajak_sppb_id_spb_foreign` FOREIGN KEY (`id_spb`) REFERENCES `keuangan_bendaharapajak_spb` (`id`),
  CONSTRAINT `keuangan_bendaharapajak_sppb_id_surat_bayar_foreign` FOREIGN KEY (`id_surat_bayar`) REFERENCES `keuangan_bendaharapajak_surat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_sppb`
--

LOCK TABLES `keuangan_bendaharapajak_sppb` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_sppb` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_sppb` VALUES (1,3,1,8,'2026-12-11','99',652.00,'Earum repudiandae itaque dicta dolores modi.','Ex unde fuga mollitia.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:14:00','2026-01-17 06:14:00',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal_surat_bayar` date DEFAULT NULL,
  `nomor_surat_bayar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `keuangan_bendaharapajak_surat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keuangan_bendaharapajak_surat`
--

LOCK TABLES `keuangan_bendaharapajak_surat` WRITE;
/*!40000 ALTER TABLE `keuangan_bendaharapajak_surat` DISABLE KEYS */;
INSERT INTO `keuangan_bendaharapajak_surat` VALUES (1,5,NULL,NULL,'5016feb0-7b98-416f-9d57-5c9edb5cfc19.pdf','STNK.pdf','test',1,'Umum','2026-01-16 06:01:59','2026-01-16 06:04:58',NULL,1,1,NULL),(2,1,NULL,NULL,'b306b3ed-af28-4796-9f45-9014685e9578.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 05:22:13','2026-01-17 05:22:13',NULL,1,NULL,NULL),(3,8,'2026-11-14','608',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:13:28','2026-01-17 06:13:28',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_cleaning_service_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_cleaning_service`
--

LOCK TABLES `logistiksarpen_cleaning_service` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_cleaning_service` DISABLE KEYS */;
INSERT INTO `logistiksarpen_cleaning_service` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Umum','2026-01-17 08:38:04','2026-01-17 08:38:04',NULL,1,NULL,NULL),(2,6,2000,'Voluptate laborum commodi impedit.','test',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:53:27','2026-01-17 08:53:27',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `jenis_jaminan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Jaminan Penawaran, Jaminan Uang Muka, Jaminan Pelaksanaan, Jaminan Pemeliharaan',
  `nomor_drp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pengadaan` text COLLATE utf8mb4_unicode_ci,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_jaminan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_jaminan`
--

LOCK TABLES `logistiksarpen_jaminan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_jaminan` DISABLE KEYS */;
INSERT INTO `logistiksarpen_jaminan` VALUES (1,9,'Jaminan Penawaran','503','Sapiente eveniet sunt debitis consectetur numquam ipsa reiciendis culpa impedit.','Ipsa dolorum dolore aut dolorem commodi porro asperiores.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:23:50','2026-01-17 08:23:50',NULL,1,NULL,NULL),(2,3,'Illo occaecati facilis animi aliquid quaerat.','314','Quisquam sunt voluptatibus quis.','Molestias ea libero itaque eum vel similique minus impedit.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:57:21','2026-01-17 08:57:21',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_keamanan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_keamanan`
--

LOCK TABLES `logistiksarpen_keamanan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_keamanan` DISABLE KEYS */;
INSERT INTO `logistiksarpen_keamanan` VALUES (1,8,NULL,NULL,NULL,'e30c2cb5-22f2-47ab-bb60-dc31f9ef6a81.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 06:44:18','2026-01-16 06:44:18',NULL,1,NULL,NULL),(2,8,2025,'jan','test',NULL,NULL,NULL,1,'Umum','2026-01-17 08:54:13','2026-01-17 08:54:13',NULL,1,NULL,NULL),(3,6,2000,'Alias corrupti quibusdam molestias.','test',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:54:26','2026-01-17 08:54:26',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_kendaraan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_kendaraan`
--

LOCK TABLES `logistiksarpen_kendaraan` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_kendaraan` DISABLE KEYS */;
INSERT INTO `logistiksarpen_kendaraan` VALUES (1,4,2000,'Inventore quae consequatur magnam.','kendaraan',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:54:55','2026-01-17 08:54:55',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_pelaporan_prbc_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_pelaporan_prbc`
--

LOCK TABLES `logistiksarpen_pelaporan_prbc` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_pelaporan_prbc` DISABLE KEYS */;
INSERT INTO `logistiksarpen_pelaporan_prbc` VALUES (1,8,'April','2027-01-13',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:22:47','2026-01-17 08:22:47',NULL,1,NULL,NULL),(2,4,'Maret','2026-03-21',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:40:05','2026-01-17 08:40:05',NULL,1,NULL,NULL),(3,5,'januari','2026-04-14',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:55:30','2026-01-17 08:55:30',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `berlaku_mulai` date DEFAULT NULL,
  `berlaku_akhir` date DEFAULT NULL,
  `nilai` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_polis_asuransi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_polis_asuransi`
--

LOCK TABLES `logistiksarpen_polis_asuransi` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_polis_asuransi` DISABLE KEYS */;
INSERT INTO `logistiksarpen_polis_asuransi` VALUES (1,1,2000,'2025-02-22','2025-06-20','1000000',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:23:39','2026-01-17 08:23:39',NULL,1,NULL,NULL),(2,6,2000,'2026-07-25','2025-08-23','your.email+fakedata20122@gmail.com',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:57:06','2026-01-17 08:57:06',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `no_drp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `direktorat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_procurement_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_procurement`
--

LOCK TABLES `logistiksarpen_procurement` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_procurement` DISABLE KEYS */;
INSERT INTO `logistiksarpen_procurement` VALUES (1,8,NULL,NULL,NULL,'5e89dc4f-aa0d-4e42-b055-062186706581.pdf','STNK.pdf','test',1,'Umum','2026-01-16 06:42:58','2026-01-17 00:30:15','2026-01-17 00:30:15',1,1,1),(2,8,NULL,NULL,NULL,'01a5992b-3a09-4dfd-a34e-548c7eb3a0a3.pdf','STNK.pdf',NULL,1,'Umum','2026-01-17 00:28:57','2026-01-17 00:30:13','2026-01-17 00:30:13',1,1,1),(3,8,NULL,NULL,NULL,NULL,NULL,NULL,1,'Umum','2026-01-17 00:29:59','2026-01-17 00:30:11','2026-01-17 00:30:11',1,1,1),(4,1,'65','test','Consectetur repellat veritatis natus pariatur eos voluptatum officia.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:22:16','2026-01-17 08:22:16',NULL,1,NULL,NULL),(5,9,'83','null','Suscipit libero suscipit.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:53:07','2026-01-17 08:53:07',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_sarana_penunjang_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_sarana_penunjang`
--

LOCK TABLES `logistiksarpen_sarana_penunjang` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_sarana_penunjang` DISABLE KEYS */;
INSERT INTO `logistiksarpen_sarana_penunjang` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Umum','2026-01-17 08:39:08','2026-01-17 08:39:08',NULL,1,NULL,NULL),(2,9,2000,'Est aut vel minima voluptatibus.','sarana',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:55:08','2026-01-17 08:55:08',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_smk3_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_smk3`
--

LOCK TABLES `logistiksarpen_smk3` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_smk3` DISABLE KEYS */;
INSERT INTO `logistiksarpen_smk3` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Umum','2026-01-17 08:40:49','2026-01-17 08:40:49',NULL,1,NULL,NULL),(2,1,2000,'Magni modi quasi magni temporibus nam maiores.','test',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:56:52','2026-01-17 08:56:52',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_user_satisfaction_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_user_satisfaction`
--

LOCK TABLES `logistiksarpen_user_satisfaction` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_user_satisfaction` DISABLE KEYS */;
INSERT INTO `logistiksarpen_user_satisfaction` VALUES (1,4,2000,'2025-11-27',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:23:00','2026-01-17 08:23:00',NULL,1,NULL,NULL),(2,8,2000,'2026-06-01',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:55:45','2026-01-17 08:55:45',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logistiksarpen_vendor_satisfaction_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistiksarpen_vendor_satisfaction`
--

LOCK TABLES `logistiksarpen_vendor_satisfaction` WRITE;
/*!40000 ALTER TABLE `logistiksarpen_vendor_satisfaction` DISABLE KEYS */;
INSERT INTO `logistiksarpen_vendor_satisfaction` VALUES (1,5,2000,'2025-03-02',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:23:14','2026-01-17 08:23:14',NULL,1,NULL,NULL),(2,8,2000,'2026-06-08',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:55:58','2026-01-17 08:55:58',NULL,1,NULL,NULL);
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
  `query` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_queries`
--

LOCK TABLES `maintenance_queries` WRITE;
/*!40000 ALTER TABLE `maintenance_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_department`
--

DROP TABLE IF EXISTS `master_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kode_department` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_department` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `master_department_kode_department_unique` (`kode_department`),
  KEY `master_department_id_divisi_foreign` (`id_divisi`),
  CONSTRAINT `master_department_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_department`
--

LOCK TABLES `master_department` WRITE;
/*!40000 ALTER TABLE `master_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_department` ENABLE KEYS */;
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
  UNIQUE KEY `master_divisi_kode_divisi_unique` (`kode_divisi`),
  KEY `master_divisi_id_module_foreign` (`id_module`),
  CONSTRAINT `master_divisi_id_module_foreign` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_divisi`
--

LOCK TABLES `master_divisi` WRITE;
/*!40000 ALTER TABLE `master_divisi` DISABLE KEYS */;
INSERT INTO `master_divisi` VALUES (1,'AKTt','Akuntansi',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 20:00:19',NULL,NULL,1,NULL),(2,'ANG','Anggaran',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(3,'HKP','Hukum & Kepatuhan',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(4,'INV','Investasi',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(5,'KEU','Keuangan',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(6,'SDM','SDM',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(7,'SEK','Sekretariat',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 20:00:30','2026-01-15 20:00:30',NULL,NULL,1),(8,'LOG','Logistik & Sarpen',NULL,NULL,'2026-01-15 19:30:14','2026-01-15 19:30:14',NULL,NULL,NULL,NULL),(9,'test','test',NULL,NULL,'2026-01-15 20:00:39','2026-01-15 20:00:39',NULL,1,NULL,NULL);
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
  `id_department` int unsigned DEFAULT NULL,
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
  UNIQUE KEY `master_jabatan_kode_jabatan_unique` (`kode_jabatan`),
  KEY `master_jabatan_id_divisi_foreign` (`id_divisi`),
  KEY `master_jabatan_id_department_foreign` (`id_department`),
  KEY `master_jabatan_id_role_default_foreign` (`id_role_default`),
  CONSTRAINT `master_jabatan_id_department_foreign` FOREIGN KEY (`id_department`) REFERENCES `master_department` (`id`) ON DELETE SET NULL,
  CONSTRAINT `master_jabatan_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL,
  CONSTRAINT `master_jabatan_id_role_default_foreign` FOREIGN KEY (`id_role_default`) REFERENCES `base_roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_jabatan`
--

LOCK TABLES `master_jabatan` WRITE;
/*!40000 ALTER TABLE `master_jabatan` DISABLE KEYS */;
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_01_15_000001_create_base_system_tables',1),(6,'2024_01_15_000002_create_auth_tables',1),(7,'2024_01_15_000003_create_master_data_tables',1),(8,'2024_01_15_000004_create_document_management_tables',1),(9,'2024_01_15_100001_create_akuntansi_module',1),(10,'2024_01_15_100002_create_anggaran_module',1),(11,'2024_01_15_100003_create_hukum_kepatuhan_module',1),(12,'2024_01_15_100004_create_investasi_module',1),(13,'2024_01_15_100005_create_keuangan_bendahara_module',1),(14,'2024_01_15_100006_create_sdm_module',1),(15,'2024_01_15_100007_create_sekretariat_module',1),(16,'2024_01_15_100008_create_logistik_sarpen_module',1),(17,'2014_10_12_100000_create_password_resets_table',2),(18,'2026_01_17_000001_add_id_divisi_to_users_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
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
  `access_level` enum('read','write','full') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_division_module` (`id_role`,`id_divisi`,`id_module`),
  KEY `role_division_access_id_divisi_foreign` (`id_divisi`),
  KEY `role_division_access_id_module_foreign` (`id_module`),
  CONSTRAINT `role_division_access_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_division_access_id_module_foreign` FOREIGN KEY (`id_module`) REFERENCES `base_modules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_division_access_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `base_roles` (`id`) ON DELETE CASCADE
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` blob,
  `tanggal` date DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kontrak Induk, Nama Perjanjian, Nama Sertifikat',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_aspurjab_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_aspurjab`
--

LOCK TABLES `sdm_aspurjab` WRITE;
/*!40000 ALTER TABLE `sdm_aspurjab` DISABLE KEYS */;
INSERT INTO `sdm_aspurjab` VALUES (1,2,_binary '313','2026-03-29','Fugiat autem dolorem aliquam perferendis cumque.','2025-03-27','2025-06-14','Eligendi doloremque non assumenda nesciunt.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 07:59:36','2026-01-17 07:59:36',NULL,1,NULL,NULL),(2,4,_binary '38','2025-03-01','Quas consectetur saepe eveniet totam sit.','2026-01-23','2026-06-15','Omnis natus debitis.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:11:00','2026-01-17 08:11:00',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_capeg_pegrus_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_capeg_pegrus`
--

LOCK TABLES `sdm_capeg_pegrus` WRITE;
/*!40000 ALTER TABLE `sdm_capeg_pegrus` DISABLE KEYS */;
INSERT INTO `sdm_capeg_pegrus` VALUES (1,6,'123123123123','Dolorum enim id occaecati enim.',0,'In reiciendis in eum voluptatibus modi a.','2025-06-21',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:09:52','2026-01-17 08:09:52',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_ikut_organisasi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_ikut_organisasi`
--

LOCK TABLES `sdm_ikut_organisasi` WRITE;
/*!40000 ALTER TABLE `sdm_ikut_organisasi` DISABLE KEYS */;
INSERT INTO `sdm_ikut_organisasi` VALUES (1,3,'123123123123','Quasi numquam ex culpa numquam neque maiores nihil.',0,'Reprehenderit voluptatum aperiam itaque.','2026-04-17',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:33','2026-01-17 08:10:33',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_naik_gaji_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_naik_gaji`
--

LOCK TABLES `sdm_naik_gaji` WRITE;
/*!40000 ALTER TABLE `sdm_naik_gaji` DISABLE KEYS */;
INSERT INTO `sdm_naik_gaji` VALUES (1,2,'123213123123','Cupiditate tempora dolores sunt ipsa at laboriosam voluptate.',1,'Provident tempore optio aspernatur cumque magni at vero.','2025-05-05',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:10','2026-01-17 08:10:10',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_penghargaan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_penghargaan`
--

LOCK TABLES `sdm_penghargaan` WRITE;
/*!40000 ALTER TABLE `sdm_penghargaan` DISABLE KEYS */;
INSERT INTO `sdm_penghargaan` VALUES (1,9,'12312312312','Atque molestias placeat aspernatur.',1,'Corrupti magni temporibus at.','2026-01-23',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:26','2026-01-17 08:10:26',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Remunerasi, Pola Karir, Organisasi, Pensiun Normal, Pensiun Pendi, Pensiun APS, Perusahaan, IC, Lain-Lain',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_peraturan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_peraturan`
--

LOCK TABLES `sdm_peraturan` WRITE;
/*!40000 ALTER TABLE `sdm_peraturan` DISABLE KEYS */;
INSERT INTO `sdm_peraturan` VALUES (1,6,'SDM001','2026-01-16',NULL,NULL,'d7a9e8e1-3bbf-44dc-9c37-5ad93cb70cb9.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:12:31','2026-01-16 06:12:31',NULL,1,NULL,NULL),(2,6,'127','2026-08-27','Totam ad sequi laudantium vero placeat.','Minima provident reprehenderit vero tempore vel natus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:09:16','2026-01-17 08:09:16',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci,
  `mulai` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Prohire/Kontrak, Yakes, Telkomedika, Insani, Renang, Bank, Lain-Lain',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_pks_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_pks`
--

LOCK TABLES `sdm_pks` WRITE;
/*!40000 ALTER TABLE `sdm_pks` DISABLE KEYS */;
INSERT INTO `sdm_pks` VALUES (1,6,'SDM001',NULL,NULL,NULL,NULL,'aeb9e0ea-90fd-4fb5-8271-32e2e0c219ed.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:10:12','2026-01-16 06:10:12',NULL,1,NULL,NULL),(2,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:47:51','2026-01-17 06:47:51',NULL,1,NULL,NULL),(3,2,'139','Laudantium non iusto qui eaque.','2025-09-21','2025-10-14','At incidunt sint quos porro sapiente.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 07:17:28','2026-01-17 07:17:28',NULL,1,NULL,NULL),(4,4,'154','Similique tempore cupiditate distinctio et doloribus nostrum.','2026-09-24','2026-01-24','Error adipisci officia quis consequatur officiis iusto libero ipsam natus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:32:44','2026-01-17 08:32:44',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_promosi_mutasi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_promosi_mutasi`
--

LOCK TABLES `sdm_promosi_mutasi` WRITE;
/*!40000 ALTER TABLE `sdm_promosi_mutasi` DISABLE KEYS */;
INSERT INTO `sdm_promosi_mutasi` VALUES (1,1,'123123123123','Sequi unde nisi voluptatum alias laboriosam.',0,'Libero quae aspernatur officiis necessitatibus distinctio illum at id porro.','2026-11-20',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:01','2026-01-17 08:10:01',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Remunerasi, Organisasi, Promosi & Mutasi, IBO, Lain-Lain',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_rarus_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rarus`
--

LOCK TABLES `sdm_rarus` WRITE;
/*!40000 ALTER TABLE `sdm_rarus` DISABLE KEYS */;
INSERT INTO `sdm_rarus` VALUES (1,6,'2025-05-21',NULL,NULL,'15a43a31-395c-4508-b66d-73edd8cc71ac.pdf','Invoice-8H4WV3RV-0002.pdf','Vitae illo accusantium numquam earum.',1,'Rahasia','2026-01-17 06:51:51','2026-01-17 06:51:51',NULL,1,NULL,NULL),(2,8,'2027-01-05','Nemo dolorum pariatur voluptates doloremque itaque autem culpa.','Voluptatibus enim ducimus vitae iusto quae.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 07:49:55','2026-01-17 07:49:55',NULL,1,NULL,NULL),(3,1,'2025-06-30','Accusamus modi maiores necessitatibus voluptatibus atque dolorem et cupiditate.','Vel ducimus reiciendis ut accusamus.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:09:01','2026-01-17 08:09:01',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `ba` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telkom, YAKES, Dapen, BPJS, Lain-Lain',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_rekon_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rekon`
--

LOCK TABLES `sdm_rekon` WRITE;
/*!40000 ALTER TABLE `sdm_rekon` DISABLE KEYS */;
INSERT INTO `sdm_rekon` VALUES (1,3,'2026-04-06','Ab hic magnam quis alias ipsa expedita nemo aspernatur nisi.','your.email+fakedata14493@gmail.com','Perferendis a minima voluptatem id hic.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:11:07','2026-01-17 08:11:07',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_rekrut_masuk_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_rekrut_masuk`
--

LOCK TABLES `sdm_rekrut_masuk` WRITE;
/*!40000 ALTER TABLE `sdm_rekrut_masuk` DISABLE KEYS */;
INSERT INTO `sdm_rekrut_masuk` VALUES (1,3,'123123123123','Iste impedit aperiam.',1,'Vel rem placeat provident accusantium optio.','2025-09-09',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:09:34','2026-01-17 08:09:34',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Keluar Umum, Surat Magang/PKL',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_surat_keluar_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_surat_keluar`
--

LOCK TABLES `sdm_surat_keluar` WRITE;
/*!40000 ALTER TABLE `sdm_surat_keluar` DISABLE KEYS */;
INSERT INTO `sdm_surat_keluar` VALUES (1,5,'123123123','2025-10-02','Distinctio suscipit incidunt iste accusamus ad a voluptas.','Ipsa minima culpa dolorum ut.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:52','2026-01-17 08:10:52',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `perihal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Masuk Umum, Surat Magang/PKL, Surat Lamaran',
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sdm_surat_masuk_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm_surat_masuk`
--

LOCK TABLES `sdm_surat_masuk` WRITE;
/*!40000 ALTER TABLE `sdm_surat_masuk` DISABLE KEYS */;
INSERT INTO `sdm_surat_masuk` VALUES (1,6,'AK-0001','2026-01-16',NULL,NULL,'ae6426dc-3b5a-4aaa-a6ff-09cd5c5c7a22.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:14:52','2026-01-16 06:14:52',NULL,1,NULL,NULL),(2,1,'12312312312','2026-07-19','Ad voluptatum blanditiis neque nam.','Consequuntur perspiciatis quibusdam ullam quam.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:10:43','2026-01-17 08:10:43',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bulanan, Triwulanan, Semesteran, Tahunan, Lainnya',
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dilaporkan` date DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_laporan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_laporan`
--

LOCK TABLES `sekretariat_laporan` WRITE;
/*!40000 ALTER TABLE `sekretariat_laporan` DISABLE KEYS */;
INSERT INTO `sekretariat_laporan` VALUES (1,6,'SK001','2026-01-16',NULL,NULL,NULL,NULL,NULL,'6f8f93c2-9c29-493a-bd70-4ad7dc74cda8.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:34:17','2026-01-16 06:34:17',NULL,1,NULL,NULL),(2,9,'592','2026-01-16','96376','Semesteran','Voluptas ad ullam omnis voluptatibus impedit aliquid aspernatur.','Sed nemo omnis saepe voluptatum sapiente ipsam voluptatem.','2026-09-12',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:21:24','2026-01-17 08:21:24',NULL,1,NULL,NULL),(3,1,'270','2026-08-30','64669-5474','Tahunan','Ipsum quos sapiente suscipit odit.','Laborum necessitatibus id maxime repudiandae.','2026-09-29',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:33:59','2026-01-17 08:33:59',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_materi_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_materi`
--

LOCK TABLES `sekretariat_materi` WRITE;
/*!40000 ALTER TABLE `sekretariat_materi` DISABLE KEYS */;
INSERT INTO `sekretariat_materi` VALUES (1,6,'SK001','2026-01-16',NULL,NULL,'abaa650d-f558-41b2-853d-40d36d2b6420.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:20:27','2026-01-16 06:20:27',NULL,1,NULL,NULL),(2,2,'459','2026-06-19','79876','Officiis at eligendi.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:21:10','2026-01-17 08:21:10',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TOR, Justifikasi, Kontrak, SPMK, Berita Acara',
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `tujuan` text COLLATE utf8mb4_unicode_ci,
  `masa_akhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_pengadaan_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_pengadaan`
--

LOCK TABLES `sekretariat_pengadaan` WRITE;
/*!40000 ALTER TABLE `sekretariat_pengadaan` DISABLE KEYS */;
INSERT INTO `sekretariat_pengadaan` VALUES (1,2,'365','2026-09-16','Justifikasi','Dolorum aliquam accusantium.','Dicta cum voluptatibus sint perspiciatis accusamus similique amet atque.','Distinctio culpa quo.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:52:31','2026-01-17 08:52:31',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bulanan, THR, Jasa Usaha',
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_remunerasi_dokumen_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_remunerasi_dokumen`
--

LOCK TABLES `sekretariat_remunerasi_dokumen` WRITE;
/*!40000 ALTER TABLE `sekretariat_remunerasi_dokumen` DISABLE KEYS */;
INSERT INTO `sekretariat_remunerasi_dokumen` VALUES (1,6,'174','2026-11-18','39535-9448','Jasa Usaha','Cupiditate sed aliquam quis possimus corporis incidunt earum corporis numquam.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:52:49','2026-01-17 08:52:49',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `masa_akhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_remunerasi_pedoman_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_remunerasi_pedoman`
--

LOCK TABLES `sekretariat_remunerasi_pedoman` WRITE;
/*!40000 ALTER TABLE `sekretariat_remunerasi_pedoman` DISABLE KEYS */;
INSERT INTO `sekretariat_remunerasi_pedoman` VALUES (1,4,'317','2025-06-27','77626-6147','Quaerat voluptatibus aliquid qui saepe illo velit laudantium.','Eveniet rem eos.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:52:37','2026-01-17 08:52:37',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `periode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'PRBC, Rapat Pengurus, Rapat Gabungan, Rapat Sekretariat, Lainnya',
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `peserta` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_risalah_rapat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_risalah_rapat`
--

LOCK TABLES `sekretariat_risalah_rapat` WRITE;
/*!40000 ALTER TABLE `sekretariat_risalah_rapat` DISABLE KEYS */;
INSERT INTO `sekretariat_risalah_rapat` VALUES (1,6,'SK001','2026-01-16',NULL,NULL,NULL,NULL,'44ecd56f-3db3-4073-baf1-4b949e16355a.pdf','STNK.pdf','lemari',1,'Umum','2026-01-16 06:19:35','2026-01-16 06:19:35',NULL,1,NULL,NULL),(2,2,'220','2026-01-13','08357','Rapat Sekretariat','Quidem atque dicta.','Fugiat magni accusantium expedita minima.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:20:51','2026-01-17 08:20:51',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `nomor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Surat Masuk, Surat Keluar',
  `perihal` text COLLATE utf8mb4_unicode_ci,
  `dari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disposisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sekretariat_surat_id_divisi_index` (`id_divisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekretariat_surat`
--

LOCK TABLES `sekretariat_surat` WRITE;
/*!40000 ALTER TABLE `sekretariat_surat` DISABLE KEYS */;
INSERT INTO `sekretariat_surat` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Umum','2026-01-17 08:33:18','2026-01-17 08:33:18',NULL,1,NULL,NULL),(2,6,'208','2025-07-05','Surat Keluar','Fuga atque vel aspernatur quia reiciendis ipsam qui.','Voluptatem magni quibusdam reprehenderit laborum similique explicabo.','Earum unde earum.','Odio temporibus fuga numquam inventore itaque.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 08:52:23','2026-01-17 08:52:23',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL COMMENT '1: Keluar; 2: Masuk;',
  `no_surat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_agenda` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perihal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` tinyint unsigned DEFAULT NULL COMMENT '1: Keluar; 2: Masuk;',
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `klasifikasi` smallint unsigned DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surat_id_divisi_index` (`id_divisi`),
  KEY `surat_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat`
--

LOCK TABLES `surat` WRITE;
/*!40000 ALTER TABLE `surat` DISABLE KEYS */;
INSERT INTO `surat` VALUES (1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ca4c7907-11f8-4466-b22b-111ddc7e947e.pdf','STNK.pdf',NULL,1,'Umum','2026-01-16 05:44:58','2026-01-17 00:33:31','2026-01-17 00:33:31',1,1,1),(2,4,NULL,NULL,NULL,NULL,'makan',NULL,NULL,NULL,NULL,'98387ad0-2c3b-41fa-9e40-3cd2f4d3e5ab.pdf','STNK.pdf',NULL,1,'Umum','2026-01-17 00:34:12','2026-01-17 04:58:51','2026-01-17 04:58:51',1,1,1),(3,4,NULL,NULL,NULL,NULL,'makan',NULL,NULL,NULL,NULL,'8e44fe89-afb9-4474-9ceb-b4b35485a4d8.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Umum','2026-01-17 05:00:02','2026-01-17 05:00:02',NULL,1,NULL,NULL),(4,6,NULL,NULL,NULL,NULL,'Nesciunt placeat laudantium quam.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:12:58','2026-01-17 06:12:58',NULL,1,NULL,NULL),(5,6,NULL,NULL,NULL,NULL,'Earum dolores explicabo explicabo.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:15:59','2026-01-17 06:15:59',NULL,1,NULL,NULL),(6,4,'2026-10-12',2,'223','438','Veniam quis quis pariatur.',1,'Wyatt.Adams-Dibbert34',3,'Corporis nemo voluptatibus dolorem aspernatur sequi exercitationem mollitia cum quisquam.',NULL,NULL,NULL,1,'Rahasia','2026-01-17 06:40:50','2026-01-17 06:40:50',NULL,1,NULL,NULL);
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
  `id_divisi` int unsigned DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL COMMENT '1: Pembelian; 2: Penjualan;',
  `tgl_transaksi` date DEFAULT NULL,
  `perihal` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saham` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broker` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `sifat_dokumen` enum('Rahasia','Umum') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaksi_id_divisi_index` (`id_divisi`),
  KEY `transaksi_type_index` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,4,2,'2026-01-17','makan','makan','makan','makan','5c0a8e27-5660-4a31-8204-68b592f8ed3c.pdf','STNK.pdf',NULL,1,'Rahasia','2026-01-16 20:12:25','2026-01-17 06:42:19',NULL,1,1,NULL),(2,9,1,'2025-12-11','Ipsum ex modi nisi dignissimos.','Delectus dolorem quia voluptatibus possimus ad.','Itaque omnis et dolorem pariatur cum harum hic ullam error.','Officia neque veritatis nulla cumque veritatis ea officia ipsam.','438fb465-1f7e-47d5-ab72-c43fa5f4852f.pdf','Invoice-8H4WV3RV-0002.pdf',NULL,1,'Rahasia','2026-01-17 06:23:42','2026-01-17 06:23:42',NULL,1,NULL,NULL);
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
  `id_department` int unsigned DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_jabatan_history_id_user_foreign` (`id_user`),
  KEY `user_jabatan_history_id_jabatan_foreign` (`id_jabatan`),
  KEY `user_jabatan_history_id_divisi_foreign` (`id_divisi`),
  KEY `user_jabatan_history_id_department_foreign` (`id_department`),
  KEY `idx_nik_active` (`nik`,`is_active`),
  KEY `idx_valid_dates` (`valid_from`,`valid_till`),
  CONSTRAINT `user_jabatan_history_id_department_foreign` FOREIGN KEY (`id_department`) REFERENCES `master_department` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_jabatan_history_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_jabatan_history_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `master_jabatan` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_jabatan_history_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jabatan_history`
--

LOCK TABLES `user_jabatan_history` WRITE;
/*!40000 ALTER TABLE `user_jabatan_history` DISABLE KEYS */;
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
  `username` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_till` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` int unsigned DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` smallint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `activation_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_nik_unique` (`nik`),
  KEY `idx_users_nik` (`nik`),
  KEY `idx_users_active_valid` (`is_active`,`valid_till`),
  KEY `users_id_divisi_foreign` (`id_divisi`),
  CONSTRAINT `users_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `master_divisi` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,NULL,'Administrator','admin@dapen.com',NULL,'2026-01-15 19:33:40','$2y$12$stPAyGNpG7IMlNkSyqJ33e2uDkVbHOsnO87gA8cQ0SqO/Iz7lLrGu',NULL,1,'2026-01-15 19:33:40','2026-01-15 19:33:40',NULL,NULL),(2,'staff_akt',NULL,NULL,NULL,'Staff Akuntansi','akuntansi@dapen.com',1,'2026-01-15 19:33:40','$2y$12$pLUjeZDuO3.AiNggoLaKi.9chYV5DtHxVCXdeOV1LKp8TeuAIoHzW',NULL,1,'2026-01-15 19:33:40','2026-01-16 19:31:32',NULL,NULL),(3,'staff_inv',NULL,NULL,NULL,'Staff Investasi','investasi@dapen.com',NULL,'2026-01-15 19:34:10','$2y$12$/.huQ9gO5XTUUhp5IEpsCudrFUgb.vYlvaHIQ089E/vmNhgrQnnZ.',NULL,1,'2026-01-15 19:34:10','2026-01-15 19:34:10',NULL,NULL),(4,'staff_sdm',NULL,NULL,NULL,'Staff SDM','sdm@dapen.com',NULL,'2026-01-15 19:34:11','$2y$12$m9KXLiyFNMJB1fu.UVNFWerh7EZnlIk9WI/FSh/lux7pedqFks55i',NULL,1,'2026-01-15 19:34:11','2026-01-16 18:42:30','2026-01-16 18:42:30',NULL);
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
  `signature_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` smallint unsigned DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `id_vilages` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poscode` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `deleted_by` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_profile_user` (`id_user`),
  KEY `idx_profile_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dapennew'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-18 12:32:11
