-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 08:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_pcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(10) NOT NULL,
  `tgl_agenda` date NOT NULL,
  `nama_agenda` varchar(40) NOT NULL,
  `lokasi_agenda` varchar(40) NOT NULL,
  `ket_agenda` text NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amal_usaha`
--

CREATE TABLE `amal_usaha` (
  `id_amal` int(10) NOT NULL,
  `nama_amal` varchar(30) NOT NULL,
  `link_amal` varchar(60) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arsip_administrasi`
--

CREATE TABLE `arsip_administrasi` (
  `id_arsip` int(10) NOT NULL,
  `tgl_arsip` date NOT NULL,
  `no_surat` varchar(40) NOT NULL,
  `upload_surat` varchar(30) NOT NULL,
  `id_kat_arsip` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul_artikel` varchar(50) NOT NULL,
  `tgl_artikel` date NOT NULL,
  `gambar_artikel` varchar(50) NOT NULL,
  `isi_artikel` longtext NOT NULL,
  `sumber_artikel` text NOT NULL,
  `id_kat_artikel` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_doc` int(10) NOT NULL,
  `jenis_doc` varchar(30) NOT NULL,
  `nama_doc` varchar(40) NOT NULL,
  `upload_doc` varchar(40) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_file`
--

CREATE TABLE `download_file` (
  `id_download` int(10) NOT NULL,
  `nama_file` varchar(30) NOT NULL,
  `tgl_file` date NOT NULL,
  `file_download` varchar(40) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_arsip`
--

CREATE TABLE `kategori_arsip` (
  `id_kat_arsip` int(10) NOT NULL,
  `kategori_arsip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id_kat_artikel` int(10) NOT NULL,
  `kategori_artikel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kat_berita` int(10) NOT NULL,
  `kategori_berita` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id_keuangan` int(10) NOT NULL,
  `tgl_keuangan` date NOT NULL,
  `jenis_keuangan` varchar(40) NOT NULL,
  `nominal_keuangan` int(10) NOT NULL,
  `sumber_keuangan` varchar(50) DEFAULT NULL,
  `keterangan_keuangan` text DEFAULT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar_berita`
--

CREATE TABLE `komentar_berita` (
  `id_komentar` int(10) NOT NULL,
  `isi_komentar` text NOT NULL,
  `id_berita` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_sosial`
--

CREATE TABLE `media_sosial` (
  `id_medsos` int(10) NOT NULL,
  `nama_medsos` varchar(30) NOT NULL,
  `link_medsos` text NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ortom`
--

CREATE TABLE `ortom` (
  `id_ortom` int(10) NOT NULL,
  `nama_ortom` varchar(50) NOT NULL,
  `link_ortom` text NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(10) NOT NULL,
  `nama_pengurus` varchar(30) NOT NULL,
  `foto_pengurus` varchar(30) NOT NULL,
  `jk` enum('l','p','','') NOT NULL,
  `tmp_lahir` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat_pengurus` text NOT NULL,
  `tgl_join` date NOT NULL,
  `last_pendidikan` varchar(50) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `status_pengurus` varchar(20) NOT NULL,
  `id_jabatan` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_berita`
--

CREATE TABLE `portal_berita` (
  `id_berita` int(10) NOT NULL,
  `tgl_berita` date NOT NULL,
  `judul_berita` varchar(60) NOT NULL,
  `gambar_berita` varchar(40) NOT NULL,
  `isi_berita` longtext NOT NULL,
  `sumber_berita` varchar(255) DEFAULT NULL,
  `id_kat_berita` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_pcm`
--

CREATE TABLE `profile_pcm` (
  `id_identitas` int(10) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `kata_sambutan` longtext NOT NULL,
  `sejarah` longtext NOT NULL,
  `lampiran_foto` varchar(30) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(10) NOT NULL,
  `nama_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `nama_role`) VALUES
(1, 'admin'),
(2, 'ketua'),
(3, 'bendahara');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_role`) VALUES
(1, 'admin', '$2y$10$3gZdJmS2JMK8ys0ro4ySsOFaHUgjmLmZO', 1),
(2, 'ketua', '$2y$10$hl/nMzoAbsaJ53ffhioT3eM2EfsToIX77', 2),
(3, 'bendahara', '$2y$10$5Xn52OUOLP9gj4b68SNANe1bSfmfE7gtK', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `amal_usaha`
--
ALTER TABLE `amal_usaha`
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `arsip_administrasi`
--
ALTER TABLE `arsip_administrasi`
  ADD PRIMARY KEY (`id_arsip`),
  ADD KEY `id_kat_arsip` (`id_kat_arsip`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_kat_artikel` (`id_kat_artikel`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_doc`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `download_file`
--
ALTER TABLE `download_file`
  ADD PRIMARY KEY (`id_download`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kategori_arsip`
--
ALTER TABLE `kategori_arsip`
  ADD PRIMARY KEY (`id_kat_arsip`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id_kat_artikel`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kat_berita`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_keuangan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `komentar_berita`
--
ALTER TABLE `komentar_berita`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indexes for table `media_sosial`
--
ALTER TABLE `media_sosial`
  ADD PRIMARY KEY (`id_medsos`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `ortom`
--
ALTER TABLE `ortom`
  ADD PRIMARY KEY (`id_ortom`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `portal_berita`
--
ALTER TABLE `portal_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kat_berita` (`id_kat_berita`);

--
-- Indexes for table `profile_pcm`
--
ALTER TABLE `profile_pcm`
  ADD PRIMARY KEY (`id_identitas`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arsip_administrasi`
--
ALTER TABLE `arsip_administrasi`
  MODIFY `id_arsip` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_doc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_file`
--
ALTER TABLE `download_file`
  MODIFY `id_download` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_arsip`
--
ALTER TABLE `kategori_arsip`
  MODIFY `id_kat_arsip` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id_kat_artikel` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kat_berita` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_keuangan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar_berita`
--
ALTER TABLE `komentar_berita`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_sosial`
--
ALTER TABLE `media_sosial`
  MODIFY `id_medsos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ortom`
--
ALTER TABLE `ortom`
  MODIFY `id_ortom` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_berita`
--
ALTER TABLE `portal_berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_pcm`
--
ALTER TABLE `profile_pcm`
  MODIFY `id_identitas` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `amal_usaha`
--
ALTER TABLE `amal_usaha`
  ADD CONSTRAINT `amal_usaha_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `arsip_administrasi`
--
ALTER TABLE `arsip_administrasi`
  ADD CONSTRAINT `arsip_administrasi_ibfk_1` FOREIGN KEY (`id_kat_arsip`) REFERENCES `kategori_arsip` (`id_kat_arsip`),
  ADD CONSTRAINT `arsip_administrasi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_kat_artikel`) REFERENCES `kategori_artikel` (`id_kat_artikel`),
  ADD CONSTRAINT `artikel_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD CONSTRAINT `dokumentasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `download_file`
--
ALTER TABLE `download_file`
  ADD CONSTRAINT `download_file_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD CONSTRAINT `keuangan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `komentar_berita`
--
ALTER TABLE `komentar_berita`
  ADD CONSTRAINT `komentar_berita_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `portal_berita` (`id_berita`);

--
-- Constraints for table `media_sosial`
--
ALTER TABLE `media_sosial`
  ADD CONSTRAINT `media_sosial_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `ortom`
--
ALTER TABLE `ortom`
  ADD CONSTRAINT `ortom_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD CONSTRAINT `pengurus_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`),
  ADD CONSTRAINT `pengurus_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `portal_berita`
--
ALTER TABLE `portal_berita`
  ADD CONSTRAINT `portal_berita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `portal_berita_ibfk_2` FOREIGN KEY (`id_kat_berita`) REFERENCES `kategori_berita` (`id_kat_berita`);

--
-- Constraints for table `profile_pcm`
--
ALTER TABLE `profile_pcm`
  ADD CONSTRAINT `profile_pcm_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
