CREATE DATABASE gndb;

USE `gndb`;

CREATE TABLE `dosen` (
  `dosen_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(255) NOT NULL,
  `jenjang_pendidikan` enum('1, 2, 3') NOT NULL COMMENT '1=S1, 2=S2, 3=S3',
  PRIMARY KEY (`dosen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `info_kampus` (
  `no_kampus` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kampus` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `mata_kuliah` varchar(255) NOT NULL,
  `jenjang` enum('1, 2, 3') NOT NULL COMMENT '1=S1, 2=S2, 3=S3',
  PRIMARY KEY (`no_kampus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `order_kelas` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `kategori` enum('1, 2, 3, 4') NOT NULL COMMENT '1=kelas bahasa, 2=kelas essay, 3=kelas proposal, 4=test bahasa',
  `jenis` enum('1, 2, 3, 4, 5, 6') NOT NULL COMMENT '1=inggris, 2=korea, 3=jepang, 4=mandarin, 5=prediction, 6=resmi',
  `metode_pelaksanaan` enum('1, 2') NOT NULL COMMENT '1=online, 2=offline',
  `payment_track` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `payment` (
  `PaymentNumber` int(11) NOT NULL AUTO_INCREMENT,
  `Jenis_Pembiayaan` enum('1, 2') NOT NULL COMMENT '1=Berbayar, 2=Gratis',
  `Track` varchar(255) NOT NULL,
  PRIMARY KEY (`PaymentNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `pendaftaran_beasiswa` (
  `ID_pendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `id_profil_pendaftar` int(11) NOT NULL,
  `file_ijazah` varchar(255) NOT NULL,
  `file_essay` varchar(255) NOT NULL,
  `file_proposal` varchar(255) NOT NULL,
  `file_sertifikat_bahasa` varchar(255) NOT NULL,
  `file_cv` varchar(255) NOT NULL,
  `file_sertifikat_prestasi` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_pendaftaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `profile_pendaftar_beasiswa` (
  `ID_profile` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pendaftar` varchar(255) NOT NULL,
  `alamat` tinytext NOT NULL,
  `jenis_kelamin` enum('1, 2') NOT NULL COMMENT '1=Laki-laki, 2=Perempuan',
  PRIMARY KEY (`ID_profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `reset_password` (
  `email` varchar(255) NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createDatetime` datetime NOT NULL,
  `role` enum('1, 2, 3') NOT NULL COMMENT '1=user, 2=petugas, 3=admin',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- 2022-10-12 13:00:03