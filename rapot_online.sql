-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Des 2020 pada 10.49
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rapot_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ahp`
--

CREATE TABLE IF NOT EXISTS `tb_ahp` (
  `kd_ahp` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `kd_atitude` int(11) NOT NULL,
  `kd_keaktifan` int(11) NOT NULL,
  `kd_keterampilan` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_atitude`
--

CREATE TABLE IF NOT EXISTS `tb_atitude` (
  `kd_atitude` int(11) NOT NULL,
  `kd_perbandingan` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE IF NOT EXISTS `tb_guru` (
  `kd_guru` int(11) NOT NULL,
  `nip` int(20) NOT NULL,
  `nm_gr` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `jk_gr` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `status_guru` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`kd_guru`, `nip`, `nm_gr`, `alamat`, `status`, `jk_gr`, `foto`, `no_hp`, `status_guru`) VALUES
(1, 98712984, 'abc', 'Jl.aslj', 'aktif', 'Laki-laki', 'foto.jpg', '09184290213', ''),
(2, 12345, 'bambang', 'jalan yg benar', 'aktif', 'Laki-laki', '+62 857-5068-3047 20200519_173804.jpg', '08122222', 'Wali Kelas'),
(3, 11111, 'saya aja', 'Jl sini', 'Aktif', 'Laki-laki', 'Nubia_Main-1280x720.jpg', '09999999', 'Guru Bidang'),
(4, 2147483647, 'yung ary silvia', 'Jl Tidar', 'Aktif', 'perempuan', 'IMG_20190913_053450.jpg', '08000000', 'Wali kelas'),
(6, 2, 'aku', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keaktifan`
--

CREATE TABLE IF NOT EXISTS `tb_keaktifan` (
  `kd_keaktifan` int(11) NOT NULL,
  `kd_perbandingan` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_kelas` (
  `kd_kls` int(11) NOT NULL,
  `kd_guru` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `ruangan` varchar(2) DEFAULT NULL,
  `thn_ajaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`kd_kls`, `kd_guru`, `kd_siswa`, `kelas`, `ruangan`, `thn_ajaran`) VALUES
(1, 2, 1, 'V (lima)', 'A', '2019/2020'),
(2, 2, 3, 'IV (empat)', 'B', '2016/2017'),
(3, 4, 4, 'III (tiga)', 'A', '2019/2020'),
(4, 4, 3, 'III (tiga)', 'A', '2019/2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keterampilan`
--

CREATE TABLE IF NOT EXISTS `tb_keterampilan` (
  `kd_keterampilan` int(11) NOT NULL,
  `kd_perbandingan` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE IF NOT EXISTS `tb_mapel` (
  `kd_mapel` int(11) NOT NULL,
  `kd_kls` int(11) NOT NULL,
  `nm_mapel` varchar(100) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`kd_mapel`, `kd_kls`, `nm_mapel`, `ket`) VALUES
(1, 1, 'Bahasa Indonesia', 'Kelas V'),
(2, 1, 'Matematika', 'Kelas V'),
(5, 1, 'Bahasa Inggris', 'Kelas V'),
(6, 3, 'PJOK', 'Kelas III'),
(7, 3, 'B. INDONESIA', 'Kelas III'),
(8, 3, 'MATEMATIKA', 'Kelas III'),
(9, 3, 'AGAMA', 'Kelas III'),
(10, 3, 'B. INGGRIS', 'Kelas III'),
(11, 3, 'SBK', 'Kelas III'),
(12, 3, 'IPS', 'Kelas III'),
(13, 3, 'Pkn', 'Kelas III'),
(14, 3, 'MULOK', 'Kelas III'),
(15, 3, 'IPA', 'Kelas III');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_harian`
--

CREATE TABLE IF NOT EXISTS `tb_nilai_harian` (
  `kd_nilai_harian` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nilai` varchar(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `kd_mapel` int(11) NOT NULL,
  `absensi` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai_harian`
--

INSERT INTO `tb_nilai_harian` (`kd_nilai_harian`, `tanggal`, `nilai`, `kd_siswa`, `kd_mapel`, `absensi`) VALUES
(2, '2020-06-27', '10', 2, 2, 'Sakit'),
(6, '0000-00-00', '99', 2, 2, 'Hadir'),
(7, '0000-00-00', '10', 4, 1, 'Ijin'),
(8, '2020-07-07', '90', 1, 1, 'Hadir'),
(9, '2020-07-10', '100', 1, 1, 'Hadir'),
(10, '0000-00-00', '987', 1, 1, 'Hadir'),
(11, '0000-00-00', '999', 1, 1, 'Hadir'),
(12, '0000-00-00', '50', 3, 1, 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_perbandingan`
--

CREATE TABLE IF NOT EXISTS `tb_perbandingan` (
  `kd_perbandingan` int(11) NOT NULL,
  `nm_kriteria` varchar(20) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `kd_siswa` int(11) NOT NULL,
  `nis` int(30) NOT NULL,
  `nm_siswa` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tmp_lhr` varchar(100) NOT NULL,
  `tgl_lhr` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `thn_angkatan` varchar(100) NOT NULL,
  `foto_siswa` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `jk_siswa` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`kd_siswa`, `nis`, `nm_siswa`, `alamat`, `tmp_lhr`, `tgl_lhr`, `status`, `thn_angkatan`, `foto_siswa`, `no_hp`, `agama`, `jk_siswa`) VALUES
(1, 12345, 'ijai', 'Jl Situ', 'Sampit', '2020-06-10', 'aktif', '2019/2020', '1.png', '088888888', 'Islam', 'Laki-laki'),
(2, 11111, 'ijum', 'jalan yg benar', 'Palangkaraya', '2020-06-09', 'Aktif', '2019/2020', 'IMG_20190913_053519.jpg', '0811', 'Islam', 'Laki-laki'),
(3, 22222, 'aku', 'Jl situ', 'Sampit', '2020-06-06', 'Aktif', '2019/2020', 'IMG_20190913_053559.jpg', '11111111', 'Islam', 'Laki-laki'),
(4, 33333, 'wxyz', 'Jl. mana aja boleh', 'Seruyan', '0000-00-00', 'Aktif', '2017/2018', 'IMG_20190913_053450.jpg', '000000', 'Islam', 'Perempuan'),
(5, 0, 'Rina', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_uas`
--

CREATE TABLE IF NOT EXISTS `tb_uas` (
  `kd_uas` int(11) NOT NULL,
  `tanggal_uas` varchar(50) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `kd_mapel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_uas`
--

INSERT INTO `tb_uas` (`kd_uas`, `tanggal_uas`, `nilai_uas`, `kd_siswa`, `kd_mapel`) VALUES
(1, '2020-06-19', 70, 2, 2),
(3, '06-17-2020', 25, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(11) NOT NULL,
  `kode_unik` varchar(20) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `kode_unik`, `nama_user`, `pass`, `level`) VALUES
(1, '98712984', 'abc', 'guru', 'guru'),
(2, '1', 'user', 'user', 'admin'),
(3, '33333', 'wxyz', 'wxyz', 'siswa'),
(7, '', 'azhar', 'azhar', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_uts`
--

CREATE TABLE IF NOT EXISTS `tb_uts` (
  `kd_uts` int(11) NOT NULL,
  `tanggal_uts` varchar(50) NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `kd_siswa` int(11) NOT NULL,
  `kd_mapel` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_uts`
--

INSERT INTO `tb_uts` (`kd_uts`, `tanggal_uts`, `nilai_uts`, `kd_siswa`, `kd_mapel`) VALUES
(1, '2020-06-09', 90, 3, 2),
(4, '06-19-2020', 45, 2, 1),
(5, '2020-06-17', 77, 1, 1),
(6, '2020-06-18', 23, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ahp`
--
ALTER TABLE `tb_ahp`
  ADD PRIMARY KEY (`kd_ahp`), ADD KEY `kd_siswa` (`kd_siswa`), ADD KEY `kd_atitude` (`kd_atitude`), ADD KEY `kd_keaktifan` (`kd_keaktifan`), ADD KEY `kd_keterampilan` (`kd_keterampilan`);

--
-- Indexes for table `tb_atitude`
--
ALTER TABLE `tb_atitude`
  ADD PRIMARY KEY (`kd_atitude`), ADD KEY `kd_perbandingan` (`kd_perbandingan`), ADD KEY `kd_siswa` (`kd_siswa`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`kd_guru`);

--
-- Indexes for table `tb_keaktifan`
--
ALTER TABLE `tb_keaktifan`
  ADD PRIMARY KEY (`kd_keaktifan`), ADD KEY `kd_siswa` (`kd_siswa`), ADD KEY `kd_perbandingan` (`kd_perbandingan`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kd_kls`), ADD KEY `kd_guru` (`kd_guru`), ADD KEY `kd_siswa` (`kd_siswa`);

--
-- Indexes for table `tb_keterampilan`
--
ALTER TABLE `tb_keterampilan`
  ADD PRIMARY KEY (`kd_keterampilan`), ADD KEY `kd_perbandingan` (`kd_perbandingan`), ADD KEY `kd_siswa` (`kd_siswa`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`kd_mapel`), ADD KEY `kd_kls` (`kd_kls`);

--
-- Indexes for table `tb_nilai_harian`
--
ALTER TABLE `tb_nilai_harian`
  ADD PRIMARY KEY (`kd_nilai_harian`), ADD KEY `kd_siswa` (`kd_siswa`), ADD KEY `kd_mapel` (`kd_mapel`);

--
-- Indexes for table `tb_perbandingan`
--
ALTER TABLE `tb_perbandingan`
  ADD PRIMARY KEY (`kd_perbandingan`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`kd_siswa`);

--
-- Indexes for table `tb_uas`
--
ALTER TABLE `tb_uas`
  ADD PRIMARY KEY (`kd_uas`), ADD KEY `kd_siswa` (`kd_siswa`), ADD KEY `kd_mapel` (`kd_mapel`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_uts`
--
ALTER TABLE `tb_uts`
  ADD PRIMARY KEY (`kd_uts`), ADD KEY `kd_siswa` (`kd_siswa`), ADD KEY `kd_mapel` (`kd_mapel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_ahp`
--
ALTER TABLE `tb_ahp`
  MODIFY `kd_ahp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_atitude`
--
ALTER TABLE `tb_atitude`
  MODIFY `kd_atitude` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `kd_guru` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_keaktifan`
--
ALTER TABLE `tb_keaktifan`
  MODIFY `kd_keaktifan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kd_kls` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_keterampilan`
--
ALTER TABLE `tb_keterampilan`
  MODIFY `kd_keterampilan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `kd_mapel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_nilai_harian`
--
ALTER TABLE `tb_nilai_harian`
  MODIFY `kd_nilai_harian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_perbandingan`
--
ALTER TABLE `tb_perbandingan`
  MODIFY `kd_perbandingan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `kd_siswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_uas`
--
ALTER TABLE `tb_uas`
  MODIFY `kd_uas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_uts`
--
ALTER TABLE `tb_uts`
  MODIFY `kd_uts` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_ahp`
--
ALTER TABLE `tb_ahp`
ADD CONSTRAINT `tb_ahp_ibfk_1` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`),
ADD CONSTRAINT `tb_ahp_ibfk_2` FOREIGN KEY (`kd_atitude`) REFERENCES `tb_atitude` (`kd_atitude`),
ADD CONSTRAINT `tb_ahp_ibfk_3` FOREIGN KEY (`kd_keaktifan`) REFERENCES `tb_keaktifan` (`kd_keaktifan`),
ADD CONSTRAINT `tb_ahp_ibfk_4` FOREIGN KEY (`kd_keterampilan`) REFERENCES `tb_keterampilan` (`kd_keterampilan`),
ADD CONSTRAINT `tb_ahp_ibfk_5` FOREIGN KEY (`kd_keaktifan`) REFERENCES `tb_keaktifan` (`kd_keaktifan`),
ADD CONSTRAINT `tb_ahp_ibfk_6` FOREIGN KEY (`kd_keterampilan`) REFERENCES `tb_keterampilan` (`kd_keterampilan`);

--
-- Ketidakleluasaan untuk tabel `tb_atitude`
--
ALTER TABLE `tb_atitude`
ADD CONSTRAINT `tb_atitude_ibfk_1` FOREIGN KEY (`kd_perbandingan`) REFERENCES `tb_perbandingan` (`kd_perbandingan`),
ADD CONSTRAINT `tb_atitude_ibfk_2` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`);

--
-- Ketidakleluasaan untuk tabel `tb_keaktifan`
--
ALTER TABLE `tb_keaktifan`
ADD CONSTRAINT `tb_keaktifan_ibfk_1` FOREIGN KEY (`kd_perbandingan`) REFERENCES `tb_perbandingan` (`kd_perbandingan`),
ADD CONSTRAINT `tb_keaktifan_ibfk_2` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`),
ADD CONSTRAINT `tb_keaktifan_ibfk_3` FOREIGN KEY (`kd_perbandingan`) REFERENCES `tb_perbandingan` (`kd_perbandingan`);

--
-- Ketidakleluasaan untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
ADD CONSTRAINT `tb_kelas_ibfk_1` FOREIGN KEY (`kd_guru`) REFERENCES `tb_guru` (`kd_guru`),
ADD CONSTRAINT `tb_kelas_ibfk_2` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`);

--
-- Ketidakleluasaan untuk tabel `tb_keterampilan`
--
ALTER TABLE `tb_keterampilan`
ADD CONSTRAINT `tb_keterampilan_ibfk_1` FOREIGN KEY (`kd_perbandingan`) REFERENCES `tb_perbandingan` (`kd_perbandingan`),
ADD CONSTRAINT `tb_keterampilan_ibfk_2` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`);

--
-- Ketidakleluasaan untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
ADD CONSTRAINT `tb_mapel_ibfk_1` FOREIGN KEY (`kd_kls`) REFERENCES `tb_kelas` (`kd_kls`);

--
-- Ketidakleluasaan untuk tabel `tb_nilai_harian`
--
ALTER TABLE `tb_nilai_harian`
ADD CONSTRAINT `tb_nilai_harian_ibfk_1` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`),
ADD CONSTRAINT `tb_nilai_harian_ibfk_2` FOREIGN KEY (`kd_mapel`) REFERENCES `tb_mapel` (`kd_mapel`);

--
-- Ketidakleluasaan untuk tabel `tb_uas`
--
ALTER TABLE `tb_uas`
ADD CONSTRAINT `tb_uas_ibfk_1` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`),
ADD CONSTRAINT `tb_uas_ibfk_2` FOREIGN KEY (`kd_mapel`) REFERENCES `tb_mapel` (`kd_mapel`);

--
-- Ketidakleluasaan untuk tabel `tb_uts`
--
ALTER TABLE `tb_uts`
ADD CONSTRAINT `tb_uts_ibfk_1` FOREIGN KEY (`kd_siswa`) REFERENCES `tb_siswa` (`kd_siswa`),
ADD CONSTRAINT `tb_uts_ibfk_2` FOREIGN KEY (`kd_mapel`) REFERENCES `tb_mapel` (`kd_mapel`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
