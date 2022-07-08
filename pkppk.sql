-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 06:36 AM
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
-- Database: `pkppk`
--

-- --------------------------------------------------------

--
-- Table structure for table `b_keluar`
--

CREATE TABLE `b_keluar` (
  `id_k` int(11) NOT NULL,
  `code_b` varchar(50) NOT NULL,
  `nama_k` varchar(100) NOT NULL,
  `b_keluar` int(12) NOT NULL,
  `tgl` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `b_masuk`
--

CREATE TABLE `b_masuk` (
  `id_m` int(11) NOT NULL,
  `code_b` varchar(50) NOT NULL,
  `nama_b` varchar(100) NOT NULL,
  `b_masuk` int(12) NOT NULL,
  `tgl` date NOT NULL,
  `username` varchar(100) NOT NULL,
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
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `idb` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `namab` varchar(50) NOT NULL,
  `kategorib` varchar(50) NOT NULL,
  `jenisb` varchar(20) NOT NULL,
  `merkb` varchar(20) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun_p` date NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `lokasib` varchar(20) NOT NULL,
  `ket` text NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`idb`, `code`, `namab`, `kategorib`, `jenisb`, `merkb`, `stock`, `satuan`, `tahun_p`, `kondisi`, `lokasib`, `ket`, `foto`) VALUES
(1, 'A01', 'APAR', '2', '22', '30', '10', 'Tabung', '2021-01-23', 'baik', '11', '', 'R.png');

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
(2, 2, 'Peralatan Visual'),
(19, 1, 'Self Contain Breathing Apparatus'),
(20, 2, 'Protective Clothing'),
(21, 1, 'Peralatan Evakuasi'),
(22, 2, 'Peralatan Pemadam'),
(23, 1, 'Peralatan P3K'),
(24, 1, 'Respirator'),
(25, 1, 'Forcible Entry Tools'),
(26, 2, 'Rescue Tools Box & Content'),
(27, 1, 'Portable Lighting'),
(28, 2, 'Misselaneous Equipment'),
(29, 1, 'Peralatan Mesin ');

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
(4, 'Bahan Pemadam Pelengkap');

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
(4, 1, 'TOA'),
(5, 1, 'Commax'),
(6, 1, 'Nikon Action '),
(7, 1, 'Nikon Aculon '),
(8, 1, 'Soeba '),
(9, 1, 'Scott'),
(10, 1, 'Eagle'),
(11, 1, 'MSA '),
(12, 1, 'Sekur'),
(13, 1, 'Frenzi'),
(14, 1, 'Shigematsu'),
(15, 1, 'Sedaya'),
(16, 1, 'Keylight'),
(18, 1, 'OSW '),
(19, 1, 'Sri Fire '),
(20, 1, 'Chube Fire '),
(21, 1, 'Protec'),
(22, 1, 'Zeki'),
(23, 1, 'Bullard'),
(24, 1, 'PAB Akrapovic'),
(25, 1, 'PAB Akrapovic / Go Pro'),
(26, 1, 'Yamato'),
(27, 1, 'Adam Firex'),
(29, 2, 'Joys Fire '),
(30, 2, 'Viking '),
(31, 2, 'Indoka '),
(32, 2, 'Starvo '),
(33, 2, 'Eilide Fire '),
(34, 2, 'Philips '),
(35, 2, 'Aero'),
(36, 2, 'Bolle '),
(37, 2, 'Protector'),
(39, 2, 'Safety Jogger'),
(40, 2, 'Para Tech '),
(41, 2, 'Krisbow '),
(42, 2, 'Tekiro '),
(43, 2, 'J-Tech &Krisbow'),
(44, 2, 'ATS & Krisbow'),
(45, 2, 'Multipro & Krisbow '),
(46, 2, 'TEKIRO'),
(47, 2, 'Drager'),
(48, 2, 'HONDA'),
(49, 2, 'BAEUR'),
(50, 2, 'KRISBOW'),
(51, 19, 'STHIL'),
(52, 19, 'Leopard '),
(53, 19, 'Biasa '),
(54, 19, '3M '),
(55, 19, 'Spotlight '),
(57, 19, 'Protek'),
(58, 19, 'Axio '),
(59, 19, 'Acculon '),
(60, 19, 'Action ');

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
  `level` enum('admin','gudang','maintenance','sdm') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nip`, `alamat`, `tempat_l`, `tgl_lahir`, `unit_k`, `ket`, `status`, `level`) VALUES
(1, 'maulana', 'aff4b352312d5569903d88e0e68d3fbb', 'maulana', 20006934, 'kp.utan rt.02/09', 'jakarta', '1994-09-01', 'arff', 'admin pk', 'aktif', 'admin');

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
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`idb`);

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
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b_masuk`
--
ALTER TABLE `b_masuk`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `idj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_lokasi`
--
ALTER TABLE `tbl_lokasi`
  MODIFY `idl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
