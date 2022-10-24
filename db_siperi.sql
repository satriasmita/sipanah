-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 05:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siperi`
--

-- --------------------------------------------------------

--
-- Table structure for table `armada_penangkapan`
--

CREATE TABLE `armada_penangkapan` (
  `armada_id` int(11) NOT NULL,
  `armada_nama_kapal` varchar(50) DEFAULT NULL,
  `armada_nama_pemilik` varchar(50) DEFAULT NULL,
  `armada_jenis_kapal` varchar(50) DEFAULT NULL,
  `armada_api_abpi` varchar(50) DEFAULT NULL,
  `armada_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `h_nama` varchar(255) DEFAULT NULL,
  `h_alamat` text DEFAULT NULL,
  `h_telp` varchar(12) DEFAULT NULL,
  `tahun` int(5) NOT NULL,
  `status` smallint(2) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `foto2` varchar(255) DEFAULT NULL,
  `foto3` varchar(255) DEFAULT NULL,
  `foto4` varchar(255) DEFAULT NULL,
  `h_latitude` varchar(255) DEFAULT NULL,
  `h_longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `h_nama`, `h_alamat`, `h_telp`, `tahun`, `status`, `foto`, `foto2`, `foto3`, `foto4`, `h_latitude`, `h_longitude`) VALUES
(4, 'Nan Tongga Beach', 'Pasir, Pariaman Tengah, Kota Pariaman,', '(0751) 91666', 2020, 1, 'nan tongga.jpg', 'nan tongga 3.jpg', 'nan tongga 2.jpg', 'nan tongga 4.jpg', '-0.6237813', '100.1143587'),
(5, 'Hotel Kasandra', 'Jl. Wolter Monginsidi, Kp. Gadang, Pariaman Tim., Kota Pariaman', '(0751) 91111', 2020, 1, 'kasandra.jpg', 'kasandra.jpg', 'kasandra.jpg', 'kasandra.jpg', '-0.601977', '100.1254248,15'),
(6, 'Hotel Madinah', 'Jl. Kol. H. Anas Malik, Kp. Gadang, Pariaman Tim., Kota Pariaman', ' (021) 29707', 2020, 1, 'madina 1.jpg', 'madina 3.jpg', 'madina 2.jpg', 'madina 4.jpg', '-0.6019564', '100.125218,15');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_hotel`
--

CREATE TABLE `kamar_hotel` (
  `kh_id` int(11) NOT NULL,
  `kh_hotel` int(11) DEFAULT NULL,
  `kh_nama` varchar(255) DEFAULT NULL,
  `kh_luas_kamar` varchar(255) DEFAULT NULL,
  `kh_jenis_bed` varchar(255) DEFAULT NULL,
  `kh_harga` int(11) DEFAULT NULL,
  `kh_sisa_kamar` int(11) DEFAULT NULL,
  `kh_jumlah_tamu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar_hotel`
--

INSERT INTO `kamar_hotel` (`kh_id`, `kh_hotel`, `kh_nama`, `kh_luas_kamar`, `kh_jenis_bed`, `kh_harga`, `kh_sisa_kamar`, `kh_jumlah_tamu`) VALUES
(4, 4, '5', '30m x 34m', '3', 500000, 12, 5),
(5, 4, '1', '22m x 44m', '2', 250000, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kub`
--

CREATE TABLE `kub` (
  `kub_profil_id` int(11) NOT NULL,
  `kub_kusuka_korporasi` varchar(50) DEFAULT NULL,
  `kub_no_sk` varchar(50) DEFAULT NULL,
  `kub_no_akta_notaris` varchar(50) DEFAULT NULL,
  `kub_alamat` text DEFAULT NULL,
  `kub_kelas_kelompok` varchar(50) DEFAULT NULL,
  `kub_keanggotaan_nama` varchar(50) DEFAULT NULL,
  `kub_keanggotaan_jabatan` varchar(50) DEFAULT NULL,
  `kub_kusuka_anggota` varchar(255) DEFAULT NULL,
  `kub_jenis_bantuan_diterima` varchar(255) DEFAULT NULL,
  `kub_jumlah_bantuan_diterima` varchar(50) DEFAULT NULL,
  `kub__asal_bantuan_diterima` varchar(50) DEFAULT NULL,
  `kub_tahun_bantuan_diterima` varchar(50) DEFAULT NULL,
  `kub_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_KAB` int(2) DEFAULT NULL,
  `id_KEC` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `id_user`, `id_KAB`, `id_KEC`) VALUES
(1, 3, 1, 1),
(2, 4, 1, 1),
(3, NULL, 77, 1),
(4, 24, 77, 3),
(5, 25, 77, 1),
(6, 35, 77, 1),
(7, 63, 77, 2);

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `idmap` int(11) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longtitude` varchar(45) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `npsn` varchar(8) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`idmap`, `latitude`, `longtitude`, `alamat`, `npsn`, `image`, `created_at`, `updated_at`) VALUES
(2, '-7.7777356', '110.3649118', 'JL. AM. SANGAJI 47, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta Prop. D.I. Yogyakarta', '20403280', 'uploads/smk 2 yogyakarta.jpg', '2016-11-03 21:27:16', '2016-11-17 09:19:11'),
(3, '-7.7930025', '110.3554427', 'Jalan Kemetiran Kidul No.60, 001, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55272', '20404180', 'uploads/Smk n 1.jpg', '2016-11-08 20:23:20', '2016-11-08 20:23:20'),
(4, '-7.777709', '110.3637483', 'Jl. R.W. Monginsidi 2 Yogyakarta ', '20404181', 'uploads/nopicture.png', '2016-11-15 21:43:55', '2016-11-15 21:43:55'),
(5, '-7.821191', '110.3836643', 'Jl. Sidikan 60 YK \\r\\n', '20403282', 'uploads/nopicture.png', '2016-11-15 21:45:39', '2016-11-17 09:08:52'),
(6, '-7.7977363', '110.3803202', 'Jl. Kenari no. 4 Yk \\r\\n', '20404182', 'uploads/nopicture.png', '2016-11-15 21:48:11', '2016-11-15 21:48:11'),
(7, '-7.800817', '110.3931672', 'Jl. Kenari no. 71 Yk \\r\\n', '20403283', 'uploads/nopicture.png', '2016-11-17 08:27:06', '2016-11-17 09:20:22'),
(8, '-7.7894827', '110.3844901', 'Jl. Gowongan Kidul JT III/ 416 Yk \\r\\n', '20403295', 'uploads/nopicture.png', '2016-11-17 09:10:16', '2016-11-17 09:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1542182388),
('m130524_201442_init', 1542182391),
('m181119_065915_tb_setting_tandatangan', 1542611079),
('m181121_032545_tb_daerah', 1542850727),
('m181122_010325_tb_provinsi', 1542849754),
('m181122_010335_tb_kota', 1542849754),
('m181122_010342_tb_kecamatan', 1542849754),
('m181122_010356_tb_desa', 1542849755),
('m181122_010520_tb_dusun', 1542849755),
('m181122_011752_tb_kk', 1543292290),
('m181122_011805_tb_penduduk', 1543292292),
('m181122_011811_tb_ktp', 1543292292),
('m181122_034546_tb_seting_kop', 1542858489),
('m181126_030959_tb_jenis_surat', 1543201872),
('m181127_020312_tb_data_keluarga', 1543291782),
('m181127_030010_tb_biodata_wni', 1543291783),
('m181127_140721_tb_biodata', 1543372638),
('m181128_015202_tb_surat', 1543372820),
('m181128_023010_tb_nik_surat', 1543372821),
('m181130_095718_tb_pendidikan', 1544407145),
('m181130_095737_tb_jenis_pekerjaan', 1544407145),
('m181210_015548_tb_keluarga', 1544407146),
('m181216_005549_tb_kk_luar', 1545011256),
('m181217_013652_tb_pend_luar', 1545011258),
('m181225_135756_tb_login', 1545747463),
('m181225_140840_tb_adm_desa', 1545747463),
('m181228_082410_tb_pekerjaan', 1545985595),
('m181229_035835_tb_hub_kel', 1546415058),
('m190102_003606_tb_agama', 1546415058),
('m190107_013000_tb_ultah', 1546824947),
('m190109_103517_tb_golda', 1547030238),
('m190109_103533_tb_statk', 1547030238),
('m190116_081035_tb_jenis_kelamin', 1547626374),
('m190116_081719_tb_stat_nik', 1547626675);

-- --------------------------------------------------------

--
-- Table structure for table `pedagang_ikan`
--

CREATE TABLE `pedagang_ikan` (
  `pedagang_id` int(11) NOT NULL,
  `pedagang_nama` varchar(50) DEFAULT NULL,
  `pedagang_nama_kelompok_usaha` varchar(50) DEFAULT NULL,
  `pedagang_kusuka` varchar(50) DEFAULT NULL,
  `pedagang_skala_usaha` varchar(50) DEFAULT NULL,
  `pedagang_alamat` text DEFAULT NULL,
  `pedagang_no_hp` varchar(20) DEFAULT NULL,
  `pedagang_pemasaran_ikan_air_tawar` varchar(50) DEFAULT NULL,
  `pedagang_pemasaran_ikan_air_laut` varchar(50) DEFAULT NULL,
  `pedagang_pemasaran_ikan_olahan` varchar(50) DEFAULT NULL,
  `pedagang_daerah_pemasaran` varchar(50) DEFAULT NULL,
  `pedagang_jenis_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pedagang_jumlah_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pedagang_asal_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pedagang_tahun_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pedagang_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perikanan_budidaya`
--

CREATE TABLE `perikanan_budidaya` (
  `perbudi_id` int(11) NOT NULL,
  `perbudi_semester` varchar(10) DEFAULT NULL,
  `perbudi_jenis_ikan` varchar(50) DEFAULT NULL,
  `perbudi_junlah` varchar(10) DEFAULT NULL,
  `perbudi_harga` varchar(50) DEFAULT NULL,
  `perbudi_jenis_budidaya` varchar(50) DEFAULT NULL,
  `perbudi_budidaya_laut_lainnya` varchar(50) DEFAULT NULL,
  `perbudi_budidaya_laut_jaring_apung` varchar(50) DEFAULT NULL,
  `perbudi_jenis_budidaya_tambak` varchar(50) DEFAULT NULL,
  `perbudi_tambak_jaring_tancap` varchar(50) DEFAULT NULL,
  `perbudi_tampak_maggrove` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_kolam_tenang` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_kolam_airderas` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_kolam_terpal` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_kolam_bak` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_karamba` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_jaring_apung` varchar(50) DEFAULT NULL,
  `perbudi_airtawar_minapadi` varchar(50) DEFAULT NULL,
  `perbudi_pemasaran` varchar(50) DEFAULT NULL,
  `perbudi_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perikanan_tangkap`
--

CREATE TABLE `perikanan_tangkap` (
  `tangkap_id` int(11) NOT NULL,
  `tangkap_jenis_ikan` varchar(50) NOT NULL,
  `tangkap_produksi_sms1` varchar(50) DEFAULT NULL,
  `tangkap_harga_sms1` varchar(50) DEFAULT NULL,
  `tangkap_pemasaran_sms1` varchar(50) DEFAULT NULL,
  `tangkap_produksi_sms2` varchar(50) DEFAULT NULL,
  `tangkap_harga_sms2` varchar(50) DEFAULT NULL,
  `tangkap_pemasaran_sms2` varchar(50) DEFAULT NULL,
  `tangkap_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poklahsar`
--

CREATE TABLE `poklahsar` (
  `poklahsar_id` int(11) NOT NULL,
  `poklahsar_nama_kelompok` varchar(50) DEFAULT NULL,
  `poklahsar_no_sk_kelompok` varchar(50) DEFAULT NULL,
  `poklahsar_no_akta_notaris` varchar(50) DEFAULT NULL,
  `poklahsar_alamat` text DEFAULT NULL,
  `poklahsar_kelas_kelompok` varchar(50) DEFAULT NULL,
  `poklahsar_nama_keanggotaan` varchar(255) DEFAULT NULL,
  `poklahsar_jabatan_keanggotaan` varchar(50) DEFAULT NULL,
  `poklahsar_kusuka` varchar(50) DEFAULT NULL,
  `poklahsar_jumlah_tenaga_kerja` varchar(20) DEFAULT NULL,
  `poklahsar_luas_bangunan` varchar(10) DEFAULT NULL,
  `poklahsar_jenis_olahan` varchar(50) DEFAULT NULL,
  `poklahsar_bahan_baku` varchar(50) DEFAULT NULL,
  `poklahsar_no_sertifikat_irt` varchar(50) DEFAULT NULL,
  `poklahsar_no_sertifikat_bpom` varchar(50) DEFAULT NULL,
  `poklahsar_no_sertifikat_halal` varchar(50) DEFAULT NULL,
  `poklahsar_jenis_bantuan_diterima` varchar(50) DEFAULT NULL,
  `poklahsar_jumlah_bantuan_diterima` varchar(50) DEFAULT NULL,
  `poklahsar_asal_bantuan_diterima` varchar(50) DEFAULT NULL,
  `poklahsar_tahun_bantuan_diterima` varchar(10) DEFAULT NULL,
  `poklahsar_harga_pemasaran` varchar(20) DEFAULT NULL,
  `poklahsar_mitra_usaha_pemasaran` varchar(50) DEFAULT NULL,
  `poklahsar_omset` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pokmaswas`
--

CREATE TABLE `pokmaswas` (
  `pokmaswas_id` int(11) NOT NULL,
  `pokmaswas_nama_kelompok` varchar(50) DEFAULT NULL,
  `pokmaswas_no_sk_kelompok` varchar(50) DEFAULT NULL,
  `pokmaswas_no_akta_notaris` varchar(50) DEFAULT NULL,
  `pokmaswas_keanggotaan_nama` varchar(50) DEFAULT NULL,
  `pokmaswas_keanggotaan_jabatan` varchar(50) DEFAULT NULL,
  `pokmaswas_alamat` text DEFAULT NULL,
  `pokmaswas_jenis_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pokmaswas_jumlah_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pokmaswas_asal_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pokmaswas_tahun_bantuan_diterima` varchar(50) DEFAULT NULL,
  `pokmaswas_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produksi_olahan`
--

CREATE TABLE `produksi_olahan` (
  `olahan_id` int(11) NOT NULL,
  `olahan_jenis_kegiatan_pengolahan` varchar(50) DEFAULT NULL,
  `olahan_januari` varchar(20) DEFAULT NULL,
  `olahan_februari` varchar(20) DEFAULT NULL,
  `olahan_maret` varchar(20) DEFAULT NULL,
  `olahan_april` varchar(20) DEFAULT NULL,
  `olahan_mei` varchar(20) DEFAULT NULL,
  `olahan_juni` varchar(20) DEFAULT NULL,
  `olahan_juli` varchar(20) DEFAULT NULL,
  `olahan_agustus` varchar(20) DEFAULT NULL,
  `olahan_september` varchar(20) DEFAULT NULL,
  `olahan_oktober` varchar(20) DEFAULT NULL,
  `olahan_november` varchar(20) DEFAULT NULL,
  `olahan_desember` varchar(20) DEFAULT NULL,
  `olahan_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `prof_id` int(11) NOT NULL,
  `prof_judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prof_gambar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_isi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_status` smallint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`prof_id`, `prof_judul`, `prof_gambar`, `prof_isi`, `slug`, `prof_status`) VALUES
(1, 'Profil PPID Kota Pariaman', '1540025908-bg.jpg', '<p>Salah satu elemen penting dalam mewujudkan penyelenggaraan negara yang terbuka adalah hak publik untuk memperoleh Informasi sesuai dengan peraturan perundang&not;undangan. Hak atas Informasi menjadi sangat penting karena makin terbuka penyelenggaraan negara untuk diawasi publik, penyelenggaraan negara tersebut makin dapat dipertanggungjawabkan. Hak setiap Orang untuk memperoleh Informasi juga relevan untuk meningkatkan kualitas pelibatan masyarakat dalam proses pengambilan keputusan publik. Partisipasi atau pelibatan masyarakat tidak banyak berarti tanpa jaminan keterbukaan Informasi Publik.</p>\r\n\r\n<p>Keberadaan Undang-undang tentang Keterbukaan Informasi Publik sangat penting sebagai landasan hukum yang berkaitan dengan :</p>\r\n\r\n<blockquote>\r\n<ol>\r\n	<li><em>hak setiap Orang untuk memperoleh Informasi</em></li>\r\n	<li><em>kewajiban Badan Publik menyediakan dan melayani permintaan Informasi secara cepat, tepat waktu, biaya ringan/proporsional, dan cara sederhana</em></li>\r\n	<li><em>pengecualian bersifat ketat dan terbatas</em></li>\r\n	<li><em>kewajiban Badan Publik untuk membenahi sistem dokumentasi dan pelayanan Informasi</em></li>\r\n</ol>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Setiap Badan Publik mempunyai kewajiban untuk membuka akses atas Informasi Publik yang berkaitan dengan Badan Publik tersebut untuk masyarakat luas. Lingkup Badan Publik dalam Undang-undang ini meliputi lembaga eksekutif, yudikatif, legislatif, serta penyelenggara negara lainnya yang mendapatkan dana dari Anggaran Pendapatan dan Belanja Negara (APBN)/Anggaran Pendapatan dan Belanja Daerah (APBD) dan mencakup pula organisasi nonpemerintah, baik yang berbadan hukum maupun yang tidak berbadan hukum, seperti lembaga swadaya masyarakat, perkumpulan, serta organisasi lainnya yang mengelola atau menggunakan dana yang sebagian atau seluruhnya bersumber dari APBN/APBD, sumbangan masyarakat, dan/atau luar negeri.</p>\r\n\r\n<p>Sesuai dengan amanat pasal 13 UU No.14 Tahun 2008, Kementerian Komunikasi sebagai salah satu Badan Publik telah membentuk Pejabat Pengelola Informasi dan Dokumentasi (PPID) melalui Keputusan Menteri Komunikasi dan Informatika Nomor 117 Tahun 2010 Tentang Organisasi Pengelola Informasi dan Dokumentasi. Dengan terbentuknya PPID pemohon informasi sesuai dengan haknya dapat memperoleh informasi public yang dihasilkan oleh Kementerian Komunikasi dan Informatika sesuai dengan ketentuan dalam UU No. 14 Tahun 2008.</p>\r\n', 'profil-ppid-kota-pariaman', 1),
(2, 'Visi dan Misi serta Program Unggulan', NULL, '', 'visi-dan-misi-serta-program-unggulan', 1),
(3, 'Struktur Organisasi', NULL, '', 'struktur-organisasi', 1),
(4, 'Pejabat Struktural Organisasi', NULL, '', 'pejabat-struktural-organisasi', 1),
(5, 'Kontak PPID', NULL, '', 'kontak-ppid', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profil_kelompok`
--

CREATE TABLE `profil_kelompok` (
  `profil_id` int(11) NOT NULL,
  `profil_nama_kelompok` varchar(50) DEFAULT NULL,
  `profil_kusuka_korporasi` varchar(50) DEFAULT NULL,
  `profil_no_sk_kelompok` varchar(50) DEFAULT NULL,
  `profil_no_akta_notaris` varchar(50) DEFAULT NULL,
  `profil_alamat` text DEFAULT NULL,
  `profil_kelas_kelompok` varchar(50) DEFAULT NULL,
  `profil_nama_keanggotaan` varchar(255) DEFAULT NULL,
  `profil_jabatan_keanggotaan` varchar(50) DEFAULT NULL,
  `profil_kusuka_anggota` varchar(255) DEFAULT NULL,
  `profil_luas_lahan` varchar(50) DEFAULT NULL,
  `profil_jenis_bantuan_diterima` varchar(50) DEFAULT NULL,
  `profil_jumlah_bantuan_diterima` varchar(50) DEFAULT NULL,
  `profil_asal_bantuan_diterima` varchar(50) DEFAULT NULL,
  `profil_tahun_bantuan_diterima` varchar(10) DEFAULT NULL,
  `profil_nomor_sertifikat_cbib` varchar(50) DEFAULT NULL,
  `profil_masa_berlaku_sertifikat_cbib` varchar(10) DEFAULT NULL,
  `profil_omset_ratarata_kelompok` varchar(50) DEFAULT NULL,
  `profil_upload_sertifikat_cbib` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rtp`
--

CREATE TABLE `rtp` (
  `rtp_id` int(11) NOT NULL,
  `rtp_nama_pelaku_usaha` varchar(50) DEFAULT NULL,
  `rtp_kusuka` varchar(50) DEFAULT NULL,
  `rtp_alamat` text DEFAULT NULL,
  `rtp_nama_kapal_armada` varchar(50) DEFAULT NULL,
  `rtp_nama_abi_abpi` varchar(50) DEFAULT NULL,
  `rtp_jumlah_abk` varchar(50) DEFAULT NULL,
  `rtp_mitra_usaha` varchar(50) DEFAULT NULL,
  `rtp_omset` varchar(50) DEFAULT NULL,
  `rtp_keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rtp_pokdakan`
--

CREATE TABLE `rtp_pokdakan` (
  `rtp_pokdakan_id` int(11) NOT NULL,
  `rtp_pokdakan_ktp` varchar(20) DEFAULT NULL,
  `rtp_pokdakan_kk` varchar(20) DEFAULT NULL,
  `rtp_pokdakan_kusuka` varchar(50) DEFAULT NULL,
  `rtp_pokdakan_alamat` text DEFAULT NULL,
  `rtp_pokdakan_komoditi` varchar(50) DEFAULT NULL,
  `rtp_pokdakan_luas_kawasan_budidaya` varchar(20) DEFAULT NULL,
  `rtp_luas_kawasan_laut` varchar(20) DEFAULT NULL,
  `rtp_luas_kawasan_payau` varchar(20) DEFAULT NULL,
  `rtp_jumlah_tenaga` varchar(20) DEFAULT NULL,
  `rtp_mitra_usaha` varchar(50) DEFAULT NULL,
  `rtp_omset_ratarata` varchar(20) DEFAULT NULL,
  `rtp_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rtp_pokdakan`
--

INSERT INTO `rtp_pokdakan` (`rtp_pokdakan_id`, `rtp_pokdakan_ktp`, `rtp_pokdakan_kk`, `rtp_pokdakan_kusuka`, `rtp_pokdakan_alamat`, `rtp_pokdakan_komoditi`, `rtp_pokdakan_luas_kawasan_budidaya`, `rtp_luas_kawasan_laut`, `rtp_luas_kawasan_payau`, `rtp_jumlah_tenaga`, `rtp_mitra_usaha`, `rtp_omset_ratarata`, `rtp_foto`) VALUES
(3, '123123', 'sdfsd', 'fsf', 'dfasd', '1', '11', '1', '1', '1', '1', '1', '1647922134-WhatsApp Image 2022-03-07 at 14.03.37.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_foto` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_judul` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_isi` text COLLATE utf8_unicode_ci NOT NULL,
  `berita_tanggal` date NOT NULL DEFAULT current_timestamp(),
  `berita_hit` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berita_status` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `berita_foto`, `berita_judul`, `berita_isi`, `berita_tanggal`, `berita_hit`, `slug`, `berita_status`) VALUES
(4, '1582513411-berita.jpg', 'Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru', '<p>Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru&nbsp;Pemko Pariaman Study Tiru ke Mesjid Paripurna Kota Pekanbaru</p>\r\n', '2020-02-24', 19, 'pemko-pariaman-study-tiru-ke-mesjid-paripurna-kota-pekanbaru', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_spbu`
--

CREATE TABLE `tb_spbu` (
  `spbu_id` int(11) NOT NULL,
  `spbu_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `spbu_alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `spbu_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `spbu_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` int(5) NOT NULL,
  `status` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_spbu`
--

INSERT INTO `tb_spbu` (`spbu_id`, `spbu_nama`, `spbu_alamat`, `spbu_latitude`, `spbu_longitude`, `tahun`, `status`) VALUES
(1, 'SPBU 14.255590 Pertamina', 'Toboh Gadang, Sintuk Toboh Gadang, Kabupaten Padang Pariaman', '-0.6670129', '100.2362926', 0, 1),
(2, 'SPBU Toboh Pertamina', 'Jalan Imam Bonjol, Toboh Palabah, Pariaman Selatan, Kota Pariaman', '-0.6260591', '100.1629116', 0, 1),
(3, 'SPBU Jati', 'Jalan Wolter Monginsidi, Jati Mudik, Pariaman Tengah, Kota Pariaman', '-0.6211331', '100.1444618', 0, 1),
(4, 'SPBU Kampung Pondok', 'Kampung Pondok, Pariaman Tengah, Kota Pariaman', '-0.6219988', '100.121572', 0, 1),
(5, 'SPBU Padang Birik-Birik', 'Padang Birik-Birik, Pariaman Utara, Kota Pariaman', '-0.5636678', '100.1089151', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upr_pokdakan`
--

CREATE TABLE `upr_pokdakan` (
  `upr_pokdakan_id` int(11) NOT NULL,
  `upr_pokdakan_nama_pemilik` varchar(50) DEFAULT NULL,
  `upr_pokdakan_hp` varchar(20) DEFAULT NULL,
  `upr_pokdakan_ktp` varchar(20) DEFAULT NULL,
  `upr_pokdakan_alamat` text DEFAULT NULL,
  `upr_pokdakan_jumlah_tenaga_kerja` varchar(20) DEFAULT NULL,
  `upr_pokdakan_luas_lahan` varchar(20) DEFAULT NULL,
  `upr_pokdakan_jumlah_kolam` varchar(20) DEFAULT NULL,
  `upr_pokdakan_no_sertifikat_chib` varchar(50) DEFAULT NULL,
  `upr_pokdakan_masa_berlaku_sertifikat_chib` varchar(20) DEFAULT NULL,
  `upr_pokdakan_komoditi` varchar(50) DEFAULT NULL,
  `upr_pokdakan_jumlah_induk_jantan` varchar(10) DEFAULT NULL,
  `upr_pokdakan_jumlah_induk_betina` varchar(10) DEFAULT NULL,
  `upr_pokdakan_ratarata_produksi_pertahun` varchar(20) DEFAULT NULL,
  `upr_pokdakan_pemasaran` varchar(20) DEFAULT NULL,
  `upr_pokdakan_omset` varchar(50) DEFAULT NULL,
  `upr_pokdakan_jenis_bantuan_diterima` varchar(50) DEFAULT NULL,
  `upr_pokdakan_jumlah_bantuan_diterima` varchar(20) DEFAULT NULL,
  `upr_pokdakan_asal_bantuan_diterima` varchar(20) DEFAULT NULL,
  `upr_pokdakan_tahun_bantuan_diterima` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `desa` int(11) DEFAULT NULL,
  `nama_desa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `level`, `status`, `desa`, `nama_desa`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'xf4pQy3jjZprinN31u2nLZm_WgdIvidX', '$2y$13$BQP54tWmYAqnH3kWUNDbPOZCLRcNhlDgmiOhs1AIdLuulnxx/IXX6', NULL, 'adm@gmail.com', 1, 10, 0, '', 1565422383, 1542264946);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armada_penangkapan`
--
ALTER TABLE `armada_penangkapan`
  ADD PRIMARY KEY (`armada_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `kamar_hotel`
--
ALTER TABLE `kamar_hotel`
  ADD PRIMARY KEY (`kh_id`);

--
-- Indexes for table `kub`
--
ALTER TABLE `kub`
  ADD PRIMARY KEY (`kub_profil_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `fk_login_user` (`id_user`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`idmap`),
  ADD KEY `idx-map-npsn` (`npsn`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pedagang_ikan`
--
ALTER TABLE `pedagang_ikan`
  ADD PRIMARY KEY (`pedagang_id`);

--
-- Indexes for table `perikanan_budidaya`
--
ALTER TABLE `perikanan_budidaya`
  ADD PRIMARY KEY (`perbudi_id`);

--
-- Indexes for table `perikanan_tangkap`
--
ALTER TABLE `perikanan_tangkap`
  ADD PRIMARY KEY (`tangkap_id`);

--
-- Indexes for table `poklahsar`
--
ALTER TABLE `poklahsar`
  ADD PRIMARY KEY (`poklahsar_id`);

--
-- Indexes for table `pokmaswas`
--
ALTER TABLE `pokmaswas`
  ADD PRIMARY KEY (`pokmaswas_id`);

--
-- Indexes for table `produksi_olahan`
--
ALTER TABLE `produksi_olahan`
  ADD PRIMARY KEY (`olahan_id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`prof_id`);

--
-- Indexes for table `profil_kelompok`
--
ALTER TABLE `profil_kelompok`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indexes for table `rtp`
--
ALTER TABLE `rtp`
  ADD PRIMARY KEY (`rtp_id`);

--
-- Indexes for table `rtp_pokdakan`
--
ALTER TABLE `rtp_pokdakan`
  ADD PRIMARY KEY (`rtp_pokdakan_id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `tb_spbu`
--
ALTER TABLE `tb_spbu`
  ADD PRIMARY KEY (`spbu_id`);

--
-- Indexes for table `upr_pokdakan`
--
ALTER TABLE `upr_pokdakan`
  ADD PRIMARY KEY (`upr_pokdakan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armada_penangkapan`
--
ALTER TABLE `armada_penangkapan`
  MODIFY `armada_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kamar_hotel`
--
ALTER TABLE `kamar_hotel`
  MODIFY `kh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kub`
--
ALTER TABLE `kub`
  MODIFY `kub_profil_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `idmap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pedagang_ikan`
--
ALTER TABLE `pedagang_ikan`
  MODIFY `pedagang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perikanan_budidaya`
--
ALTER TABLE `perikanan_budidaya`
  MODIFY `perbudi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perikanan_tangkap`
--
ALTER TABLE `perikanan_tangkap`
  MODIFY `tangkap_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poklahsar`
--
ALTER TABLE `poklahsar`
  MODIFY `poklahsar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pokmaswas`
--
ALTER TABLE `pokmaswas`
  MODIFY `pokmaswas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produksi_olahan`
--
ALTER TABLE `produksi_olahan`
  MODIFY `olahan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profil_kelompok`
--
ALTER TABLE `profil_kelompok`
  MODIFY `profil_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtp`
--
ALTER TABLE `rtp`
  MODIFY `rtp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtp_pokdakan`
--
ALTER TABLE `rtp_pokdakan`
  MODIFY `rtp_pokdakan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_spbu`
--
ALTER TABLE `tb_spbu`
  MODIFY `spbu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upr_pokdakan`
--
ALTER TABLE `upr_pokdakan`
  MODIFY `upr_pokdakan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
