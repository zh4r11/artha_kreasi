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
CREATE DATABASE IF NOT EXISTS `artha_kreasi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artha_kreasi`;

-- Dumping structure for table artha_kreasi.keranjang
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.keranjang: ~0 rows (approximately)

-- Dumping structure for table artha_kreasi.pelanggan
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(50) NOT NULL DEFAULT '0',
  `tlp_pelanggan` varchar(15) NOT NULL DEFAULT '0',
  `alamat_pelanggan` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.pelanggan: ~0 rows (approximately)

-- Dumping structure for table artha_kreasi.pesanan
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

-- Dumping structure for table artha_kreasi.pesanandetail
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

-- Dumping structure for table artha_kreasi.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(50) NOT NULL DEFAULT '0',
  `harga_produk` int NOT NULL DEFAULT '0',
  `harga_diskon` int NOT NULL DEFAULT '0',
  `qty_produk` int NOT NULL DEFAULT '0',
  `best_seller` bit(1) NOT NULL DEFAULT b'0',
  `foto1` varchar(50) NOT NULL DEFAULT '0',
  `foto2` varchar(50) NOT NULL DEFAULT '0',
  `foto3` varchar(50) NOT NULL DEFAULT '0',
  `foto4` varchar(50) NOT NULL DEFAULT '0',
  `foto5` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table artha_kreasi.produk: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
