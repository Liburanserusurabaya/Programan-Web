-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 15.39
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` varchar(2554) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `waktu`) VALUES
(3, 'Pantai Jonggring Saloko', 'Pantai yang terletak di daerah Malang ini memang tidak cocok untuk dijadikan tempat berenang karena banyaknya karang tajam yang berbahaya, tetapi jika kalian hanya datang ke pantai untuk melihat-lihat saja, kalian akan dihibur oleh putihnya pasir, jernihnya air laut, serta batu karang yang menjadi tontonan tersendiri. Pantai ini terletak cukup jauh dari kota Malang (sekitar 70 kilometer) dan merupakan salah satu pantai yang amat jarang dikunjungi karena letaknya yang sangat terisolasi.\r\nJika kalian ingin menikmati putihnya pasir pantai ini, kalian harussiap berkendara selama beberapa jam. Jalan yang harus kalian lalui pun terjal dan berkelok-kelok, sehingga kaliana membutuhkan supir yang handal jika kalian ingin mencapai pantai ini dalam waktu yang singkat.\r\n', '2021-01-03 05:20:58'),
(4, 'Pantai Rowo Indah', 'Atau lebih dikenal dengan nama panggungnya pantai Gua Cina. Pantai Rowo Indah merupakan pantai yang bisa dikatakan unik karena satu hal: pertemuan gelombang air laut dari arah barat, selatan, dan timur. Ketika ketiga ombak ini bertabrakan satu sama lain, tabrakan tersebut akan menghasilkan suatu bunyi yang tentunya akan sangat unik dan tidak dapat ditemukan di tempat lain.\r\nPantai ini dinamakan pantai Gua Cina karena dulu terdapat pertapa Cina yang bermeditasi di gua tersebut. Sebelum meninggalkan pantai tersebut, sang pertapa meninggalkan goresan-goresan hanzi Mandarin. Berhubung banyak orang yang tidak mengerti apa arti tulisan tersebut, orang-orang pada akhirnya memberi nama pantai tersebut pantai Gua Cina.', '2021-01-03 05:22:11'),
(5, 'Pantai Klayar', 'ini isi judul keempatJika kalian sedang berada di daerah Pacitan dan kalian ingin berjalan-jalan di pantai, maka pantai Klayar bisa jadi tempat wisata yang bagus untuk kalian. Sebagai salah satu tempat di Pacitan yang memiliki potensi wisata yang sangat tinggi, pantai pasir putih ini tentunya memiliki daya tariknya tersendiri bagi pecinta pantai. Berbeda dengan pantai-pantai terkenal lainnya, air laut di Pantai Klayar termasuk amatlah jernih dan aman jika kalian ingin berenang. Pantai ini juga memiliki seruling lautnya sendiri dalam rupa karang besar yang terdapat di ujung pantai. Ketika ombak mengenai karang besar ini, seruling laut tersebut akan menghasilkan bunyi unik yang tidak dapat kalian temukan dimana-mana.', '2021-01-03 05:22:54'),
(6, 'Pulau Bawean', 'Pulau ini terdapat di daerah Gresik, dan di dalam pulau ini terdapat pula berbagai jenis hiburan yang bisa kalian dapatkan. Jika kalian ingin merasakan asyiknya berenang di dalam danau, kalian bisa berkunjung ke danau Kastoba dan berenang disana. Jika kalian ingin menikmati hamparan karang yang berbentuk sedemikian indahnya, kalian bisa berkunjung ke Tanjung Gaang. Kalian juga bisa menemukan rusa unik yang hanya tinggal di pulau ini. Ikan-ikan yang ada juga tidak kalah beragam.\r\nHal yang mungkin bisa membatalkan niat kalian dalam berkunjung ke pulau ini adalah jarak tempuhnya. Karena pulau ini jauhnya sekitar 120 kilometer dari Gresik, kalian harus menumpangi sebuah kapal untuk mencapainya. Waktu tempuhnya kira-kira tiga jam jika kalian menyewa kapal cepat dan 8 jam jika kalian menyewa kapal biasa.\r\n', '2021-01-03 05:23:39'),
(7, 'Blue Bay atau Teluk Biru', 'Orang-orang pasti mengenal teluk hijau di Banyuwangi, akan tetapi Banyuwangi memiliki satu teluk lagi yang tidak dikenal oleh banyak orang. Teluk tersebut adalah Teluk Biru, dan teluk tersebut memang sangat tidak terkenal. Jika kalian bertanya-tanya kepada orang Banyuwangi, belum tentu orang-orang tersebut dapat menuntun kalian ke tempat wisata yang menarik ini. Teluk ini terkenal karena pemandangan dalam lautnya yang nan indah dan tiada duanya. Bila suatu saat kalian ingin berkunjung kesini, sebutkan nama Selanggrong karena nama tersebut terdengar lebih familiar di telinga warga sekitar dibandingkan nama teluk biru.\r\nUntuk mencapai tempat ini butuh perjuangan yang lumayan keras. Ada dua jalur yang bisa kalian ambil. Di jalur pertama, kalian harus melakukan trekking sepanjang 1 jam dari pantai Rajegwesi. Jika kalian ingin kesana lebih cepat, kalian bisa menyewa kapal dan menghadapi ombak besar selama 15 menit.\r\n', '2021-01-03 05:24:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'eman', '123'),
(2, 'badrul', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
