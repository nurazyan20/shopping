-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 05:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2020-12-01 16:21:18', '03-12-2020 12:35:42 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Beauty', 'Beauty Products', '2020-12-01 19:17:37', ''),
(4, 'Health Care', 'Health Care Products', '2020-12-01 19:19:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(21, 4, '23', 1, '2021-02-06 15:34:33', 'COD', 'In Process'),
(22, 4, '22', 1, '2021-02-06 15:35:25', 'Debit / Credit card', 'In Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 12, 'Delivered', 'EN4526378247MY', '2020-12-23 10:08:13'),
(7, 21, 'in Process', 'EN65364220MY', '2021-02-06 15:41:20'),
(8, 22, 'In Process', 'EN832742753MY', '2021-02-06 15:46:04'),
(9, 21, 'In Process', 'EN65364220MY\r\n', '2021-02-06 15:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 25, 4, 0, 4, 'Nur Azyan', 'Good', 'Very good', '2021-02-06 15:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'SINUS TAB', 'NONE', 100, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">SINUSTAB</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">Sinustab Dapat Membantu Merawat Bersin Dan Selsema Kanak-Kanak Dengan Berkesan.</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">Rawatan Sinustab Dapat Keringkan Lendir Sarang Resdung Tanpa Perlu Diasap, Dibekam, Diwap, Atau Disedut.</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">Sinustab Resdung pilihan seisi keluarga kerana memberi kelegaan berpanjangan dan sangat mudah diambil.</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">KEBAIKAN SINUSTAB :</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- DIFORMULASI KHAS UNTUK KANAK-KANAK&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- SESUAI BAGI KANAK-KANAK YANG MENGALAMI RESDUNG&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- MERAWAT KANAK-KANAK ALAHAN&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">INFO KANDUNGAN :</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- redakan anti-keradangan&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- mempunyai sifat semula jadi&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- membantu meingkatkan imunisasi&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- menyembuhkan kuman yang menyebabakan alahan&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">KANDUNGAN SINUSTAB :</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- Mengandungi sees nigella sativa (Habatus Sauda)</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- rhizome curcuma longa (kunyit)</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">- fructus malus domestica (Epal)&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">CARA PENGAMBILAN :</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">Sinustab mempunyai 30 biji kapsul dan diambil 1 biji sehari iaitu pada waktu selepas makan.</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">BOLEH DIAMBIL BERMULA SEAWAL USIA 6 TAHUN&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">BERPERISA APPLE&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">SIAPA YANG TIDAK BOLEH AMBIL :</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">Perempuan yang mengandung 1-3 bulan, Pesakit masalah kronik seperti sakit jantung, sakit buah pinggang, Masalah G6PD, Kanak- kanak berumur 6 tahun kebawah</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\"><br></span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">PRODUK YANG BERDAFTAR KKM&nbsp;</span></font></div><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; line-height: 1.4;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px; white-space: nowrap;\">(MAL 16100040TC)</span></font></div></div>', 'ST1.jpg', 'ST2.jpg', 'micromax main image.jpg', 5, 'In Stock', '2017-01-30 16:54:35', ''),
(22, 4, 2, 'TAMAR MILKSHAKE', 'FARRA BEAUTY', 60, 0, '<div><b><font color=\"#000000\">TAMAR MILK SHAKE</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">TAMAR MILK SHAKE by Farra Beauty</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Bukan sekadar Susu Tamar Biashe2!</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">TAMAR MILK SHAKE dapat :</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- Mencerahkan kulit &amp; tona lebih sekata</font></b></div><div><b><font color=\"#000000\">- Melembabkan kulit</font></b></div><div><b><font color=\"#000000\">- Memberi &amp; menambahkan tenaga</font></b></div><div><b><font color=\"#000000\">- Rasa lebih kenyang</font></b></div><div><b><font color=\"#000000\">- Bagus untuk ibu mengandung</font></b></div><div><b><font color=\"#000000\">- Membantu menambahkan susu badan</font></b></div><div><b><font color=\"#000000\">- Mengelakkan gastrik</font></b></div><div><b><font color=\"#000000\">- Membantu memulihkan tumit merekah</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">KELEBIHAN TAMAR MILK&nbsp; UNTUK IBU-IBU MENGANDUNG &amp; BERPANTANG :&nbsp;</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">1-Susu badan bertambah&nbsp;</font></b></div><div><b><font color=\"#000000\">2-Morning Sickness (mengurangkan alahan ibu mengandung)</font></b></div><div><b><font color=\"#000000\">3-Menambah kalsium, bagus untuk tulang</font></b></div><div><b><font color=\"#000000\">4-Amalkan seawal kehamilan, skin baby pun cerah &amp; mengurangkan risiko penyakit kuning</font></b></div><div><b><font color=\"#000000\">5-Memberi tenaga super power, ibu-ibu tidak lesu &amp; bermaya.</font></b></div><div><b><font color=\"#000000\">6-Rasa kenyang &amp; bagus untuk amalkan diet yang sihat, ibu berpantang pun cepatlah kurus</font></b></div><div><b><font color=\"#000000\">7-Skin lembap &amp; lebih cerah.&nbsp;</font></b></div><div><b><font color=\"#000000\">8-Boleh naikkan HB low</font></b></div><div><b><font color=\"#000000\">9-Sesuai untuk ibu hamil yang ada GDM</font></b></div><div><b><font color=\"#000000\">10-Mengelakkan risiko Kolestrol tinggi</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">1box ~ 25g x 15 sachet .</font></b></div>', 'TM1.jpg', 'TM2.jpg', 'TM1.jpg', 8, 'In Stock', '2020-12-07 11:44:45', NULL),
(23, 4, 3, 'SHOWME APPLE VITAMIN C', 'SHOWME', 39, 0, '<div><b><font color=\"#000000\">SHOW ME APPLE VIT C</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Membantu pelbagai masalah terutamanya merawat jerawat dan jeragat, memudarkan parut, mencerahkan kulit dan mengecilkan liang pori.. Bila semua masalah ni dibaikpulih. Kulit wajah kembali ceria dan nampak lebih muda..</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Apple Vit C mengandungi Slik peptide, Vitamin C, Fructose L-Gluthionce (Vitamin E) dan Apple Green Powder. So untuk kesan yang lebih cepat boleh kemam 2 sachet sehari dan banyakkan minum air kosong. Apple vit c juga boleh dicampur dengan air kosong atau jus..</font></b></div>', 'A1.jpg', 'A1.jpg', 'A1.jpg', 8, 'In Stock', '2020-12-07 11:47:07', NULL),
(24, 4, 3, 'KILO BOOSTER', 'NONE', 110, 0, '<div><b><font color=\"#000000\">KILO BOOSTER CHEWABLE TABLET</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Tiada Lagi Badan Seperti Papan Lapis! :grin:</font></b></div><div><b><font color=\"#000000\">.&nbsp;</font></b></div><div><b><font color=\"#000000\">\"ANDA AKAN RASA PERBEZAAN PADA DIRI ANDA SEBELUM DAN SELEPAS\" :blush:</font></b></div><div><b><font color=\"#000000\">.</font></b></div><div><b><font color=\"#000000\">== KELEBIHAN KILO Booster :blush:</font></b></div><div><b><font color=\"#000000\">.</font></b></div><div><b><font color=\"#000000\">- Tambah isi badan bukan tambah lemak&nbsp;</font></b></div><div><b><font color=\"#000000\">- Tambah selera makan Berganda2</font></b></div><div><b><font color=\"#000000\">- Memberikan tenaga seharian</font></b></div><div><b><font color=\"#000000\">- Stabilkan Metabolisma yg tinggi</font></b></div><div><b><font color=\"#000000\">- Menambahkan Berat Badan.!&nbsp;</font></b></div><div><b><font color=\"#000000\">- Melenakan Tidur Malam Anda</font></b></div><div><b><font color=\"#000000\">- Berbentuk tablet hanya perlu kunyah</font></b></div><div><b><font color=\"#000000\">- Rasa Vanilla yg sedap :blush:&nbsp;</font></b></div><div><b><font color=\"#000000\">.&nbsp;</font></b></div><div><b><font color=\"#000000\">Cara makan :&nbsp;</font></b></div><div><b><font color=\"#000000\">.</font></b></div><div><b><font color=\"#000000\">&nbsp;1 BIJI SEHARI&nbsp;</font></b></div><div><b><font color=\"#000000\">makan 1 biji pagi atau 1 biji malam (sebelum atau selepas makan)&nbsp;</font></b></div><div><br></div>', 'KB1.jpg', 'KB2.jpg', 'KB1.jpg', 8, 'In Stock', '2020-12-07 11:54:48', NULL),
(25, 3, 9, 'HELLO KITTY 7 PCS BRUSH SET', 'NONE', 8, 0, '<div><b><font color=\"#000000\">HELLO KITTY 7 PCS BRUSH SET</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Brush material: artificial fiber</font></b></div><div><b><font color=\"#000000\">Box size: 13cm*7cm*2cm</font></b></div><div><b><font color=\"#000000\">Color: pink</font></b></div><div><b><font color=\"#000000\">Included:</font></b></div><div><b><font color=\"#000000\">7pcs make up brush</font></b></div>', 'BR1.jpg', 'BR2.jpg', 'BR1.jpg', 8, 'In Stock', '2020-12-07 11:57:47', NULL),
(26, 3, 9, 'OKAYA BRUSH', 'OKAYA', 13, 0, '<div><b><font color=\"#000000\">OKAYA BRUSH</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Okaya brush memang BERHANTU&nbsp;</font></b></div><div><b><font color=\"#000000\">Dah try sekali memang tak pandang hat lain da, mane tak nya bulus lembut, pickup produk pun onzzz, plus harga jauh Lebih mampu milik.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Kelebihan:</font></b></div><div><b><font color=\"#000000\">- Bulu sentetik(halal)</font></b></div><div><b><font color=\"#000000\">- Sangat lembut</font></b></div><div><b><font color=\"#000000\">- Mudah digunakan</font></b></div><div><b><font color=\"#000000\">- Kualiti yang terbaik&nbsp;</font></b></div><div><b><font color=\"#000000\">- Harga sangat berpatutan</font></b></div><div><b><font color=\"#000000\">- Dijual secara berasingan</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Ada banyak jenis dgn setiap fungsi berbeza.</font></b></div><div><b><font color=\"#000000\">Untuk merasakan belaian selembut sutera dan makeup yang sempurna boleh dapatkan brush okaya.</font></b></div>', 'OB1.jpg', 'OB1.jpg', 'OB1.jpg', 8, 'In Stock', '2020-12-07 12:00:02', NULL),
(27, 3, 8, 'FARRA BEAUTY SKINCARE (TRIAL SET)', 'FARRA BEAUTY', 50, 0, '<div><b><font color=\"#000000\">FARRA BEAUTY SKINCARE (TRIAL SET)</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Kenapa *WAJIB* dptkan FBS Travel Pack ni :</font></b></div><div><b><font color=\"#000000\">- Harga yg berpatutan RM49.90</font></b></div><div><b><font color=\"#000000\">- Senang bawa kemana mana</font></b></div><div><b><font color=\"#000000\">- Boleh tahan sehingga 2bulan (depends pnggunaan)</font></b></div><div><b><font color=\"#000000\">- Bekas yg exclusive :leaves: Set Trial terbaik utk new customer .</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">SET 3 IN 1 :</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- PENCUCI MUKA/FACIAL SOAP</font></b></div><div><b><font color=\"#000000\">- Berat 30ml</font></b></div><div><b><font color=\"#000000\">- Extract betik</font></b></div><div><b><font color=\"#000000\">- Dapat mencerahkan kulit wajah</font></b></div><div><b><font color=\"#000000\">- Dapat dipakai seluruh badan terutama dibahagian mudah berdaki</font></b></div><div><b><font color=\"#000000\">- Menghaluskan kulit dan membuang sel sel mati pada kulit</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- KRIM SIANG/DAY CREAM</font></b></div><div><b><font color=\"#000000\">- Berat 5g</font></b></div><div><b><font color=\"#000000\">- Sejenis waterdrop</font></b></div><div><b><font color=\"#000000\">- Boleh mengawal minyak dibahagian muka dan mengelakkan kulit kering</font></b></div><div><b><font color=\"#000000\">- Menyihatkan kulit dan tidak kusam</font></b></div><div><b><font color=\"#000000\">- Boleh dijadikan base mekap</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- KRIM MALAM / NIGHT CREAM</font></b></div><div><b><font color=\"#000000\">- Berat 5g</font></b></div><div><b><font color=\"#000000\">- Extract epal hijau</font></b></div><div><b><font color=\"#000000\">- Tidak melekit seperti sarang burung wallet</font></b></div><div><b><font color=\"#000000\">- Lebih wangi dan melembapkan kulit</font></b></div><div><b><font color=\"#000000\">- Menegangkan serta menganjalkan kulit&nbsp;</font></b></div>', 'FB1.jpg', 'FB2.jpg', 'FB1.jpg', 8, 'In Stock', '2020-12-07 12:04:38', NULL),
(28, 3, 13, 'GEBOO CLEANSER', 'NONE', 23, 0, '<div><b><font color=\"#000000\">GEBOO CLEANSER</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Kenapa anda perlu pilih BRUSH CLEANER BY GEBOO BEAUTY sebagai Pencuci berus makeup NO 1 anda???</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- produk keluaran bumiputera</font></b></div><div><b><font color=\"#000000\">- selamat digunakan</font></b></div><div><b><font color=\"#000000\">- menggunakan bahan semulajadi</font></b></div><div><b><font color=\"#000000\">- diproses dikilang bertaraf GMP</font></b></div><div><b><font color=\"#000000\">- yg Paling penting BERSIH DAN HALAL</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Beli brush mahal mahal tapi takut nak pakai takut lepas cucii nanti dia rosak,bulu tercabut...</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Jangan risau dengan GEBOO BRUSH CLEANSER ni ampaa X PAYAH SENTAL X PAYAH RENDAM X PAYAH JEMOQ</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Sekarang,semua benda kita nak buat cepat n mudah.. hanya spray ja GEBOO BRUSH CLEANSER dekat brush n span mekap ampa, pastu lap2 ja dekat tisu or kain bersih, settle masalah brush n span ampa yg kotoq lama x cuci tue..</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Yang best,wangii.. bau fresh vanilla kekal tahan lama tau...</font></b></div>', 'GC1.jpg', 'GC1.jpg', 'GC1.jpg', 8, 'In Stock', '2020-12-07 14:37:57', NULL),
(29, 3, 14, 'ALHA ALFA FOUNDATION', 'ALHA ALFA', 40, 0, '<div><b>ALHA ALFA SUNSCREEN + FOUNDATION</b></div><div><b><br></b></div><div><b><br></b></div><div><b>SPF50 tau!! 30ml. Tak perlu pakai foundation then nak pakai sunscreen pula. Sesuai untuk gadis2 yang jalankan urusan kerja diluar!!&nbsp;</b></div><div><b><br></b></div><div><b>Ada 4 warna sesuai dari kulit cerah hingga ke warna sawo matang!</b></div><div><b>- Dark</b></div><div><b>- Medium Dark</b></div><div><b>- Medium Light</b></div><div><b>- Light</b></div><div><b><br></b></div><div><b>Kelebihan SUNSCREEN + FOUNDATION ALHA ALFA :point_down:??:point_down:??</b></div><div><b><br></b></div><div><b>- kesinambungan ingredient yg superb dr CENTELLA SKINBOOSTER, CLEANSER !! kiranya ini boleh dijadikan set!</b></div><div><b>.</b></div><div><b>- bahan utama seperti VITA-C , CENTELLA, VIRGIN COCONUT OIL yg amat2 bagus utk mengâ€improveâ€kan kondisi kulit.</b></div><div><b><br></b></div><div><b>- BROADSPECTRUM PROTECTION( protect dr faktor2 usia supaya kekal muda )&nbsp;</b></div><div><b>- UVB (protect dari kulit terbakar dr panas matahari dll)</b></div><div><b><br></b></div><div><b>- mempunyai 4 warna yg amat sesuai utk kulit2 warga malaysia.</b></div><div><b><br></b></div><div><b>- SPF 50 !!!&nbsp;</b></div>', 'AA1.jpg', 'AA2.jpg', 'AA1.jpg', 8, 'In Stock', '2020-12-07 14:41:40', NULL),
(30, 3, 15, 'OKAYA MY CHEESE PALLETE VOL 2', 'MUA BELLAZ', 79, 0, '<div><b><font color=\"#000000\">OKAYA MY CHEESE PALLETE VOL 2</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- Exclusive gambar mata MUABELLAZ</font></b></div><div><b><font color=\"#000000\">- Limited edition HQ keluarkan&nbsp;</font></b></div><div><b><font color=\"#000000\">- Warna pinky2 serta glitter yang super pigmented &amp; tahan lawa</font></b></div><div><b><font color=\"#000000\">- Sesuai utk look pinky2 @ barbie doll @ unicorn</font></b></div>', 'O2.jpg', 'O1.jpg', 'O2.jpg', 8, 'In Stock', '2020-12-07 14:46:30', NULL),
(31, 3, 16, 'NB SCAR ACNE THERAPY CREAM', 'NB', 45, 0, '<div><b><font color=\"#000000\">NB SCAR ACNE THERAPY CREAM</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">NB CREAM PEMUSNAH JERAGAT JERAWAT PARUT ajaib tanpa bahan KIMIA.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- Sesuai untuk semua JENIS kulit</font></b></div><div><b><font color=\"#000000\">- TIADA pengelupasan</font></b></div><div><b><font color=\"#000000\">- Mengandungi bahan ANTISEPTIK untuk mematikan semua BAKTERIA</font></b></div><div><b><font color=\"#000000\">- Memudarkan serta menghilangkan parut lekuk</font></b></div><div><b><font color=\"#000000\">- Mengecutkan jerawat</font></b></div><div><b><font color=\"#000000\">- Menghilangkn jerawat</font></b></div><div><b><font color=\"#000000\">- Mengawal kulit yg berminyak</font></b></div><div><b><font color=\"#000000\">- Mengecilkan liang porii</font></b></div><div><b><font color=\"#000000\">- Melembapkan kulit yg kering</font></b></div><div><b><font color=\"#000000\">- Merawat gatal2 kulit yang bermasalah seperti ALERGIK</font></b></div><div><b><font color=\"#000000\">- Merawat kulit yang SUNBURN</font></b></div><div><b><font color=\"#000000\">- Satu2 nya krim yang jenis BERUBAT yang mampu merawat masalah kulit muka yg KRONIK</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Cara penggunaan&nbsp;</font></b></div><div><b><font color=\"#000000\">1. Pakai cream nb malam sahaja untuk permulaan dalam 1 minggu&nbsp;</font></b></div><div><b><font color=\"#000000\">2. Selepas tu baru pakai siang dan malam pada hari seterusnya selepas 1 minggu penggunaan boleh pakai sebelum makeup juga.</font></b></div>', 'NBS1.jpg', 'NBS2.jpg', 'NBS1.jpg', 8, 'In Stock', '2020-12-07 14:51:05', NULL),
(32, 3, 16, 'NB SCAR TREATMENT SKIN SOLUTION 10ML', 'NB', 35, 0, '<div><b><font color=\"#000000\">NB SCAR TREATMENT SKIN SOLUTION</font></b></div><div><b><font color=\"#000000\">10ML</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">*SCAR TREATMENT SKIN SOLUTION*:cherry_blossom:?</font></b></div><div><b><font color=\"#000000\">Antara fungsi bahan utama SERUM?:cherry_blossom:</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Ekstrak Biji Anggur (Grape Seed Extract)</font></b></div><div><b><font color=\"#000000\">-Bertindak sebagai anti bakteria</font></b></div><div><b><font color=\"#000000\">- Memudarkan bekas luka/ parut</font></b></div><div><b><font color=\"#000000\">- Mengecutkan jerawat</font></b></div><div><b><font color=\"#000000\">- Kaya Vitamin C &amp; Vitamin E</font></b></div><div><b><font color=\"#000000\">- Melicinkan tekstur permukaan kulit yg kasar/kecilkan pori2</font></b></div><div><b><font color=\"#000000\">- Membuang sel kulit mati</font></b></div><div><b><font color=\"#000000\">- Mencegah kulit dari kekeringan</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Hyaluronic Acid:</font></b></div><div><b><font color=\"#000000\">- Memberi kelembapan pada kulit</font></b></div><div><b><font color=\"#000000\">- Mengurangi garis halus dan kedutan</font></b></div><div><b><font color=\"#000000\">- Mampu memperbaharui tekstur kulit menjadi lebih lembut.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Aloe Vera:</font></b></div><div><b><font color=\"#000000\">- Vitamin C dan E yg ada dlm aloevera mampu menjaga kulit supaya sihat anjal dan tegang</font></b></div><div><b><font color=\"#000000\">- Merawat masalah jerawat</font></b></div><div><b><font color=\"#000000\">- Mampu merawat masalah kulit berminyak</font></b></div>', 'NB1.jpg', 'NB2.jpg', 'NB1.jpg', 8, 'In Stock', '2020-12-07 14:54:29', NULL),
(33, 3, 17, 'CHARMS INTELLIGENCE SERUM', 'CHARMS', 49, 0, '<div><b><font color=\"#000000\">CHARMS INTELLIGENCE SERUM</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Serum berteknologi tinggi dengan lima bahan utama antaranya Niacinamide, Probiotic, Vitamin C, Ekstrak Tangerine, dan Prebiotic, yang membantu meningkatkan keupayaan kulit untuk melindunginya dari tekanan luar, menjadikan kulit lebih anjal, cerah dan awet muda.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Sesuai dengan namanya INTELLIGENCE, ia mempunyai dwi fungsi. Pada waktu siang, ia membantu ketahanan kulit. Manakala pada waktu malam ia berfungsi sebagai rawatan untuk kulit awet muda.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Serum ini menyerap dengan cepat dan menjadikan kulit kelihatan halus dan berseri. Botol serum ini sangat unik dan selamat dengan pelindungan UV yang melindungi bahan-bahan ini dengan lebih baik. Selamat dan sesuai digunakan oleh semua jenis kulit pada bila-bila masa.</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">TIPS PENGGUNAAN</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Bersihkan wajah dengan CHARMS 2in1 Cleanser dan lap kering</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Spray CHARMS Brightening Toner dan tarik dengan kapas bagi mengimbangi pH</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Pam kan 2 titis CHARMS intelligence serum di tapak tangan dan pat pat ke seluruh wajah, ulangi 2x</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Cadangan pemakaian 1x pada waktu siang sebagai perlindungan dan 1x pada waktu malam sebagai rawatan</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">INFO PENTING</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Diuji secara klinikal, selamat digunakan dengan label dermatologist tested</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Tanpa paraben &amp; tanpa SLS</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Mild dan gentle, sesuai untuk semua jenis kulit</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">â€“ Isipadu 15ml</font></b></div>', 'CS1.jpg', 'CS1.jpg', 'CS1.jpg', 8, 'In Stock', '2020-12-07 14:56:19', NULL),
(34, 3, 8, 'KAK ELL SKINCARE', 'KAKELL', 60, 0, '<div><b><font color=\"#000000\">KAK ELL SKINCARE</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">Skincare Kak Ell diformulasikan dari gabungan bahan-bahan semula jadi yang diperkaya dengan Vitamin B5, C, dan E untuk menghapus dan menghalang pembentukan jeragat, mengecutkan jerawat, melembut dan menghaluskan kulit supaya kelihatan muda,cerah,cantik dan sihat.</font></b></div><div><br></div>', 'KE1.jpg', 'KE1.jpg', 'KE1.jpg', 8, 'In Stock', '2020-12-07 14:58:46', NULL),
(35, 3, 17, 'NOUFA SKIN SOLUTION', 'NOUFA', 56, 0, '<div dir=\"auto\" style=\"\"><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\" color=\"#000000\"><span style=\"font-size: 15px; white-space: pre-wrap;\"><b style=\"\"><font color=\"#000000\">NOUFA SKIN SOLUTION\r\n\r\n==========================\r\nMESTI GUNA TONER &amp; SERUM UNTUK PENJAGAAN WAJAH\r\n==========================\r\n- Dijamin HALAL dan SUCI\r\n- Kelulusan dari KKM\r\n- Memudarkan jeragat\r\n- Menghilangkan jerawat\r\n- Mengecutkan liang pori\r\n- Melembapkan kulit wajah\r\n- Tidak Menggelupas\r\n- Membuang sel sel mati\r\n- Melindungi wajah dari sinaran UV</font></b></span></font><br></div>', 'NS1.jpg', 'NS1.jpg', 'NS1.jpg', 8, 'In Stock', '2020-12-07 15:07:37', NULL),
(36, 3, 18, 'FARRA BEAUTY PRO ACNE SOLUTION ', 'FARRA BEAUTY', 39, 0, '<div><b><font color=\"#000000\">FARRA BEAUTY PRO ACNE SOLUTION&nbsp;</font></b></div><div><b><font color=\"#000000\"><br></font></b></div><div><b><font color=\"#000000\">- ProAcne Treatmentation Toner sangat sesuai untuk semua jenis kulit.&nbsp;</font></b></div><div><b><font color=\"#000000\">- Diekstrak 100% dari Apple Cider Vinegar membantu menghilangkan sel kulit mati &amp; menyeimbangkan pH kulit semula jadi</font></b></div><div><br></div>', 'T1.jpg', 'T1.jpg', 'T1.jpg', 8, 'In Stock', '2020-12-07 15:10:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Drinks', '2020-12-01 16:24:52', '03-12-2020 12:23:14 PM'),
(3, 4, 'Vitamin', '2020-12-01 16:29:09', '03-12-2020 12:23:01 PM'),
(8, 3, 'Skincare', '2020-12-02 04:13:54', '03-12-2020 12:21:07 PM'),
(9, 3, 'Brushes', '2020-12-02 04:36:45', '03-12-2020 12:23:31 PM'),
(11, 5, 'Men\'s Wear', '2020-12-02 04:37:51', '03-12-2020 12:24:25 PM'),
(12, 5, 'Women\'s Wear', '2020-12-01 20:12:59', '03-12-2020 12:24:30 PM'),
(13, 3, 'Cleanser', '2020-12-07 14:35:32', '07-12-2020 08:05:40 PM'),
(14, 3, 'Foundation', '2020-12-07 14:38:53', NULL),
(15, 3, 'Palette', '2020-12-07 14:44:00', NULL),
(16, 3, 'Scar Treatment', '2020-12-07 14:47:57', NULL),
(17, 3, 'Serum', '2020-12-07 14:55:07', NULL),
(18, 3, 'Toner', '2020-12-07 15:09:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 07:02:03', '03-12-2020 12:34:07 PM', 1),
(26, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 07:35:44', '23-12-2020 03:16:50 PM', 1),
(27, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 09:47:54', '23-12-2020 03:30:49 PM', 1),
(28, 'aina12@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 10:04:48', '23-12-2020 03:39:52 PM', 1),
(29, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 12:46:50', '23-12-2020 06:47:13 PM', 1),
(30, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-04 03:55:31', '04-01-2021 09:26:13 AM', 1),
(31, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-04 03:56:21', '04-01-2021 09:27:14 AM', 1),
(32, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-26 15:37:13', '26-01-2021 09:08:29 PM', 1),
(33, 'ahmad20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-27 05:21:42', '27-01-2021 10:53:30 AM', 1),
(34, 'aimi20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-27 05:30:56', '27-01-2021 11:04:32 AM', 1),
(35, 'azmi@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-27 05:38:16', '27-01-2021 11:10:54 AM', 1),
(36, 'nurazyan20@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-06 15:13:41', '06-02-2021 09:43:50 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Nur Azyan', 'nurazyan20@gmail.com', 1119956042, '202cb962ac59075b964b07152d234b70', 'LOT 913, KAMPUNG TIKAT\r\nJALAN PCB', 'Kelantan', 'KOTA BHARU', 15350, 'LOT 913, KAMPUNG TIKAT\r\nJALAN PCB', 'Kelantan', 'KOTA BHARU', 15350, '2020-12-03 07:01:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
