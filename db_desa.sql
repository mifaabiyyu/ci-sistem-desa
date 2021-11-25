-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 09:58 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `belum_menikah`
--

CREATE TABLE `belum_menikah` (
  `id_belum_menikah` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tanggal_belum_menikah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cerai_mati`
--

CREATE TABLE `cerai_mati` (
  `id_cerai_mati` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tanggal_cerai_mati` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domisili`
--

CREATE TABLE `domisili` (
  `id_domisili` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `no_surat_rt` varchar(255) NOT NULL,
  `tanggal_domisili` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domisili`
--

INSERT INTO `domisili` (`id_domisili`, `id_pejabat`, `nik`, `no_surat_rt`, `tanggal_domisili`) VALUES
(7, 1, '1233', '0q1', '2021-09-12'),
(8, 1, '12345', '02', '2021-09-12'),
(9, 3, '123', '007', '2021-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id_kelahiran` bigint(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pukul` time NOT NULL,
  `jenis_kelahiran` varchar(50) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `alamat` varchar(59) NOT NULL,
  `berat_bayi` varchar(10) NOT NULL,
  `panjang_bayi` varchar(10) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `nama_ayah` varchar(20) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `alamat_ayah` varchar(100) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `nama_ibu` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `alamat_ibu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `nik` bigint(16) NOT NULL,
  `nama_kepala_keluarga` varchar(100) NOT NULL,
  `no_kk` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` varchar(20) NOT NULL,
  `rw` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `hari_wafat` varchar(20) NOT NULL,
  `tanggal_wafat` date NOT NULL,
  `pukul` time NOT NULL,
  `sebab_wafat` varchar(50) NOT NULL,
  `tempat_wafat` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `nik_ayah` varchar(50) NOT NULL,
  `nama_ayah` varchar(128) NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `alamat_ayah` varchar(200) NOT NULL,
  `nik_ibu` varchar(50) NOT NULL,
  `nama_ibu` varchar(200) NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `pekerjaan_ibu` varchar(29) NOT NULL,
  `alamat_ibu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menikah`
--

CREATE TABLE `menikah` (
  `id_menikah` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tanggal_menikah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `id_pejabat` int(11) NOT NULL,
  `nama_pejabat` varchar(255) NOT NULL,
  `nip_pejabat` varchar(255) NOT NULL,
  `jabatan_pejabat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pejabat`
--

INSERT INTO `pejabat` (`id_pejabat`, `nama_pejabat`, `nip_pejabat`, `jabatan_pejabat`) VALUES
(1, 'Ryan', '19640112 199203 1 008', 'Kepala Desa'),
(2, 'Rohman', '19640112 199203 1 008', 'Sekertaris Desa'),
(3, 'A. Tibor', '-', 'Kaur Pemerintahan');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `nik` bigint(16) NOT NULL,
  `no_kk` bigint(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `golongan_darah` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`nik`, `no_kk`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `rt`, `rw`, `agama`, `status_perkawinan`, `pendidikan`, `pekerjaan`, `status`, `golongan_darah`, `kewarganegaraan`) VALUES
(1231, 1231, 'asdsd', 'asdasd', '2018-05-09', 'Perempuan', 's', '1', '2', 'Kristen', 'Menikah', 'D3', 'asd', 'Tetap', 's', 'Indonesia'),
(1233, 1111, 'Q', 'Bandunh', '2021-08-02', 'Laki Laki', 'Bandung', '2', '3', 'Kristen', 'Menikah', 'D3', 'Nganggur', 'Tetap', 'B', 'Indonesia'),
(1234, 1234, 'We', 'Surabaya', '2021-09-28', 'Laki Laki', 'A', 'q', 'q', 'Katholik', 'Menikah', 'S2', 'Q', 'Tetap', 'O', 'Indonesia'),
(12345, 1234, 'Putri', 'Blitar', '2021-04-13', 'Perempuan', 'Surabaya', '01', '02', 'Hindu', 'Menikah', 'S1', 'Swasta', 'Tetap', 'B', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `pindah`
--

CREATE TABLE `pindah` (
  `id_pindah` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik_kepala_keluarga` varchar(30) NOT NULL,
  `nik_pemohon` varchar(30) NOT NULL,
  `alasan_pindah` varchar(255) NOT NULL,
  `alamat_pindah` varchar(255) NOT NULL,
  `dusun_pindah` varchar(255) NOT NULL,
  `rt_pindah` varchar(5) NOT NULL,
  `rw_pindah` varchar(5) NOT NULL,
  `desa_pindah` varchar(255) NOT NULL,
  `kecamatan_pindah` varchar(255) NOT NULL,
  `kabupaten_pindah` varchar(255) NOT NULL,
  `provinsi_pindah` varchar(255) NOT NULL,
  `kode_pos_pindah` int(5) NOT NULL,
  `telepon_pindah` varchar(12) NOT NULL,
  `tanggal_pindah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pindahdatang`
--

CREATE TABLE `pindahdatang` (
  `no_kk` bigint(20) NOT NULL,
  `nama_kepala_keluarga` varchar(128) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `rt` varchar(50) NOT NULL,
  `rw` varchar(50) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alasan_pindah` varchar(100) NOT NULL,
  `alamat_tujuan` varchar(100) NOT NULL,
  `jenis_pindah` varchar(100) NOT NULL,
  `klasifikasi_pindah` varchar(100) NOT NULL,
  `status_kk_pindah` varchar(100) NOT NULL,
  `status_kk_tdk_pindah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skck`
--

CREATE TABLE `skck` (
  `id_skck` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tanggal_skck` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sktm_kesehatan`
--

CREATE TABLE `sktm_kesehatan` (
  `id_sktm_kesehatan` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik_anak` varchar(30) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `tanggal_sktm_kesehatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_kelahiran`
--

CREATE TABLE `surat_kelahiran` (
  `id_surat_kelahiran` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik_ayah` varchar(30) NOT NULL,
  `nik_ibu` varchar(30) NOT NULL,
  `nik_pelapor` varchar(30) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `kelamin_anak` varchar(15) NOT NULL,
  `tempat_lahir_anak` varchar(255) NOT NULL,
  `tanggal_lahir_anak` date NOT NULL,
  `jam_lahir_anak` varchar(10) NOT NULL,
  `hari_lahir_anak` varchar(20) NOT NULL,
  `hubungan_sebagai` varchar(100) NOT NULL,
  `tanggal_surat_kelahiran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_kelahiran`
--

INSERT INTO `surat_kelahiran` (`id_surat_kelahiran`, `id_pejabat`, `nik_ayah`, `nik_ibu`, `nik_pelapor`, `nama_anak`, `kelamin_anak`, `tempat_lahir_anak`, `tanggal_lahir_anak`, `jam_lahir_anak`, `hari_lahir_anak`, `hubungan_sebagai`, `tanggal_surat_kelahiran`) VALUES
(8, 1, '1231', '1231', '1234', 'a', 'Perempuan', '2', '2021-11-15', '12:03', 'Selasa', 'a', '2021-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `surat_kematian`
--

CREATE TABLE `surat_kematian` (
  `id_surat_kematian` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nik_pelapor` varchar(30) NOT NULL,
  `umur_pelapor` int(11) NOT NULL,
  `tempat_kematian` varchar(255) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `jam_kematian` varchar(10) NOT NULL,
  `hari_kematian` varchar(20) NOT NULL,
  `sebab_kematian` varchar(255) NOT NULL,
  `hubungan_sebagai` varchar(100) NOT NULL,
  `tanggal_surat_kematian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_kematian`
--

INSERT INTO `surat_kematian` (`id_surat_kematian`, `id_pejabat`, `nik`, `nik_pelapor`, `umur_pelapor`, `tempat_kematian`, `tanggal_kematian`, `jam_kematian`, `hari_kematian`, `sebab_kematian`, `hubungan_sebagai`, `tanggal_surat_kematian`) VALUES
(6, 1, '123', '1231', 14, 'papua', '2021-08-10', '12:34', 'Senin', '', 'anak', '2021-08-13'),
(7, 2, '1233', '1234', 0, 'asd', '2021-11-09', '13:02', 'Selasa', '', '124', '2021-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `usaha`
--

CREATE TABLE `usaha` (
  `id_usaha` int(50) NOT NULL,
  `id_pejabat` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL,
  `sejak_usaha` varchar(4) NOT NULL,
  `tanggal_usaha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `nik` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` binary(60) NOT NULL,
  `level` enum('admin','sekertaris','penduduk') NOT NULL DEFAULT 'penduduk'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nik`, `username`, `password`, `level`) VALUES
(11, 1234, 'sulastri', 0x24327924313024675671527a535172472f7666584f67625854532f6875612e3058753178705170655231496141797538472e5573726a306f36697553, 'penduduk'),
(12, 1, 'admin', 0x24327924313024797665315150394675324f6954695377413863794b756c4332476c54305749586b48506f636e533078386d4443586f4d7837345057, 'admin'),
(13, 12345, 'abc', 0x243279243130247270346e496e39536a4f4f75562f42666168734b632e59393653386a6e755473777244644172476876705057425a42645663426257, 'penduduk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belum_menikah`
--
ALTER TABLE `belum_menikah`
  ADD PRIMARY KEY (`id_belum_menikah`);

--
-- Indexes for table `cerai_mati`
--
ALTER TABLE `cerai_mati`
  ADD PRIMARY KEY (`id_cerai_mati`);

--
-- Indexes for table `domisili`
--
ALTER TABLE `domisili`
  ADD PRIMARY KEY (`id_domisili`);

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id_kelahiran`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `menikah`
--
ALTER TABLE `menikah`
  ADD PRIMARY KEY (`id_menikah`);

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`id_pejabat`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pindah`
--
ALTER TABLE `pindah`
  ADD PRIMARY KEY (`id_pindah`);

--
-- Indexes for table `pindahdatang`
--
ALTER TABLE `pindahdatang`
  ADD PRIMARY KEY (`no_kk`);

--
-- Indexes for table `skck`
--
ALTER TABLE `skck`
  ADD PRIMARY KEY (`id_skck`);

--
-- Indexes for table `sktm_kesehatan`
--
ALTER TABLE `sktm_kesehatan`
  ADD PRIMARY KEY (`id_sktm_kesehatan`);

--
-- Indexes for table `surat_kelahiran`
--
ALTER TABLE `surat_kelahiran`
  ADD PRIMARY KEY (`id_surat_kelahiran`);

--
-- Indexes for table `surat_kematian`
--
ALTER TABLE `surat_kematian`
  ADD PRIMARY KEY (`id_surat_kematian`);

--
-- Indexes for table `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id_usaha`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belum_menikah`
--
ALTER TABLE `belum_menikah`
  MODIFY `id_belum_menikah` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cerai_mati`
--
ALTER TABLE `cerai_mati`
  MODIFY `id_cerai_mati` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `domisili`
--
ALTER TABLE `domisili`
  MODIFY `id_domisili` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `id_kelahiran` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menikah`
--
ALTER TABLE `menikah`
  MODIFY `id_menikah` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pindah`
--
ALTER TABLE `pindah`
  MODIFY `id_pindah` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skck`
--
ALTER TABLE `skck`
  MODIFY `id_skck` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sktm_kesehatan`
--
ALTER TABLE `sktm_kesehatan`
  MODIFY `id_sktm_kesehatan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `surat_kelahiran`
--
ALTER TABLE `surat_kelahiran`
  MODIFY `id_surat_kelahiran` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `surat_kematian`
--
ALTER TABLE `surat_kematian`
  MODIFY `id_surat_kematian` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id_usaha` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
