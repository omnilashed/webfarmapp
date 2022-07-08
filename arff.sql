-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 01:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arff`
--

-- --------------------------------------------------------

--
-- Table structure for table `b_keluar`
--

CREATE TABLE `b_keluar` (
  `id_k` int(11) NOT NULL,
  `idb` int(11) NOT NULL,
  `code_b` varchar(50) NOT NULL,
  `stock_k` int(12) NOT NULL,
  `tgl` date NOT NULL,
  `pt_gudang` varchar(100) NOT NULL,
  `penerima_b` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `b_keluar`
--

INSERT INTO `b_keluar` (`id_k`, `idb`, `code_b`, `stock_k`, `tgl`, `pt_gudang`, `penerima_b`, `keterangan`) VALUES
(1, 9, 'B001', 2, '2021-02-12', 'maulana', 'DANU HARTANTOL', 'test'),
(2, 1, 'A01', 1, '2021-02-12', 'DJAMALUDIN', 'ERZA AMANAH P', 'test2'),
(3, 9, 'B001', 1, '2021-02-12', 'DJAMALUDIN', 'ERZA AMANAH P', 'test4'),
(4, 9, 'B001', 1, '2021-02-12', 'DJAMALUDIN', 'AHMAD JURJANI', 'test'),
(5, 9, 'B001', 1, '2021-02-12', 'maulana', 'FAHMI JULIANSYAH.R', 'test'),
(6, 9, 'B001', 0, '2021-02-12', 'DJAMALUDIN', 'ERZA AMANAH P', 'test'),
(7, 10, 'A002', 10, '2021-02-12', 'DJAMALUDIN', 'FAHMI JULIANSYAH.R', 'test'),
(8, 10, 'A002', 94, '2021-02-12', 'maulana', 'ERLAN TRISNA. S', 'test'),
(9, 8, 'AB001', 5, '2021-03-18', 'DJAMALUDIN', 'ERLAN TRISNA. S', 'Refill'),
(10, 14, 'ME201', 1, '2021-03-19', 'EDUAR JAUHARI', 'ERZA AMANAH P', 'cek thermal di papa 2'),
(11, 8, 'AB001', 1, '2021-03-19', 'EDUAR JAUHARI', 'FAHMI JULIANSYAH.R', 'Penambahan APAR di kantor Meteo'),
(12, 8, 'AB001', 1, '2021-03-19', 'ROBERTO SISWANTO', 'ERJHI. P', 'Penambahan APAR di kantor Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `b_masuk`
--

CREATE TABLE `b_masuk` (
  `id_m` int(11) NOT NULL,
  `idb` int(11) NOT NULL,
  `code_b` varchar(50) NOT NULL,
  `stock_m` int(12) NOT NULL,
  `tgl` date NOT NULL,
  `pt_gudang` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `b_masuk`
--

INSERT INTO `b_masuk` (`id_m`, `idb`, `code_b`, `stock_m`, `tgl`, `pt_gudang`, `ket`) VALUES
(1, 10, 'APAB', 1, '2021-02-10', 'DJAMALUDIN', 'test'),
(2, 10, 'APAB', 1, '2021-02-10', 'EDUAR JAUHARI', 'test'),
(3, 10, 'APAB', 1, '2021-02-10', 'DJAMALUDIN', 'test'),
(4, 4, 'A04', 1, '2021-02-10', 'PANJI DWI LAKSONO', 'test'),
(5, 9, 'B001', 2, '2021-02-12', 'maulana', 'test'),
(6, 1, 'A01', 1, '2021-02-12', 'DJAMALUDIN', 'test2'),
(7, 9, 'B001', 1, '2021-02-12', 'DJAMALUDIN', 'test4'),
(8, 9, 'B001', 1, '2021-02-12', 'DJAMALUDIN', 'test'),
(9, 9, 'B001', 1, '2021-02-12', 'maulana', 'test'),
(10, 16, 'PCs201', 5, '2021-03-19', 'DJAMALUDIN', 'test'),
(11, 14, 'ME201', 2, '2021-03-19', 'maulana', 'Vendor Baru'),
(12, 14, 'ME201', 2, '2021-03-19', 'maulana', 'Vendor Baru'),
(13, 14, 'ME201', 1, '2021-03-19', 'maulana', 'Pengadaan Baru'),
(14, 14, 'ME201', 1, '2021-03-19', 'EDUAR JAUHARI', 'test baru'),
(15, 14, 'ME201', 1, '2021-03-19', 'EDUAR JAUHARI', 'test baru'),
(16, 12, 'C01', 1, '2021-03-19', 'ROBERTO SISWANTO', 'Pengadaan Tahun 2021');

-- --------------------------------------------------------

--
-- Table structure for table `b_rusak`
--

CREATE TABLE `b_rusak` (
  `id_br` int(11) NOT NULL,
  `idb` int(11) NOT NULL,
  `code_b` varchar(50) NOT NULL,
  `stock_r` int(11) NOT NULL,
  `detail_r` varchar(255) NOT NULL,
  `kondisi_r` varchar(100) NOT NULL,
  `pt_gudang` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id_c` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` text NOT NULL,
  `bagian` enum('gudang','maintenance','sdm','') NOT NULL,
  `admin` varchar(50) NOT NULL,
  `status` enum('aktif','non aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `d_rusak`
--

CREATE TABLE `d_rusak` (
  `id_dr` int(11) NOT NULL,
  `idj` int(11) NOT NULL,
  `detail_rusak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_rusak`
--

INSERT INTO `d_rusak` (`id_dr`, `idj`, `detail_rusak`) VALUES
(1, 1, 'Slang APAR retak/robek'),
(2, 1, 'Head APAR rusak'),
(3, 1, 'pin Tabung pengaman APAR hilang'),
(4, 2, 'nozzle APAR rusak'),
(5, 1, 'Penyok dibagian depan/belakang'),
(6, 2, 'penyok dibagian kiri/kanan'),
(7, 2, 'Tabung BA set rusak'),
(8, 2, 'masker BA set retak/pecah'),
(9, 2, 'Celana sobek/tali putus'),
(10, 2, 'baju sobek'),
(11, 2, 'test'),
(12, 2, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_data`
--

CREATE TABLE `riwayat_data` (
  `id_rd` int(11) NOT NULL,
  `idb` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `lok_baru` int(11) NOT NULL,
  `kondisi_baru` varchar(50) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `riwayat` varchar(100) NOT NULL,
  `id_u` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_data`
--

INSERT INTO `riwayat_data` (`id_rd`, `idb`, `keterangan`, `lok_baru`, `kondisi_baru`, `tgl`, `riwayat`, `id_u`) VALUES
(1, 1, 'sudah ditarik', 10, 'Rusak', '2021-02-03 00:00:00', 'updated', 'maulana'),
(2, 1, 'Sudah Diperbaiki', 10, 'Sudah Baik', '2021-02-04 00:00:00', 'updated', 'maulana'),
(3, 1, 'Sudah ditempatkan sesuai pada tempatnya', 10, 'baik', '2021-02-04 00:00:00', 'updated', 'maulana'),
(4, 2, 'test', 9, 'baik', '2021-02-03 00:00:00', 'updated', 'maulana'),
(5, 1, 'pindah tempat', 2, 'baik', '2021-01-23 00:00:00', 'updated', 'maulana'),
(6, 2, 'test lagi', 8, 'baik', '2021-02-04 00:00:00', 'updated', 'maulana'),
(10, 2, 'test4', 2, 'baik', '2021-02-04 00:00:00', 'updated', 'didid'),
(11, 4, 'test ok', 11, 'baik', '2021-02-04 00:00:00', 'updated', 'maulana'),
(12, 2, 'sudah di tarik ke gudang', 0, 'kurang baik', '2021-03-18 00:00:00', 'updated', 'maulana'),
(13, 3, 'sudah di tarik ke gudang', 11, 'kurang baik', '2021-03-18 00:00:00', 'updated', 'maulana'),
(14, 3, 'masih di gudang', 0, 'on progress', '2021-03-18 00:00:00', 'updated', 'maulana'),
(15, 4, 'sudah di tarik ke gudang', 11, 'kurang baik', '2021-03-18 00:00:00', 'updated', 'maulana'),
(16, 14, 'Vendor Baru', 11, 'baik', '2021-03-19 00:00:00', 'Barang Masuk', 'maulana'),
(17, 14, 'Pengadaan Baru', 11, 'baik', '2021-03-19 00:00:00', 'Barang Masuk', 'maulana'),
(18, 14, 'test baru', 11, 'baik', '2021-03-19 00:00:00', 'Barang Masuk', ''),
(19, 14, 'test baru', 11, 'baik', '2021-03-19 00:00:00', 'Barang Masuk', 'maulana'),
(20, 12, 'Pengadaan Tahun 2021', 11, 'baik', '2021-03-19 00:00:00', 'Barang Masuk', 'ERLAN TRISNA. S'),
(21, 8, 'Penambahan APAR di kantor Meteo', 0, 'baik', '2021-03-19 00:00:00', 'Barang Keluar', 'ERLAN TRISNA. S'),
(22, 8, 'Penambahan APAR di kantor Teknik', 4, 'baik', '2021-03-19 00:00:00', 'Barang Keluar', 'ERLAN TRISNA. S');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `idb` int(11) NOT NULL,
  `user_create` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `namab` varchar(50) NOT NULL,
  `kategorib` int(11) NOT NULL,
  `jenisb` int(11) NOT NULL,
  `merkb` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `tahun_p` date NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `lokasib` varchar(20) NOT NULL,
  `ket` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `dari` varchar(100) NOT NULL,
  `updater` varchar(100) NOT NULL,
  `created_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`idb`, `user_create`, `code`, `namab`, `kategorib`, `jenisb`, `merkb`, `satuan`, `stock`, `tahun_p`, `kondisi`, `lokasib`, `ket`, `foto`, `dari`, `updater`, `created_date`) VALUES
(1, 'maulana', 'A01', 'APAR (Dry Checmical Powder 3 Kg)', 1, 31, 27, 'Tabung', 0, '2021-01-23', 'baik', '2', 'pindah tempat', 'Screenshot (1).png', '', 'maulana', '2021-02-09'),
(2, 'maulana', 'A02', '1', 2, 22, 66, 'Tabung', 0, '2021-02-03', 'kurang baik', '', 'sudah di tarik ke gudang', 'R.png', '', 'maulana', '2021-02-09'),
(3, 'maulana', 'A03', '1', 2, 22, 66, 'Tabung', 0, '2021-02-04', 'on progress', '', 'masih di gudang', 'Screenshot (3).png', '', 'maulana', '2021-02-09'),
(4, 'maulana', 'A04', 'APAR (Dry Checmical Powder 3 Kg)', 2, 22, 66, 'Tabung', 1, '2021-02-04', 'kurang baik', '11', 'sudah di tarik ke gudang', 'gudang.jpeg', '', 'didid', '2021-02-09'),
(8, 'maulana', 'AB001', 'APAR (Dry Checmical Powder 6 Kg)', 2, 22, 66, 'Tabung', 94, '2021-02-09', 'baik', '11', 'test', '', 'AHMAD HAQQI ANNAZALI', 'maulana', '0000-00-00'),
(9, 'maulana', 'B001', 'APAR (CO2 3 Kg)', 2, 22, 66, 'Tabung', 0, '2021-02-09', 'baik', '11', 'test', '', 'AHMAD HAQQI ANNAZALI', 'maulana', '2021-02-09'),
(10, 'maulana', 'A002', 'APAB (Dry Checmical Powder 75 Kg)', 1, 31, 27, 'Kg', 0, '2021-02-09', 'baik', '11', 'test', '', 'AHMAD HAQQI ANNAZALI', 'maulana', '2021-02-09'),
(11, 'maulana', 'PE202', 'Kantong Mayat (Belum Tersedia)', 1, 21, 64, 'Unit', 10, '2020-06-16', 'baik', '11', 'baru', 'IMG_20200713_143250_405.jpg', 'ARIEF DWI K', 'maulana', '2021-03-16'),
(12, 'maulana', 'C01', 'APAR (Halotron 6 Kg)', 1, 31, 27, 'Tabung', 2, '2021-03-01', 'baik', '11', 'APAR Baru', 'IMG_20200711_174154_529 (1).jpg', 'AHMAD HAQQI ANNAZALI', 'maulana', '2021-03-18'),
(13, 'maulana', 'PE31', 'Kantong Mayat Orange (2m x 1m)', 1, 21, 64, 'Unit', 0, '2021-03-18', 'baik', '11', 'test', '20201117_004236.png', '', 'maulana', '0000-00-00'),
(14, 'maulana', 'ME201', 'Imaging Thermal Camera (Belum Tersedia)', 2, 28, 47, 'Unit', 6, '2021-03-18', 'baik', '11', 'test', '20201117_004236.png', '', 'maulana', '0000-00-00'),
(16, 'maulana', 'PCs201', 'Baju Tahan Panas (belum Tersedia)', 1, 31, 29, 'Set', 6, '2021-01-01', 'baik', '11', 'test', 'DSC01865.JPG', 'BAMBANG SETIABUDI', 'maulana', '2021-03-19'),
(17, 'ERLAN TRISNA. S', 'DF01', '13', 2, 28, 47, 'Unit', 1, '2021-03-19', 'baik', '1', 'test', 'IMG_20200706_125825_157.jpg', 'ARIEF DWI K', 'ERLAN TRISNA. S', '2021-03-19'),
(18, 'maulana', 'BB01', 'APAR - Co2 6 Kg', 1, 31, 27, 'Tabung', 1, '2021-01-01', 'baik', '11', 'test', 'IMG-20190106-WA0024.jpg', 'DANU HARTANTOL', 'maulana', '2021-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detailb`
--

CREATE TABLE `tbl_detailb` (
  `id_db` int(11) NOT NULL,
  `idk` int(11) NOT NULL,
  `idj` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `code_db` varchar(50) NOT NULL,
  `nama_db` varchar(100) NOT NULL,
  `ukuran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detailb`
--

INSERT INTO `tbl_detailb` (`id_db`, `idk`, `idj`, `idm`, `code_db`, `nama_db`, `ukuran`) VALUES
(1, 1, 22, 1, 'A', 'APAR', 'Dry Chemical Powder 3 Kg'),
(2, 1, 22, 1, 'AB', 'APAR', 'Dry Chemical Powder 6 Kg'),
(3, 1, 22, 1, 'AF', 'APAB', 'Dry Chemical Powder 75kg'),
(4, 1, 22, 1, 'B', 'APAR', 'Co2 3Kg'),
(5, 1, 22, 1, 'BB', 'APAR', 'Co2 6 Kg'),
(6, 1, 22, 2, 'BC', 'APAR', 'Co2 25Kg'),
(7, 1, 22, 2, 'C', 'APAR', 'Halotron 6Kg'),
(8, 1, 22, 2, 'HA', 'Hydrant Box', 'Storz coupling'),
(9, 1, 22, 1, 'HB', 'Hydrant Pillar', 'Storz coupling'),
(10, 1, 22, 1, 'HC', 'Hydrant Box', 'Storz coupling'),
(11, 1, 22, 1, 'DS', 'Smoke Detector', 'Horing'),
(12, 1, 22, 2, 'DH', 'Heat Detector', 'Belum Tersedia'),
(13, 1, 22, 2, 'DF', 'Fire Detector', 'Belum Tersedia'),
(14, 1, 22, 1, 'DA', 'Fire Alarm', 'Horing'),
(15, 1, 1, 1, 'AKA', 'Crash Bell', 'Belum Tersedia'),
(16, 1, 1, 1, 'AKB1', 'Handy Talky', 'Ground'),
(17, 1, 1, 1, 'AKB2', 'Handy Talky', 'IGCS (Internal)'),
(18, 1, 21, 64, 'PK3-2', 'AED (Autometed External Defibrilator)', 'Standar'),
(19, 1, 1, 1, 'AKC', 'Telephone', 'PABX'),
(20, 1, 1, 1, 'AKD', 'Radio Base', 'Belum Tersedia'),
(21, 1, 1, 1, 'AKE', 'Megaphone', 'Belum Tersedia'),
(22, 1, 1, 1, 'AKF', 'Intercom', 'Belum Tersedia'),
(23, 1, 2, 1, 'PV', 'Binocular', 'Belum Tersedia'),
(24, 1, 19, 1, 'BAS', 'Breathing Apparatus Set', 'Belum Tersedia'),
(25, 1, 20, 1, 'PCs1', 'Baju Tahan Api', 'Belum Tersedia'),
(26, 1, 20, 1, 'PCs2', 'Baju Tahan Panas', 'Belum Tersedia'),
(27, 1, 20, 1, 'PCs3', 'Selimut Tahan Api', 'Belum Tersedia'),
(28, 1, 20, 1, 'PCs4', 'Surgical Gloves/ Sarung Tangan Karet', 'Belum Tersedia'),
(29, 1, 21, 1, 'PE1', 'Tandu', 'Belum Tersedia'),
(30, 1, 21, 1, 'PE2', 'Kantong Mayat', 'Belum Tersedia'),
(31, 1, 24, 1, 'RR', 'Full Faced Respirator/Filter', 'Belum Tersedia'),
(32, 1, 22, 1, 'PPS1', 'Slang Pemadam', 'Rubber'),
(33, 1, 22, 1, 'PPS2', 'Slang Pemadam', 'Rubber'),
(34, 1, 22, 1, 'PPS3', 'Slang Pemadam', 'Nilon'),
(35, 1, 22, 1, 'PPS4', 'Slang Pemadam', 'Nilon'),
(36, 1, 22, 1, 'PPS5', 'Slang Pemadam', 'Rubber'),
(37, 1, 22, 1, 'PPS6', 'Slang Pemadam', 'Rubber'),
(38, 1, 22, 1, 'PPS7', 'Slang Penghisap', 'Nilon'),
(39, 1, 22, 1, 'PPN1', 'Nozzle', 'Fox'),
(40, 1, 22, 2, 'PPN2', 'Nozzle', 'Foam'),
(41, 1, 22, 1, 'PPN3', 'Nozzle', 'Variable'),
(42, 1, 22, 2, 'PPN4', 'Nozzle', 'Water'),
(43, 1, 22, 1, 'PPK1', 'Kunci Pemadam', 'Kopling'),
(44, 1, 22, 1, 'PPK2', 'Kunci Pemadam', 'Hydrant'),
(45, 1, 22, 1, 'PPH1', 'Helmet Safety', 'Belum Tersedia'),
(46, 1, 22, 1, 'PPH2', 'Helmet Berkamera', 'with Go Pro'),
(47, 1, 22, 1, 'AD', 'APAR', 'FOAM'),
(48, 1, 22, 1, 'PPB', 'Fire Extinguiser Ball', 'Belum Tersedia'),
(49, 1, 22, 1, 'LL1', 'Nitrogen', 'Belum Tersedia'),
(50, 1, 22, 1, 'LL2', 'Nitrogen', 'Belum Tersedia'),
(51, 1, 22, 1, 'LL3', 'Catridge', 'Belum Tersedia'),
(52, 1, 23, 47, 'PK3-1', 'AED (Autometed External Defibrilator)', 'Belum Tersedia'),
(53, 1, 23, 1, 'PK3-2', 'ORE (Resucitator Oxsygen / tabung oxigen)', 'Belum Tersedia'),
(54, 1, 23, 1, 'PK3-3', 'Peralatan Safety', 'Kacamata'),
(55, 1, 23, 1, 'PK3-4', 'Peralatan Safety', 'Earnuff'),
(56, 1, 23, 1, 'PK3-5', 'Peralatan Safety', 'Earplug'),
(57, 1, 23, 1, 'PK3-6', 'Peralatan Safety', 'Sarung Tangan'),
(58, 1, 25, 1, 'FE1', 'Pryeing Tool(Hooligan Biel Tool)', 'Belum Tersedia'),
(59, 1, 25, 1, 'FE2', 'Linggis', 'Belum Tersedia'),
(60, 1, 25, 1, 'FE3', 'Linggis (Crowbar)', 'Belum Tersedia'),
(61, 1, 25, 1, 'FE4', 'Kampak Besar Axe, Rescue Large Non Wedge', 'Belum Tersedia'),
(62, 1, 25, 1, 'FE5', 'Kampak Kecil Axe, Rescue Small Non Wedge', 'Belum Tersedia'),
(63, 1, 25, 1, 'FE6', 'Gunting Pemotong (Cutter Bolt )', 'Belum Tersedia'),
(64, 1, 25, 1, 'FE7', 'Palu (Hammer) 1,8 Limp', 'Belum Tersedia'),
(65, 1, 25, 1, 'FE8', 'Pahat (Chisel Cold)', 'Belum Tersedia'),
(66, 1, 26, 1, 'RTB1', 'Box (Kotak Peralatan)', 'Belum Tersedia'),
(67, 1, 26, 1, 'RTB2', 'Hammer (Claw) 0,6 KG (Palu Cakar)', 'Belum Tersedia'),
(68, 1, 26, 1, 'RTB3', 'Cutter Cable', 'Belum Tersedia'),
(69, 1, 26, 1, 'RTB4', 'Socket Set', 'Belum Tersedia'),
(70, 1, 26, 1, 'RTB5', 'Hacksaw, Heavy Duty C/W Spare Blades', 'Belum Tersedia'),
(71, 1, 26, 1, 'RTB6', 'Screw Driver Set Slotted dan Philips Heads', 'Belum Tersedia'),
(72, 1, 26, 1, 'RTB7', 'Seat Belt / Harnes Cutting Tool', 'Belum Tersedia'),
(73, 1, 26, 1, 'RTB8', 'Wrench Adjutable (kunci Inggris)', 'Belum Tersedia'),
(74, 1, 26, 1, 'RTB9', 'Spanner, Combination Ukuran ', 'Belum Tersedia'),
(75, 1, 26, 1, 'RTB10', 'Plier (Tang)', 'Plier Inducated Cobi'),
(76, 1, 26, 1, 'RTB11', 'Plier (Tang)', 'Plier Insulted Slip '),
(77, 1, 26, 1, 'RTB12', 'Plier (Tang)', 'Plier Insulted Slide'),
(78, 1, 27, 1, 'PL', 'Flashtlight / Senter', 'Belum Tersedia'),
(79, 1, 28, 1, 'ME1', 'Tarpaulin / Terpal', 'Belum Tersedia'),
(80, 1, 28, 1, 'ME2', 'Imaging Thermal Camera ', 'Belum Tersedia'),
(81, 1, 29, 1, 'PM1', 'GENSET', 'EP 7000 LX'),
(82, 1, 29, 1, 'PM2', 'BA SET REFILLER', 'Belum Tersedia'),
(83, 1, 29, 1, 'PM3', 'EXHAUST FAN ', 'GF 164 SE 16\'\''),
(84, 1, 29, 1, 'PM4', 'POMPA PORTABLE  ', 'WB 30 XT'),
(85, 1, 29, 1, 'PM5', 'FLOODLIGHT (MODIFIKASI)', 'Belum Tersedia'),
(86, 1, 29, 1, 'PM6', 'GERGAJI MESIN ', 'TS 800 '),
(87, 1, 29, 1, 'PM7', 'Hydraulic Portable Rescue ', 'Belum Tersedia'),
(88, 1, 31, 1, 'C', 'APAR', 'Halotron 6Kg'),
(89, 1, 31, 1, 'BC', 'APAR', 'Co2 25Kg'),
(90, 1, 31, 1, 'BB', 'APAR', 'Co2 6 Kg'),
(91, 1, 31, 1, 'B', 'APAR', 'Co2 3Kg'),
(92, 1, 31, 1, 'AC', 'APAB', 'Dry Chemical Powder 75kg'),
(93, 1, 31, 1, 'AB', 'APAR', 'Dry Chemical Powder 6 Kg'),
(94, 1, 31, 1, 'A', 'APAR', 'Dry Chemical Powder 3 Kg'),
(95, 1, 21, 1, 'PE3', 'Kantong Mayat Orange', '2m x 1m'),
(100, 1, 1, 1, 'AKM01', 'HT Internal', 'Standar'),
(101, 3, 34, 72, 'FO-02', 'Foam Kendaraan Utama', 'Cair');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `idj` int(11) NOT NULL,
  `idk` int(11) NOT NULL,
  `jenisb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`idj`, `idk`, `jenisb`) VALUES
(1, 1, 'Alat Komunikasi'),
(2, 1, 'Peralatan Visual'),
(19, 1, 'Self Contain Breathing Apparatus'),
(20, 2, 'Protective Clothing'),
(21, 1, 'Peralatan Evakuasi'),
(22, 2, 'Peralatan Pemadam'),
(23, 2, 'Peralatan P3K'),
(24, 2, 'Respirator'),
(25, 2, 'Forcible Entry Tools'),
(26, 2, 'Rescue Tools Box & Content'),
(27, 2, 'Portable Lighting'),
(28, 2, 'Misselaneous Equipment'),
(29, 1, 'Peralatan Mesin '),
(30, 1, 'Protective Clothing'),
(31, 1, 'Peralatan Pemadam'),
(32, 2, 'Peralatan Mesin '),
(34, 3, 'Foam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `idk` int(11) NOT NULL,
  `kategorib` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`idk`, `kategorib`) VALUES
(1, 'Peralatan Penunjang'),
(2, 'Peralatan Pendukung'),
(3, 'Bahan Pemadam Utama'),
(4, 'Bahan Pemadam Pelengkap'),
(5, 'Kendaraan Utama'),
(6, 'Kendaraan Pendukung');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lokasi`
--

CREATE TABLE `tbl_lokasi` (
  `idl` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lokasi`
--

INSERT INTO `tbl_lokasi` (`idl`, `lokasi`) VALUES
(1, 'Terminal Building Lt.1'),
(2, 'Terminal Building Lt.2'),
(3, 'Kantor Commercial dan SDM AP2 Lt. 2'),
(4, 'Kantor Teknik'),
(5, 'Ruang Tunggu Terminal'),
(6, 'Ruang Kontrol AC Center'),
(7, 'Kantor EME'),
(8, 'Kantor Meteo'),
(9, 'Main Fire Station'),
(10, 'kendaraan unit lain'),
(11, 'Gudang Prevention');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `idm` int(11) NOT NULL,
  `idj` int(11) NOT NULL,
  `merkb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`idm`, `idj`, `merkb`) VALUES
(1, 1, 'Motorola'),
(2, 1, 'Panasonic'),
(3, 1, 'Alcatelucen'),
(4, 1, 'TOAs'),
(5, 1, 'Commax'),
(6, 2, 'Nikon Action '),
(7, 2, 'Nikon Aculon '),
(8, 19, 'Soeba '),
(9, 19, 'Scott'),
(10, 19, 'Eagle'),
(11, 19, 'MSA '),
(12, 19, 'Sekur'),
(13, 19, 'Frenzi'),
(14, 20, 'Shigematsu'),
(15, 20, 'Sedaya'),
(16, 20, 'Keylight'),
(18, 22, 'OSW '),
(19, 31, 'Sri Fire '),
(20, 22, 'Chube Fire '),
(21, 22, 'Protec'),
(22, 22, 'Zeki'),
(23, 31, 'Bullard'),
(24, 31, 'PAB Akrapovic'),
(25, 31, 'PAB Akrapovic / Go Pro'),
(26, 31, 'Yamato'),
(27, 31, 'Adam Firex'),
(29, 31, 'Joys Fire '),
(30, 31, 'Viking '),
(31, 31, 'Indoca '),
(32, 31, 'Starvo '),
(33, 22, 'Eilide Fire '),
(34, 23, 'Philips '),
(35, 23, 'Aero'),
(36, 23, 'Bolle '),
(37, 23, 'Protector'),
(39, 23, 'Safety Jogger'),
(40, 25, 'Para Tech '),
(41, 26, 'Krisbow '),
(42, 26, 'Tekiro '),
(43, 26, 'J-Tech &Krisbow'),
(44, 26, 'ATS & Krisbow'),
(45, 26, 'Multipro & Krisbow '),
(47, 28, 'Drager'),
(48, 29, 'HONDA'),
(49, 29, 'Baeur'),
(50, 29, 'Krisbow'),
(51, 19, 'STHIL'),
(52, 19, 'Leopard '),
(53, 19, 'Biasa '),
(54, 19, '3M '),
(55, 19, 'Spotlight '),
(57, 19, 'Protek'),
(58, 19, 'Axio '),
(59, 19, 'Acculon '),
(60, 19, 'Action '),
(61, 31, 'OSW '),
(62, 27, 'Krisbow '),
(64, 21, '3M '),
(65, 22, 'Yamato'),
(66, 22, 'Adam Firex'),
(67, 22, 'Joys Fire '),
(68, 22, 'Viking '),
(69, 22, 'Indoca '),
(70, 22, 'Starvo '),
(72, 34, '3M');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` int(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tempat_l` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `unit_k` varchar(50) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `status` enum('aktif','non aktif','','') NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `level` enum('admin','gudang','maintenance','sdm') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nip`, `alamat`, `tempat_l`, `tgl_lahir`, `unit_k`, `ket`, `status`, `bagian`, `level`) VALUES
(1, 'maulana', 'aff4b352312d5569903d88e0e68d3fbb', 'maulana', 20006934, 'kp.utan rt.02/09', 'jakarta', '0000-00-00', 'arff', 'admin pk', 'aktif', 'prevention', 'admin'),
(2, 'sugeng', '9e28894760bdf11cb2bef7a32c020e3b', 'SUGENG YULIANTO', 20000205, 'default', 'default', '0000-00-00', 'arff', 'MPP', 'non aktif', 'managemen', 'admin'),
(3, 'zaini', 'ec9fdb689330f97c47d2eea5939e387b', 'AHMAD ZAINI', 20002070, 'default', 'default', '0000-00-00', 'arff', 'Quality & Control', 'aktif', 'quality', 'admin'),
(4, 'herman', 'a1a6907c989946085b0e35493786fce3', 'HERMAN TAUFIK', 20002120, 'default', 'default', '0000-00-00', 'arff', 'Assistant Manager of ARFF', 'aktif', 'managemen', 'admin'),
(5, 'bowo', '9b930621eaa7ca7e9f6f584a1450b8a6', 'SLAMET PRABOWO', 20002167, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(6, 'haqqi', 'ca80f0031cb81e570bf97b39d81838a1', 'AHMAD HAQQI ANNAZALI', 20002762, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(7, 'bambang', 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'BAMBANG SETIABUDI', 20003483, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(8, 'erza', '4c3dcfe11bf2fbafc54ae46ec40762b5', 'ERZA AMANAH P', 20004087, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(9, 'jati', 'c9507ca09facaf7bd5d9ab1937bbdeb2', 'JATI PRASETYO', 20004710, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(10, 'hadromi', 'b7034b1e83cc468767aaab6d11c5fdd8', 'HADROMI', 20005022, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', '', 'admin'),
(11, 'anas', '76eb649c047cbecad7c36e71374bc9a5', 'ANAS HUSYAIRI', 20005901, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'non aktif', '', 'admin'),
(12, 'eduar', 'f06fdefa02d8cd842b700677db6b3736', 'EDUAR JAUHARI', 20005899, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', 'prevention', 'admin'),
(13, 'subrata', '78a8f834561c67fa660760d41a61dc62', 'SUBRATA', 20000971, 'default', 'default', '0000-00-00', 'arff', 'Pensiun', 'non aktif', '', 'admin'),
(14, 'rifani', 'd5f2fb6383521b825575d7bcec421e60', 'AHMAD RIFANI', 20002067, 'default', 'default', '0000-00-00', 'arff', 'Komandan Jaga', 'aktif', '', 'admin'),
(15, 'okto', '2ed20177a0b12db6c51a5c51ba24a3a7', 'OKTO PRIANTORO', 20002149, 'default', 'default', '0000-00-00', 'arff', 'Komandan Jaga', 'aktif', '', 'admin'),
(16, 'salamat', '157f61dc3dfda4eb8285c52651442f15', 'SALAMAT ARIADI', 20002161, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(17, 'iwan', '01ccce480c60fcdb67b54f4509ffdb56', 'IWAN KURNIAWAN', 20003301, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(18, 'mahyan', '79fb8949a948235b9a801509a440cbf9', 'MAHYAN SAPUTRA', 20004404, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', 'latihan', 'admin'),
(19, 'rofian', '3b387df0fb0d7a89d1f6334e16e92a32', 'ROFIAN ARMADI', 20004283, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(20, 'wira', '6215f4770ee800ad5402bc02be783c26', 'WIRA ADITYA', 20004735, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(21, 'panji', 'd6b16b990a41b83f81a58d38ad7265f1', 'PANJI DWI LAKSONO', 20005056, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', 'prevention', 'admin'),
(22, 'nurhadi', '808f453201e92ef081d30f744e2e2022', 'NURHADI KUSUMA', 20005902, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'non aktif', '', 'admin'),
(23, 'elvin', '46b40749fea930d3e75210bf1b10f098', 'ELVIN CHANDRA', 20005936, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'non aktif', '', 'admin'),
(24, 'sandi', 'ac9b4e0b6a21758534db2a6324d34a54', 'SANDI PAMUNGKAS', 20006556, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', '', 'admin'),
(25, 'sutrisno', '82e29bc26cd3dd9eff684bb064f1855b', 'SUTRISNO', 20002172, 'default', 'default', '0000-00-00', 'arff', 'Komandan Jaga', 'aktif', '', 'admin'),
(26, 'didid', '44858ec07c85598c5a892773a555edf1', 'DIDID WINARSO', 20002101, 'default', 'default', '0000-00-00', 'arff', 'Komandan Jaga', 'aktif', '', 'admin'),
(27, 'jurjani', 'ed936bdf25bcf3d0b352e55e290903f6', 'AHMAD JURJANI', 20002763, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(28, 'feby', '5f39601acf39067fc179ba7272e0abac', 'FEBY ZANUAR LIANDRI', 20003264, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(29, 'dody', '6613c97ad4ade214711f08961d33373e', 'DODY SURYO DARMADJI', 20005005, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', '', 'admin'),
(30, 'ari', 'fc292bd7df071858c2d0f955545673c1', 'ARI RAMADHANI', 20005898, 'default', 'default', '0000-00-00', 'arff', 'Komandan Regu', 'aktif', '', 'admin'),
(31, 'mediyansa', 'a75e119ceb38f7be936c82ab4862dc86', 'MEDIYANSA PUTRA', 20005900, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', '', 'admin'),
(32, 'roberto', 'c1bfc188dba59d2681648aa0e6ca8c8e', 'ROBERTO SISWANTO', 20006557, 'default', 'default', '0000-00-00', 'arff', 'Senior ARFF', 'aktif', 'prevention', 'admin'),
(33, 'djamaludin', '86a883e02643580ec6a801b40478ff64', 'DJAMALUDIN', 20006885, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', 'prevention', 'admin'),
(34, 'danu', 'a29e5a0efaa2b1521ebea7cf10cd0eab', 'DANU HARTANTOL', 20006876, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(35, 'megan', '99c307a7bcd9067efb2967906eef4b87', 'MEGAN AJI. P', 20006936, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(36, 'ramdhoni', '5f136001946002499886bc557a7159a6', 'MUHAMMAD RAMDHONI', 20006943, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(37, 'kurniawan', '16ca55b4f29157780eabc6244f49d442', 'KURNIAWAN', 20006928, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(38, 'halomoan', '2d7196eba4c9800583d6cf2cb0da23d6', 'HALOMOAN Immanuel Nainggolan', 20006912, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(39, 'fahmi', 'f11d50d63d3891a44c332e46d6d7d561', 'FAHMI JULIANSYAH.R', 20006897, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(40, 'arief', '2fab7eefb328d669c8dde67a91528eb9', 'ARIEF DWI K', 20006864, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(41, 'hilmi', '54befaa93e2d128272e23714eb37b6a7', 'KHAIRY HILMI', 20006926, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(42, 'erji', 'c265e5f001273a0b7a21e9e2b0bb202d', 'ERJHI. P', 20006892, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(43, 'hadiyanto', '9d04c63255ad675a2e0273edef01b063', 'HADIYANTO SAPUTRO', 20006910, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(44, 'lutfi', 'cdb0b6889f4def26f43951b2d5b7a9e3', 'LUTHFI FAUZI. S', 20006930, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', 'staff pleton', 'admin'),
(45, 'erlan', '0289deded04ef5f4bd2577a27bf57c94', 'ERLAN TRISNA. S', 20006893, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(46, 'harry', '3b87c97d15e8eb11e51aa25e9a5770e9', 'HARRY IRAWAN', 20006915, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(47, 'denis', 'c3875d07f44c422f3b3bc019c23e16ae', 'DENIS ARIANDI', 20006879, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(48, 'shaumi', 'a2467ea944c2ce9ba59eb444b0f0495a', 'ARIS SHAUMI', 20006866, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(49, 'ryan', '10c7ccc7a4f0aff03c915c485565b9da', 'RYAN DARMAWAN', 20006977, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', '', 'admin'),
(50, 'deny', '05afb6ce69b9cef1bd6ece7e4745f96c', 'DENY KURNIAWAN', 20007475, 'default', 'default', '0000-00-00', 'arff', 'Junior ARFF', 'aktif', 'staff', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_keluar`
--
ALTER TABLE `b_keluar`
  ADD PRIMARY KEY (`id_k`);

--
-- Indexes for table `b_masuk`
--
ALTER TABLE `b_masuk`
  ADD PRIMARY KEY (`id_m`);

--
-- Indexes for table `b_rusak`
--
ALTER TABLE `b_rusak`
  ADD PRIMARY KEY (`id_br`);

--
-- Indexes for table `d_rusak`
--
ALTER TABLE `d_rusak`
  ADD PRIMARY KEY (`id_dr`);

--
-- Indexes for table `riwayat_data`
--
ALTER TABLE `riwayat_data`
  ADD PRIMARY KEY (`id_rd`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`idb`),
  ADD KEY `kategorib` (`kategorib`),
  ADD KEY `jenisb` (`jenisb`),
  ADD KEY `merkb` (`merkb`);

--
-- Indexes for table `tbl_detailb`
--
ALTER TABLE `tbl_detailb`
  ADD PRIMARY KEY (`id_db`);

--
-- Indexes for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`idj`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`idk`);

--
-- Indexes for table `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  ADD PRIMARY KEY (`idl`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b_keluar`
--
ALTER TABLE `b_keluar`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `b_masuk`
--
ALTER TABLE `b_masuk`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `b_rusak`
--
ALTER TABLE `b_rusak`
  MODIFY `id_br` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_rusak`
--
ALTER TABLE `d_rusak`
  MODIFY `id_dr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `riwayat_data`
--
ALTER TABLE `riwayat_data`
  MODIFY `id_rd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_detailb`
--
ALTER TABLE `tbl_detailb`
  MODIFY `id_db` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `idj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  MODIFY `idl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`kategorib`) REFERENCES `tbl_kategori` (`idk`),
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`jenisb`) REFERENCES `tbl_jenis` (`idj`),
  ADD CONSTRAINT `tbl_barang_ibfk_3` FOREIGN KEY (`merkb`) REFERENCES `tbl_merk` (`idm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
