-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Des 2020 pada 19.40
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `emall` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `judul`, `deskripsi`, `alamat`, `telepon`, `emall`) VALUES
(1, 'tentang kami ', 'satu-satunya cara bagi kami untuk mengukur kesuksesan adalah ketika para penjual kami memiliki kehidupan yang lebih baik dengan menjual produk dan menjangkau lebih banyak pelanggan dengan teknologi yang kami sediakan.', 'jalan sisingamangaraja 29a, karangayar mg3 1180 / RT66,RW18. Brontokusuman .', '1240935834', 'tokohebat@care.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `gambar`, `deskripsi`) VALUES
(1, 'resources/images/banner/1.jpg', ''),
(2, 'resources/images/banner/2.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id_faq`, `pertanyaan`, `jawaban`) VALUES
(1, 'Mengapa Pesanan Saya Dibatalkan?', 'Toppers, walaupun sudah melakukan pembayaran, pesanan kamu dapat dibatalkan apabila:\r\n\r\n    Penjual menolak pesanan.\r\n    Transaksi telah melanggar syarat dan ketentuan berlaku.\r\n    Dana yang kamu transfer berbeda dengan total belanja pada invoice.\r\n    Penjual tidak merespon pesanan dalam waktu 1×24 jam terhitung sejak pembayaran diverifikasi\r\n    Penjual tidak memasukkan nomor resi dalam waktu 2×24 jam atau (H+2) terhitung sejak pembayaran diverifikasi.'),
(2, 'Bagaimana cara mengecek status pemesanan ?', '1. Klik ikon Menu akun\r\n2. pada halaman akun saya pergi ke bagian daftar transaksi .\r\n- Jika kamu memilih ikon dalam proses,\r\nsemua status transaksi yang sedang dalam proses akan muncul di dalam halan daftar transaksi .\r\n- Jika kamu memilih ikon semua transaksi , semua status transaksi akan muncul di dalam halaman daftar transaksi .\r\n- Jika kamu memilih E-tiket & E-voucher aktif , semua tiket dan voucher aktif akan muncul di dalam halaman daftar transaksi. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Elektronik'),
(2, 'Fashlon Wanita'),
(3, 'Fashion Pria'),
(4, 'Handphone & Tablet');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `gambar`, `id_kategori`, `deskripsi`) VALUES
(1, 'Smartphone Oppo f1', 2200000, 'resources/images/produk/oppo-f1.jpg', 0, 'NETWORKTechnologyGSM / HSPA / LTELAUNCHAnnounced2016, MarchStatusAvailable. Released 2016, MarchBODYDimensions151.8 x 74.3 x 6.6 mm (5.98 x 2.93 x 0.26 in)Weight145 g (5.11 oz)BuildFront glass, aluminum bodySIMHybrid Dual SIM (Nano-SIM, dual stand-by)DISPLAYTypeAMOLED capacitive touchscreen, 16M colorsSize5.5 inches, 83.4 cm2 (~73.9% screen-to-body ratio)Resolution1080 x 1920 pixels, 16:9 ratio (~401 ppi density)ProtectionCorning Gorilla Glass 4PLATFORMOSAndroid 5.1 (Lollipop); ColorOS 3ChipsetMediatek MT6755 Helio P10 (28 nm)CPUOcta-core (4x2.0 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53)GPUMali-T860MP2MEMORYCard slotmicroSD, up to 256 GB (uses shared SIM slot)Internal64GB 4GB RAMMAIN CAMERASingle13 MP, f/2.2, PDAFFeaturesLED flash, panorama, HDRVideo1080p@30fpsSELFIE CAMERASingle16 MP, f/2.0VideoSOUNDLoudspeakerYes3.5mm jackYes Active noise cancellation with dedicated micCOMMSWLANWi-Fi 802.11 a/b/g/n, Wi-Fi Direct, hotspotBluetooth4.0, A2DPGPSYes, with A-GPSRadioNoUSBmicroUSB 2.0, USB On-The-GoFEATURESSensorsFingerprint (front-mounted), accelerometer, proximity, compassBATTERY Non-removable Li-Po 2850 mAh battery'),
(2, 'Mouse PC Logic', 100000, 'resources/images/produk/mouse-logic.jpg', 0, 'X-Craft 5000\r\n\r\nTechnical Specifications:\r\n\r\nCPI switching on-the-fly [default]: 2000/3200 CPI\r\n\r\nHigh performance and tracking speed up to 20 inches per second\r\n\r\nFrame rate: 3000fps\r\n\r\nAcceleration: 8G\r\n\r\n7-Colors graphic lighting effects with pulsating effects\r\n\r\nCord length: 1.8 meters'),
(3, 'Smartphone Google pixel', 1800000, 'resources/images/produk/gp2.jpg', 0, 'Pixel 2 diproduksi oleh HTC dan 2 XL diproduksi oleh LG. Untuk layar, kedua ponsel ini memiliki layar OLED meskipun diproduksi oleh produsen yang berbeda. Layar dapat disetel untuk selalu aktif. Saat dicoba, speaker pada kedua ponsel terdengar keras tanpa banyak distorsi.\r\n\r\nProsesor keduanya menggunakan prosesor Qualcomm Snapdragon 835 standar, RAM 4GB, kamera belakang 12 megapiksel dan kamera depan 8 megapiksel. Yang membedakan keduanya hanyalah kapasitas baterai, ukuran layar, ukuran ponsel, dan beratnya saja.\r\n\r\nPixel 2 XL memiliki kapasitas baterai 3520 mAh dengan layar 6 inci beresolusi 2880 x 1440 jenis POLED. Sedangkan Pixel 2 memiliki kapasitas baterai 2700 mAh dan layar 5 inci dengan resolusi 1920 x 1080 jenis AMOLED.\r\n\r\n'),
(4, 'Laptop Lenovo g450', 3400000, 'resources/images/produk/lenovo-g450.jpg', 0, '[Baik]\r\nHarga Terjangkau, sudah menggunakan RAM DDR3 untuk kelas Processor dual Core T4200, material Cashing bagus dan tahan gores, desain keyboard nyaman dan mudah dibersihankan, sudah support USB 2.0 port peripheral lumayan lengkap (3 USB, 1 VGA, 1 LAN), layanan dukungan untuk mendapatkan driver versi terbaru cukup mudah\r\n\r\n[Buruk]\r\nKualitas Batre mudah Drop, Wireless LAN rentan rusak, touch pad sering terjadi trouble, layar kurang begitu enak, web cam hasilnya kurang memuaskan, bobot cukup berat sehingga kurang nyaman untuk dibawa, dimensi cukup besar dan tebal, desain kurang terlihat modern'),
(5, 'Cincin emas 1gram', 990000, 'resources/images/produk/cincin-1gram.jpg', 0, '\r\nKode Produk : KLR00569538 - 001803\r\n\r\nMaterial : 18K White Gold\r\n\r\nBerat Emas : 2.252gr\r\n\r\nSpesifikasi Berlian :\r\n- 7 Round Diamond 0.073 Carat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `[id_kategori]` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
