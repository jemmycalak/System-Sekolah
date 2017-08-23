-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2016 at 10:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ss`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrasi`
--

CREATE TABLE IF NOT EXISTS `administrasi` (
  `nis_administrasi` int(11) DEFAULT NULL,
  `dftr_ulang` enum('Lunas') DEFAULT NULL,
  `spp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrasi`
--

INSERT INTO `administrasi` (`nis_administrasi`, `dftr_ulang`, `spp`) VALUES
(1, 'Lunas', 9000),
(2, 'Lunas', 10000),
(1, 'Lunas', 44444);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id` int(11) DEFAULT NULL,
  `nm_guru` char(30) DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `spesialis` int(11) DEFAULT NULL,
  `almt` varchar(50) DEFAULT NULL,
  `stts` enum('Menikah','Single','Janda','Duda') DEFAULT NULL,
  `notelp` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nm_guru`, `jk`, `spesialis`, `almt`, `stts`, `notelp`) VALUES
(1, 'jemmy', 'Laki-Laki', 0, 'aas', 'Single', 34),
(2, 'calak', 'Laki-Laki', 1, 'as', 'Single', 3),
(3, 'sapta', 'Laki-Laki', 2, 'ad', 'Single', 23);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) DEFAULT NULL,
  `kd_mp_jdw` int(11) DEFAULT NULL,
  `id_guru_jdwl` int(11) DEFAULT NULL,
  `id_ruang_jdwl` int(11) DEFAULT NULL,
  `jam_awal` varchar(5) DEFAULT NULL,
  `jam_akhir` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mp`
--

CREATE TABLE IF NOT EXISTS `mp` (
  `id_mp` int(11) DEFAULT NULL,
  `nm_mp` char(30) DEFAULT NULL,
  `id_guru_mp` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp`
--

INSERT INTO `mp` (`id_mp`, `nm_mp`, `id_guru_mp`) VALUES
(0, 'IPA', 1),
(NULL, NULL, NULL),
(1, 'IPA', 0),
(1, 'IPS', 2),
(2, 'MATEMATIKA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `nis_n` int(11) DEFAULT NULL,
  `mp_nil` int(11) DEFAULT NULL,
  `tugas` int(11) DEFAULT NULL,
  `nl_ujian` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nis_n`, `mp_nil`, `tugas`, `nl_ujian`) VALUES
(2, 0, 90, 90),
(1, 0, 90, 90),
(2, 4, 90, 90),
(1, 3, 90, 90),
(2, 4, 90, 90);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
  `id_ruang` int(11) DEFAULT NULL,
  `nm_ruang` varchar(10) DEFAULT NULL,
  `stts` enum('Kosong','Terisi') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nm_ruang`, `stts`) VALUES
(0, 'R00', 'Kosong'),
(1, 'R01', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` int(11) DEFAULT NULL,
  `nama` char(30) DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `nm_ortu` char(30) DEFAULT NULL,
  `no_telp_ortu` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `alamat`, `tempat`, `ttl`, `nm_ortu`, `no_telp_ortu`) VALUES
(1, 'susi meleh', 'Perempuan', 'sd', 'sf', '2016-02-18', 'ads', 34),
(2, 'melek', 'Laki-Laki', 'smp', 'sd', '2016-02-02', 'as', 12);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_administrasi`
--
CREATE TABLE IF NOT EXISTS `view_administrasi` (
`nis` int(11)
,`nama` char(30)
,`dftr_ulang` enum('Lunas')
,`spp` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_guru`
--
CREATE TABLE IF NOT EXISTS `view_guru` (
`id` int(11)
,`nm_guru` char(30)
,`jk` enum('Laki-Laki','Perempuan')
,`nm_mp` char(30)
,`almt` varchar(50)
,`stts` enum('Menikah','Single','Janda','Duda')
,`notelp` int(12)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jadwal`
--
CREATE TABLE IF NOT EXISTS `view_jadwal` (
`nm_mp` char(30)
,`jam_awal` varchar(5)
,`jam_akhir` varchar(5)
,`nm_guru` char(30)
,`nm_ruang` varchar(10)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mp`
--
CREATE TABLE IF NOT EXISTS `view_mp` (
`id_mp` int(11)
,`nm_mp` char(30)
,`nm_guru` char(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_nilai`
--
CREATE TABLE IF NOT EXISTS `view_nilai` (
`nis_n` int(11)
,`nama` char(30)
,`nm_mp` char(30)
,`tugas` int(11)
,`nl_ujian` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `view_administrasi`
--
DROP TABLE IF EXISTS `view_administrasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_administrasi` AS select `siswa`.`nis` AS `nis`,`siswa`.`nama` AS `nama`,`administrasi`.`dftr_ulang` AS `dftr_ulang`,`administrasi`.`spp` AS `spp` from (`administrasi` join `siswa` on((`administrasi`.`nis_administrasi` = `siswa`.`nis`)));

-- --------------------------------------------------------

--
-- Structure for view `view_guru`
--
DROP TABLE IF EXISTS `view_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_guru` AS select `guru`.`id` AS `id`,`guru`.`nm_guru` AS `nm_guru`,`guru`.`jk` AS `jk`,`mp`.`nm_mp` AS `nm_mp`,`guru`.`almt` AS `almt`,`guru`.`stts` AS `stts`,`guru`.`notelp` AS `notelp` from (`guru` join `mp` on((`guru`.`spesialis` = `mp`.`id_mp`)));

-- --------------------------------------------------------

--
-- Structure for view `view_jadwal`
--
DROP TABLE IF EXISTS `view_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal` AS select `mp`.`nm_mp` AS `nm_mp`,`jadwal`.`jam_awal` AS `jam_awal`,`jadwal`.`jam_akhir` AS `jam_akhir`,`guru`.`nm_guru` AS `nm_guru`,`ruang`.`nm_ruang` AS `nm_ruang` from (((`jadwal` join `mp` on((`jadwal`.`kd_mp_jdw` = `mp`.`id_mp`))) join `ruang` on((`jadwal`.`id_ruang_jdwl` = `ruang`.`id_ruang`))) join `guru` on((`jadwal`.`id_guru_jdwl` = `mp`.`id_mp`)));

-- --------------------------------------------------------

--
-- Structure for view `view_mp`
--
DROP TABLE IF EXISTS `view_mp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mp` AS select `mp`.`id_mp` AS `id_mp`,`mp`.`nm_mp` AS `nm_mp`,`guru`.`nm_guru` AS `nm_guru` from (`mp` join `guru` on((`mp`.`id_guru_mp` = `guru`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_nilai`
--
DROP TABLE IF EXISTS `view_nilai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nilai` AS select `nilai`.`nis_n` AS `nis_n`,`siswa`.`nama` AS `nama`,`mp`.`nm_mp` AS `nm_mp`,`nilai`.`tugas` AS `tugas`,`nilai`.`nl_ujian` AS `nl_ujian` from ((`nilai` join `siswa` on((`nilai`.`nis_n` = `siswa`.`nis`))) join `mp` on((`nilai`.`mp_nil` = `mp`.`id_mp`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
