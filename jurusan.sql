-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2018 pada 16.47
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jurusan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `nama` varchar(35) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `hobi` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`nama`, `nim`, `kelas`, `jenis_kelamin`, `hobi`, `fakultas`, `alamat`, `password`) VALUES
('Dayana', '6701174029', '04', 'Perempuan', 'Travelling', 'FIT', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posting`
--

CREATE TABLE `posting` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `posting` varchar(300) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posting`
--

INSERT INTO `posting` (`nim`, `nama`, `judul`, `posting`, `gambar`) VALUES
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', ''),
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', ''),
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', ''),
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', ''),
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', ''),
('', '', '', '', ''),
('', '', 'Hanya Ingin Kau Tahu', 'Modifikasi dari soal Jurnal 6 dengan menambahkan :\r\n1. Setelah user melakukan login, user akan berada pada halaman awal yang menampilkan data diri user.\r\n2. Pada halaman awal pengguna terdapat menu untuk melakukan edit yang merupakan link redirect ke halaman editprofile.php', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
