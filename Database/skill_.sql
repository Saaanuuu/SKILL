-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 07:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skill+`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `domisili` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','mentor','customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `username`, `nama_lengkap`, `tanggal_lahir`, `gender`, `no_hp`, `domisili`, `email`, `password`, `role`) VALUES
(44, 'Admin', NULL, NULL, NULL, NULL, NULL, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(45, 'Mentor', 'Baiq Yusrina Hidayati', '2003-04-30', 'Perempuan', '089534631948', 'Mataram', 'mentor@gmail.com', '23cbeacdea458e9ced9807d6cbe2f4d6', 'mentor'),
(46, 'Amal', 'Insyanu Amal', '2003-07-13', 'Laki-Laki', '087701049922', 'Mataram', 'amal@gmail.com', '16b5480e7b6e68607fe48815d16b5d6d', 'customer'),
(47, 'Arvel', '', '0000-00-00', '', '0', '', 'arvel@gmail.com', '124d05809f54431b91926cd931d5242a', 'customer'),
(48, 'Anggi', 'Baiq Anggita Arsya', '0000-00-00', 'Perempuan', '0812345678987', 'Mataram', 'anggi@gmail.com', '4a283e1f5eb8628c8631718fe87f5917', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bootcamp`
--

CREATE TABLE `admin_bootcamp` (
  `id_bootcamp` int(11) NOT NULL,
  `gambar_bootcamp` text NOT NULL,
  `judul_bootcamp` text NOT NULL,
  `tanggal_bootcamp` text NOT NULL,
  `harga_bootcamp` text NOT NULL,
  `tentang_bootcamp` text NOT NULL,
  `prospek_bootcamp` text NOT NULL,
  `mentor_bootcamp` text NOT NULL,
  `jadwal_bootcamp` text NOT NULL,
  `benefit_bootcamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_bootcamp`
--

INSERT INTO `admin_bootcamp` (`id_bootcamp`, `gambar_bootcamp`, `judul_bootcamp`, `tanggal_bootcamp`, `harga_bootcamp`, `tentang_bootcamp`, `prospek_bootcamp`, `mentor_bootcamp`, `jadwal_bootcamp`, `benefit_bootcamp`) VALUES
(2, 'Array', 'DIGITAL MARKETING: FULLSTACK INTENSIVE BOOTCAMP', '31 Jul 2023 - 15 Sep 2023', 'Rp 1.000.000,00', 'Bootcamp Digital Marketing merupakan pelatihan online secara intensif dan live bersama mentor expert dari Top Companies di Indonesia. Materi Bootcamp ini dirancang secara terstruktur dari dasar hingga lanjut dengan standar industri terkini. Bayangkan dirimu belajar langsung dengan yang menggagas campaign \"Traveloka Dulu, Jalan-jalan Kemudian.\" atau Lemonilo x NCT Dream! Asik, kan? Bootcamp ini dirakit oleh para Head dan Manager Marketing dari:', 'Ikuti Intensive Bootcamp dan dapatkan balik modal secara berlipat dari gaji pertamamu. Berbagai pilihan profesi yang bisa dijalani saat memiliki skill digital marketing:\r\n\r\n💎 Social Media Specialist : Rp 5-15 Juta/bulan.\r\n\r\n💎 Copywriter : Rp 4-12 Juta/bulan.\r\n\r\n💎 Content Writer : Rp 4-13 Juta/bulan.\r\n\r\n💎 SEO/SEM Specialist : Rp 6-15 Juta/bulan.\r\n\r\n💎 Performance Marketing : Rp 8- 15 Juta/bulan.\r\n\r\n💎 Brand Strategist : Rp 6-17 Juta/bulan.\r\n\r\n💎 KOL Management : Rp 3,5 - 12 Juta/bulan.\r\n\r\n💎 Customer Relationship Management : Rp 3,5-16 Juta/bulan.', 'Waitatiri - Lead Copywriter at Zenius Education', 'Setiap hari Senin, Rabu dan Jumat\r\n\r\nPukul 19.30-21.30 WIB', 'Materi Kelas:\r\n\r\n✅ 21 Live Class Bersama Mentor Experts dari Top Companies.\r\n\r\n✅ Tutor berpengalaman dengan level Lead/Manager/Head.\r\n\r\n﻿✅ Latihan dan praktik dengan membuat mini portofolio pada setiap live class.\r\n\r\n✅ Sesi sharing pengalaman bersama expert.\r\n\r\n✅ Terdapat sesi persiapan karir untuk persiapan berkas lamaran kerja (CV, Surat Lamaran Kerja, Interview, Linkedin).'),
(4, '5.png', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `admin_materi`
--

CREATE TABLE `admin_materi` (
  `id_materi` int(11) NOT NULL,
  `judul_materi` text NOT NULL,
  `deskripsi_materi` text NOT NULL,
  `mentor_materi` text NOT NULL,
  `harga_materi` text NOT NULL,
  `gambar_materi` varchar(255) NOT NULL,
  `sertif_materi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_materi`
--

INSERT INTO `admin_materi` (`id_materi`, `judul_materi`, `deskripsi_materi`, `mentor_materi`, `harga_materi`, `gambar_materi`, `sertif_materi`) VALUES
(1, 'Copywriting Introduction', 'Materi ini membahas pengenalan dasar copywriting, sehingga kamu memiliki fondasi copywriting yang baik. Materi ini juga akan membuat kamu mempelajari karir seorang copywriter dan perbedaan copywriting dengan metode tulisan lainnya. Kamu juga akan belajar mengenai media-media yang dapat digunakan untuk melakukan copywriting untuk memaksimalkan kemampuan kamu dalam membuat sebuah tulisan yang memiliki nilai jual.', 'Waitatiri - Lead Copywriter at Zenius Education', 'Rp 100.000,00', '1.png', '1.png'),
(22, 'SEO Fundamentals', 'Pada materi SEO Fundamentals ini, kita akan mempelajari tentang dasar-dasar yang perlu diketahui dan dikuasai tentang SEO. Pengetahuan dasar ini mencakup apa itu SEO, apa saja komponen didalamnya, bagaimana prinsip kerjanya, search result, hingga cara melakukan riset kompetitor. Pada materi kali ini, diharapkan para peserta bisa menguasai semua materi tersebut sebelum beranjak pada materi SEO yang lebih luas lagi di video-video selanjutnya.', 'Septi Riyani Maulida - SEO Manager at IDN Times', 'Rp 150.000,00', '2.png', '2.png'),
(38, 'TikTok Ads Fundamentals', 'Pada rangkaian materi ini kita akan mempelajari dasar dari TikTok Ads. Kamu akan memahami berbagai jenis TikTok Ads sehingga bisa merancang strategi untuk TikTok Ads sesuai kebutuhan.\r\n\r\n', 'Anis Soyyati - Senior Performance Manager at Digital Bank Company', 'Rp 100.000,00', '3.png', '3.png');

-- --------------------------------------------------------

--
-- Table structure for table `materi_elearning`
--

CREATE TABLE `materi_elearning` (
  `id_materiElearning` int(11) NOT NULL,
  `judul_materiElearning` text NOT NULL,
  `deskripsi_materiElearning` text NOT NULL,
  `gambar_materiElearning` varchar(255) NOT NULL,
  `id_materi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi_elearning`
--

INSERT INTO `materi_elearning` (`id_materiElearning`, `judul_materiElearning`, `deskripsi_materiElearning`, `gambar_materiElearning`, `id_materi`) VALUES
(3, 'Copywriting Introduction', 'Materi ini membahas pengenalan dasar copywriting, sehingga kamu memiliki fondasi copywriting yang baik. Materi ini juga akan membuat kamu mempelajari karir seorang copywriter dan perbedaan copywriting dengan metode tulisan lainnya. Kamu juga akan belajar mengenai media-media yang dapat digunakan untuk melakukan copywriting untuk memaksimalkan kemampuan kamu dalam membuat sebuah tulisan yang memiliki nilai jual.', 'WhatsApp Image 2023-06-17 at 15.03.24.jpg', 1),
(34, 'Copywriting Introduction', 'aaaaaaaaaaa', '6.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_elearning`
--

CREATE TABLE `video_elearning` (
  `id_videoElearning` int(11) NOT NULL,
  `judul_videoElearning` varchar(255) NOT NULL,
  `link_videoElearning` varchar(255) NOT NULL,
  `id_materiElearning` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_elearning`
--

INSERT INTO `video_elearning` (`id_videoElearning`, `judul_videoElearning`, `link_videoElearning`, `id_materiElearning`) VALUES
(1, 'Copywriting Introduction\r\n', 'https://www.youtube.com/embed/czubWNv8MYk', 3),
(2, 'Copywriting Goals and Theory\r\n', 'https://www.youtube.com/embed/TCHxpZ8FcQE', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_bootcamp`
--
ALTER TABLE `admin_bootcamp`
  ADD PRIMARY KEY (`id_bootcamp`);

--
-- Indexes for table `admin_materi`
--
ALTER TABLE `admin_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `materi_elearning`
--
ALTER TABLE `materi_elearning`
  ADD PRIMARY KEY (`id_materiElearning`),
  ADD KEY `fk_materi_elearning_admin_materi` (`id_materi`);

--
-- Indexes for table `video_elearning`
--
ALTER TABLE `video_elearning`
  ADD PRIMARY KEY (`id_videoElearning`),
  ADD KEY `fk_video` (`id_materiElearning`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `admin_bootcamp`
--
ALTER TABLE `admin_bootcamp`
  MODIFY `id_bootcamp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_materi`
--
ALTER TABLE `admin_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `materi_elearning`
--
ALTER TABLE `materi_elearning`
  MODIFY `id_materiElearning` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `video_elearning`
--
ALTER TABLE `video_elearning`
  MODIFY `id_videoElearning` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materi_elearning`
--
ALTER TABLE `materi_elearning`
  ADD CONSTRAINT `fk_materi_elearning_admin_materi` FOREIGN KEY (`id_materi`) REFERENCES `admin_materi` (`id_materi`);

--
-- Constraints for table `video_elearning`
--
ALTER TABLE `video_elearning`
  ADD CONSTRAINT `fk_video` FOREIGN KEY (`id_materiElearning`) REFERENCES `materi_elearning` (`id_materiElearning`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
