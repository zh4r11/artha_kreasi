-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for artha_kreasi
DROP DATABASE IF EXISTS `artha_kreasi`;
CREATE DATABASE IF NOT EXISTS `artha_kreasi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artha_kreasi`;

-- Dumping structure for table artha_kreasi.keranjang
DROP TABLE IF EXISTS `keranjang`;
CREATE TABLE IF NOT EXISTS `keranjang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int NOT NULL DEFAULT '0',
  `id_produk` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_pelanggan` (`id_pelanggan`),
  KEY `id_barang` (`id_produk`),
  CONSTRAINT `FK_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.keranjang: ~4 rows (approximately)
DELETE FROM `keranjang`;
INSERT INTO `keranjang` (`id`, `id_pelanggan`, `id_produk`, `qty`) VALUES
	(15, 2, 10, 6),
	(16, 2, 11, 12),
	(17, 2, 7, 23),
	(18, 2, 5, 1);

-- Dumping structure for table artha_kreasi.pelanggan
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL DEFAULT '0',
  `tlp_pelanggan` varchar(15) NOT NULL DEFAULT '0',
  `alamat_pelanggan` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.pelanggan: ~0 rows (approximately)
DELETE FROM `pelanggan`;
INSERT INTO `pelanggan` (`id`, `email`, `nama_pelanggan`, `tlp_pelanggan`, `alamat_pelanggan`, `password`) VALUES
	(2, 'azharimurii@gmail.com', 'Azhari Murii', '131231231', 'asdakjsdhajsdhaskjdas', '$2y$10$C77MGEK2Fb6cBe/V2mLsJuINa.KLCv1g1in1S89qJkjdkXLqv6gMu');

-- Dumping structure for table artha_kreasi.pesanan
DROP TABLE IF EXISTS `pesanan`;
CREATE TABLE IF NOT EXISTS `pesanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int NOT NULL DEFAULT '0',
  `no_pesanan` varchar(50) NOT NULL DEFAULT '0',
  `tgl_pesanan` datetime(4) NOT NULL,
  `total` int NOT NULL DEFAULT '0',
  `bayar` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_pelanggan` (`id_pelanggan`),
  CONSTRAINT `FK_pelangganpesanan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.pesanan: ~0 rows (approximately)
DELETE FROM `pesanan`;

-- Dumping structure for table artha_kreasi.pesanandetail
DROP TABLE IF EXISTS `pesanandetail`;
CREATE TABLE IF NOT EXISTS `pesanandetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produk` int NOT NULL DEFAULT '0',
  `id_pesanan` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKpesanan_detail` (`id_pesanan`),
  KEY `FKpesanan_detailproduk` (`id_produk`),
  CONSTRAINT `FKpesanan_detail` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKpesanan_detailproduk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.pesanandetail: ~0 rows (approximately)
DELETE FROM `pesanandetail`;

-- Dumping structure for table artha_kreasi.produk
DROP TABLE IF EXISTS `produk`;
CREATE TABLE IF NOT EXISTS `produk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(50) NOT NULL DEFAULT '0',
  `harga_produk` int NOT NULL DEFAULT '0',
  `harga_diskon` int NOT NULL DEFAULT '0',
  `qty_produk` int NOT NULL DEFAULT '0',
  `best_seller` bit(1) NOT NULL DEFAULT b'0',
  `foto1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `foto2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `foto3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `foto4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `foto5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.produk: ~34 rows (approximately)
DELETE FROM `produk`;
INSERT INTO `produk` (`id`, `nama_produk`, `harga_produk`, `harga_diskon`, `qty_produk`, `best_seller`, `foto1`, `foto2`, `foto3`, `foto4`, `foto5`, `deskripsi`) VALUES
	(1, 'Produk A', 100000, 80000, 10, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(2, 'Produk B', 150000, 120000, 5, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(3, 'Produk C', 200000, 180000, 20, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(4, 'Produk D', 250000, 200000, 15, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(5, 'Produk E', 300000, 250000, 8, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(6, 'Produk F', 350000, 300000, 12, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(7, 'Produk G', 400000, 350000, 25, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(8, 'Produk H', 450000, 400000, 30, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(9, 'Produk I', 500000, 450000, 18, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(10, 'Produk J', 550000, 500000, 22, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(11, 'Produk K', 600000, 550000, 14, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(12, 'Produk L', 650000, 600000, 9, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(13, 'Produk M', 700000, 650000, 11, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(14, 'Produk N', 750000, 700000, 7, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(15, 'Produk O', 800000, 750000, 16, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(16, 'Produk P', 850000, 800000, 19, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(17, 'Produk Q', 900000, 850000, 13, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(18, 'Produk R', 950000, 900000, 21, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(19, 'Produk S', 1000000, 950000, 17, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(20, 'Produk T', 1050000, 1000000, 23, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(21, 'Produk U', 1100000, 1050000, 6, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(22, 'Produk V', 1150000, 1100000, 4, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(23, 'Produk W', 1200000, 1150000, 3, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(24, 'Produk X', 1250000, 1200000, 2, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(25, 'Produk Y', 1300000, 1250000, 1, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(26, 'Produk Z', 1350000, 1300000, 0, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(27, 'Produk AA', 1400000, 1350000, 5, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(28, 'Produk AB', 1450000, 1400000, 10, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(29, 'Produk AC', 1500000, 1450000, 15, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(30, 'Produk AD', 1550000, 1500000, 20, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(31, 'Produk AE', 1600000, 1550000, 25, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(32, 'Produk AF', 1650000, 1600000, 30, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(33, 'Produk AG', 1700000, 1650000, 18, b'1', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!'),
	(34, 'Produk AH', 1750000, 1700000, 22, b'0', NULL, NULL, NULL, NULL, NULL, 'Produk A adalah solusi ideal bagi Anda yang mencari kombinasi sempurna antara kualitas dan harga terjangkau. Didesain dengan teknologi terkini, Produk A menawarkan performa yang handal dan efisiensi yang tinggi, menjadikannya pilihan utama untuk kebutuhan sehari-hari Anda. Dengan desain yang modern dan ergonomis, produk ini tidak hanya fungsional tetapi juga estetis, cocok untuk berbagai gaya hidup. Dapatkan pengalaman menggunakan Produk A dan rasakan perbedaannya dalam setiap aktivitas Anda!');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
