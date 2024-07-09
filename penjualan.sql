-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2024 pada 12.08
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` int(16) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `member` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id`, `nik`, `nama`, `telp`, `email`, `alamat`, `member`) VALUES
(1, 536489782, 'M Iqbal Saputra', '081269547963', 'MIqbal12@gmail.com', 'Jl. Veteran', 'No'),
(2, 794564521, 'Tiara Nia', '087896321459', 'Tiara123@gmail.com', 'Jl. Jahri Saleh', 'No'),
(4, 631254987, 'Khairil Fadhillah', '086347851234', 'Khairil93@gmail.com', 'Jl. Sungai Andai', 'Yes'),
(5, 794613546, 'Ahmad Yasin', '087832694512', 'AhmadYasin@gmail.com', 'Jl. Alalak Utara', 'No');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
