-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2024 pada 14.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata-pessel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'anugrahhputraa', '12345678', 'Anugrah Putra Al Fatih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri_penginapan`
--

CREATE TABLE `tbl_galeri_penginapan` (
  `id_galeri_penginapan` int(11) NOT NULL,
  `id_penginapan` int(11) NOT NULL,
  `foto_1` varchar(100) NOT NULL,
  `foto_2` varchar(100) NOT NULL,
  `foto_3` varchar(100) NOT NULL,
  `foto_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_galeri_penginapan`
--

INSERT INTO `tbl_galeri_penginapan` (`id_galeri_penginapan`, `id_penginapan`, `foto_1`, `foto_2`, `foto_3`, `foto_4`) VALUES
(1, 1, '66658eb666785.jpg', '66658eb66695a.jpg', '66658eb666b7b.jpg', '66658eb666ca6.jpg'),
(2, 2, '666590cf8e848.jpg', '666590cf8eb51.jpg', '666590cf8ed53.jpg', '666590cf8ef10.jpg'),
(3, 3, '666591a80cd7d.jpg', '666591a80d032.jpg', '666591a80d1eb.jpg', '666591a80d355.jpg'),
(4, 4, '666592f947f9b.jpg', '666592f948173.jpg', '666592f94826b.jpg', '666592f948408.jpg'),
(5, 5, '6665941031721.jpg', '666594103194a.jpg', '6665941031c6b.jpg', '6665941031f12.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri_restoran`
--

CREATE TABLE `tbl_galeri_restoran` (
  `id_galeri_restoran` int(11) NOT NULL,
  `id_restoran` int(11) NOT NULL,
  `foto_1` varchar(100) NOT NULL,
  `foto_2` varchar(100) NOT NULL,
  `foto_3` varchar(100) NOT NULL,
  `foto_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_galeri_restoran`
--

INSERT INTO `tbl_galeri_restoran` (`id_galeri_restoran`, `id_restoran`, `foto_1`, `foto_2`, `foto_3`, `foto_4`) VALUES
(1, 1, '6665b6b19bb83.jpg', '6665b6b19c81e.jpg', '6665b6b19cc89.jpg', '6665b6b19cf4c.jpg'),
(2, 2, '6665b8c6c9a0b.jpg', '6665b8c6c9d29.jpg', '6665b8c6ca030.jpg', '6665b8c6ca2b3.jpg'),
(3, 3, '6665ba176ec69.jpg', '6665ba176efdc.jpg', '6665ba176f279.jpg', '6665ba176f5c8.jpg'),
(4, 4, '6665bafb6ad09.jpg', '6665bafb6b044.jpg', '6665bafb6b80a.jpg', '6665bafb6ba3c.jpg'),
(5, 5, '6665bc3359e12.jpg', '6665bc335a154.jpg', '6665bc335a3b9.jpg', '6665bc335a5e9.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri_wisata`
--

CREATE TABLE `tbl_galeri_wisata` (
  `id_galeri_wisata` int(11) NOT NULL,
  `id_kategori_wisata` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `foto_1` varchar(100) NOT NULL,
  `foto_2` varchar(100) NOT NULL,
  `foto_3` varchar(100) NOT NULL,
  `foto_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_galeri_wisata`
--

INSERT INTO `tbl_galeri_wisata` (`id_galeri_wisata`, `id_kategori_wisata`, `id_wisata`, `foto_1`, `foto_2`, `foto_3`, `foto_4`) VALUES
(1, 3, 1, '6664a4e7db697.jpg', '6664a4e7db853.jpg', '6664a4e7db978.jpg', '6664a4e7dba34.jpg'),
(2, 3, 2, '6664a61f8e37d.jpg', '6664a61f8e58b.jpg', '6664a61f8e88d.jpg', '6664a61f8e9f3.jpg'),
(3, 3, 3, '6664a83125c0c.jpg', '6664a83125d30.jpg', '6664a83125e74.jpg', '6664a8312600e.jpg'),
(4, 3, 4, '6664a9ee7ccf0.jpg', '6664a9ee7ce49.jpg', '6664a9ee7cfa7.jpg', '6664a9ee7d13b.jpg'),
(5, 3, 5, '6664ac9f97bd2.jpg', '6664ac9f97d9d.jpg', '6664ac9f97ed7.jpg', '6664ac9f97fd9.jpg'),
(6, 2, 6, '6664b420e5deb.jpg', '6664b420e6099.jpg', '6664b420e62c9.jpg', '6664b420e6511.jpg'),
(7, 2, 7, '6664b55831a1e.jpg', '6664b55831fe2.jpg', '6664b558321a0.jpg', '6664b55832449.jpg'),
(8, 2, 8, '6664b9b00e486.jpg', '6664b9b00e6a0.jpg', '6664b9b00e890.jpg', '6664b9b00e9db.jpg'),
(9, 2, 9, '6664bb071f0ee.jpg', '6664bb071f2b4.jpg', '6664bb071f3c4.jpg', '6664bb071f4ad.jpg'),
(11, 1, 11, '6664be0867111.jpg', '6664be086742c.jpg', '6664be0867ba8.jpg', '6664be0868188.jpg'),
(12, 1, 12, '6664c46e21c70.jpg', '6664c46e226d2.jpg', '6664c46e24f78.jpg', '6664c46e25253.jpg'),
(13, 1, 13, '6664c96df186f.jpg', '6664c96df2248.jpg', '6664c96df2e50.jpg', '6664c96df310e.jpg'),
(14, 1, 14, '6664cb9fc1d35.jpg', '6664cb9fc1fd0.jpg', '6664cb9fc21d4.jpg', '6664cb9fc23e5.jpg'),
(15, 1, 15, '6664cd204ab8e.jpg', '6664cd204af3b.jpg', '6664cd204b3f9.jpg', '6664cd204b8d2.jpg'),
(33, 2, 16, '6666b89c86db4.jpg', '6666b89c87068.jpg', '6666b89c87290.jpg', '6666b89c87495.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_wisata`
--

CREATE TABLE `tbl_kategori_wisata` (
  `id_kategori_wisata` int(11) NOT NULL,
  `kategori_wisata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_kategori_wisata`
--

INSERT INTO `tbl_kategori_wisata` (`id_kategori_wisata`, `kategori_wisata`) VALUES
(1, 'Perbukitan'),
(2, 'Air'),
(3, 'Religi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penginapan`
--

CREATE TABLE `tbl_penginapan` (
  `id_penginapan` int(11) NOT NULL,
  `nama_penginapan` varchar(100) NOT NULL,
  `alamat_penginapan` varchar(255) NOT NULL,
  `url_lokasi` varchar(255) NOT NULL,
  `peta_area` varchar(255) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `deskripsi_penginapan` text NOT NULL,
  `foto_penginapan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_penginapan`
--

INSERT INTO `tbl_penginapan` (`id_penginapan`, `nama_penginapan`, `alamat_penginapan`, `url_lokasi`, `peta_area`, `nomor_telepon`, `video_youtube`, `facebook`, `twitter`, `instagram`, `youtube`, `deskripsi_penginapan`, `foto_penginapan`) VALUES
(1, 'Langkisau Resort Hotel &amp; Restaurant Syariah', 'Jl. Baru Pantai Salido KM 0.8, Salido, IV Jurai, Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/1jX6WWUqHnWPp8P39', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.72893925484!2d100.5678977744833!3d-1.3389392356848993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd3527e978b2b8f%3A0x20e391def9f39718!2sLangkisau%20Resort!5e0!3m2!1sid!2sid!4v17179314191', '085363431455', 'https://www.youtube.com/embed/0AOkVcG1yz0?si=EvokXP3yknAHfEJc', 'https://web.facebook.com/p/Langkisau-Resort-Hotel-Painan-100066771956232/?_rdc=1&amp;_rdr', 'https://twitter.com', 'https://www.instagram.com/hotellangkisauresort/', 'https://www.youtube.com/@rg_drone7514', 'Langkisau Hotel adalah salah satu hotel&amp;restaurant yg berada di pesisir selatan.Jl.baru pantai salido km.O8 painan.kec.IV jurai.kab.pesisir selatan west sumatera-indonesia.tentunya suasana yg nyaman,dan pemandangan yg indah,sejuk,cocok acara Getering (Alumni)dan outing, food room servis dengan menu2 nusantara,dan kita jg lagi promosi packet pengantin baru (hanimun) tentunya.', '66658eb665d8c_1.png'),
(2, 'Giszella Hotel', 'Jl. Raya Padang - Painan, Ps. Baru, Kec. Bayang, Kabupaten Pesisir Selatan, Sumatera Barat 25652', 'https://maps.app.goo.gl/qws3BUHJZRhcekEN7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.785952079339!2d100.51456617448304!3d-1.3034301356440756!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd3517799127af7%3A0x398f1d4cbe54bf37!2sGISZELLA%20HOTEL!5e0!3m2!1sid!2sid!4v17179319484', '082386699611', 'https://www.youtube.com/embed/U3x3baKUp9I?si=43lx8NUi47K8A3oJ', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/hotelgiszella/', 'https://www.youtube.com/@lkpdwilestaricollege5583', 'Giszella Hotel merupakan hotel rekomendasi untuk Anda, seorang backpacker yang tak hanya mengutamakan bujet, tapi juga kenyamanan saat beristirahat setelah menempuh petualangan seharian penuh.\r\n\r\nBagi Anda yang menginginkan kualitas pelayanan oke dengan harga yang ramah di kantong, Giszella Hotel adalah pilihan yang tepat. Karena meski murah, akomodasi ini menyediakan fasilitas memadai dan pelayanan yang tetap terjaga mutunya.\r\n\r\nJika Anda memiliki agenda kegiatan yang membutuhkan ruangan besar, maka Giszella Hotel adalah pilihan yang tepat. Hotel ini memiliki ruang pertemuan yang luas dan dilengkapi dengan berbagai fasilitas penunjang.\r\n\r\nhotel ini adalah pilihan tepat bagi Anda dan pasangan yang ingin menikmati liburan romantis. Dapatkan pengalaman yang penuh kesan bersama pasangan dengan menginap di Giszella Hotel.\r\n\r\nGiszella Hotel adalah pilihan tepat bagi Anda yang ingin menghabiskan waktu dengan berbagai fasilitas mewah. Nikmati kualitas layanan terbaik dan pengalaman mengesankan selama menginap di hotel ini.', '666590cf8d3ef_1.png'),
(3, 'Nyalo Beach Cottage', 'Ampang Pulai, Koto XI Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat 25654', 'https://maps.app.goo.gl/raUpSzLCYae8KTGX6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.97206905292!2d100.39616967448232!3d-1.1800989355182614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4a73246a15e8d%3A0x683016190e959efd!2sNyalo%20Beach%20Cottages!5e0!3m2!1sid!2sid!4v1717', '082172901402', 'https://www.youtube.com/embed/ByoEYQrQMtw?si=-UIQdkEfFNVbTkFV', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/nyalobeach/', 'https://www.youtube.com/@dutapesona3886', 'Menginap di Nyalo Beach Cottage tak hanya memberikan kemudahan untuk mengeksplorasi destinasi petualangan Anda, tapi juga menawarkan kenyamanan bagi istirahat Anda.\r\n\r\nNyalo Beach Cottage adalah tempat bermalam yang tepat bagi Anda yang berlibur bersama keluarga. Nikmati segala fasilitas hiburan untuk Anda dan keluarga.\r\n\r\nJika Anda berniat menginap dalam jangka waktu yang lama, Nyalo Beach Cottage adalah pilihan tepat. Berbagai fasilitas yang tersedia dan kualitas pelayanan yang baik akan membuat Anda merasa sedang berada di rumah sendiri.\r\n\r\nResepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda.', '666591a80c2ac_1.png'),
(4, 'Saga Murni Hotel', 'Jalan Jenderal Sudirman, Sago Salido, Kabupaten Pesisir Selatan, Sumatera, Barat, Salido, Kec. Iv Jurai, Painan, Sumatera Barat 25651', 'https://maps.app.goo.gl/479Jd5E99ximj7h17', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.757596470866!2d100.55582837448317!3d-1.3212100356642624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35266785281ed%3A0x527932104f1019b5!2sSAGA%20MURNI%20HOTEL!5e0!3m2!1sid!2sid!4v1717932', '07562312222', 'https://www.youtube.com/embed/BqqNMXWRBrs?si=xyBEZuodgucOzd6h', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/sagamurni.hotel/', 'https://www.youtube.com/@KANGFENDI', 'Saga Murni Hotel merupakan hotel rekomendasi untuk Anda, seorang backpacker yang tak hanya mengutamakan bujet, tapi juga kenyamanan saat beristirahat setelah menempuh petualangan seharian penuh.\r\n\r\nBagi Anda yang menginginkan kualitas pelayanan oke dengan harga yang ramah di kantong, Saga Murni Hotel adalah pilihan yang tepat. Karena meski murah, akomodasi ini menyediakan fasilitas memadai dan pelayanan yang tetap terjaga mutunya.\r\n\r\nJika Anda memiliki agenda kegiatan yang membutuhkan ruangan besar, maka Saga Murni Hotel adalah pilihan yang tepat. Hotel ini memiliki ruang pertemuan yang luas dan dilengkapi dengan berbagai fasilitas penunjang.\r\n\r\nhotel ini adalah pilihan tepat bagi Anda dan pasangan yang ingin menikmati liburan romantis. Dapatkan pengalaman yang penuh kesan bersama pasangan dengan menginap di Saga Murni Hotel.', '666592f947459_1.png'),
(5, 'Hannah Hotel Syariah', 'Jl. Sutan Syahrir No.25, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/dNtQVPDxWucJwJSm7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.719403687059!2d100.57569377448333!3d-1.3447867356918377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d778f1c489b%3A0x209d9903b235a386!2sHannah%20Hotel%20Syariah!5e0!3m2!1sid!2sid!4v171', '07562312717', 'https://www.youtube.com/embed/UoXNQXZMmKk?si=ds5PUiCVv6S14Yka', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/hannahotelsyariah/?hl=id', 'https://www.youtube.com/@hannahsyariahhotel8489', 'Hannah Hotel Syariah adalah tempat bermalam yang tepat bagi Anda yang berlibur bersama keluarga. Nikmati segala fasilitas hiburan untuk Anda dan keluarga.\r\n\r\nJika Anda berniat menginap dalam jangka waktu yang lama, Hannah Hotel Syariah adalah pilihan tepat. Berbagai fasilitas yang tersedia dan kualitas pelayanan yang baik akan membuat Anda merasa sedang berada di rumah sendiri.\r\n\r\nHannah Hotel Syariah adalah pilihan cerdas bagi Anda yang ingin menginap di hotel dengan harga terjangkau, namun tetap memberikan pelayanan yang baik.\r\n\r\nTersedia kolam renang untuk Anda bersantai sendiri maupun bersama teman dan keluarga.', '6665941030e48_1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_restoran`
--

CREATE TABLE `tbl_restoran` (
  `id_restoran` int(11) NOT NULL,
  `nama_restoran` varchar(100) NOT NULL,
  `alamat_restoran` varchar(255) NOT NULL,
  `url_lokasi` varchar(255) NOT NULL,
  `peta_area` varchar(255) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `deskripsi_restoran` text NOT NULL,
  `foto_restoran` varchar(100) NOT NULL,
  `jam_buka` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_restoran`
--

INSERT INTO `tbl_restoran` (`id_restoran`, `nama_restoran`, `alamat_restoran`, `url_lokasi`, `peta_area`, `nomor_telepon`, `video_youtube`, `facebook`, `twitter`, `instagram`, `youtube`, `deskripsi_restoran`, `foto_restoran`, `jam_buka`) VALUES
(1, 'Dialogue Coffee and Cafe', 'Jl. Trikora No.08 Kec.IV Jurai, Painan, Selatan, Kabupaten Pesisir Selatan, Sumatera Barat 25612', 'https://maps.app.goo.gl/ChNiyKhsUidF4Vj78', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.710600834476!2d100.57042687448339!3d-1.3501624356982413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d5490b88a37%3A0xbeffc1f17be7584b!2sDIALOGUE%20Coffee%20and%20Cafe!5e0!3m2!1sid!2sid', '081363100038', 'https://www.youtube.com/embed/HBiighiqJZo?si=15CIWYvaGAK61IXa', 'https://web.facebook.com/dialogue.caffe.1?_rdc=1&amp;_rdr', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@KaliliangSumbar', 'Dialogue Coffee and Cafe, teletak di Jl. Trikora No.08 Kec.IV Jurai, Painan, Selatan, Kabupaten Pesisir Selatan, Sumatera Barat 25612, tempat Restoran yang nyaman dan santai', '6665b634406bb_1.jpg', '16.00-22.00'),
(2, 'GoCamp Warkop Painan', 'Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/itLEWErZEVJkFG7U7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7129275680772!2d100.56791457448334!3d-1.3487436356965574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d9e2454d8fb%3A0x67e095f53984bcc6!2sGoCamp%20Warkop%20Painan!5e0!3m2!1sid!2sid!4v17', '082258996616', 'https://www.youtube.com/embed/eZTb9MdrXp4?si=9vBwZqUVLP1aDYYN', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@officialpadangtvnews4754', 'GoCamp Warkop Painan terletak di Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651. Tempat nyaman dan santai ', '6665b8c6c72b2_1.jpg', '10.00-23.30'),
(3, 'Meet Point', 'Jl. Moh. Hatta, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/CREXLwTqPKtLJR4P8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7110206735133!2d100.57574137448339!3d-1.3499065356979267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34dbcc8aeae55%3A0x7ca38ab1bed3d86c!2sMeet%20Point!5e0!3m2!1sid!2sid!4v1717942549613!', '082384450573', 'https://www.youtube.com/embed/YGXZaCa1034?si=sa_ZUHLfJ-CD9Y_c', 'https://web.facebook.com/meetpointcafepainan/?_rdc=1&amp;_rdr', 'https://twitter.com', 'https://www.instagram.com/meetpoint.cafe/', 'https://www.youtube.com/@BARITAS51', 'Meet Point terletak di Jl. Moh. Hatta, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651, nyaman untuk me time dan nongkrong besama teman sertaa pasangan', '6665ba1769768_1.jpeg', '11.00-23.00'),
(4, 'Cafe Gaul', 'Sago Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25652', 'https://maps.app.goo.gl/ZGFzozp2vW1H1VF86', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.761637639131!2d100.55266477448313!3d-1.3186907356613742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35246d79042f9%3A0x7fca0d1ed9400b67!2sCafe%20Gaul%20Sago%20Painan!5e0!3m2!1sid!2sid!4v', '082288667965', 'https://www.youtube.com/embed/HhRs5LUgyRQ?si=SpnJDCBIYtw4ln1D', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/explore/locations/1011342156/cafe-gaul-sagopainan/', 'https://www.youtube.com/@Hidup_Berbagi', 'Cafe Gaul terletak di Sago Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25652, nyaman untuk makan siang dan nongkrong', '6665bafb68e67_1.jpg', '08.00 – 23.00'),
(5, 'Loca Dexa', 'Jl. Prof. DR. Hamka No.324, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/sUFcMsXJVri5xcuBA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7150571669226!2d100.57988327448336!3d-1.34744373569499!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d7c9bfc6b7d%3A0x7f961d102113cf41!2sAMPERA%20WELLI!5e0!3m2!1sid!2sid!4v1717943669620!', '085372450003', 'https://www.youtube.com/embed/aMHeaM8kJQI?si=9_TWA6qEJVjeLLeQ', 'https://facebook.com', 'https://twitter.com', 'https://www.instagram.com/loca.dexa/', 'https://www.youtube.com', 'Loca Dexa terletak di Jl. Prof. DR. Hamka No.324, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651, nyaman dan murah', '6665bc3358ffe_1.jpg', '10.00-01.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal_gabung` date NOT NULL,
  `jam_gabung` time NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `jam_keluar` time NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Mengikuti',
  `status_pesan` varchar(100) NOT NULL DEFAULT 'Belum terbaca'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(11) NOT NULL,
  `id_kategori_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) NOT NULL,
  `alamat_wisata` varchar(255) NOT NULL,
  `url_lokasi` varchar(255) NOT NULL,
  `peta_area` varchar(255) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL,
  `jam_buka` varchar(100) NOT NULL,
  `harga_tiket_dewasa` int(100) NOT NULL,
  `harga_tiket_anak` int(100) NOT NULL,
  `video_youtube` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `deskripsi_wisata` text NOT NULL,
  `foto_wisata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `id_kategori_wisata`, `nama_wisata`, `alamat_wisata`, `url_lokasi`, `peta_area`, `nomor_telepon`, `jam_buka`, `harga_tiket_dewasa`, `harga_tiket_anak`, `video_youtube`, `facebook`, `twitter`, `instagram`, `youtube`, `deskripsi_wisata`, `foto_wisata`) VALUES
(1, 3, 'Masjid Terapung Samudera Ilahi', 'Pantai Cerocok, 25651, Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/rRvbBZJPjLkNEFH36', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7977.407828838158!2d100.56716288923865!3d-1.3542314186518503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d9d1b26aafd%3A0xab73edf3dfc631c8!2sPantai%20Carocok!5e0!3m2!1sid!2sid!4v17178721946', '081265987863', '24 Jam', 0, 0, 'https://www.youtube.com/embed/3ZRWY1bKdjg?si=oL0nVHx8B3o67zwS', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@aliarsitek', 'Masjid Samudera Ilahi terletak di kawasan wisata Pantai Carocok Painan, Kecamatan IV Jurai, Pesisir Selatan. Sebagaimana diberitakan Kompas.com, Minggu (24/4/2022), ada beberapa opsi transportasi yang bisa dipilih jika berangkat dari Bandara Internasional Minangkabau, Padang. Berjarak sekitar 100 kilometer (km), perjalanan bisa ditempuh selama kurang lebih dua jam menggunakan taksi argo bandara, atau taksi plat hitam. Alternatif kedua adalah dengan menyewa kendaraan pribadi berupa minibus, selama satu hari penuh untuk berkeliling tempat wisata, dari bandara. Namun, wisatawan harus menyiapkan juga uang tambahan untuk jasa supir dan biaya bensin kendaraan. Terakhir, bisa juga menggunakan bus DAMRI antar kota, menuju Pasar Raya Padang. Dari lokasi tersebut, perjalanan dilanjutkan dengan bus travel, menuju area Pantai Carocok Painan, bersama wisatawan lain yang ingin menuju ke tempat itu.', '6664a4e7dacb4_IMG-20240603-WA0059.jpg'),
(2, 3, 'Masjid Hidayatullah', 'Jalan, Ampang Pulai, Koto XI Tarusan, South Pesisir Regency, West Sumatra 25654', 'https://maps.app.goo.gl/3vywjw8gVyU8Lh4K6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.865183689392!2d100.46710197448274!3d-1.25241223558901!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35778ad437deb%3A0x83ee323d86402074!2sMasjid%20Hidayatullah!5e0!3m2!1sid!2sid!4v17178719', '082175963489', '24 Jam', 0, 0, 'https://www.youtube.com/embed/OUnLcNZsj84?si=hSDS61hKkMTa0vlp', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@kampuangkito', 'Masjid berada sekitar 100 meter dari pintu gerbang masuk Kawasan Wisata Mandeh via Kecamatan Koto XI Tarusan. Jika berkunjung ke Mandeh, masyarakat bisa singgah untuk shalat atau berwisata religius.\r\nMasjid Hidayatullah didirikan dan diwakafkan oleh keluarga Besar Almarhum Rusniman Rajo Basa. Salah seorang anggota keluarga yang memiliki inisiatif dan memberikan usulan mendirikan masjid di tanah milik keluarga. Namun Almarhum lebih dulu berpulang ke Rahmatullah.\r\nMasjid Hidayatullah berupaya menampilkan sosok arsitektur Minangkabau modern, berdiri di tengah lingkungan masyarakat saat ini. Diharapkannya desain masjid ini mampu melekat secara nurani dan psikologis terhadap umat muslim Minangkabau masa kini.', '6664a61f8db8b_1.jpg'),
(3, 3, 'Masjid Agung Al-Amilin', 'Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/4npWaj1sdM1MyjiL9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.716450393972!2d100.58096187448334!3d-1.3465926356939681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d7c8869b805%3A0xc850b13e6d82c4ce!2sMasjid%20Agung%20Al-Amilin!5e0!3m2!1sid!2sid!4v1', '081346975345', '24 Jam', 0, 0, 'https://www.youtube.com/embed/c0hBU18_cyE?si=HtLq2Qy-zRaPVve-', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@jhoniofficial', 'Masjid Agung Al-Amilin terletak Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651, nyaman untuk beribadah dan beristirahat', '6664a831255ce_1.jpg'),
(4, 3, 'Masjid Agung Al-Amilin', 'Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/kKF7UgCwEGhTuigu9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.718528698871!2d100.57421737548708!3d-1.345322032164631!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d7e61c377a5%3A0x22611538450a5c89!2sMasjid%20Akbar%20Baiturrahman!5e0!3m2!1sid!2sid!4', '087895632478', '24 Jam', 0, 0, 'https://www.youtube.com/embed/Q1h9V6XU3TE?si=BmQM9py8IB77hCVG', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@Al-Muttaqintv', 'Masjid AKBAR BAITURRAHMAN dibangun pada tahun 2011. Masjid AKBAR BAITURRAHMAN merupakan kategori Masjid Jami . Masjid AKBAR BAITURRAHMAN beralamat di Jl. Ilyas Yacub Painan kabupaten/kota Pesisir Selatan provinsi Sumatera Barat. Masjid AKBAR BAITURRAHMAN memiliki luas tanah 5.000 m2 , luas bangunan 10.000 m2 dengan status tanah Girik. Masjid AKBAR BAITURRAHMAN memiliki jumlah jamaah 150 - 200 orang jumlah muazin 5 orang jumlah remaja 50 orang dan Jumlah Khotib 3 orang .', '6664a9ee7c706_1.jpg'),
(5, 3, 'Masjid Islamic Centre Sago Painan', 'Jl. Raya Padang - Painan, Sago Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25652', 'https://maps.app.goo.gl/6bFsiNRQ3MNmyUHh8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7823686357565!2d100.53936357448309!3d-1.3056904356466186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35232c792ea71%3A0x5db48310fccb7d5a!2sMasjid%20Islamic%20Centre%20Sago%20Painan!5e0!3', '082175486611', '24 Jam', 0, 0, 'https://www.youtube.com/embed/sHq5D0jFUuY?si=n2xC64ZXX8HnJZmK', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@tempunai', 'Masjid Islamic Centre Sago Painan Jl. Raya Padang - Painan, Sago Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25652, nyaman untuk istirahat dan beribadah', '6664ac9f92042_1.jpg'),
(6, 2, 'Pantai Family', ' Muara kandis, Kec. Linggo Sari Baganti, Kabupaten Pesisir Selatan, Sumatera Barat', 'https://maps.app.goo.gl/eLfDPPs1Sp1Sp8Ag7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.5950764457266!2d100.85576017448713!3d-1.9128230366308432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e2d252c09b6dd57%3A0xf8387b5aa62b64d3!2sPantai%20Family!5e0!3m2!1sid!2sid!4v17178754423', '082156943568', '07.00 - 18.30', 10000, 5000, 'https://www.youtube.com/embed/5bKRriCxlFk?si=nDby4Ul0Y2LWzqrI', 'https://www.facebook.com/pantaifamily/', 'https://twitter.com', 'https://www.instagram.com/pantai_family/', 'https://www.youtube.com/@yulmanyudhistira3670', 'Pantai Family merupakan salah satu pantai yang indah di Kabupaten Pesisir Selatan Provinsi Sumatera Barat dan saat ini lagi viral.\r\nPantai Family ini berada di Air Haji Kab.Pessel dan berjarak lebih kurang 76 Km dari pusat Kabupaten, Painan. Memberikan Pemandangan yang sangat bagus dan indah', '6664b420e0fa9_pantai fmly.jpeg'),
(7, 2, 'Pantai Carocok', 'Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/7tQWUhrEg4hg6LLz7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7977.407828838177!2d100.56716288923862!3d-1.3542314186518598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d9d1b26aafd%3A0xab73edf3dfc631c8!2sPantai%20Carocok!5e0!3m2!1sid!2sid!4v17178757943', '081277479582', '07.00 - 18.30', 10000, 0, 'https://www.youtube.com/embed/G9HttwsOnE0?si=EXFkQYtBkGZgr9O0', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@tribunvideo', 'Pantai Carocok merupakan pusat hiburan di Painan, terutama pada hari libur selalu menjadi buruan pengunjung. Pantai Carocok memiliki air laut yang jernih dan bebas sampah dan pepohonan di sekitar pantai membuat udara terasa sejuk. Tepi pantai landai dengan ombak yang tidak terlalu besar sehingga pantai dapat digunakan berenang oleh anak-anak dan orang dewasa.', '6664b5582dfeb_IMG-20240603-WA0040.jpg'),
(8, 2, 'Pulau Cingkuak', 'Painan, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat', 'https://maps.app.goo.gl/TctLBcfUoynT4DD78', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7059170102852!2d100.55746317448336!3d-1.353014035701677!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd34d99f7f965ed%3A0x397bd66d963a12d4!2sCINGKUAK%20ISLAND!5e0!3m2!1sid!2sid!4v1717877121', '085767943512', '07.00 - 18.30', 25000, 10000, 'https://www.youtube.com/embed/CSC489cL-_I?si=aa3nLAB-packqsjB', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@benk2emtr4ck', 'Pulau Cingkuak adalah pulau yang terletak di Teluk Painan, Pesisir Selatan.[1] Kawasan Pulau Cingkuk diduga merupakan benteng Portugis yang digunakan sebagai gudang lada masa VOC. Pulau ini memiliki peranan yang besar pada masa VOC.[2] Pada tahun 1666, di Pulau inilah kompeni dagang VOC membangun lojinya di pantai barat Sumatra. Pulau Cingkuak merupakan pusat kegiatan perdagangan di kawasan selatan pesisir barat Minangkabau. Pada masa kejayaannya, di pulau ini pernah ditempatkan 59 petugas (aparat) VOC yang dipimpin oleh seorang Koopman.[1]\r\n\r\n\r\nPeta Pulau Cingkuak dan Barus\r\nPulau Cingkuak menjadi cabang utama VOC di Pantai Barat Sumatra, Namun pada tahun 1818 dibangun kembali pos perdagangan. Peninggalan-peninggalan arkeologi yang terdapat di Pulau Cingkuak berupa sisa-sisa benteng yang tidak utuh hanya berupa tembok pagar sebelah timur, pintu utama di bagian barat, dan dermaga di sebelah timur. Selain itu juga terdapat Kherkof makam dari bahan batu marmer bertuliskan bahasa Portugis dan sebuah lubang (sumuran).\r\n\r\nKawasan Pulau Cingkuak ini telah menjadi bagian dari Cagar Budaya di Balai Pelestarian Cagar Budaya (BPCB) Sumatera Barat wilayah Kerja Sumatera Barat, Riau dan Kepulauan Riau dengan Nomor Inventaris 04/BCB-TB/A/14/2007 dan Upaya untuk pemutakhiran Benteng Portugis di Pulau Cingkuak dilakukan tahun 2017.[2]', '6664b9b005b60_pulau cingkuk.jpeg'),
(9, 2, 'Pantai Batu Kalang', 'Ampang Pulai, Koto XI Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat 25654', 'https://maps.app.goo.gl/e14ThhanpGjjMB1w9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15955.373443362085!2d100.43094453953488!3d-1.2666691769491742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd357565d4f9ebf%3A0x6af373a35a10f608!2sPantai%20Batu%20Kalang!5e0!3m2!1sid!2sid!4v1717', '089645249635', '07.00 - 18.30', 10000, 5000, 'https://www.youtube.com/embed/YY9wfjevzsM?si=Q7tMvO33DrF8yUv_', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@kampuangkito', 'Batu Kalang, Terletak di Nagari Ampang Pulai, Kecamatan Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat, pantai ini sudah terkenal hingga ke mancanegara.\r\nMencari lokasi Pantai Batu Kalang ini cukup mudah. Kalau dari Padang menuju Pesisir Selatan selepas Pasar Tarusan, belok ke kanan menuju kawasan Mandeh dengan waktu sekitar satu jam perjalanan. Pantai ini juga masuk dalam kawasan Mandeh yang dikenai sebagai wisata terbaik di Pesisir Selatan. Sebelum tiba di Pantai Batu Kalang, pengunjung akan bertemu dengan rumah-rumah warga yang dilengkapi kapal nelayan.', '6664bb071e7ed_batu kalang 1.jpeg'),
(10, 1, 'Paragliding Site Puncak Langkisau', ' Salido, Kec. Iv Jurai, Kabupaten Pesisir Selatan, Sumatera Barat 25651', 'https://maps.app.goo.gl/deohitsPaTMAu4n47', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d34292.631738772114!2d100.53310595889934!3d-1.3470609408900651!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd3527e978b2b8f%3A0x20e391def9f39718!2sLangkisau%20Resort!5e0!3m2!1sid!2sid!4v17178794', '081279548866', '08.00 – 21.00', 5000, 5000, 'https://www.youtube.com/embed/AEHqWtKYbmQ?si=9YZgL2erEKc1At7-', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@KaliliangSumbar', 'Bukit Langkisau merupakan andalan wisata kota Painan. Terletak di pantai barat pulau Sumatera, Puncak bukit memiliki ketinggian sekitar 400 meter. Menuju puncak Langkisau Anda bisa menggunakan kendaraan, karena jalannya sudah diaspal. Tentunya lebih mudah, wisatawan datang ke puncak Bukit Langkisau. Sesampainya di area parkir, Anda masih harus berjalan kaki sekitar 25 meter menaiki tangga menuju puncak bukit.', '6664be0864591_IMG-20240603-WA0030.jpg'),
(11, 1, 'Mandeh', 'Koto XI Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat', 'https://maps.app.goo.gl/H7nwcgxCjMPz9mnf9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31911.605741195934!2d100.41308732311985!3d-1.1948940161312671!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35806d22804a9%3A0xad1efbe46e90c1e9!2sMandeh%2C%20Koto%20XI%20Tarusan%2C%20Kabupaten%', '081268975432', '07.00 - 18.30', 10000, 10000, 'https://www.youtube.com/embed/klP7we-fx4Q?si=-zXetHtrdy7TH9mL', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@syandrez', 'Kawasan Mandeh merupakan salah satu tempat wisata favorit di Sumatera Barat. Perpaduan antara bukit dan teluk seluas ± 18.000 hektare dengan dihiasi pulau-pulau kecil yang berada di bagian tengah teluk menjadikan Kawasan Mandeh ini dikenal sebagai Raja Ampatnya Sumatera Barat. Terletak di Kecamatan Koto XI Tarusan, Pesisir Selatan. Objek wisata ini dapat ditempuh hanya 2 jam dari Kota Padang menggunakan jalur darat.\r\n\r\nIstilah Mandeh sendiri dalam bahasa minang artinya bundo atau bunda atau ibu, sehingga kawasan ini dianggap sebagai induk kepulauan oleh masyarakat dan penduduk setempat. Beberapa pulau kecil yang berada di kawasan ini diantaranya Pulau Setan, Pulau Traju, Pulau Sironjong Besar dan Kecil, dan Pulau Cubadak. Di bagian Utara kawasan Mandeh terdapat pulau-pulau yang bentuknya melingkar, sangat menakjubkan dan jelas terlihat dari ketinggian. Pulau-pulau yang melingkar ini diantaranya Pulau Pagang, Pulau Marak, Pulau Bintangor, dan Pulau Ular.\r\n\r\nSalah satu pulau yang paling sering dikunjungi oleh wisatawan di kawasan Mandeh adalah Pulau Setan. Meskipun namanya seram, namun pada kenyataanya tidak demikian. Nama asli pulau tersebut ialah Pulau Sutan yang kemudian berubah seiringnya waktu akibat pelafalan masyarakat setempat. Pulau Setan memiliki daya tarik tersendiri dimana pasir pantainya yang masih putih bersih, air laut yang biru, ombak yang cukup tenang, serta memiliki puncak bukit sebagai spot terbaik menikmati panorama alam dari ketinggian.', '6664c46e207cb_mandeh.jpg'),
(12, 1, 'Bukik Ameh', 'Ampang Pulai, Koto XI Tarusan, South Pesisir Regency, West Sumatra 25654', 'https://maps.app.goo.gl/vuvkarj3CpB8nRXr9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8400631548716!2d100.42409087448287!3d-1.2688096356062413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd35b4bf6625173%3A0x25e89ded1f746f5d!2sBukik%20Ameh!5e0!3m2!1sid!2sid!4v1717880944243!', '081567492513', '07.00 - 18.30', 10000, 5000, 'https://www.youtube.com/embed/A4QVPeFfj3U?si=kjdRbl9ltMLDGIaT', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@Melta_entertainment', 'Bukik Ameh/Bukit Emas terletak di Kecamatan Koto XI Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat. Bukik Ameh viral karena salah satu postingan di media sosial yang katanya mirip seperti gurun/padang pasir di berbagai dunia. Menurut warga sekitar, Bukik Ameh akan dikembangkan menjadi Kawasan Ekonomi Khusus(KEK). Hingga kini belum ada kejelasan dari pemerintah. sekarang ini, warga sekitarlah yang mengelola di kawasan Bukik Ameh tersebut.\r\nJika kalian ingin kesana untuk perjalanan dari Kota Padang perjalanan akan ditempuh\r\nlebih kurang 2 jam perjalanan. kalian masuk ke gerbang menuju Puncak Mandeh dan terus ke arah Pantai Batu Kalang, setiba disana kalian belok kanan dan lurus saja kalian akan sampai ke tempat tujuan. untuk biaya, per orang Rp. 10.000(sudah dengan parkir) dan jika ditambah pemandu biayanya ditambah Rp.\r\n15.000 lagi. kalau kalian ingin ke Taluak Sikulo\r\njuga bisa lewat Bukik Ameh dengan cepat.\r\nPerjalanan menuju Gurun Pasir itu membutuhkan waktu lebih kurang 1 jam. untuk pergi kesana disarankan dengan cuaca yang mendukung atau tidak hujan, dan waktu sebaiknya kesana pagi/siang menjelang sore hari. sebelum kalian menuju kesana, jangan lupa membawa bekal atau air minum karena jalannya menanjak dan bertanah. tapi warga setempat tengah membuat atau memperbaiki jalan untuk menuju kesana agar lebih mudah dalam perjalanan. ditengah perjalanan ada tempat istirahat di bawah pepohonan yang sejuk serta kalian akan disungguhi pemandangan dari atas sana.', '6664c96df0529_bukik ameh pesisir selatan.jpg'),
(13, 1, 'Bukit Pamutusan', 'Sungai Pinang, Koto XI Tarusan, Kabupaten Pesisir Selatan, Sumatera Barat', 'https://maps.app.goo.gl/UVZXGEVGsVSUDXn38', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.9964171143397!2d100.35236557448225!3d-1.1629977355027712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4a7005f144549%3A0x92a380fc157d5e82!2sPantai%20Pamutusan!5e0!3m2!1sid!2sid!4v17178818', '085178964363', '07.00 - 18.30', 10000, 5000, 'https://www.youtube.com/embed/UWjY7dj1QV8?si=MpK98CnLbJlQWRh_', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@Gebbypratama', 'Pulau Pamutusan berada di Bungus Teluk Kabung, Padang. Salah satu keunikan dari pulau ini adalah lokasinya yang tersembunyi dan bisa ditempuh dengan menggunakan kapal kecil dari Pelabuhan Muara, Padang, sekitar satu jam perjalanan laut.\r\nSaat mengunjungi Pulau Pamutusan, pengunjung akan disuguhkan dengan pemandangan yang alami. Di sekitar pulau masih terdapat hutan, pepohonan rimbun, dan suasana yang tenang. Pulau dengan bentuk memanjang ini menyatu dengan daratan utama pesisir selatan Bungus Teluk Kabung dan di bagian tengahnya terdapat pantai kecil berpasir putih.', '6664cb9fafffd_1.jpg'),
(14, 1, 'Bukit Landai', 'Pelangai, Kec. Ranah Pesisir, Kabupaten Pesisir Selatan, Sumatera Barat 25666', 'https://maps.app.goo.gl/SuxWGjQdm6n4HV1u8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.906315801193!2d100.8624472744861!3d-1.7738744363524002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e2cd93313a1ffd3%3A0x2600572221dd0a04!2sBukit%20landai!5e0!3m2!1sid!2sid!4v1717882071816!', '082167355568', '07.00 - 18.30', 0, 0, 'https://www.youtube.com/embed/-wgLrhcozu0?si=bEPRFvb-XRjgGHQo', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@Sepriputra', 'Bukit Landai juga disebut dengan Bukit Teletubbies. Hal itu karena bentuknya yang menyerupai rumah Teletubbies. Bukit Landai merupakan bagian dari kaki Bukit Barisan.\r\n\r\nLokasi Bukit Landai berjarak sekitar 10 km dari Balai Selasa, ibu kota Kecamatan Ranah Pesisir. Adapun jarak dari pusat Nagari Pelangai Gadang lebih kurang 5 km.\r\n\r\nJarak Bukit Landai cukup dekat dengan objek wisata air terjun Pelangai Gadang, kira-kira lebih kurang 2 km.', '6664cd20488f1_1.jpg'),
(15, 2, 'Pantai Manjuto Sungai Pinang', 'Manjuto Beach Kota Padang, Sungai Pinang, Koto XI Tarusan, Sungai Pinang, Pesisir Selatan, Kab. Pesisir Selatan, Sumatera Barat 25654', 'https://maps.app.goo.gl/6sedaEtJH8dmaooL8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.0097242828188!2d100.38245117448218!3d-1.1535441354944262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4a7b3283e1bdf%3A0xb75f6f619567a525!2sManjuto%20beach!5e0!3m2!1sid!2sid!4v17178777148', '089563427591', '08.00 – 16.00', 10000, 0, 'https://www.youtube.com/embed/kwNi3TRLTnk?si=JHUCOaA_BpC7-n1n', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com/@anggahijra9856', 'Pantai Manjuto Padang terlihat sangat elok dengan air pantai yang jernih hingga terlihat terumbu karang. Pepohonan yang berjajar rapi dan masih rindang berhasil memberikan nuansa sejuk di sekeliling Pantai Pasir Putih. Dengan pasir putih sebagai pelengkap pesona bumi Sumatera Barat.\r\nTempatnya sangat indah dan akan memanjakan mata seluruh wisatawan selama berada di sana. Pantai ini memiliki lingkungan yang asri dan menyenangkan. Wisatawan tidak akan dibuat bosan apabila berlama-lama di pesisir karena disuguhkan dengan pemandangan landscape yang sangat menawan.', '6666b89c864bb_manjuto-beach-homestay1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_galeri_penginapan`
--
ALTER TABLE `tbl_galeri_penginapan`
  ADD PRIMARY KEY (`id_galeri_penginapan`);

--
-- Indeks untuk tabel `tbl_galeri_restoran`
--
ALTER TABLE `tbl_galeri_restoran`
  ADD PRIMARY KEY (`id_galeri_restoran`);

--
-- Indeks untuk tabel `tbl_galeri_wisata`
--
ALTER TABLE `tbl_galeri_wisata`
  ADD PRIMARY KEY (`id_galeri_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `tbl_kategori_wisata`
--
ALTER TABLE `tbl_kategori_wisata`
  ADD PRIMARY KEY (`id_kategori_wisata`);

--
-- Indeks untuk tabel `tbl_penginapan`
--
ALTER TABLE `tbl_penginapan`
  ADD PRIMARY KEY (`id_penginapan`);

--
-- Indeks untuk tabel `tbl_restoran`
--
ALTER TABLE `tbl_restoran`
  ADD PRIMARY KEY (`id_restoran`);

--
-- Indeks untuk tabel `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indeks untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri_penginapan`
--
ALTER TABLE `tbl_galeri_penginapan`
  MODIFY `id_galeri_penginapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri_restoran`
--
ALTER TABLE `tbl_galeri_restoran`
  MODIFY `id_galeri_restoran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri_wisata`
--
ALTER TABLE `tbl_galeri_wisata`
  MODIFY `id_galeri_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori_wisata`
--
ALTER TABLE `tbl_kategori_wisata`
  MODIFY `id_kategori_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_penginapan`
--
ALTER TABLE `tbl_penginapan`
  MODIFY `id_penginapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_restoran`
--
ALTER TABLE `tbl_restoran`
  MODIFY `id_restoran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
