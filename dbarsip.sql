-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Jun 2020 pada 03.21
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbarsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_arsip`
--

CREATE TABLE IF NOT EXISTS `tbl_arsip` (
`id_arsip` int(11) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `prihal` varchar(100) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_arsip`
--

INSERT INTO `tbl_arsip` (`id_arsip`, `no_surat`, `tanggal_surat`, `tanggal_diterima`, `prihal`, `id_departemen`, `id_pengirim`, `file`) VALUES
(2, '2020/IX/001', '2020-06-18', '2020-06-20', 'Undangan Bedah Buku', 4, 6, '-'),
(3, '2020/III/004', '2020-06-20', '2020-06-21', 'Undangan Rapat Kerja', 2, 1, '5eef5df2a5cab.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_departemen`
--

CREATE TABLE IF NOT EXISTS `tbl_departemen` (
`id_departemen` int(11) NOT NULL,
  `nama_departemen` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_departemen`
--

INSERT INTO `tbl_departemen` (`id_departemen`, `nama_departemen`) VALUES
(2, 'LPPM PPKIA'),
(4, 'Perpustakaan'),
(5, 'Akademik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengirim_surat`
--

CREATE TABLE IF NOT EXISTS `tbl_pengirim_surat` (
`id_pengirim_surat` int(11) NOT NULL,
  `nama_pengirim` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengirim_surat`
--

INSERT INTO `tbl_pengirim_surat` (`id_pengirim_surat`, `nama_pengirim`, `alamat`, `no_hp`, `email`) VALUES
(1, 'Pemkot Tarakan', 'Jl. Yos Sudarso No.08', '082350595164', 'pemkot@gmail.com'),
(3, 'Perpustakaan Daerah', 'Lingkas Ujung', '082350595164', 'perpus@gmail.com'),
(6, 'Gramedia', 'Jl. Pangeran', '09808980', 'gramed@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
 ADD PRIMARY KEY (`id_arsip`);

--
-- Indexes for table `tbl_departemen`
--
ALTER TABLE `tbl_departemen`
 ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `tbl_pengirim_surat`
--
ALTER TABLE `tbl_pengirim_surat`
 ADD PRIMARY KEY (`id_pengirim_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_departemen`
--
ALTER TABLE `tbl_departemen`
MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pengirim_surat`
--
ALTER TABLE `tbl_pengirim_surat`
MODIFY `id_pengirim_surat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
