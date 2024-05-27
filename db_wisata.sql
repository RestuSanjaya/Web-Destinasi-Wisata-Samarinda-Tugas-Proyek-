-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2024 pada 13.44
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id_user` int(200) DEFAULT NULL,
  `nama` varchar(200) NOT NULL,
  `nim` int(200) NOT NULL,
  `metode` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id_user`, `nama`, `nim`, `metode`, `email`) VALUES
(NULL, 'Muhammad Ardika', 226661029, 'MTDKU', 'ardikamuhammad@gmail.com');
--
-- Database: `dbpenjualan`
--
CREATE DATABASE IF NOT EXISTS `dbpenjualan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbpenjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kodebrg` int(10) NOT NULL,
  `namabrg` varchar(15) DEFAULT NULL,
  `satuan` varchar(30) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kodebrg`, `namabrg`, `satuan`, `harga`) VALUES
(0, 'Sabun Mandi', 'Barang', 5000),
(1, 'Sikat Gigi', 'Unit', 5000),
(2, 'Pepsodent', 'Buah', 12000),
(3, 'Obat Nyamuk', 'Barang', 5000),
(5, 'Shampoo', 'Unit', 7500),
(9, 'Sabun Giv', 'NULL', 5000),
(10, 'Sabun Sun light', 'Barang', 3000),
(11, 'Spidol', 'kotak', 11000),
(12, 'Sabun LUX', 'Unit', 8000),
(13, 'Spidol', 'Barang', 11000),
(14, 'Sabun LUX', 'Barang', 8000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `copybarang`
--

CREATE TABLE `copybarang` (
  `kode` int(10) NOT NULL,
  `nama` char(35) DEFAULT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(2) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `id_prodi` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata kuliah`
--

CREATE TABLE `mata kuliah` (
  `kd_mk` varchar(7) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(1) NOT NULL,
  `semester` int(2) NOT NULL,
  `id_prodi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(3) NOT NULL,
  `nama_prodi` varchar(50) DEFAULT NULL,
  `id_jurusan` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `id_jurusan`) VALUES
(1, 'Tkenik Komputer', 1),
(3, 'Rekayasa Jalan Jembatan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelperson`
--

CREATE TABLE `tabelperson` (
  `person_id` varchar(10) NOT NULL,
  `f_name` varchar(35) DEFAULT NULL,
  `i_name` varchar(40) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city_id` smallint(11) DEFAULT NULL,
  `state_id` tinyint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelperson`
--

INSERT INTO `tabelperson` (`person_id`, `f_name`, `i_name`, `gender`, `birth_date`, `address`, `city_id`, `state_id`) VALUES
('226661012', 'Fauzi ', 'Ario', 'M', '2022-12-04', 'Palaran', 67, 56),
('226661023', 'Odi', 'Saputra', 'M', '2023-08-03', 'Palaran city', 45, 67),
('226661025', 'Armand', 'Maulana', 'M', '2024-08-02', 'Jl.Mas Penghulu', 45, 54),
('226661028', 'Restu ', 'Sanjaya', 'F', '2012-12-04', 'Mangkupalas', 23, 11),
('226661034', 'Varian', 'Rheza', 'M', '2033-05-03', 'Pelita 4', 56, 78),
('226661041', 'Reza', 'Saputra', 'M', '2013-09-03', 'Sempaja', 45, 67),
('226661042', 'Adhe', 'Ryza', 'M', '2017-08-03', 'Jl.Hasan Basri', 34, 31),
('2266629', 'Muhammad', 'Ardika', 'M', '2030-12-03', 'jl.H.Zahrah', 12, 34),
('2266634', 'Bintang', 'Alkausar', 'M', '2028-09-04', 'JL.makroman', 24, 23),
('2266641', 'Rakhmad ', 'Dhani', 'M', '2022-08-04', 'Lambung Mangkurat', 89, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_favorite_food`
--

CREATE TABLE `tabel_favorite_food` (
  `person_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_favorite_food`
--

INSERT INTO `tabel_favorite_food` (`person_id`, `food_id`) VALUES
('226661023', '1'),
('226661023', '10'),
('226661023', '5'),
('226661025', '4'),
('226661025', '5'),
('226661025', '8'),
('226661028', '9'),
('226661034', '4'),
('226661034', '5'),
('226661034', '7'),
('226661042', '4'),
('2266629', '1'),
('2266629', '2'),
('2266634', '2'),
('2266641', '3'),
('2266641', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_food`
--

CREATE TABLE `tabel_food` (
  `food_id` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `price` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_food`
--

INSERT INTO `tabel_food` (`food_id`, `name`, `price`) VALUES
('1', 'Esteh', 3),
('10', 'Ikan Laut Bakar', 20),
('2', 'Es Jeruk', 4),
('3', 'Nasi Goreng', 12),
('4', 'Mie Mawut', 13),
('5', 'Soto Ayam', 11),
('6', 'Ayam Bakar', 15),
('7', 'Ayam Goreng', 6),
('8', 'Ayam Kecap', 14),
('9', 'Ayam Saos', 15);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebrg`);

--
-- Indeks untuk tabel `copybarang`
--
ALTER TABLE `copybarang`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `mata kuliah`
--
ALTER TABLE `mata kuliah`
  ADD PRIMARY KEY (`kd_mk`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `fk_Jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `tabelperson`
--
ALTER TABLE `tabelperson`
  ADD PRIMARY KEY (`person_id`);

--
-- Indeks untuk tabel `tabel_favorite_food`
--
ALTER TABLE `tabel_favorite_food`
  ADD PRIMARY KEY (`person_id`,`food_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indeks untuk tabel `tabel_food`
--
ALTER TABLE `tabel_food`
  ADD PRIMARY KEY (`food_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `kodebrg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `copybarang`
--
ALTER TABLE `copybarang`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_prodi` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `mata kuliah`
--
ALTER TABLE `mata kuliah`
  ADD CONSTRAINT `mata kuliah_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `fk_Jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Ketidakleluasaan untuk tabel `tabel_favorite_food`
--
ALTER TABLE `tabel_favorite_food`
  ADD CONSTRAINT `tabel_favorite_food_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `tabelperson` (`person_id`),
  ADD CONSTRAINT `tabel_favorite_food_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `tabel_food` (`food_id`);
--
-- Database: `db_penduduk`
--
CREATE DATABASE IF NOT EXISTS `db_penduduk` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_penduduk`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `kd_desa` int(5) NOT NULL,
  `nm_desa` varchar(20) NOT NULL,
  `kd_kecamatan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`kd_desa`, `nm_desa`, `kd_kecamatan`) VALUES
(1, 'Sempaja Selatan', 3),
(2, 'Sempaja Timur', 3),
(3, 'Sempaja Utara', 3),
(4, 'Sidodadi', 1),
(5, 'Karang Joang', 6),
(6, 'Batu Ampar', 6),
(7, 'Timbau', 8),
(8, 'Mangkurawang', 8),
(9, 'Teluk Dalam', 9),
(10, 'Karang Tunggal', 9),
(11, 'Manunggal Daya', 9),
(12, 'Sidomulyo', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kab_kota`
--

CREATE TABLE `kab_kota` (
  `kd_kabkota` int(5) NOT NULL,
  `nm_kabkota` varchar(20) NOT NULL,
  `kd_provinsi` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kab_kota`
--

INSERT INTO `kab_kota` (`kd_kabkota`, `nm_kabkota`, `kd_provinsi`) VALUES
(1, 'Samarinda', 2),
(2, 'Balikpapan', 2),
(3, 'Bontang', 2),
(4, 'Kutai Kartanegara', 2),
(5, 'Kutai Timur', 2),
(6, 'Penajam Paser Utara', 2),
(7, 'Banjarmasin', 3),
(8, 'Tanjung', 3),
(9, 'Surabaya', 5),
(10, 'Sidoarjo', 5),
(11, 'Gresik', 5),
(12, 'Lamongan', 5),
(13, 'Semarang', 6),
(14, 'Kudus', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kd_kecamatan` int(5) NOT NULL,
  `nm_kecamatan` varchar(20) NOT NULL,
  `kd_kabkota` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`kd_kecamatan`, `nm_kecamatan`, `kd_kabkota`) VALUES
(1, 'Samarinda Ulu', 1),
(2, 'Samarinda Ilir', 1),
(3, 'Samarinda Utara', 1),
(4, 'Sungai Kunjang', 1),
(5, 'Samarinda Seberang', 1),
(6, 'Balikpapan Utara', 2),
(7, 'Balikpapan Timur', 2),
(8, 'Tenggarong', 4),
(9, 'Tenggarong Seberang', 4),
(10, 'Loa Janan', 4),
(11, 'Sangatta', 5),
(12, 'Bengalon', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` varchar(15) NOT NULL,
  `nm_penduduk` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `desa` int(5) NOT NULL,
  `kecamatan` int(5) NOT NULL,
  `kab_kota` int(5) NOT NULL,
  `provinsi` int(5) NOT NULL,
  `status_nikah` varchar(1) NOT NULL,
  `status_kerja` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nm_penduduk`, `tgl_lahir`, `agama`, `alamat`, `desa`, `kecamatan`, `kab_kota`, `provinsi`, `status_nikah`, `status_kerja`) VALUES
('2112349', 'Raffi Ahmad', '1998-04-12', 'Islam', 'Jl. Green Andara', 5, 7, 9, 5, '1', '2'),
('12345', 'Wendi Cagur', '1984-11-30', 'Islam', 'Jl. Green Andara', 11, 4, 10, 5, '2', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `kd_provinsi` int(5) NOT NULL,
  `nm_provinsi` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`kd_provinsi`, `nm_provinsi`) VALUES
(1, 'DKI Jakarta'),
(2, 'Kalimantan Timur'),
(3, 'Kalimantan Selatan'),
(4, 'Kalimantan Tengah'),
(5, 'Jawa Timur'),
(6, 'Jawa Tengah'),
(7, 'Jawa Barat'),
(8, 'Banten');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`kd_desa`);

--
-- Indeks untuk tabel `kab_kota`
--
ALTER TABLE `kab_kota`
  ADD PRIMARY KEY (`kd_kabkota`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kd_kecamatan`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kd_provinsi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `kd_desa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kab_kota`
--
ALTER TABLE `kab_kota`
  MODIFY `kd_kabkota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `kd_kecamatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `kd_provinsi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `db_to_do_list`
--
CREATE DATABASE IF NOT EXISTS `db_to_do_list` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_to_do_list`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_wisata`
--
CREATE DATABASE IF NOT EXISTS `db_wisata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_wisata`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`) VALUES
(1, 'Wisata Alam', 'wisataalam.png'),
(2, 'Wisata Belanja', 'wisatabelanja.png'),
(4, 'Wisata Budaya', 'wisatabudaya.png'),
(5, 'Wisata Edukasi', 'wisataedukasi.png'),
(7, 'Wisata Keluarga', 'wisatakeluarga.png'),
(9, 'Wisata Religius', 'wisatareligius.png'),
(86, 'Wisata Pohon', '2.png'),
(87, 'Wisata', 'JembatanMahkota2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `komentar` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate`
--

CREATE TABLE `rate` (
  `id_rate` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `reset_code`) VALUES
(2, 'user2', '321', 'user2@gmail.com', ''),
(3, 'user3', '1234', 'user3@gmail.com', ''),
(26, 'user', '$2y$10$hXZTpY/oW.W6wfTCfrdgge5vLvQo.S9nGXgLh8IAC0az9Y0PMalF.', 'restusanjaya70@gmail.com', '153506');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `folder_gambar` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `gambar4` varchar(255) NOT NULL,
  `gambar5` varchar(255) NOT NULL,
  `gambar6` varchar(255) NOT NULL,
  `gambar7` varchar(255) NOT NULL,
  `gambar8` varchar(255) NOT NULL,
  `gambar9` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `info` text NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `lokasi`, `gambar`, `folder_gambar`, `gambar2`, `gambar3`, `gambar4`, `gambar5`, `gambar6`, `gambar7`, `gambar8`, `gambar9`, `deskripsi`, `info`, `id_kategori`) VALUES
(4, 'Taman Samarendah', 'Jl. Bhayangkara, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bhayangkara, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'tamansamarindasmd.png', 'tamansmd', 'tamansmd2.png', 'tamansmd3.png', 'tamansmd4.png', 'tamansmd5.png', 'tamansmd6.png', 'tamansmd7.png', 'tamansmd8.png', 'tamansmd9.png', 'Sebuah taman yang berada di pusat Kota Samarinda, Provinsi Kalimantan Timur.', 'Taman Samarendah adalah sebuah taman yang berada di pusat Kota Samarinda, Provinsi Kalimantan Timur. Nama taman ini berasal dari penyebutan orang-orang terdahulu yang menyebut Samarinda menjadi Samarendah. Menurut versi Pemkot Samarinda, arti sebenarnya adalah taman yang tampak samar-samar dari kejauhan tapi indah dipandang.\r\n\r\nTaman Samarendah dibangun di lahan seluas 2,5 hektar, khusus untuk taman sendiri berkisar 1,4 hektar. Pembangunan fisik taman dimulai pada Juli 2014 setelah membongkar dua sekolah, yakni SMA Negeri 1 (SMAN 1) dan SMP Negeri 1 (SMPN 1) dan rampung pada tahun 2016.\r\n\r\nTaman Samarendah sudah dipasang dengan lampu hias, jadi pada malam hari tak lagi terlihat seram saat melintas di Taman. Pemasangan lampu taman tak dilakukan begitu saja, melainkan dililitkan di pohon dan beberapa sudut yang terlihat gelap dimalam hari.\r\n\r\nPemerintah Kota Samarinda mengimbau kepada warga agar menjaga dan merawat bersama Taman Samarendah agar tetap indah. Taman Samarendah ini milik kita bersama jadi harus dijaga kebersihan dan keindahannya.', 1),
(5, 'Islamic Center Kaltim', 'Jl. Slamet Riyadi No.1, Tlk. Lerong Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Slamet Riyadi No.1, Tlk. Lerong Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'islamiccentersmd.png', 'islamic', 'islamic1.png', 'islamic2.png', 'islamic3.png', 'islamic4.png', 'islamic5.png', 'islamic6.png', 'islamic7.png', 'islamic8.png', 'Masjid Islamic Center Samarinda menjadi salah satu ikon Kota Samarinda, Kalimantan Timur.\r\n\r\n', 'Masjid Islamic Center Samarinda (MICS) menjadi salah satu ikon Kota Samarinda, Kalimantan Timur (Kaltim). Masjid ini merupakan masjid termegah dan terbesar kedua di Asia Tenggara setelah Masjid Istiqlal Jakarta.\r\n\r\nSecara administratif, Masjid Islamic Center Samarinda terletak di Jl Slamet Riyadi No.1 Karang Asam Ulu, Kelurahan Teluk Lerong Ulu, Kecamatan Sungai Kunjang, Samarinda. Posisinya berada tepat di tepi Sungai Mahakam.\r\n\r\nMasjid ini berdiri kokoh dan menjadi kebanggaan masyarakat setempat. Masjid Islamic Center Samarinda tidak hanya dijadikan sebagai tempat ibadah, melainkan pusat peradaban dan wisata religi.\r\n', 9),
(6, 'Stadion Segiri', 'JL. Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'stadionsegiri.png', 'segiri', 'segiri1.png', 'segiri2.png', 'segiri3.png', 'segiri4.png', 'segiri5.png', 'segiri6.png', 'segiri7.png', 'segiri8.png', 'Sebuah stadion yang berlokasi di pusat kota Samarinda, Kalimantan Timur.', ' dibangun pada masa yang bersamaan dengan pembangunan Balai Kota Samarinda pada sekitar tahun 1960-1970 Dilakukan renovasi pada tahun 2008 sebagai persiapan pelaksanaan PON XVII. Pada tahun 2023 Stadion Segiri Kota Samarinda menjadi salah satu dari 22 stadion di Indonesia yang akan direnovasi oleh Kementrian Pekerjaan Umum dan Perumahan Rakyat (PUPR) Republik Indonesia awal tahun 2024 mendatang karena termasuk stadion dengan kerusakan ringan. Anggaran yang digelontorkan kurang lebih Rp80 miliar. Renovasi ini bertujuan untuk memperbaharui dan meningkatkan standar fasilitas stadion.\r\n\r\nStadion Segiri Samarinda, Kalimantan Timur merupakan stadion sepak bola kandang dari juara divisi utama indonesia 2014 ( Sekarang Berubah Menjadi Liga 2 Indonesia ) Borneo FC Samarinda.\r\n\r\nMerupakan salah satu stadion yang representatif yang dimiliki Kota Samarinda selain Stadion Utama Palaran dan Stadion Gelora Kadrie Oening. ', 7),
(7, 'Masjid Raya Darussalam', 'Jalan K.H. Abdullah Marisie No. 1, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75111', 'Jalan K.H. Abdullah Marisie No. 1, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75111', 'Mesjidraya.png', 'mesjidraya', 'raya1.png', 'raya2.png', 'raya3.png', 'raya4.png', 'raya5.png', 'raya6.png', 'raya7.png', 'raya8.png', 'Masjid terbesar kedua di provinsi Kalimantan Timur setelah Masjid Islamic Center Samarinda.', 'Masjid Raya Darrusalam adalah masjid terbesar kedua di provinsi Kalimantan Timur setelah Masjid Islamic Center Samarinda yang tepatnya berada di kelurahan Pasar Pagi, Samarinda Ilir, Samarinda. Masjid ini berada di tengah-tengah Kota Samarinda. Ciri yang mudah dilihat adalah, masjid ini memiliki 1 kubah besar dan beberapa kubah kecil yang berdampingan dengan kubah besar yang berwarna hijau dan memiliki 4 buah menara. Masjid ini berada di sisi Sungai Mahakam. ', 9),
(8, 'Jembatan Mahkota 2', 'Jl. Kapten Soedjono Aj, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'Jl. Kapten Soedjono Aj, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'jembatanmahkotadua.png', 'mahkota', 'mahkota1.png', 'mahkota2.png', 'mahkota3.png', 'mahkota4.png', 'mahkota5.png', 'mahkota6.png', 'mahkota7.png', 'mahkota8.png', 'Jembatan yang menghubungkan Sungai Kapih, kecamatan Sambutan di kota Samarinda.', 'Sejak digagas pembangunannya hingga diresmikan jembatan ini dinamakan Mahkota II (Mahakam Kota II) karena merupakan jembatan kedua yang dibangun di wilayah Kota Samarinda setelah Jembatan Mahakam (atau Mahkota I).[1]. Pada 10 Juni 2021 jembatan ini berganti nama menjadi Jembatan Achmad Amins.[2] Ia merupakan wali kota Samarinda ke-8 yang mulai memerintah pada periode 2000â€“2005. ', 7),
(9, 'Big Mall', 'Jl. Untung Suropati No.08, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Untung Suropati No.08, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'bigmallsmd.png', 'bigmall', 'bm1.png', 'bm2.png', 'bm3.png', 'bm4.png', 'bm5.png', 'bm6.png', 'bm7.png', 'bm8.png', 'Salah satu Pusat perbelanjaan terlengkap dan terbesar di kota Samarinda Kalimantan Timur.', 'Big Mall Samarinda adalah pusat perbelanjaan lengkap dan terbesar di Samarinda, Kalimantan Timur dan salah satu mal yang terbesar di Kalimantan. Mal ini telah dibuka untuk umum sejak tahun 2014. Para wisatawan maupun warga lokal menjadikan mal ini salah satu pilihan dalam rekreasinya, khususnya untuk berbelanja kebutuhan hidup sehari-hari. ', 2),
(12, 'Taman Tepian Mahakam', 'Jl. Gajah Mada, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Gajah Mada, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'tepianmahakam.png', 'tepian', 'tepian1.png', 'tepian2.png', 'tepian3.png', 'tepian4.png', 'tepian5.png', 'tepian6.png', 'tepian7.png', 'tepian8.png', 'Salah satu area teduh di Sungai Mahakam dengan panorama matahari terbenam.\r\n', 'Taman Tepian Mahakam adalah salah satu tempat yang terkenal dan sangat diminati oleh masyarakat sekitar untuk dikunjungi. \r\n\r\nTaman ini memang belum lama dibuka, setelah pembangunannya yang cukup lama dan memakan biaya 14 miliar rupiah. Kondisi taman ini sendiri masih dalam tahap pengembangan, beberapa kekurangan fasilitas masih terus dibangun oleh pihak pengelola.', 1),
(13, 'Citra Niaga', 'Jl. Niaga Utara, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Niaga Utara, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'citraniaga.png', 'citraniaga', 'citra1.png', 'citra2.png', 'citra3.png', 'citra4.png', 'citra5.png', 'citra6.png', 'citra7.png', 'citra8.png', 'Kawasan pusat perdagangan di Kota Samarinda, Kalimantan Timur.', 'Sebagian bangunan Citra Niaga di sisi timur telah mengalami perubahan fungsi. Bangunan berlantai dua dengan struktur permanen tersebut awalnya memiliki gang (alley) di bagian dalam yang bisa dilalui pengunjung dengan penghawaan alami. Selanjutnya seluruh bagian tersebut ditutup dan berubah menjadi sebuah department store yang tertutup. Menyisakan bagian barat untuk pedagang kecil dan plaza di tengah.\r\n\r\nCitra Niaga mengalami kebakaran pada 31 Oktober 2006 dan kemudian dibangun kembali namun tidak persis sama dengan kondisi awal dibangun dan merupakan pusat kerajinan tradisional di kota Samarinda. Perubahan terjadi pada bahan bangunan dimana sebelumnya seluruh bahan dinding dan atap dari sirap kayu ulin, diganti dengan bahan-bahan non kayu dan non kayu ulin. ', 2),
(14, 'Jessica Water Park', 'Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75242', 'jessicawaterpark.png', 'pesona', 'pm1.png', 'pm2.png', 'pm3.png', 'pm4.png', 'pm5.png', '', '', '', 'Tempat wisata keluarga berisi kolam renang dengan aneka wahana air yang cukup lengkap.', 'Kolam berenang Jessica Waterpark adalah kolam bereang yang terletak di perumahan Pesona Mahakam. Di kolam ini juga menyajikan banyak wahana seperti perosotan dan juga banyak wahana lain yang dapat di nikmati oleh seluruh pengunjung.', 7),
(15, 'Taman Lampion Mahakam', 'Jl. Slamet Riyadi No.75, Karang Asam Ilir, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Jl. Slamet Riyadi No.75, Karang Asam Ilir, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'mahakamlampiongarden.png', 'mlg', 'mlg1.png', 'mlg2.png', 'mlg3.png', 'mlg4.png', 'mlg5.png', 'mlg6.png', 'mlg7.png', 'mlg8.png', 'Taman Lampion Mahakam adalah taman berisikan lampion-lampion.', 'Taman Lampion Mahakam adalah sebutan bagi taman tersebut, taman ini berisikan lampion-lampion berbentuk bangunan ataupun benda-benda unik yang akan bercahaya pada malam hari.', 7),
(16, 'Kampung Tenun Samarinda', 'Gg. Pertenunan Jl. Hos Cokro Aminoto, Baqa, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75133', 'Gg. Pertenunan Jl. Hos Cokro Aminoto, Baqa, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75133', 'kampungtenuncagarbudaya.png', 'tenun', 'tenun1.png', 'tenun2.png', 'tenun3.png', 'tenun4.png', 'tenun5.png', 'tenun6.png', 'tenun7.png', 'tenun8.png', 'Sebuah kampung yang warganya berprofesi sebagai pengrajin sarung tenun samarinda.', 'Para perempuan di perkampungan ini tampak beraktivitas merajut benang-benang di atas alat tenun \"Gedokan\". Mereka mengayunkan alat itu dengan penuh asa guna menjaga tradisi, menghasilkan karya khas sarung Samarinda.\r\n', 4),
(17, 'Kolam Tjiu Palace', 'Jl. Sultan Sulaiman No.6, Sambutan, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'Jl. Sultan Sulaiman No.6, Sambutan, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'kolamtjiupalace.png', 'tiju', 'tiju1.png', 'tiju2.png', 'tiju3.png', 'tiju4.png', 'tiju5.png', 'tiju6.png', 'tiju7.png', 'tiju8.png', 'Kolam Wisata Tjiu Palace sebagai salah satu kolam wisata yang hits. ', 'Tjiuâ€™s Palace menawarkan berbagai fasilitas dan pilihan bagi para pengunjung, mulai dari kolam pancing kiloan, kolam pancing lomba, lapangan futsal, restoran terapung, sepeda air, hingga kafe tenda. Selain itu, tempat ini juga menyediakan toilet, musala, dan karyawan yang ramah dan siap melayani.', 7),
(18, 'Jungle Water World', 'Km. 24, Guntunglai, Jl. Poros Samarinda - Bontang, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'Km. 24, Guntunglai, Jl. Poros Samarinda - Bontang, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'junglewaterworld.png', 'jungle', 'jungel1.png', 'jungle2.png', 'jungl3.png', 'jungle4.png', 'jungle5.png', 'jungle6.png', 'jungle7.png', 'jungle8.png', 'Wisata di tengah dedaunan tropis dengan taman bermain air, kolam renang, dan lain-lain. ', 'Jungle Water World Samarinda adalah taman wisata danau, kolam renang dan outbond yang menawarkan fasilitas lengkap dengan situasi yang bernuansa hutan. Selain wadah behanyut, tempat wisata ini juga memiliki berbagai macam wadah lain, seperti wadah becabur, wadah bekucak, wadah berandam, wadah beseluncur, wadah bekunyung, wadah bekayuh, wadah belicak, wadah berumpak, dan wadah tatamba lapar resto. Tempat wisata ini juga menyediakan pulau, outbond, dan zip line coaster untuk pengunjung yang ingin merasakan sensasi berbeda.', 7),
(19, 'Desa Budaya Pampang', 'Jl. Wisata Budaya Pampang, No.32, RT.03, Kelurahan Budaya Pampang, Kec Samarinda Utara, Sungai Siring, Kota Samarinda, Kalimantan Timur 75119', 'Jl. Wisata Budaya Pampang, No.32, RT.03, Kelurahan Budaya Pampang, Kec Samarinda Utara, Sungai Siring, Kota Samarinda, Kalimantan Timur 75119', 'pampang.png', 'pampang', 'desa1.png', 'desa2.png', 'desa3.png', 'desa4.png', 'desa5.png', 'desa6.png', 'desa7.png', 'desa8.png', 'Desa adat dari Ibukota Provinsi Kalimantan Timur. Di sana bisa belajar soal suku Dayak.', 'Desa Budaya Pampang adalah destinasi wisata andalan di Samarinda. Disini wisatawan bisa mengenal banyak hal tentang Kalimantan khususnya suku Dayak. Berbagai hal tentang Dayak yang dapat disaksikan mulai dari tarian, rumah adat, seni rupa, dan lain-lain, bahkan berfoto bersama manusia bertelinga panjang. ', 4),
(20, 'Grand Tamansari', 'Jl. H. A. M. Rifaddin, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75131.', 'Jl. H. A. M. Rifaddin, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75131.', 'tamansarigrand.png', '', 'danau1.png', 'danau2.png', 'danau3.png', 'danau4.png', 'danau5.png', 'danau6.png', 'danau7.png', 'danau8.png', 'Perpaduan sempurna antara hunian yang eksklusif di tengah hijaunya alam borneo.', 'Danau GTS merupakan danau yang terletak di kawasan perumahan elite Grand Taman Sari. Tempat ini juga sering dikunjungi para kaum muda untuk menikmati matahari terbenam.', 7),
(21, 'Taman Salma Shofa ', 'Jl. Kalan Luas No.Desa, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75241', 'Jl. Kalan Luas No.Desa, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75241', 'salmasofa.png', '', 'salma1.png', 'salma2.png', 'salma3.png', 'salma4.png', 'salma5.png', 'salma6.png', 'salma7.png', 'salma8.png', 'Salah satu Taman Di Samarinda, Kalimantan Timur.', 'Taman Salma Shofa sudah jadi favorit warga Samarinda kalau ingin berenang. Usianya sudah satu dekade lebih. Di balik perkembangannya, Shalma Shofa punya cerita unik ketika awal pembangungan. Kota Samarinda didominasi oleh destinasi wisata keluarga. Satu di antaranya Taman Salma Shofa yang sudah cukup hits di kalangan warga Samarinda. Sebagai tempat wisata kolam renang dan punya daya tarik lainnya. Keberadaan Salma Shofa sendiri sebagai wisata kolam renang usianya sudah satu dekade lebih. Bukti kalau peminatnya selalu ada. Seiring berjalannya waktu, destinasi ini terus berkembang. Fasilitasnya lengkap. Ada museum mini. Dan belakangan sudah ada fasilitas outdoor. ', 7),
(22, 'Pinang Seribu', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75127', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75127', 'airterjunpinangseribu.png', '', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Air terjun ini memiliki bentuk yang unik dan nampak seperti tangga.', 'Air Terjun Pinang Seribu hanya 14km dari Swiss-Belhotel Borneo Samarinda. Dan dapat ditempuh dengan berkendara melalui Jalan Pinang Seribu sekitar 40 menit.\r\nAir Terjun Pinang Seribu adalah tujuan wisata paling digemari para wisatawan di Samarinda. Air terjun ini memiliki bentuk yang unik dan nampak seperti tangga. Aliran airnya tidak terlalu kencang, membuatnya aman untuk anak-anak.\r\nSelain menikmati pemandangan air terjun dan kesegaran udara dari hutan yang ada, Anda juga dapat bermain water cycle, rock climbing, memancing, flying fox atau hanya sekedar santai di gazebo. tempat ini juga digunakan sebagai area outbond. Air Terjun Pinang Seribu juga dilengkapi dengan fasilitas seperti gazebo or mini hut, toilet, food court, rest area and parking space.', 1),
(23, 'Buddhist Centre', 'Jalan Donald Isaac Panjaitan RT.20, RW No.68, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', 'Jalan Donald Isaac Panjaitan RT.20, RW No.68, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75243', 'mahaviharasejahteramaitreya.png', 'budha', 'b1.png', 'b2.png', 'b3.png', 'b4.png', 'b5.png', 'b6.png', 'b7.png', 'b8.png', 'Maha Vihara Sejahtera Maitreya adalah sebuah bangunan Vihara Pusat.', 'Buddhist Center telah dikerjakan sejak tahun 2008 atau kurang lebih delapan tahun. Buddhist Center terdiri dari tiga bangunan yang berhubungan. Bangunan utama terdiri dari tiga lantai. Bangunan di sisi kiri dan kanan terdiri dari lima lantai.Buddhist Center ini adalah yang terbesar di Asia Tenggara, dan akan menajdi rujukan umat Buddha untuk wilayah Indonesia Timur. Buddhist Center akan menjadi wahana wisata religi dan wisata budaya, juga akan menjadi pusat pendidikan dan latihan (Pusdiklat) calon para biarawan dan biarawati untuk Indonesia Wilayah Timur.', 9),
(24, 'Penangkaran Buaya Makroman', 'Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75114', 'Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75114', 'buayamakroman.png', 'buaya', 'buaya1.png', 'buaya2.png', 'buaya3.png', 'buaya4.png', 'buaya5.png', 'buaya6.png', 'buaya7.png', 'buaya8.png', 'Tempat wisata alam seluas kurang lebih 7 hektar.', 'Penangkaran buaya ini baru dikenal orang sekitar awal abad ke-20. Sebagian besar dari generasi awal dalam penangkaran buaya ini lebih tertuju untuk keperluan atraksi bagi turis saja. Bukan untuk mengembangbiakkan buaya lalu diambil produknya. Kemudian pada tahun 1960 an operasi komersial untuk menghasilkan produk dari buaya mulai dilakukan. seperti mengambil telur buaya dari alam liar, atau dengan cara mengembangbiakkan buaya di dalam penangkaran. Hal ini dilakukan karena semakin punahnya populasi buaya di alam liar. Dan beberapa dari buaya tersebut dalam ancaman kepunahan.', 1),
(25, 'Rumah Ulin Arya', 'Jalan Teluk Batu Jl. Bayur No.RT.20, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'Jalan Teluk Batu Jl. Bayur No.RT.20, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'rumahulinarya.png', 'ulinarya', 'a1.png', 'a2.png', 'a3.png', 'a4.png', 'a5.png', 'a6.png', 'a7.png', 'a8.png', 'Burung, reptil, dan mamalia dipamerkan di pusat pengunjung hutan.', 'Rumah Ulin Arya, merupakan tempat wisata di Kota Samarinda yang  INSTAGRAMABLE,  terletak  dengan luas area Â± 3 Hektare. RUA menawarkan konsep sangat menarik bahkan bisa di sebut sebagai salah satu pelopor wahana yg menawarkan 2 wahana /Fasilitas dalam 1 tempat.kemudian di wahana alam juga memiliki beberapa spot-spot yang bagus dan mendukung seperti Rumah Ulin, Rumah Kaca, Cottages, Mini Farm ( di isi Binatang-binatang lucu dan menarik seperti Kelinci,Burung Merak, Burung Hantu, Burung Unta, Burung Macaw, Burung Merpati, Binturong, Rakun, Meerkat, kura-kura, Iguana ), Hidden CafÃ©, Arya,s Playground, Camping Ground, Meeting Room, Private Library, Labirin, Kids Playground, Sarang Burung Raksasa, Botanical Garden dan ditambah beberapa fasilitas yaitu Pendopo (dilengkapi wifi, infocus, whiteboard dan Karaoke) serta ada beberapa Gazebo yang bisa di gunakan.', 7),
(26, 'Pemandian Serayu Lestari', 'Jl. Serayu No.24, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'Jl. Serayu No.24, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'pemandianserayulestari.png', 'serayu', 's1.png', 's2.png', 's3.png', 's4.png', 's5.png', 's6.png', 's7.png', 's8.png', 'Salah satu objek Wisata yang terletak di kawasan Tanah Merah.', 'Salah satu objek Wisata yang terletak di kawasan Tanah Merah Kota Samarinda. Lokasinya mudah di cari dan di jangkau dengan kendaraan Roda 4 dan 2 dengan lahan parkir yang cukup luas. Area tempat wisata nya yang bersih, terdapat wahana kolam renang untuk dewasa dan anak2 yang cukup besar. Ada wahana flying fox juga. Fasilitas yang tersedia disini terdapat beberapa pendopo untuk duduk2 santai, ada toilet ruang ganti dan Warung. Pendopo bisa di sewa untuk family. Mengasyikan bersantai, bermain dan berenang disini. Recommended bagi kalian yang ingin berkunjung ke Samarinda untuk datang ke Pemandian ini.', 7),
(27, 'Air Terjun Berambai', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', 'Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', 'terjunberambai.png', 'berambai', 'br1.png', 'br2.png', 'br3.png', 'br4.png', 'br5.png', 'br6.png', 'br7.png', 'br8.png', 'Air Terjun Berambai salah satu destinasi wisata di Samarinda.', 'Air Terjun Berambai merupakan salah satu destinasi wisata yang ada di Samarinda. Tempat wisata ini memang kurang begitu populer jika dibandingkan dengan tempat wisata seperti pantai atau pulau yang ada di sekitar Samarinda.Air terjun ini memiliki pesona yang sangat menakjubkan, membuat siapapun yang pernah berkunjung ke sini mengalami pengalaman yang tak terlupakan. Lokasi wisata ini cukup tersembunyi, dengan keindahannya yang sangat menawan.', 1),
(28, 'Mesra Indah', 'Jl. KH. Khalid No.mor 42, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. KH. Khalid No.mor 42, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'mesraindah.png', 'mesra', 'mesra1.png', 'mesra2.png', 'mesra3.png', 'mesra4.png', 'mesra5.png', 'mesra6.png', 'mesra7.png', 'mesra8.png', 'Mal Mesra Indah adalah pusat perbelanjaan  di Samarinda.\r\n ', 'Mal Mesra Indah adalah pusat perbelanjaan empat lantai yang pertama berdiri di tahun 1980an di Kota Samarinda terletak di Jalan K.H. Khalid, merupakan daerah tersibuk di Samarinda. Mal ini dimiliki oleh pengusaha lokal dengan perusahaan yang bernaung di bawah Grup Mesra, milik Haji Rusli.\r\n\r\nLokasinya yang berada di pusat keramaian; yaitu di antara kawasan Citra Niaga dan Pasar Pagi membuat pengunjung Mesra Indah selalu ada. ', 2),
(29, 'Plaza Mulia', 'Jl. P. Irian No.1, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', 'Jl. P. Irian No.1, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', 'plazamulia.png', 'plaza', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Mal ini memiliki retailer lokal & internasional & resto.', 'PT. Selyca Mulia membangun sebuah Mall dengan luas area 66.600 M2, yang di beri nama Plaza Mulia Samarinda. Sesuai dengan namanya, Mall tersebut berlokasi di kota Samarinda - Kalimantan Timur, yang mempunyai 5 lantai.', 2),
(30, 'Samarinda Square', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'samarindasquare.png', 'ss', 'm1.png', 'm2.png', 'm3.png', 'm4.png', 'm5.png', 'm6.png', 'm7.png', 'm8.png', 'Sebuah pusat belanja modern yang terdapat di Kota Samarinda.\r\n', 'Samarinda Square adalah sebuah pusat belanja modern yang terdapat di Kota Samarinda terletak di Jalan M. Yamin sedikit ke arah utara dari Mal Lembuswana menuju arah Sempaja. ', 2),
(31, 'Vihara Muladharma', 'Jl. PM. Noor No.9, Sempaja Timur, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'Jl. PM. Noor No.9, Sempaja Timur, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75119', 'viharamuladharma.png', 'vihara', 'v1.png', 'v2.png', 'v3.png', 'v4.png', 'v5.png', 'v6.png', 'v7.png', 'v8.png', 'Ini adalah kuil Theravada Buddha yang dibangun 25 tahun yang lalu.', 'Ini adalah kuil Buddha Theravada yang dibangun 25 tahun yang lalu dan merupakan tempat yang cocok bagi mereka yang ingin belajar agama Buddha karena ada seorang biksu yang tinggal di kuil tersebut hampir sepanjang waktu.', 9),
(32, 'Eco Borneo Tour', 'Jl. Gunung Merbabu No.01, RT.06, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75122', 'Jl. Gunung Merbabu No.01, RT.06, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75122', 'ecoborneotour.png', 'borneo', 'e1.png', 'e2.png', 'e3.png', 'e4.png', 'e5.png', 'e6.png', 'e7.png', 'e8.png', 'Liburan Anda di Kalimantan yang menyenangkan dan ajaib.\r\n', 'Disini anda bisa menjelajahi hutan Kalimantan dan bisa melihat para hewan seperti Orang Utan, Burung, Gajah di habitat aslinya.', 1),
(33, 'Air Terjun Tanah Merah', 'Jl. Muara Badak - Samarinda, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'Jl. Muara Badak - Samarinda, Tanah Merah, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75116', 'airterjuntanahmerah.png', '', '', '', '', '', '', '', '', '', 'Air Terjun ini hanya memiliki ketinggian  15 meter saja.', '', 1),
(34, 'Samarinda Central Plaza ', 'Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bhayangkara No.58, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'l2.png', 'scp', 'l1.png', 'l2.png', 'l3.png', 'l4.png', 'l5.png', 'l6.png', 'l7.png', 'l8.png', 'Plaza Mulia adalah salah satu mall di Samarinda, Kalimantan Timur.', 'Samarinda Central Plaza berlokasi strategis di pusat kota Samarinda. Samarinda Central Plaza telah menjadi pusat perbelanjaan terbesar dan menjadi landmark kota Samarinda. Samarinda Central Plaza didirikan pada tahun 2001. Merupakan destinasi belanja dan rekreasi favorit bagi penduduk lokal dan kota sekitarnya. Mall ini telah tertanam di hati masyarakat Samarinda dan menjadi ikon kota Samarinda.', 2),
(35, 'Planet Swalayan Samarinda', 'Jl. Rajawali No.80, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Jl. Rajawali No.80, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'planetswalayan.png', '', '', '', '', '', '', '', '', '', 'Salah satu wisata belanja yang lengkap dan murah lebih tepatnya di swalayan. ', '', 2),
(36, 'Kampung Amplang', 'Setelah Langgar Al-Irsyad, disebelah Toko Vape, Jl. Slamet Riyadi No.63, Tlk. Lerong Ulu, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Setelah Langgar Al-Irsyad, disebelah Toko Vape, Jl. Slamet Riyadi No.63, Tlk. Lerong Ulu, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'kampungamplang.png', 'amplang', 'a1.png', 'a2.png', 'a3.png', 'a4.png', 'a5.png', 'a6.png', 'a7.png', 'a8.png', 'Kampung Amplang Makin Eksis, Konsisten Jaga Kualitas.', 'Kampung amplang tempat makan ini menjual makanan khas Samarinda yaitu kerupuk amplang yang rasanya begitu khas dan biasa dimaanfaatkan sebagai oleh oleh bagi para pengunjung dari daerah lain, saya mengunjungi dan membeli, nampaknya seperti toko kerupuk amplang lainnya, namun setelah pulang ke rumah dan mencobanya, memang krupuk kampung amplang ini punya ciri ok tersendiri.', 2),
(37, 'Pesut Etam ', 'Jl. Gajah Mada No.30, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Gajah Mada No.30, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'pesutetam.png', 'kapal', 'k1.png', 'k2.png', 'k3.png', 'k4.png', 'k5.png', 'k6.png', 'k7.png', 'k8.png', 'Pesut kita, Pesut Mahakam, Pesut Etam, Pesut Mahkota dan Pesut Bentong.', ' Sungai Mahakam kini punya Wisata Susur Sungai dengan menggunakan kapal wisata. Sejak diresmikan pada 10 Mei 2018, animo masyarakat semakin bertambah. Kini, telah 5 kapal yang beroperasi dan semua diberi nama depan Pesut (sejenis hewan endemik Sungai Mahakam) yang artinya â€œbesarâ€. Kelima nama kapal tersebut adalah Pesut kita, Pesut Mahakam, Pesut Etam, Pesut Mahkota dan Pesut Bentong.', 7),
(38, 'Bumi Sempaja Waterpark', 'Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75242', 'Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75242', 's1.png', 'sempaja', 's2.png', 's3.png', 's4.png', 's5.png', 's8.png', 's8.png', 's9.png', 's6.png', 'Bisa menjadi pilihan wisata air di kota Samarinda.', 'Bumi Sempaja Waterpark salah satu tujuan rekreasi di kota Samarinda. Tarif tiket masuk yang relatif terjangkau dan wahana permainan air yang cukup banyak menjadikannya selalu ramai terutama saat akhir pekan dan libur sekolah.\r\nHarga Tiket Masuk Bumi Sempaja Waterpark\r\n\r\nBeragam wahana dan kolam renang bisa dimainkan di waterpark ini dengan biaya yang cukup murah. Harga tiket masuk Bumi Sempaja Waterpark bisa didapat dengan harga mulai dari Rp30.000 â€“ Rp35.000.\r\nJenis Tiket	Harga\r\nTiket Masuk Senin-Jumat	Rp30.000\r\nTiket Masuk Sabtu-Minggu & Hari Libur	Rp35.000\r\nHarga Tiket Masuk Bumi Sempaja Waterpark\r\n\r\nBaca: CARIBBEAN Waterpark Balikpapan Tiket Masuk & Wahana\r\nJam Buka Bumi Sempaja Waterpark\r\n\r\nPengunjung bisa datang dan bermain di water park ini mulai pagi hari. Water park sudah dibuka mulai pukul 09.00 pagi hingga sore hari.\r\nHari	Jam Buka\r\nSenin â€“ Jumat	09.00 â€“ 17.00\r\nSabtu, Minggu dan Hari Libur	09.00 â€“ 18.00\r\nJam Buka Bumi Sempaja Waterpark\r\n\r\nBumi Sempaja Waterpark memiliki area yang cukup luas, area kolam dan wahana permainan air yang tersedia diantaranya:\r\nkolam dan wahana anak bumi sempaja waterpark\r\nKolam dan wahana anak-anak. foto: Sempaja_Waterpark\r\nKolam Balita\r\n\r\nBagi pengunjung yang membawa balita tak perlu ragu mencari area bermain karena ada area kolam yang dikhususkan untuk balita. Kolam berbentuk lingkaran ini berdiameter sekitar 8 meter.\r\n\r\nKolamnya hanya berupa kolam renang saja dengan kedalaman hanya 20 cm sehingga sangat aman.Meskipun hanya berisi air, namun tetap akan atraktif karena ada pancuran air yang keluar dari mulut patung pesut yang ada di pinggir kolam.\r\n\r\n', 7),
(39, 'Taman Cerdas Samarinda', 'Jl. Mayor Jendral S. Parman, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'Jl. Mayor Jendral S. Parman, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'tamancerdas.png', 'cerdas', 'q1.png', 'q2.png', 'q3.png', 'q4.png', 'q5.png', 'q6.png', 'q7.png', 'q8.png', 'Salah satu taman wisata yang populer di Kota Samarinda.', ' Sungguh sangat nikmat suasana di Taman itu. Taman Cerdas ini terletak di Jalan S. Parman. Bersebelahan langsung dengan Rumah Jabatan Wali Kota Samarinda.', 5),
(40, 'Stadion Palaran', 'Jl. Stadion Utama Kaltim, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'Jl. Stadion Utama Kaltim, Simpang Pasir, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'stadionpalaran.png', '', '', '', '', '', '', '', '', '', 'Stadion Utama Palaran adalah sebuah stadion serbaguna di Kota Samarinda.', '', 7),
(41, 'Danau Danurdana Perjiwa', 'gunung Kyai, Jl. Perjiwa, Perjiwa, Kec. Tenggarong Seberang, Kabupaten Kutai Kartanegara, Kalimantanï¿½Timurï¿½75572', 'gunung Kyai, Jl. Perjiwa, Perjiwa, Kec. Tenggarong Seberang, Kabupaten Kutai Kartanegara, Kalimantan Timur 75572', 'danaudanurdana.png', 'danauperjiwa', 'w1.png', 'w2.png', 'w3.png', 'w4.png', 'w5.png', 'w6.png', 'w7.png', 'w8.png', 'Salah Satu wisata alam yang menarik di samarinda.\r\n', 'Danau Danurdana merupakan sebuah destinasi wisata yang terletak di RT. 05 Desa Perjiwa, Kecamatan Tenggarong Seberang, Kabupaten Kutai Kartanegara (Kukar) jadi sektor wisata andalan dalam meningkatkan ekonomi masyarakat.\r\n\r\nDanau Danurdana dikelola pemerintah desa dengan menggandeng investor untuk mengembangkan danau tersebut.\r\n\r\nDanau Danurdana merupakan bekas galian tambang batubara yang yang disulap menjadi objek wisata unggulan.\r\n\r\nSelain menyuguhkan keindahan alamnya, Danau Danurdana, Desa Perjiwa ini juga menyediakan wahana permainan yang memacu adrenalin yakni keseruan menunggangi banana boat.\r\n\r\nTerdapat lampu hias dan juga air terjun buatan yang menambah suasana liburan dan berakhir pekan lebih menarik.\r\n\r\nUntuk diketahui, Wisata danau ini buka setiap hari dan ini merupakan hasil kerjasama Pemerintah desa, investor dan Pokdarwis.', 1),
(42, 'Bukit Steling Selili ', 'Selili, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75251', 'Selili, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75251', 'bukit_selili.png', 'steling', 'e1.png', 'e2.png', 'e3.png', 'e4.png', 'e5.png', 'e6.png', 'e7.png', 'e8.png', 'Sebuah wilayah perbukitan memanjang berarah utara-selatan.', 'Bukit Steling merupakan sebuah wilayah perbukitan memanjang berarah utara-selatan yang terletak di Kelurahan Selili dan Kelurahan Sungai Dama, Kecamatan Samarinda Ilir, Kota Samarinda. Masyarakat Samarinda lebih mengenal dengan nama Gunung Steling daripada Bukit Steling. Penyebutan gunung secara geologi sebenarnya kurang tepat, mengingat elevasi tertinggi bukit ini hanya 117 m (DEMNAS).', 1),
(43, 'Puncak 30 Sidomulyo', 'Jl. Bukit Rumbia 1, Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Jl. Bukit Rumbia 1, Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'puncak30_sidomulyo.png', 'puncak30', 'o1.png', 'o2.png', 'o3.png', 'o4.png', 'o5.png', 'o6.png', 'o7.png', 'o8.png', 'Menawarkan pesona panorama kota Samarinda dari atas bukit.', 'Puncak Sidomulyo berlokasi di Jalan Bukit Rumbia 1, Sidomulyo, Kecamatan Samarinda Ilir, Kota Samarinda. Dari tempat ini kamu bisa melihat pemandangan Kota Samarinda dari ketinggian. Pada malam, pemandangan tersebut akan terlihat semakin unik berkat pancaran lampu-lampu perkotaan.\r\n\r\n', 1),
(44, 'Masjid Cheng Hoo Samarinda', 'Ruhui Rahayu No.1, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Ruhui Rahayu No.1, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'p5.png', 'cengho', 'p1.png', 'p2.png', 'p3.png', 'p4.png', 'p5.png', 'p6.png', 'p7.png', 'p8.png', 'Masjid yang dibangun berasitekturkan nuansa Muslim Tionghoa.', 'Masjid Muhammad Cheng Hoo, atau dikenal juga sebagai Masjid Cheng Ho, memiliki bangunan yang unik. Lokasinya ada di Jalan Ruhui Rahayu 1 Nomor 1 Gunung Kelua, Samarinda Ulu, Samarinda. Dilaporkan oleh Kompas TV, bangunan Masjid Cheng Ho memiliki memadukan budaya asal China dan Arab. Masjid ini didominasi warna merah, hijau, dan kuning, ornamennya kental nuansa China lama dan pintu masuknya menyerupai pagoda. Ada relief naga dan patung singa dari lilin dengan lafaz Allah dalam huruf Arab di puncak pagoda. Ddibangunnya tempat ibadah ini merupakan bentuk penghormatan kepada Laksamana Muhammad Sulaiman Cheng Ho asal China yang beragama Islam.\r\n', 9),
(45, 'Paroki Katedral Santa Maria', 'Jl. Jend. Sudirman No.36, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75122', 'Jl. Jend. Sudirman No.36, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75122', 'katedral_samarinda.png', 'gereja', 'g1.png', 'g2.png', 'g3.png', 'g4.png', 'g5.png', 'g6.png', 'g7.png', 'g8.png', 'Sebuah gereja katedral Katolik yang berada dalam Keuskupan Agung Samarinda.\r\n', 'Gereja Katedral Samarinda adalah sebuah gereja katedral Katolik yang terletak di tengah di kota Samarinda, berada dalam Keuskupan Agung Samarinda.', 9),
(46, 'Masjid Shirathal Mustaqiem', 'Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur', 'Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur', 'mesjid_shiratalmustaqim.png', 'mesjidtua', 'm1.png', 'm2.png', 'm3.png', 'm4.png', 'm5.png', 'm6.png', 'm7.png', 'm8.png', 'Masjid tertua di Kota Samarinda, tepatnya di Kelurahan Mesjid, Kecamatan Samarinda. \r\n', 'Masjid Shiratal Mustaqiem adalah masjid tertua di Kota Samarinda, Provinsi Kalimantan Timur, Indonesia, tepatnya di Kelurahan Mesjid, Kecamatan Samarinda Seberang. Masjid yang dibangun pada tahun 1881 ini pernah menjadi pemenang ke-2 dalam festival masjid-masjid bersejarah di Indonesia pada tahun 2003.', 9),
(79, 'baru', 'Jalan Bungtomo', '', 'ecoborneotour.png', 'ujicoba', 'tamansmd3.png', 'tamansmd4.png', 'tamansmd5.png', 'tamansmd6.png', 'tamansmd7.png', 'tamansmd8.png', 'tamansmd9.png', 'tamansmd4.png', 'dadad', 'adada', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`,`id_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id_rate`),
  ADD KEY `id_user` (`id_user`,`id_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rate`
--
ALTER TABLE `rate`
  MODIFY `id_rate` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`),
  ADD CONSTRAINT `komentar_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
--
-- Database: `pegawai`
--
CREATE DATABASE IF NOT EXISTS `pegawai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pegawai`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--

CREATE TABLE `bagian` (
  `kode_bag` char(3) NOT NULL,
  `nama_bag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bagian`
--

INSERT INTO `bagian` (`kode_bag`, `nama_bag`) VALUES
('1', 'Pemasaran'),
('10', 'Mondar mandir'),
('2', 'Produksi'),
('3', 'Akuntansi'),
('4', 'SDM'),
('5', 'PDE'),
('6', 'Logistik'),
('7', 'Humas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infoprib`
--

CREATE TABLE `infoprib` (
  `nip` char(5) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kota` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `sex` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `infoprib`
--

INSERT INTO `infoprib` (`nip`, `nama`, `kota`, `tgl`, `sex`) VALUES
('11221', 'Dian Rahma a', 'Samarinda', '1987-05-12', 'Wanita'),
('12345', 'Dian Rahma', 'Jakarta', '1982-02-03', 'Wanita'),
('12356', 'Reza Najib', 'Semarang', '1981-11-23', 'Pria'),
('12367', 'Mas Aditya', 'Surabaya', '1985-08-17', 'Pria'),
('12378', 'Mhd Rowi', 'Semarang', '1978-05-17', 'Pria'),
('12389', 'Andhini', 'Bandung', '1979-03-27', 'Wanita'),
('12390', 'Bagus Sigit Haryadi', 'Bandung', '1987-09-09', 'Pria'),
('12434', 'Anggraini Anggun', 'Yogyakarta', '1984-06-25', 'Wanita'),
('22896', 'Varian Rheza', 'Samarinda', '2024-05-07', 'Pria'),
('33322', 'Dono Kasino', 'Balikpapan', '1987-03-23', 'Pria'),
('88993', 'Niken', 'Bandung', '2023-03-07', 'Wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `nip` char(5) DEFAULT NULL,
  `kode_bag` char(3) DEFAULT NULL,
  `gaji` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`nip`, `kode_bag`, `gaji`) VALUES
('12345', '2', 3000000),
('12356', '1', 1500000),
('12378', '3', 3500000),
('12389', '5', 3000000),
('12390', '1', 1500000),
('12434', '3', 3500000),
('12367', '4', 4500000);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_infopeg`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_infopeg` (
`nip` char(5)
,`nama` varchar(30)
,`kota` varchar(20)
,`tgl` date
,`nama_bag` varchar(30)
,`gaji` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_infoprib`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_infoprib` (
`nip` char(5)
,`nama` varchar(30)
,`tgl` date
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_infopeg`
--
DROP TABLE IF EXISTS `v_infopeg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_infopeg`  AS  select `a`.`nip` AS `nip`,`a`.`nama` AS `nama`,`a`.`kota` AS `kota`,`a`.`tgl` AS `tgl`,`b`.`nama_bag` AS `nama_bag`,`c`.`gaji` AS `gaji` from ((`infoprib` `a` join `bagian` `b`) join `pekerjaan` `c`) where ((`a`.`nip` = `c`.`nip`) and (`b`.`kode_bag` = `c`.`kode_bag`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_infoprib`
--
DROP TABLE IF EXISTS `v_infoprib`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_infoprib`  AS  select `infoprib`.`nip` AS `nip`,`infoprib`.`nama` AS `nama`,`infoprib`.`tgl` AS `tgl` from `infoprib` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`kode_bag`);

--
-- Indeks untuk tabel `infoprib`
--
ALTER TABLE `infoprib`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD KEY `nip` (`nip`),
  ADD KEY `kode_bag` (`kode_bag`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD CONSTRAINT `pekerjaan_ibfk_1` FOREIGN KEY (`kode_bag`) REFERENCES `bagian` (`kode_bag`),
  ADD CONSTRAINT `pekerjaan_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `infoprib` (`nip`);
--
-- Database: `pemweb`
--
CREATE DATABASE IF NOT EXISTS `pemweb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pemweb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_p`
--

CREATE TABLE `tabel_p` (
  `Pn` varchar(255) NOT NULL,
  `Pname` varchar(255) NOT NULL,
  `Warna` varchar(255) NOT NULL,
  `Weight` int(255) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_p`
--

INSERT INTO `tabel_p` (`Pn`, `Pname`, `Warna`, `Weight`, `City`) VALUES
('P1', 'Nut', 'Red', 12, 'London'),
('P2', 'Bolt', 'Green', 17, 'Paris'),
('P3', 'Screw', 'Blue', 17, 'Rome'),
('P4', 'Screw', 'Red', 14, 'London'),
('P5', 'Cam', 'Blue', 12, 'Paris'),
('P6', 'Cog', 'Red', 19, 'London');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_s`
--

CREATE TABLE `tabel_s` (
  `Sn` varchar(255) NOT NULL,
  `Sname` varchar(255) NOT NULL,
  `Status` int(255) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_s`
--

INSERT INTO `tabel_s` (`Sn`, `Sname`, `Status`, `City`) VALUES
('S1', 'Smith', 20, 'London'),
('S2', 'Jones', 10, 'Paris'),
('S3', 'Blake', 30, 'Paris'),
('S4', 'Clark', 20, 'London'),
('S5', 'Adams', 30, 'Athens');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_sp`
--

CREATE TABLE `tabel_sp` (
  `id_sp` int(255) NOT NULL,
  `Sn` varchar(255) NOT NULL,
  `Pn` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_sp`
--

INSERT INTO `tabel_sp` (`id_sp`, `Sn`, `Pn`, `qty`) VALUES
(1, 'S1', 'P1', 300),
(2, 'S1', 'P2', 200),
(3, 'S1', 'P3', 400),
(4, 'S1', 'P4', 200),
(5, 'S1', 'P5', 100),
(6, 'S1', 'P6', 100),
(7, 'S2', 'P1', 300),
(8, 'S2', 'P2', 400),
(9, 'S3', 'P2', 200),
(10, 'S4', 'P2', 200),
(11, 'S4', 'P4', 300),
(12, 'S4', 'P5', 400);
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kodebrg` varchar(10) NOT NULL,
  `namabrg` varchar(35) DEFAULT NULL,
  `satuan` varchar(30) DEFAULT NULL,
  `harga` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kodebrg`, `namabrg`, `satuan`, `harga`) VALUES
('B01', 'Sabun Lux', 'Buah', 10000),
('B02', 'Shampooo', 'Buah', 20000),
('B03', 'Sikat Gigi', 'Buah', 80000),
('B04', 'Mentega', 'Bungkus', 9000),
('B05', 'Sabun Lux', 'Unit', 5500),
('B06', 'tepung', 'Kotak', 12000),
('B07', 'Sabun Giv', 'Unit', 8000),
('B08', 'Giv Away', 'Unit', 5500),
('B09', 'Mandi Sabun', 'Unit', 7500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakturjual`
--

CREATE TABLE `fakturjual` (
  `nofaktur` varchar(6) NOT NULL,
  `tanggal` date NOT NULL,
  `kdplg` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakturjual`
--

INSERT INTO `fakturjual` (`nofaktur`, `tanggal`, `kdplg`) VALUES
('F1', '2023-02-01', 'P1'),
('F2', '2023-02-02', 'P2'),
('F3', '2023-02-03', 'P3'),
('F4', '2023-02-05', 'P4'),
('F5', '2023-02-07', 'P5'),
('F6', '2023-02-08', 'P6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jur` int(2) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode_jur`, `nama_jurusan`) VALUES
(1, 'Teknologi Informasi'),
(3, 'Teknik Elektro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `id_prodi` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kdplg` varchar(5) NOT NULL,
  `namaplg` varchar(18) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `nohp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kdplg`, `namaplg`, `alamat`, `kota`, `nohp`) VALUES
('P1', 'Joni Winata', 'Palaran', 'Samarinda', '23234234'),
('P2', 'Aldo ', 'Palaran', 'Samarinda', '45353'),
('P3', 'Diana Wati', 'Jl. Juanda', 'Balikpapan', '4234234'),
('P4', 'Maskur', 'Jl. Juanda', 'Samarinda', '23424234'),
('P5', 'Irfan Azis', 'Sungai Keledang', 'Samarinda', '34535444'),
('P6', 'Riska', 'Tabang', 'Tabang', '34535434');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `nofaktur` varchar(6) NOT NULL,
  `kodebrg` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`nofaktur`, `kodebrg`, `qty`) VALUES
('F1', 'B01', 4),
('F1', 'B03', 2),
('F1', 'B05', 1),
('F2', 'B02', 2),
('F3', 'B01', 2),
('F3', 'B02', 1),
('F4', 'B01', 2),
('F4', 'B02', 1),
('F4', 'B04', 2),
('F4', 'B09', 2),
('F5', 'B01', 2),
('F5', 'B06', 1),
('F5', 'B07', 2),
('F6', 'B05', 2),
('F6', 'B08', 2),
('F6', 'B09', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(3) NOT NULL,
  `nama_prodi` varchar(50) DEFAULT NULL,
  `id_jurusan` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `id_jurusan`) VALUES
(1, 'Teknologi Rekayasa Komputer', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(3) NOT NULL,
  `nm_suplier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebrg`);

--
-- Indeks untuk tabel `fakturjual`
--
ALTER TABLE `fakturjual`
  ADD PRIMARY KEY (`nofaktur`),
  ADD KEY `kdplg` (`kdplg`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jur`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kdplg`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`nofaktur`,`kodebrg`),
  ADD KEY `kodebrg` (`kodebrg`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `fk_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_suplier` int(3) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fakturjual`
--
ALTER TABLE `fakturjual`
  ADD CONSTRAINT `fakturjual_ibfk_1` FOREIGN KEY (`kdplg`) REFERENCES `pelanggan` (`kdplg`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_prodi` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`kodebrg`) REFERENCES `barang` (`kodebrg`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`nofaktur`) REFERENCES `fakturjual` (`nofaktur`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `fk_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`kode_jur`);
--
-- Database: `perpus_db`
--
CREATE DATABASE IF NOT EXISTS `perpus_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `perpus_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Kode_buku` char(12) NOT NULL DEFAULT '',
  `Kode_judul` char(9) DEFAULT NULL,
  `Edisi` varchar(2) DEFAULT NULL,
  `Cetakan` varchar(2) DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Kode_buku`, `Kode_judul`, `Edisi`, `Cetakan`, `status`) VALUES
('B1', 'A', '12', '10', '1'),
('B2', 'C', '12', '10', '1'),
('B3', 'C', '12', '10', '2'),
('B4', 'D', '12', '10', '1'),
('B5', 'C', '10', '2', '0'),
('B6', 'D', '1', '2', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul`
--

CREATE TABLE `judul` (
  `Kode_judul` char(9) NOT NULL DEFAULT '',
  `Nama_judul` varchar(30) DEFAULT NULL,
  `Kode_kategori` char(3) DEFAULT NULL,
  `Kode_penulis` char(5) DEFAULT NULL,
  `Kode_penerbit` char(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `judul`
--

INSERT INTO `judul` (`Kode_judul`, `Nama_judul`, `Kode_kategori`, `Kode_penulis`, `Kode_penerbit`) VALUES
('A', 'Bangun Ruang', 'MTK', 'P1', 'ER'),
('B', 'Aritmatika', 'MTK', 'P1', 'ER'),
('C', 'Puisi', 'BIn', 'P2', 'TJ'),
('D', 'Pantun', 'BIn', 'P2', 'TJ'),
('E', 'Pemrograman Dasar', 'KOM', 'P3', 'TJ'),
('F', 'Data Mining', 'KOM', 'P3', 'BT'),
('G', 'Pendukung Pengambilan Keputusa', 'KOM', 'P2', 'ER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `Kode_kategori` char(3) NOT NULL DEFAULT '',
  `Nama_kategori` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`Kode_kategori`, `Nama_kategori`) VALUES
('MTK', 'Matematika'),
('BIn', 'Bahasa Indonesia'),
('KOM', 'Komputer'),
('BHS', 'Bahasa'),
('K01', 'cfgdgfd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `Kode_penerbit` char(4) NOT NULL DEFAULT '',
  `Nama_penerbit` varchar(30) DEFAULT NULL,
  `Alamat_penerbit` varchar(40) DEFAULT NULL,
  `Kota_penerbit` varchar(20) DEFAULT NULL,
  `Telpon` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`Kode_penerbit`, `Nama_penerbit`, `Alamat_penerbit`, `Kota_penerbit`, `Telpon`) VALUES
('ER', 'erlangga', 'Palaran', 'Samarinda', '08123653437'),
('TJ', 'tri jaya', 'Muara badak', 'Samarinda', '0812783473847'),
('BT', 'Bintang Terang', 'Jl. Pahlawan', 'Surabaya', '08573849389'),
('TS', 'Tiga serangkai', 'Jl. CIbaduyut', 'Bandung', '08138738385');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `Kode_penulis` char(5) NOT NULL,
  `nama_penulis` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`Kode_penulis`, `nama_penulis`, `alamat`, `email`, `hp`) VALUES
('P1', 'Jhoni Sibolang', 'Jl. Mataram Jogjakarta', 'siibolang@gmail.com', '0811627622'),
('P2', 'Ahmad Hariadi', 'Jl. Pahlawan Samarinda', 'hariadi@gmail.com', '08126387347'),
('P3', 'Hendra Riadi', 'Jl. Wonocolo Surabaya', 'hriadi@gmail.com', '081398453955');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode_buku`);

--
-- Indeks untuk tabel `judul`
--
ALTER TABLE `judul`
  ADD PRIMARY KEY (`Kode_judul`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Kode_kategori`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`Kode_penerbit`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`Kode_penulis`);
--
-- Database: `phpadmin`
--
CREATE DATABASE IF NOT EXISTS `phpadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(2) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknologi Informasi'),
(2, 'Teknik Sipil'),
(3, 'Teknik Mesin'),
(4, 'Teknik Kimia'),
(5, 'Teknik Elektro'),
(6, 'Pariwisata'),
(7, 'Akuntansi'),
(8, 'Desain'),
(9, 'Administrasi Bisnis'),
(12, 'xxx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `agama` varchar(1) NOT NULL,
  `kelamin` varchar(1) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_prodi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `tgl_lahir`, `alamat`, `agama`, `kelamin`, `no_hp`, `email`, `id_prodi`) VALUES
('226661027', 'Zaidan Alfarizy Putra Fadilah', '2000-03-15', 'Jakarta', 'I', 'L', '+6281234567890', 'zaidanalfarizy@gmail.com', 1),
('226661028', 'Varian Rhesa', '1998-09-22', 'Bandung', 'I', 'L', '+6281987654321', 'varianrhesa@gmail.com', 2),
('226661029', 'Muhammad Ardika', '1999-11-08', 'Surabaya', 'I', 'L', '+6281123456789', 'muhammadardika@gmail.com', 4),
('226661030', 'Haikal Syakir Mawarid', '2001-05-10', 'Medan', 'I', 'L', '+6281765432190', 'haikalsyakir@gmail.com', 6),
('226661031', 'Yhunike Widiya Pratama', '2002-02-20', 'Semarang', 'I', 'P', '+6281543219876', 'yhunikewidiya@gmail.com', 7),
('226661032', 'Sabat Jati Kristianto', '1997-07-14', 'Yogyakarta', 'I', 'L', '+6281654321987', 'sabatkristianto@gmail.com', 8),
('226661033', 'Restu Sanjaya Sihotang', '2000-12-31', 'Denpasar', 'I', 'L', '+6281876543210', 'restusanjaya@gmail.com', 9),
('226661034', 'Armand Maulana', '1985-07-16', 'Jakarta', 'I', 'L', '+6281987654321', 'armandmaulana@gmail.com', 2),
('226661035', 'Muhammad Fauzi Ariyo', '1996-03-28', 'Bandung', 'I', 'L', '+6281123456789', 'muhammadfauzi@gmail.com', 4),
('226661036', 'Muhammad Fiqri Haikal Syah', '2002-09-05', 'Surabaya', 'I', 'L', '+6281543219876', 'fiqrihaikalsyah@gmail.com', 6),
('226661037', 'Achmad Nur Azmi', '1998-11-20', 'Medan', 'I', 'L', '+6281654321987', 'achmadnurazmi@gmail.com', 7),
('226661038', 'Akhmad Difa Tri Saputra Hidayat', '2001-08-10', 'Semarang', 'I', 'L', '+6281765432190', 'akhmaddifa@gmail.com', 8),
('226661039', 'Muhamad Fauzan Ramdhani', '1999-01-01', 'Yogyakarta', 'I', 'L', '+6281876543210', 'fauzanramdhani@gmail.com', 9),
('226661040', 'Ahmad Reza Saputra', '2003-06-18', 'Denpasar', 'I', 'L', '+6281987654321', 'ahmadreza.saputra@gmail.com', 1),
('226661041', 'Odie Nugraha', '1997-03-12', 'Jakarta', 'I', 'L', '+6281123456789', 'odienugraha@gmail.com', 2),
('226661042', 'Adhe Ryza Dyandra Rahman', '2000-10-19', 'Bandung', 'I', 'L', '+6281543219876', 'adherahman@gmail.com', 4),
('226661043', 'Muhammad Zainal Arifin', '1995-02-15', 'Surabaya', 'I', 'L', '+6281654321987', 'mzainalarifin@gmail.com', 6),
('226661044', 'Soni Heri Saputra', '2004-01-01', 'Medan', 'I', 'L', '+6281876543210', 'soniheri.saputra@gmail.com', 7),
('226661045', 'Ikhsan Daffa Assaddin', '1998-05-29', 'Semarang', 'I', 'L', '+6281765432190', 'ikhsandaffa@gmail.com', 8),
('226661046', 'Zia Jauhari Juanda', '2001-07-09', 'Yogyakarta', 'I', 'L', '+6281654321987', 'ziajuanda@gmail.com', 9),
('226661047', 'Andrian Pramana Putra', '1999-04-18', 'Denpasar', 'I', 'L', '+6281987654321', 'andrianputra@gmail.com', 1),
('226661048', 'Rizky Febrian', '2000-11-25', 'Jakarta', 'I', 'L', '+6281123456789', 'rizkyfebrian@gmail.com', 2),
('226661049', 'Muhammad Bintang Al Kausar', '1998-08-03', 'Bandung', 'I', 'L', '+6281543219876', 'bintangkausar@gmail.com', 4),
('226661050', 'Aji Nursila Putra Wardana', '2002-05-29', 'Surabaya', 'I', 'L', '+6281654321987', 'ajinursila@gmail.com', 6),
('226661051', 'Rizky Catur Risnanda', '1996-07-15', 'Medan', 'I', 'L', '+6281765432190', 'rizkycatur@gmail.com', 7),
('226661052', 'Rakhmad Dhani', '1997-12-07', 'Semarang', 'I', 'L', '+6281876543210', 'rakhmaddhani@gmail.com', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(2) NOT NULL,
  `nama_prodi` varchar(40) NOT NULL,
  `id_jurusan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `id_jurusan`) VALUES
(1, 'Teknologi Rekayasa Komputer', 1),
(2, 'Teknik Informatika Multimedia', 1),
(4, 'Rekayasa Jalan dan jembatan ', 2),
(6, 'Akuntansi (D3)', 7),
(7, 'Kimia Industri', 4),
(8, 'Teknik Kimia (D3)', 4),
(9, 'Akuntansi Manajerial', 7),
(10, 'swq`sqses', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id` int(5) NOT NULL,
  `nama_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id`, `nama_file`) VALUES
(1, 'formulir.jpg'),
(2, '20210622_064537-formulir.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` varchar(30) NOT NULL,
  `passw` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `passw`, `nama`, `level`) VALUES
('admin', '202cb962ac59075b964b07152d234b70', 'Laode Hasiara', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data untuk tabel `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'buku', 'table', 'perpus_db', ''),
('root', 'mahasiswa', 'table', 'dbpenjualan', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('dbpenjualan', 1, 'aa'),
('penjualan', 2, 'PENJUALAN'),
('uts_bd', 3, 'UTS'),
('db_penduduk', 4, 'penduduk'),
('pemweb', 5, 'G');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_wisata\",\"table\":\"komentar\"},{\"db\":\"db_to_do_list\",\"table\":\"todos\"},{\"db\":\"todolist_db\",\"table\":\"todo\"},{\"db\":\"todolist_db\",\"table\":\"admin\"},{\"db\":\"todolist_db\",\"table\":\"users\"},{\"db\":\"db_wisata\",\"table\":\"kategori\"},{\"db\":\"db_wisata\",\"table\":\"wisata\"},{\"db\":\"dbwisata\",\"table\":\"wisata\"},{\"db\":\"pemweb\",\"table\":\"tabel_sp\"},{\"db\":\"dbwisata\",\"table\":\"kategori\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data untuk tabel `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('db_penduduk', 'desa', 'kd_kecamatan', 'db_penduduk', 'kecamatan', 'kd_kecamatan'),
('db_penduduk', 'kab_kota', 'kd_kabkota', 'db_penduduk', 'kab_kota', 'kd_kabkota'),
('db_penduduk', 'kab_kota', 'kd_provinsi', 'db_penduduk', 'provinsi', 'kd_provinsi'),
('db_penduduk', 'kecamatan', 'kd_kabkota', 'db_penduduk', 'kab_kota', 'kd_kabkota'),
('db_penduduk', 'kecamatan', 'kd_kecamatan', 'db_penduduk', 'kecamatan', 'kd_kecamatan'),
('db_penduduk', 'penduduk', 'desa', 'db_penduduk', 'desa', 'kd_desa'),
('db_penduduk', 'penduduk', 'kab_kota', 'db_penduduk', 'kab_kota', 'kd_kabkota'),
('db_penduduk', 'penduduk', 'kecamatan', 'db_penduduk', 'kecamatan', 'kd_kecamatan'),
('db_penduduk', 'penduduk', 'provinsi', 'db_penduduk', 'provinsi', 'kd_provinsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data untuk tabel `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('db_penduduk', 'desa', 4, 493, 122),
('db_penduduk', 'kab_kota', 4, 526, 289),
('db_penduduk', 'kecamatan', 4, 223, 405),
('db_penduduk', 'penduduk', 4, 183, 74),
('db_penduduk', 'provinsi', 4, 553, 390),
('dbpenjualan', 'tabel_favorite_food', 1, 546, 135),
('dbpenjualan', 'tabel_food', 1, 347, 92),
('dbpenjualan', 'tabelperson', 1, 26, 412),
('pemweb', 'tabel_p', 5, 552, 213),
('pemweb', 'tabel_s', 5, 121, 339),
('penjualan', 'barang', 2, 139, 489),
('penjualan', 'fakturjual', 2, 457, 394),
('penjualan', 'jurusan', 2, 114, 325),
('penjualan', 'mahasiswa', 2, 858, 311),
('penjualan', 'pelanggan', 2, 127, 118),
('penjualan', 'penjualan', 2, 419, 52),
('penjualan', 'prodi', 2, 483, 183),
('penjualan', 'suplier', 2, 801, 36),
('uts_bd', 'tabel_transaksi', 3, 806, 118),
('uts_bd', 'tabeldetail_transaksi', 3, 450, 111),
('uts_bd', 'tabelkaset', 3, 445, 304),
('uts_bd', 'tabelpenyewa', 3, 171, 110);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('uts_bd', 'tabeldetail_transaksi', 'No_transaksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dbpenjualan', 'tabelperson', '[]', '2023-03-29 03:48:32'),
('root', 'penjualan', 'pelanggan', '{\"sorted_col\":\"`pelanggan`.`namaplg`  ASC\"}', '2023-03-29 03:11:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-27 11:44:10', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":242,\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `trk1b`
--
CREATE DATABASE IF NOT EXISTS `trk1b` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trk1b`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kd_jurusan` varchar(2) NOT NULL,
  `nm_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kd_jurusan`, `nm_jurusan`) VALUES
('TI', 'Teknologi Informasi'),
('TK', 'Teknik komputer'),
('TS', 'Teknik Sipil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(3) NOT NULL,
  `nm_prodi` varchar(40) NOT NULL,
  `kd_jurusan` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nm_prodi`, `kd_jurusan`) VALUES
(123456, '& C:/Users/acer/AppData/Local/Programs/P', '& '),
(123499999, 'TI', 'TR');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123500000;
--
-- Database: `uts_bd`
--
CREATE DATABASE IF NOT EXISTS `uts_bd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uts_bd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeldetail_transaksi`
--

CREATE TABLE `tabeldetail_transaksi` (
  `No_transaksi` varchar(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_kaset` varchar(15) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabeldetail_transaksi`
--

INSERT INTO `tabeldetail_transaksi` (`No_transaksi`, `kode_transaksi`, `kode_kaset`, `Total`) VALUES
('T001', 'P001', 'K001', 5000),
('T001', 'P001', 'K002', 10000),
('T002', 'P005', 'K004', 5000),
('T002', 'P005', 'K003', 11000),
('T003', 'P004', 'K003', 8000),
('T004', 'P002', 'K005', 10000),
('T004', 'P002', 'K002', 10000),
('T005', 'P001', 'K001', 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelkaset`
--

CREATE TABLE `tabelkaset` (
  `Kode_kaset` varchar(10) NOT NULL,
  `Judul` varchar(15) NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelkaset`
--

INSERT INTO `tabelkaset` (`Kode_kaset`, `Judul`, `Status`) VALUES
('K001', 'Titanic', 'R'),
('K002', 'Armagedon', 'N'),
('K003', 'The X Files', 'R'),
('K004', 'X Man ', 'R'),
('K005', 'The Raid', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelpenyewa`
--

CREATE TABLE `tabelpenyewa` (
  `kode_penyewa` varchar(20) NOT NULL,
  `nama_penyewa` varchar(20) NOT NULL,
  `alamat_penyewa` varchar(20) NOT NULL,
  `no_telpon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelpenyewa`
--

INSERT INTO `tabelpenyewa` (`kode_penyewa`, `nama_penyewa`, `alamat_penyewa`, `no_telpon`) VALUES
('P001', 'Abdul Hakim', 'Balikpapan', 812347615),
('P002', 'Kineke Halim ', 'Sangata', 812345614),
('P003', 'Arie Kaldan', 'Samarinda', 812345613),
('P004', 'Irma Hindun ', 'Tenggarong', 812345715),
('P005', 'Eko Iskandar', 'Balikpapan', 812345775);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `No_transaksi` varchar(10) NOT NULL,
  `Tgl_pinjam` varchar(15) NOT NULL,
  `Tgl_kembali` varchar(15) NOT NULL,
  `Tgl_Current` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`No_transaksi`, `Tgl_pinjam`, `Tgl_kembali`, `Tgl_Current`) VALUES
('T001', '12/01/2014', '19/01/2014', '17/01/2014'),
('T002', '14/01/2014', '21/01/2014', '19/01/2014'),
('T003', '16/01/2014', '23/01/2014', '18/01/2014'),
('T004', '19/01/2014', '26/01/2014', '25/01/2014');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabelkaset`
--
ALTER TABLE `tabelkaset`
  ADD PRIMARY KEY (`Kode_kaset`);

--
-- Indeks untuk tabel `tabelpenyewa`
--
ALTER TABLE `tabelpenyewa`
  ADD PRIMARY KEY (`kode_penyewa`);

--
-- Indeks untuk tabel `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`No_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
