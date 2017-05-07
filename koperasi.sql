-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2017 at 06:51 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bukti_transaksi_simpanan`
--

CREATE TABLE `bukti_transaksi_simpanan` (
  `id_transaksi_simpanan` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `id_koperasi` varchar(6) NOT NULL,
  `id_simpanan` varchar(6) NOT NULL,
  `jenis_simpanan` char(1) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jumlah_transaksi_simpanan` int(20) NOT NULL,
  `id_staff` varchar(6) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukti_transaksi_simpanan`
--

INSERT INTO `bukti_transaksi_simpanan` (`id_transaksi_simpanan`, `id_anggota`, `id_koperasi`, `id_simpanan`, `jenis_simpanan`, `tgl_transaksi`, `periode`, `jumlah_transaksi_simpanan`, `id_staff`, `createdby`, `modifiedby`) VALUES
('TSPN01', 'AK0001', 'KSPW01', 'SPN001', '1', '2017-05-02', '2017', 1, 'STF001', 'noor', 'noor');

-- --------------------------------------------------------

--
-- Table structure for table `cicilan_pinjaman`
--

CREATE TABLE `cicilan_pinjaman` (
  `id_cicilan` varchar(6) NOT NULL,
  `id_pinjaman` varchar(6) NOT NULL,
  `pembayaran_ke` int(20) NOT NULL,
  `tgl_cicilan` date NOT NULL,
  `tgl_tempo` date NOT NULL,
  `jumlah_cicilan` int(20) NOT NULL,
  `status_cicilan` char(1) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kwm` varchar(6) NOT NULL,
  `id_koperasi` varchar(6) NOT NULL,
  `nama_kelompok` varchar(30) NOT NULL,
  `slot_kelomopok` int(10) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kwm`, `id_koperasi`, `nama_kelompok`, `slot_kelomopok`, `createdby`, `modifiedby`) VALUES
('KWM001', 'KSPW01', 'kelompok1', 10, 'noor', 'noor');

-- --------------------------------------------------------

--
-- Table structure for table `msanggota`
--

CREATE TABLE `msanggota` (
  `id_anggota` varchar(6) NOT NULL,
  `id_koperasi` varchar(6) NOT NULL,
  `id_kwm` varchar(6) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_anggota` varchar(25) NOT NULL,
  `no_tlpn` varchar(15) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `alamat` text NOT NULL,
  `kode_post` varchar(5) NOT NULL,
  `agama` varchar(12) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `status_perkawinan` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jumlah_anak` int(3) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pekerjaan_anggota` varchar(15) NOT NULL,
  `deskripsi_pekerjaan` text NOT NULL,
  `nama_pasangan` varchar(25) NOT NULL,
  `pekerjaan_pasangan` varchar(15) NOT NULL,
  `foto_anggota` longblob NOT NULL,
  `status_anggota` char(1) NOT NULL,
  `tgl_permintaan_berhenti` date NOT NULL,
  `alasan_berhenti` varchar(30) NOT NULL,
  `tgl_resmi_berhenti` date NOT NULL,
  `no_rekening` varchar(30) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msanggota`
--

INSERT INTO `msanggota` (`id_anggota`, `id_koperasi`, `id_kwm`, `username`, `password`, `nama_anggota`, `no_tlpn`, `no_ktp`, `alamat`, `kode_post`, `agama`, `jenis_kelamin`, `status_perkawinan`, `tgl_lahir`, `tgl_daftar`, `jumlah_anak`, `email`, `pekerjaan_anggota`, `deskripsi_pekerjaan`, `nama_pasangan`, `pekerjaan_pasangan`, `foto_anggota`, `status_anggota`, `tgl_permintaan_berhenti`, `alasan_berhenti`, `tgl_resmi_berhenti`, `no_rekening`, `createdby`, `modifiedby`) VALUES
('AK0001', 'KSPW01', 'KWM001', 'noor', 'noor', 'noor', '08123123123', '98739182312', 'Jln sebentar', '70712', 'Islam', 'L', 'n', '1993-12-28', '2017-01-12', 0, 'noor@contoh.com', 'freelancer', 'freelancer', 'no', 'no', '', 'y', '0000-00-00', '', '0000-00-00', '09098042', 'noor', 'noor');

-- --------------------------------------------------------

--
-- Table structure for table `penarikan_simpanan`
--

CREATE TABLE `penarikan_simpanan` (
  `id_penarikan_simpanan` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `tanggal_penarikan` date NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jumlah_penarikan` int(20) NOT NULL,
  `createdby` varchar(20) NOT NULL,
  `modifiedby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_pinjaman`
--

CREATE TABLE `permohonan_pinjaman` (
  `id_permohonan_pinjaman` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `id_kwm` varchar(6) NOT NULL,
  `jenis_pinjaman` char(1) NOT NULL,
  `jumlah_permohonan_pinjaman` int(20) NOT NULL,
  `jumlah_diterima` int(20) NOT NULL,
  `tgl_permohonan` date NOT NULL,
  `admin_potongan` int(20) NOT NULL,
  `waktu_cicilan` date NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL,
  `keter_permohonan` text NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persertj_pinjaman`
--

CREATE TABLE `persertj_pinjaman` (
  `id_persertj_pinjaman` varchar(6) NOT NULL,
  `id_permohonan_pinjaman` varchar(6) NOT NULL,
  `id_staff` varchar(6) NOT NULL,
  `tgl_persertj_pinjaman` date NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `id_persertj_pinjaman` varchar(6) NOT NULL,
  `id_kwm` varchar(6) NOT NULL,
  `hutang` int(20) NOT NULL,
  `sisa_pinjaman` int(20) NOT NULL,
  `status_pinjaman` char(1) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpanan` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `id_koperasi` varchar(6) NOT NULL,
  `nama_anggota` varchar(25) NOT NULL,
  `simpanan_pokok` int(20) NOT NULL,
  `simpanan_wajib` varchar(20) NOT NULL,
  `simpanan_sukarela` int(20) NOT NULL,
  `simpanan_pendidikan` int(20) NOT NULL,
  `simpanan_rencana` int(20) NOT NULL,
  `simpanan_lebaran` int(20) NOT NULL,
  `tgl_simpanan` date NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jumlah_simpanan` int(20) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id_simpanan`, `id_anggota`, `id_koperasi`, `nama_anggota`, `simpanan_pokok`, `simpanan_wajib`, `simpanan_sukarela`, `simpanan_pendidikan`, `simpanan_rencana`, `simpanan_lebaran`, `tgl_simpanan`, `periode`, `jumlah_simpanan`, `createdby`, `modifiedby`) VALUES
('SPN001', 'AK0001', 'KSPW01', 'AK0001', 100000, '25000', 10000, 0, 0, 0, '2016-12-12', '2017', 135000, 'noor', 'noor');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` varchar(6) NOT NULL,
  `id_anggota` varchar(6) NOT NULL,
  `nama_staff` varchar(30) NOT NULL,
  `no_ktp_staff` varchar(20) NOT NULL,
  `jabatan` varchar(10) NOT NULL,
  `tgl_lahir_staff` date NOT NULL,
  `tlpn_staff` varchar(16) NOT NULL,
  `jenis_kelamin_staff` char(1) NOT NULL,
  `email_staff` varchar(30) NOT NULL,
  `foto_Staff` longblob NOT NULL,
  `status` char(1) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_anggota`, `nama_staff`, `no_ktp_staff`, `jabatan`, `tgl_lahir_staff`, `tlpn_staff`, `jenis_kelamin_staff`, `email_staff`, `foto_Staff`, `status`, `createdby`, `modifiedby`) VALUES
('STF001', 'AK0001', 'Noor', '90129340123', 'Pentest', '1990-12-20', '08123123', 'L', 'admin@contoh.com', 0x89504e470d0a1a0a0000000d49484452000000800000007408060000004d3d3ac400000c12694343504943432050726f66696c65000048899557075493c9169ebfa410125a20d209bd09d2abf42e553ad808498050022404153bbaa8e05a50510151d11510db5a00592b766511b0d707222a2beb62c186ca9b14d0f5b5f3ee39f3cf973bf7def9eee4ce9c1900146d587979d9a8120039fc024174902f3331299949ea053820c1a60534596c619e4f5454188032d6ff5ddedd0288b8bf6e258ef5afe3ff5594395c211b00240ae2548e909d03f111007075769ea00000423bd41bce2ec813e321885505902000445c8cd3a5585d8c53a578a2c42636da0f626f00c854164b900e80829837b3909d0ee3288839daf0393c3ec4d5107bb233581c881f403c31272717624532c466a9dfc549ff5bccd4f1982c56fa3896e62211b23f4f9897cd9afb7f2ec7ff969c6cd1d81c06b0513304c1d1e29ce1bad567e5868a3115e2e3fcd48848885520bec4e348ecc5f85e8628384e663fc816fac135030c0050c061f98742ac0d31439415e723c3762c81c417daa311bc829058194e15e446cbe2a385fcec8830599c1519dc90315cc31506c48cd9a4f10243208695861e29ca884d90f244cf15f2e223205680b8539815132af37d5494e11731662310458b391b41fc364d10182db5c1d47384637961d66c96642e580b987741466cb0d4174be40a13c3c63870b8fe01520e1887cb8f9371c36075f946cb7c4bf2b2a364f6580d373b285abaced8416161cc986f77012c30e93a608f335953a26473bdcb2b888a9572c3511006fc803f6002116ca9201764025ec760f320fc251d09042c2000e9800bac649a318f04c9081f7e634011f813222e108efbf94a46b9a010eabf8c6ba55f2b9026192d94786481a710e7e09ab827ee8e87c1af376c76b80bee3ae6c7541c9b951840f42706130389e6e33cd89075366c02c0fb37ba50d8736176622efcb11cbec5233c2574111e136e127a0877413c78228922b39ac52b16fcc09c09c2410f8c1628cb2ef5fbec7013c8da11f7c53d207fc81d67e09ac00a778099f8e05e303747a8fd9ea1689cdbb7b5fc713e31ebeff391e9152c141c652c52c7ff19bf71ab1fa3f87db7461cd887fe6889adc00e6317b133d865ec38d60c98d829ac056bc74e88f178253c9154c2d86cd1126e59300e6fccc6a6d166c0e6f30f73b364f38bd74b58c09d5320de0c7eb9797305bcf48c02a60f3c8db9cc103edb7a22d3cec6d61900f1d92e3d3ade30246736c2b8f24d977f1a00d752a84cffa663190270ec2900f477df7486af61b9af05e044275b242894eac4c73120000a5084bb4203e802436006f3b1034ec01d7883003005448258900466c215cf003990f36c301f2c0125a00cac051b4125d80676827ab00f1c02cde03838032e80aba013dc04f7615df483176008bc0323088290101a424734103dc418b144ec1017c4130940c2906824094941d2113e2242e6234b9132a41ca94476200dc8afc831e40c7219e942ee22bdc800f21af98462281555457550137412ea82faa0a1682c3a034d47f3d1227419ba1add8cd6a27bd126f40c7a15bd89f6a02fd0610c60f21803d3c7ac3017cc0f8bc492b1344c802dc44ab10aac16db8fb5c2fff93ad6830d621f71224ec799b815accd603c0e67e3f9f8427c155e89d7e34df839fc3ade8b0fe15f09348236c192e04608212412d209b30925840ac26ec251c279b86ffa09ef88442283684a7486fb328998499c475c45dc4a3c403c4dec22f6118749249206c992e4418a24b14805a412d216d25ed2295237a99ff4812c4fd623db9103c9c9643eb9985c41de433e49ee263f238fc829c919cbb9c945ca71e4e6caad91db25d72a774dae5f6e84a24c31a57850622999942594cd94fd94f394079437f2f2f206f2aef253e579f28be537cb1f94bf24df2bff91aa42b5a0fa51a75345d4d5d43aea69ea5dea1b1a8d6642f3a625d30a68ab690db4b3b447b40f0a74056b8510058ec222852a8526856e85978a728ac68a3e8a33158b142b140f2b5e531c5492533251f25362292d54aa523aa6745b695899ae6cab1ca99ca3bc4a798ff265e5e72a2415139500158eca32959d2a6755fae818dd90ee4767d397d277d1cfd3fb5589aaa6aa21aa99aa65aafb543b5487d454d41cd4e2d5e6a855a99d50eb61600c134608239bb1867188718bf16982ce049f09dc092b27ec9fd03de1bdba96bab73a57bd54fd80fa4df54f1a4c8d008d2c8d751acd1a0f35714d0bcda99ab3356b34cf6b0e6aa96ab96bb1b54ab50e69ddd346b52db4a3b5e769efd46ed71ed6d1d509d2c9d3d9a27356675097a1ebad9ba9bb41f7a4ee801e5dcf538fa7b741ef94de1f4c35a60f339bb999798e39a4afad1fac2fd2dfa1dfa13f62606a1067506c70c0e0a121c5d0c530cd7083619be190919e51b8d17ca346a37bc672c62ec619c69b8c2f1abf3731354930596ed26cf2dc54dd34c4b4c8b4d1f48119cdcccb2cdfacd6ec8639d1dcc53ccb7cab79a7056ae1689161516571cd12b574b2e4596eb5ec9a4898e83a913fb176e26d2baa958f55a155a355af35c33accbad8bad9fae524a349c993d64dba38e9ab8da34db6cd2e9bfbb62ab6536c8b6d5b6d5fdb59d8b1edaaec6ed8d3ec03ed17d9b7d8bf72b074e03ad438dc71a43b863b2e776c73fce2e4ec2470daef34e06ce49ce25ced7cdb45d525ca6595cb255782abafeb22d7e3ae1fdd9cdc0adc0eb9fde56ee59ee5bec7fdf964d3c9dcc9bb26f7791878b03c7678f478323d533cb77bf678e97bb1bc6abd1e7b1b7a73bc777b3ff331f7c9f4d9ebf3d2d7c657e07bd4f7bd9f9bdf02bfd3fe987f907fa97f47804a405c4065c0a34083c0f4c0c6c0a120c7a07941a78309c1a1c1eb826f87e884b0431a4286a6384f5930e55c28353426b432f47198459820ac351c0d9f12be3efc418471043fa23912448644ae8f7c18651a951ff5db54e2d4a8a955539f46db46cf8fbe18438f9915b327e65dac6fec9ad8fb716671a2b8b678c5f8e9f10df1ef13fc13ca137a1227252e48bc9aa499c44b6a492625c727ef4e1e9e16306de3b4fee98ed34ba6df9a613a63ce8ccb33356766cf3c314b71166bd6e114424a42ca9e94cfac48562d6b383524b53a7588edc7dec47ec1f1e66ce00c703db8e5dc67691e69e569cfd33dd2d7a70f64786554640cf2fc7895bc5799c199db32df674566d5658d6627641fc821e7a4e41ce3abf0b3f8e7727573e7e476e559e695e4f5e4bbe56fcc1f12840a760b11e10c614b812abce6b48bcc443f897a0b3d0bab0a3fcc8e9f7d788ef21cfe9cf6b9167357ce7d561458f4cb3c7c1e7b5edb7cfdf94be6f72ef059b06321b2307561db22c345cb16f52f0e5a5cbf84b2246bc9efc536c5e5c56f97262c6d5da6b36cf1b2be9f827e6a2c51281194dc5eeebe7cdb0a7c056f45c74afb955b567e2de5945e29b329ab28fbbc8abdeacacfb63f6ffe797475daea8e354e6b6ad612d7f2d7de5ae7b5aebe5cb9bca8bc6f7df8faa60dcc0da51bde6e9cb5f1728543c5b64d944da24d3d9bc336b76c31dab276cbe7ca8cca9b55be5507aab5ab5756bfdfcad9da5de35db37f9bceb6b26d9fb6f3b6dfd911b4a3a9d6a4b662277167e1cea7bbe2775dfcc5e59786dd9abbcb767fa9e3d7f5d447d79f6b706e68d8a3bd674d23da286a1cd83b7d6fe73eff7d2dfbadf6ef38c0385076101c141dfce3d7945f6f1d0a3dd476d8e5f0fe23c647aa8fd28f9636214d739b869a339a7b5a925aba8e4d39d6d6eade7af437ebdfea8eeb1faf3aa17662cd49cac96527474f159d1a3e9d777af04cfa99beb6596df7cf269ebd716eeab98ef3a1e72f5d08bc70f6a2cfc553973c2e1dbfec76f9d815972bcd579dae36b53bb61ffdddf1f7a31d4e1d4dd79cafb574ba76b6764dee3ad9edd57de6bafff50b37426e5cbd1971b3eb56dcad3bb7a7dfeeb9c3b9f3fc6ef6dd57f70aef8ddc5ffc80f0a0f4a1d2c38a47da8f6aff61fe8f033d4e3d277afd7bdb1fc73cbedfc7ee7bf144f8e473ffb2a7b4a715cff49e353cb77b7e7c2070a0f38f697ff4bfc87b313258f2a7f29fd52fcd5e1ef9cbfbaff6a1c4a1fe578257a3af57bdd17853f7d6e16ddb70d4f0a37739ef46de977ed0f850ffd1e5e3c54f099f9e8dccfe4cfabcf98bf997d6afa15f1f8ce68c8ee6b1042cc95500830d4d4b03e0751d00b4247877e80480a2207d7b490491be172508fc272c7d9f49c409803a6f00e216031006ef2835b019434c85bdf8ea1deb0d507bfbf12613619abd9d341615be60081f4647dfe800406a05e08b60747464ebe8e8975d90ec5d004ee74bdf7c6221c2fbfd760b31ba3659cb06fc20ff04f7cf6bb5d05ab7d70000000970485973000016250000162501495224f00000019d69545874584d4c3a636f6d2e61646f62652e786d7000000000003c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d22584d5020436f726520352e342e30223e0a2020203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e0a2020202020203c7264663a4465736372697074696f6e207264663a61626f75743d22220a202020202020202020202020786d6c6e733a657869663d22687474703a2f2f6e732e61646f62652e636f6d2f657869662f312e302f223e0a2020202020202020203c657869663a506978656c5844696d656e73696f6e3e3132383c2f657869663a506978656c5844696d656e73696f6e3e0a2020202020202020203c657869663a506978656c5944696d656e73696f6e3e3131363c2f657869663a506978656c5944696d656e73696f6e3e0a2020202020203c2f7264663a4465736372697074696f6e3e0a2020203c2f7264663a5244463e0a3c2f783a786d706d6574613e0aebf569e40000001c69444f5400000002000000000000003a000000280000003a0000003a00001067f949cf0a00001033494441547801ec5c0b744e471effc5fb5355ab5129b25d9a501a548592a5b55ef568ea753caba2d27ac6b3688b665b4297ea51158f2288dac473b55a6c691d3dedc116158a96580ecee2785b4a681e3bfff9325fe6de6fee77effdee25d6c9382777e63fffd7ccfcee3cfe733f2157ae5cc9c30392f2f29c35c5a9bcb21b994b79ec9fd5e4b60f66fa428a00503034669d55c069235704001b9de590d5e9003a9557ba5f040065b76888595959f8eebbefb067cf1e54aa5409717171285dbab486c74ac1e9003a9557fa58040065b768888b172fc69933677cb4989818b46eddda57b69a713a804ee5957eda06006961422e25b336dd177b8069d3a6213b3bdbd7e462c58a61e8d0a1a858b1a28f662563d658531d3607cb549f60b0a3d70eafd01fe069d627f70500b66edd8a9d3b776a9a51ab562df4ecd95343332b9835d64c9e5e3c3b3b76537d82c1a65ec7ed1076d9d34cd77d0180dbb76fe3934f3ec1ad5bb724d781575f7d15d5ab57d7d00215cc1a1b4896d7d91c28537d32831ddd7678651baabc89ae4205000d7c4848084a952a85bd7bf762e3c68d9a263cf6d863183870206849b0921c038019714387d2573e1054c33216929b7e04d2556800387efc38d2d3d339009a356b86a64d9b823683172e5cd074cf4b2fbd84679f7d5643332a046aa8918c9eee860ebd4e5fd9e46df4f1b18c9b7ef8746567212bbb04ca9429e133552800c8c9c9c1bc79f3c082503e479a346982888808ac58b1c247a34cd9b265919090c09c2ea3a1ab0abe86aa2a2dd2dcd011c89465fd36c022db3bbf7f23967d7908774a85236e544f84972ac6c174ede8460c1ab710b4c886c78e43f2ebcdb858a100e0871f7ec0b66ddb64bf11151585ae5dbb62e5ca95387af4a8a6ceeab1d072e76ab46b0bde68b23c4d67e18b29c3b0e410e061bdd773c66c74a9554e2b64a364c7473bbcc285bd8b1330f9cbd3ac188ac4e50bd1f091e21c000574e28cc2ccf429882c5b0c850280ebd7af7300646464f025801afac61b6fa04a952ab874e9129f1de4c6d33e818e858f3efaa868a7f229cb2819ac10756f5ef6a5ef3168c04c5ccc97f5b4188795a3bd6f8f15757a1e3b3edae115760e2c1f8b77d765b26238262f9f8dfa0c00b4ed38be610a46a5ecf6b27962919a1e8f0aac5fef3900366ddac4cffc2d5bb6c4d5ab57f1f5d75fa372e5caa0b55ea46fbef9063b76ec1045feac59b3267af5eaa5a1e90bc174985e87fe28f8cbba49787bf9cf125bc1db23112d65fd6797c062c1b4c7080079b88e8ceff7e1faef4058dde71059a914377e4f0170eedc392c5cb8901ba69dfff3cf3f8fc68d1bf359a0787186d4fc44a1e1e4e464dcbc795390f8b36fdfbea851a38686261782e930599ee7a519202fef22e6f58ec716ede9142ddffa142363c2fc44031224bd01f9a44abb802151250018dda86fee290052535371f2e449a98940fbf6edd1a851230d8d0a3ffdf413befaea2b0d9dee09060f1ecc01a3a9c82f183552c51b8826f464fd7b3d7a8e59c65943a3a2e139b807b4ba226200567dd409ea6d6916ce9ebe008a6b3e1c560d154a86e0f7ebe790b1ef106e95f020fbf26594a8fa141a3df3a4b97ce56a78a424b8fcfe8cc396e48d01700b17985f59cc2f4f8530843ecc14b374cf00f0ebafbf62f5ead5dca8f853be7c79bec32f51a2e05822ea727373f96c71fefc7941e2cf8e1d3ba261c3861a9a28888113e5609f42cfbfe62660da163ee418367f2942528622790f4d07a17867e94234a958306b095b570fae40dcc435bcd87dea3cd439b214efa7eef68f307aa2f0ce8c0968f2c78784287f6ae493e6a1f69125787f79feda2d731ac81b0120fbea1e0cec3799ef653c6d13b17298b70fef090028ce3f7ffe7ccdb18fdad2ad5b373cfdf4d372b334f913274ee0b3cf3ed3d03c1e0f468c18a1bc2d1403a71108a240536fee9de398da7d14f690bca72d52d287023b17207efa3fb9c6bafd6622a95ba49f76790045a5b15f1e0c9b9382b6120834f2a6cb86bfbc1100726eecc7b83eefe218732a3c36911d035d06c0e4c993457b7d4f3abb0f1f3e1cfbf6ed036dece454b56a55c4c7c763eddab5387cf8b05cc5f34f3cf104bf165eb56a158e1c39a2a9a7a051ab56ad3077ee5c0da8e48e4e4c4cd4c8d82ab08ebfb03b05f1495f70b1c86e5330b35f3de4de3c8c71bddfe19d8850b6935eecdd49cbba3503985f11d5753446758961d36e08ce1cda868f26ccf5eaa07a9d1ebd3cb5a96eb73196e5ef2b00b46bd78e9fefe7cc99030afbca69c08001bc98929262b8a677efde9d9f102868444b8248e25878f1e245104044720f00d9d838e5157ccaa77bf696cd4f45db2af47d4236b64eef8be41dde5de1c05969e858c3780a27bf1ab123e4c49723848bfc99736d3f12fb25e2603eb5cfd454f48caac04b7a00440ff810935ed6ce3481e40d01f01b9b017adfc3192034341443860cc1e6cd9bf9871e720fd4ad5b175dba74e1a15ff93b009987f2152a54e0e7ffeddbb7fb1d0b232323111b1bcb97167189e4160072aeeec5887eef7b377cba37f4cabe25e8ff9e7766088d9d8094d79fd3b8ad19405a3ad258fc2244c3c20b991b26616c8af77819caa6e494fc29592fbf386d0842d9795d9f8ce4ed0120dbbd4da07e09e8d3a70f6893b760c1028def74dca3d02e9d063efffc734d9daa40f1023a25d02c221f0b2944dcbf7f7fac59b3c6777fe016004e6c4ac2c8053f72771a0d4ec6a4f6e13ed7f2f2ce6146e741f04629a2f1f19a89a8cec2ad22c903c8d7daf886fe1b40c69c73791706bef601df9485779d8ce4b8fa5c855e7e4ebcfa1ec448de1000ca3dc08dbb03008ae9130028ae4f973e72a2b33f5dfed0805244d02c952c5992ef238e1d3b860d1b36f0e582ee0d9a376f8e6bd7ae81661a9a65e8d8e80600f2f2ae6279421cd69d661b014a9e08fc39ea0fb8e32db1bf57b17b3745dabca9d37b2918d0205414210f60a3f89998141ba906009b92c7f749f4ee05a2d8b172aaf758a9979f18ab5d3e84a11c03f9420700adcf34f55f66e75d8aebcba95cb972fceda78f3fe81b40aba97efdfa7cbafff6db6fd1a041037e31447709b4b9a40862eddab539a028802452b09bc0db67b6206ef05cdca490a095143d08ebdeed007190950730b217db3cf6aaa70480bca10c6d311a29a35b706b4ee58d0090cd6680f17ea700176700b9af68c3461b3702819c68dda7f5df49dab56b17684f70e78ef79da463212d299e321e6547dbb5c53b706d26d7e5098f42549847a1220b0777ffcc6fd6343177c6290f6068db714819da4ce9d7ed531bd163b8372a2a1fcb9cca1b0320c337e314d8bb4b00a0379c3ef3929338f6c9b460f2144ca2a0929c684969f99796ca8e96f9ccf2b9b9a7f1619704ece0e7ef6aec366d36bf4d53c9c9b76bcd46ccc6b8567fe26cf200f25bb7d5531051ca7f132707998cf600c1c82b01c0da93fd9b0a0077211278e3c60d1ec7176fa8e83c3af655ab564d14837ed2370474fea75986961bba4b68d1a2054a972aed180062f0780c3eea35dfbaac72f6f671f6068ff6bec108ef89bf27f7015d120b1d42c61333088bc6b7e775827629631586fd352d7f06f160ecc215685ed9bb8838952f740050fc9e366472aa57af1e3a77ee2c931ce569fda7e323c519685f413787c58b97404c4c53a8c2ca568d6d9fde0bb3d8199f36932ddf64173ecf87198a6a2f8a3c18396f195a562de30700529057ad2946f67f11953d2138b5f74b2c58278576a313d81ea28d720f218cdb91f7034079f63d00fb276f1a0b9680bb3003e877fe3420b446d391d0ed443f242130d0e68f068d3683143c0a26c91d9497f7243e48ff1075d8071381d22fe963f1f64aef8920bc2b0bafc635f407005f4e0c3694a12df0f19c91a82ed9d1cf00645f3edd68fc51c8ef4f4d40e23fe8fe22dcb784d18c96732d032359f089d7dc8d50303976faf469d05a4fa1db2d5bb6f0631a4dcf74f4733bd18723b41488243a89be2aa2af8beca61b4756e195f1695cac4cd36158f156c15b69a42bfb3fdb3068e86cefc722116c19f8a80fb2a5cba0c85e7fc5f0a74e62f6df96e2983778e85315f9e260bc3da49d5f9047064030f2991b925880896698084c4e9b81fa0f15e736736f6722a9fb9bfc6e839f4e7ad7e374d72e83e83bbfe9d3a7f39f76d115efe38f3fce2380f441279de5dd4e144398356b964fad00005d19d33134e814e88db5a0541e409a6ae7b040107d92739d85ad6fb3d9f077e6b727340c153cea3ed1cb27e70792acca077451d136d700406fffd2a54b7df645b8d747b80b99b4b434508088920000e5e953f2b030e3f59b780c93a2930c791515fa01348ae4294439492f2f0060c4ef94ee1a0028b02307773a74e880e8e868a7fe0594a76560d1a2453c26200320d03703011552e57d0600318398fa1d24836b0058b66c194e9d3ac5dde8d4a913287a772fd2d9b367b17efd7adf7d00d96cd3a60dff9d4150f61d0240be2cf2b49d80f4a18d6db9e154de9631c6ec1a00929292f8344c1f79d4a953c7ae1f8ef869ff41c74ffaca9852b01b412eec1000b9ff3d814d9b7fc46f4c5995faadd1ac96bd1fb86ae49f61f235edc9f336d8f8e31a00a64e9d8a1e3d7a80ae690b23d112b064c912d087a763c68cb1f44312a59f0e01a0d1e9822e7969d3e876a9e01a00e87a97bee229ac441d75e0c001fe85d00b2fbc10bc1b2e0c9acfb80bbafe6f00e06b742165dcec28b774510086ef2a9df4890b200a64deb5192090917b51e7d6a091af6ee9badff4a8c6e10102001f3a551b6dd35c79739955b700e0f4681aa8038a00a0ea1d97a65dd700e0269874ed7d6000e0ea5be20600dcd0210f96dbfaf275170140ee6429eff8edbd0b03e6d827a97d225b0400d113baa7e3cebe0b00b032cb69fd663fffd6b54b5f2c0280be47f2cbda8e34600a442e0c0098daf407c4030300c703a61b4cc7fa4c074367d042d18a4f567864534500907b43e45d1a3cbb8321cc2b9f167db26bb308008adebeefe200cc47cb03cb81428d62190b29243333d390339051559d8a26fb60566fc6ab92b74a9375535e252778f475fab2e0939f463cc6749236ec7aae5a25aba79995651f5579430098bd057ac3a45c45134603d5091efd5325a3a79995f53aa9ac97917954752a9a2c23f22a3e158df8cdfad7cbe30f10bd3eb3b2f0cde8a904805bcec946f58eca7581f22a399926e7498fbeacd76dd63695bc8aa6d76b64dbc89e115de855d9b4446398b1f3ff1d871c3daa5f02fc51279c929fca06181857392eeb2ac8d3a9d5dfbe5e5e2e1be50b746a7332bfb6c6183c8164ace850ca1bf495d0a7927142137af54fbf194039b07aa9fcb2db0ed12f7dace89479e43cb9a52feb5d0f586f302856fb44a5db4856c52bfbaaafb7ab472f2feb96f37e00902b291f4891aa4e4533d3a3b7299755fa649a9cb76a472f6366cf8a5e239d2abad1609af9a1d6e53f630a3d2a7e51279ea600108cf45439ae37a22f6be58d9d95f9e4bc4a9f86a6786b35f5b232291f884755a7a249ead42f8ad2379232ef07953d158d6bf30e8cec8e2f6f2423186c01c06b8cff15f27e0d3733a802914f992ea3d2659da6f553a79a1755ba049fbe4e5f167cf434aa53d155345997c8abf854b440fc54174886ea6d0340af543fa06606499e92153e158f559ad78ab91d953e23ffecf0aa7418c90b5fe5a78a5745339351f921cb040900aed6a747ef98beec63d46502f1a9ea5434ee498029d049bdde9ebeecd5cdffd21f4d52f39a4ffd4249b0f276e5fe070000ffff3a79e4c80000127549444154ed5d0d7855c5997eb3f29300969f5c5d6b89ad109e82869f16501194c2ba3e802da9d10a89155c62cb0a2e283f0f2a249800bb22548d455d2d5142258122bb0dfe2cad88b85251c1158187b5047457db354a56402209907a77be39f73b77ce9c9973eebdb951f67972803b33dfcffb7d33f39e3973cefd21e3d0a14351188e68d428762d553dd74f9e3c89ad5bb7e2c081033875ea946b6babb09f49efd38974a2e28fe9a0543b77ee84010306e09a6bae41972e5d7c663e3ccdc2a4d7657a9b204c3293dc66a7a5e1366df636b9eb282aba8dde566d336c04508d4c00aa8cea34f9959595387af4a87455f52a965a7738e69f5493af49e6c572707af6ec89e2e2622309883f361211961e23ac6df2494646b6b6438fcd763639eba9f48d6b40bfd34680cd9b3763cf9e3de8dbb72ff2f3f3d1b56b57352763dd9768cccad449934c053d71e2046a6b6b71f8f0610c19320413274e54d54e3d6020c8408f11d636f92423235bdba1c7663b9b9cf554fac635a0df5602840552f5545fbe7cb95cf6e7cc9993d0e43b898acc2c878a2f4d023ac11d6e6c6cc4830f3e282e079db160c1020fb20fcfa3f54f3ea9751fbd6db26158dd566fb39dadb4d9dbe42a8e6ea3b755db8cbaba3afb2ca8964a9d079c4514a0bcbc5c36b3b2b27c03c7767a19949849679211a62a6f6a6a92614a4b4bdd70aade152a159b5e97eb6d82d0c78261cdb6890f75b2fe7fdeb9014fbffcdf8876ec8da9774e424ea7bfe2543ce3e30a6395140910ef080f0013c094b81e94da89d8996c129531014cf66a3e5e7d335e5a3e0fabde69427697781fd99e5698ae5d23b878e8488c1ff73718dae77ca9f262b0b5bf8f36bbb847bc66b235c9d8e3edd577a06cf387a21941e9da2731b4fb39ac0a1ceba409c013cee89c141360fcf8f1ac3296babfd12826646cd5264cf6e28b2f4af392125a01fc93188cd588aa3b6ec6bf7c94d8e465e51560c9825b907b6e860aebd6c372750d0d95647ddfad9a8b924d75022907e56b2b30384600138e1a2e290298268f03244200b6551308ab9b7c3c3231c7eace9e08407a5e016cf81e0cd7a811d58200eb3f7488d36ff848fc75e70c444f897627e0d4f14fb07f5f1d9c8b0c3b4530f3a147f0b717fb6f3d4d771da6316424b534e56792910fc9f7ae9dd73604b005e5c09c741801827018c3549afc54995a27ff175e7841c2041140f789c76dc4ba993763c34762c2732661c3aa2264c694ec133d730c3b9ffb159657ed88bb210f2baacbd1af4bfcbacb4af6e336958990c0ece710d38be5c84c043061a8be54f7ad008924c7206a802002a876ec6b2a3332c4d9e624e051eb32b5add6c9298c00babd379020c01d458200421a2940d5ea29e82173222befe0371ede86bbe754804ce9c82928c72fa70c721aca2b75e7cc898fb1f7ddbda83f7e466a3a76c946ffc10391d3d3b06ac47c29cfcf8f7c80037facc3ff0abf68b423bed1eb9b1890772922ca2587fba31360d037bc648c3635e04f0db1b5ab4337e47cf35c1cfdf863641c3ca8df05783baaf4c553d5892209205cc74ff0ef0138490f80b141d7527f7cdd5f6deb75de03d85600d55e4f211a3d212f014c80759553d18d323290927c1b5e7f1cc5cbb7c4608661e5c685c8eda8ee079af1879a95585ef356ccc65be415dc85455346bbab0c6bbffcfc03d43cbc121b7633bd1c0de731fc8639b853f8a9b9a90428ab7ad8dd0390e7979f1fc0b25beec16e0e90371d1beffd166e2f2af5af0064a34f2efba92527c3322200c9264c98c0224fa9db7b94010d939f2a53eb0413be0290959f642405e812105f01c208108d36a0f2b6623cd7e078dfb8740d7e9ad7c36908acda25b7a172179d7586784224f72e79b760ddb21be5649223613e56588cdf9d547cc4ad7596b8bd3da9103172ed7c54ce1ce592d325403407656be304d0273f6bd834ac2ec94797930730abf01e33019c44e42bbd180f7de0db82007a0c4a4497e9ed30029830e21d4c8e00e4f76ed51d28a5db0671dc789f20c01087007f7a7905663eb223966f16f267dd879b46e78ab3bd19875efd0d1657d48acda433c963e73e81d9575f2031ea773d8ee94b9d55259a3d02f72cfe19aeb8a897d035e3f0ee5a2c2b5f07876f11dcf3f493b8bca7b3d43301a2d1deee5dc0976292978949e6339f27bf9b8c2410c56dad6f0f10d3c9421fdc205d1801c837084fc5b6d99afc7559daee02c41e206c05a03cebffbd02d37fb14df66dd4ed15983fee3ba2ee9cc5bf17273fe577eb03eb70fd7779d89d9e1e7de7194c5dfc1ba711f9112a57172322f61b759b97625ee52e291fb3f069cc1eded3b189bdd6fd5b25d6ecfe1fd1ea85a2597f8f01b1fd808700d5151898f13e564c9b87d763977d7df21934900064a40f303beaf2c40820111922b0d4f18d97255e461524870010b781258ad45fd5f11d0be53630410234ee7f06372fdc28c72972edbd6259be1ca73e7c0137fdc39312327bf43c54de35ca9740347a06cfcebd01bf3e44aa1cf1f0a6423ebcf9cf4d8b70f7da7dd23ee707d3b178e63844d47d85d667ee479c0097a2fc5753b16dd67c6c0f997c0af29512800272c254b71d269b4465bc092c29092600c5f663264f80865d4f61da92dfcaae0c2f5e894513fbe1d81e3abb374a593473286efd691ee0dc004819bd443b44b1ff9935d82d2729fef046258fb48b6662e0c8ab3162f8f77149ffef8add7b4f9ca3ec05b80f448045cfd2832065ef205a59c3a6634dc904df4693b0e9f8ca0940413969aaeb87496792919f49ce04a0bb00935e8de7d7274f00da03946ca247b0c04f9655c94de031b12a4c15ab021dfe1824a4bfde89cabfaf12d3be17913eef6da9c082c7b7c93abd7831221833651a8a0baef4dd052c7af6a0ebc3155afad7884d1f3fcf603997a10430254bcedea420df0c2299ed2e80039a7c59a763266b4bf62a016cb9733c3fbe4300ba0d8c665f9fc01e406c1ae788bb06b98c03f9621338ed7b3dc10490276a566f0ccce53b0311514ebe8ceca6d174ac337e3cff2e5cf5edf83ee1f4913a6c7b792b5edbb11bfb3e3ce2da4a4fe24eee4da85a5988ee318db302f80940ea7e372cc6ca29df8f597a8b700208fb4426a6acac9c2c532680f11a6f894d5d30e544720f0102ecc8960e2f4e7204a0eb7fd1bdb18d9c781af84f354b7089781a78f49da770eb7db5029b1e28fe2356155de20493f16454b79d48e5f4c9a3f8f8a3c3f8c38b3558ff8a58e62589a2ce8a73690fd1741e05f30a307656052667efc0cf6397218a316ec113b8fd4ae74e438d9946029449dc545700ef44c453b4c9c9c2a4530960d2c791c95fa22822be040851e47ae549a03454ec80bf7cf62e4affae14fb8594e2447e243680b75d2e6d5a3e790dd37fbe52deae45b37fe8eef019c0cdaba5198dcd2d40874c74cbece0a85b5ad02cfe918c45aebdb0f8af2d2b30ebb1d7a46dbf1b9688337b908c1fdf04f615445c2189b8b746bc3fb03eb63c210bb31f5983b1dff65e0c12220045539330b5cbcada8600a65824e343cf2b3902e813cb041072e5bd006f8c16fcf1b5f57860e5c6d8fd388d4dfcdedbc94b59490439064e5e8ca585f1259888f797cff6b8040286e161f114f1e24e27e34f22c5dbbab31f7b02632e3c87bb2a4b9500a3e63e8af957f7f61080ee28e2ef0636a376e1243c452c9587f3b4b29ff2598194094078eac08411e0d34f3fc5f1e3c7651aaa9f1468582c534bd5a77bf7ee38ff7cf37bf14c80d0bb003109fa468c9e04c6df0d8c606cfe489ccbb975ec087c568fffd8b9031fc56eaf9cfcb25054f6286e1a4c0f6be207df0970de9161059851300c59e25effc8a137c4eaf25b97403905a5583575a874defed0643cc4f76f62320b671563f4a0efe09ca623d8fdfb0df8e7cdbb62e32ecee8c7c419fdadcc000288c7c0a73fc08a9fdc89d739b5dc4958f78b22f7c963c204207fee0c63a9ed3002884f1e49b7c99327b3bb2c6b6a6a246e6161a14f4e025d5e5d5d2dedfaf5eb274b350712480288c92d49f139007d1e6053eced601940bcf82f15314dce9528bdf74e0cbdb0b36f6cc862efa6a55854f556ccd85bb87967fd00abd6ce763fc1438f6e4bc4737bbeb478bd9c16f9ea1b3bf5f300fc4c817d5bfe2c2e49339c4b12c972c4e56a55ec72951401c8d94d5cab7f550460c23001f49c880094a3edcd20b2a743ed8723a157b102cc159f07d0de1ff312200b3979976362413ec60eed83d8955b4298303fd9ff3b543cf828f637c4a3508d2e1be3a616a1f0fa11f21d47551b6daac773d5abb1aef62dedb3074066ef1198f6b35b70ede00b55171ca85e88bbd7d303a45c94573f80c15dbd978e7af1bc62fad2da984f1666feb20ad75ed439fc3980278a68a89d54ebf7df7fbffc50287d2ebf5327f1e909eda01580ecf5339a27d4242708939c704c04a0ef226cddfab2fc8e80fea150351d356f554e7593ce4b00dd23de36fb8ae5481c271aea71ec4c679cdbf19478aadf15d9d9dd3ce489a33835892536890d0dc7c4ac8b8d5b7333d0b53bb2bb793771aa9f29beaa37d5935e01088403714932fa48367d2cfcbcf3cec3a04183e4277349cec7c183ce3daa3ea1d5d535c2c44c0cf2d5ed893074e4e6e6ca925e288f663140fbf6ed03ed35ac1f0b8f79a879bb20413ae37e41f774da3ab68d3cba9d8e66d29b64ba1fb513b523dbb411e08b2fbef07c3184c0d52328a9209d8aa1d6551fb5dea3470ffb17436200aabd8a49759bce264fc4dfe46b923156aaa409f367bd5aa68d00d421fa76d0faf5eb515f5f8f16ba97351cc68e27718631a48a43f50e1d3ae0820b2ec0a44993ccdf0a624751aabe8a58566d3a9b3c117f93af49a66299f42699ea43f5446c541fe317438240549dadae06d0ebaa8f47972409541c5bdd83af34547b452cab369d4d9e88bfc9d77696339ed9c7d94fb08d5e9a7c741bbd9d36021070a20904d905e938797df0541fb5cef67a196463d3d9e43a36b5755bbdcd3e36b909c32663ac44f4aa2dd78d040802539356eb413e1ccc2d1338db756cd75754749da79d666c8eeb89c1424ba9dbea6d76b3c9496fd2e9c4671c9bbdaa776ce4ab479c1c01b4c1d593d4db9e485a23a8336c6ac3d3e5616dc6e352b7673995a9ea82306c983679501e361f9b9cf3b2e9030820d3607f59ea20616d8fb3a9a1114a37d1f159afcbc3daecc7a56ecf722a53d50561d8c89e4a2c938f4916948faab312808c74e0b0b6c9470d66abebb8aa9daef3b76554d5c597b747291ab60991488e5277916d3db6d148084d762619f9dbe5524b2f9ec3646f92b153908e6cce0a025022b64475b9bf2dbde9c53d741b57a1546c363639b906e91468a39dcdd72e971155585937d99b64ec18a4231b2b017447bd4dce2659909c74a6239933d264ebcb23e4d24239f87c628999f039679b0febb934d99964e201a8e11d4907c5682f54267970ce842702598e362100c532256ac9c16a6beb988eadb713896ff291f9a530297abf4cd86699cc547777d2703aefd1d9c643a218ecd9d9149b756d4680b0a43881203b5be2ba5c6f0761725c934f982ec8877d6db14dbe2619e398742619dbdbe206c94997217ed4c9be3e90c5ffa3236c8012ee4ac02a9030061bb616abb5feb13c6cab473b0178a2d4324d832e215b89d5d6a46e27803af15c6fe5a4314c3b013c23d1f68db63e5b52ea412bc994b63e89e44d58ed2b8069565b39691ec856629926cd839f44c384d54e00d300b672d27448d3c0eb36b6766b7c3d98963eb513c0334a4ec3b663369826244a79122d93965050ddc882d54e007da0443be5093360499165f06de6ae3c553f17205eb1f5a99d00f131726bb6c1720d52a8a484d94e80e4463aa541d643a471d03dd029e0a6f352641b9bf615c0334ba291c244e910b676b2136a9b341bbe551ed0a7af8d00f49332891cf469dfdebd7b63e4c891f2a7e8837cd23260018315143b515d323926631b183fa04f673d01b863341863c78ec555575dc5225f998e014bf62cf52511224826c7646c83c206e17ced0430fd9e007dbf80fedb19fa960f1df455b3d3a74fcbfae8d1a341ff4c4750474df626593a304cb82c4b183fe0ac65ac44cba098672501b863efbdf71ede7fff7dd9bceebaebf0fcf3cf837e4ed64682a08e326658990e0c6b8c2426359d7904619dd5043873e60c5e7ae925399ef465cf37de7803afbefaaa6c9b4810d451eba4688a746068904e534e3e55452581239d7904619dd504a071e21f7ce06ffb6edfbe1d6fbef9a61c429d04411d4d60ccdbf40e20a9bb8b24568ad07e8560a59d0089eeee39f1fefdfba34f9f3edcf4953a016892b76cd982bd7bf74a5b9504672d01422641ef74abfba10086617ded04a05c2391082ebbec3225ed7855270069a853afbcf20a76edda250d9904619d8da35a6a494e9405c52f4e0637195b7f249f246c4cda8c003366ccf025433fe040bf21f0f6db6f4b5d47f1bb3b749da7a357af5eb8e28a2b645d7d311180f53b77ee947b02da188e193306a3468d62554a654b4b137e5d3a1bff7ab011ddb3bcbfb04180f41b049999dd71d1a54370dd84711831b06f789c242734ddb7a16104f83ffbbeb399bdf134710000000049454e44ae426082, 'y', 'noor', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbkoperasi`
--

CREATE TABLE `tbkoperasi` (
  `id_koperasi` varchar(6) NOT NULL,
  `nama_koperasi` varchar(40) NOT NULL,
  `alamat_koperasi` text NOT NULL,
  `no_tlpn_koperasi` varchar(16) NOT NULL,
  `email_koperasi` varchar(40) NOT NULL,
  `badan_hukum` varchar(30) NOT NULL,
  `createdby` varchar(15) NOT NULL,
  `modifiedby` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbkoperasi`
--

INSERT INTO `tbkoperasi` (`id_koperasi`, `nama_koperasi`, `alamat_koperasi`, `no_tlpn_koperasi`, `email_koperasi`, `badan_hukum`, `createdby`, `modifiedby`) VALUES
('KSPW01', 'Koperasi Tunas Wanita Abadi', 'Jln sebentar', '08719283', 'asdflak@tunas-wanita-abadi.com', '09409812034', 'noor', 'noor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukti_transaksi_simpanan`
--
ALTER TABLE `bukti_transaksi_simpanan`
  ADD PRIMARY KEY (`id_transaksi_simpanan`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_koperasi` (`id_koperasi`),
  ADD KEY `id_simpanan` (`id_simpanan`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Indexes for table `cicilan_pinjaman`
--
ALTER TABLE `cicilan_pinjaman`
  ADD PRIMARY KEY (`id_cicilan`),
  ADD KEY `id_pinjaman` (`id_pinjaman`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kwm`),
  ADD KEY `kelompok_ibfk_1` (`id_koperasi`);

--
-- Indexes for table `msanggota`
--
ALTER TABLE `msanggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `id_koperasi` (`id_koperasi`),
  ADD KEY `id_kwm` (`id_kwm`);

--
-- Indexes for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD PRIMARY KEY (`id_penarikan_simpanan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `permohonan_pinjaman`
--
ALTER TABLE `permohonan_pinjaman`
  ADD PRIMARY KEY (`id_permohonan_pinjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_kwm` (`id_kwm`);

--
-- Indexes for table `persertj_pinjaman`
--
ALTER TABLE `persertj_pinjaman`
  ADD PRIMARY KEY (`id_persertj_pinjaman`),
  ADD KEY `id_permohonan_pinjaman` (`id_permohonan_pinjaman`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_persertj_pinjaman` (`id_persertj_pinjaman`),
  ADD KEY `id_kwm` (`id_kwm`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpanan`),
  ADD KEY `id_koperasi` (`id_koperasi`),
  ADD KEY `nama_anggota` (`nama_anggota`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `tbkoperasi`
--
ALTER TABLE `tbkoperasi`
  ADD PRIMARY KEY (`id_koperasi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukti_transaksi_simpanan`
--
ALTER TABLE `bukti_transaksi_simpanan`
  ADD CONSTRAINT `bukti_transaksi_simpanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`),
  ADD CONSTRAINT `bukti_transaksi_simpanan_ibfk_2` FOREIGN KEY (`id_koperasi`) REFERENCES `tbkoperasi` (`id_koperasi`),
  ADD CONSTRAINT `bukti_transaksi_simpanan_ibfk_3` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan` (`id_simpanan`),
  ADD CONSTRAINT `bukti_transaksi_simpanan_ibfk_4` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`);

--
-- Constraints for table `cicilan_pinjaman`
--
ALTER TABLE `cicilan_pinjaman`
  ADD CONSTRAINT `cicilan_pinjaman_ibfk_1` FOREIGN KEY (`id_pinjaman`) REFERENCES `pinjaman` (`id_pinjaman`);

--
-- Constraints for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD CONSTRAINT `kelompok_ibfk_1` FOREIGN KEY (`id_koperasi`) REFERENCES `tbkoperasi` (`id_koperasi`);

--
-- Constraints for table `msanggota`
--
ALTER TABLE `msanggota`
  ADD CONSTRAINT `msanggota_ibfk_1` FOREIGN KEY (`id_koperasi`) REFERENCES `tbkoperasi` (`id_koperasi`),
  ADD CONSTRAINT `msanggota_ibfk_2` FOREIGN KEY (`id_kwm`) REFERENCES `kelompok` (`id_kwm`);

--
-- Constraints for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD CONSTRAINT `penarikan_simpanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`);

--
-- Constraints for table `permohonan_pinjaman`
--
ALTER TABLE `permohonan_pinjaman`
  ADD CONSTRAINT `permohonan_pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`),
  ADD CONSTRAINT `permohonan_pinjaman_ibfk_2` FOREIGN KEY (`id_kwm`) REFERENCES `kelompok` (`id_kwm`);

--
-- Constraints for table `persertj_pinjaman`
--
ALTER TABLE `persertj_pinjaman`
  ADD CONSTRAINT `persertj_pinjaman_ibfk_1` FOREIGN KEY (`id_permohonan_pinjaman`) REFERENCES `permohonan_pinjaman` (`id_permohonan_pinjaman`),
  ADD CONSTRAINT `persertj_pinjaman_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`);

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`),
  ADD CONSTRAINT `pinjaman_ibfk_2` FOREIGN KEY (`id_persertj_pinjaman`) REFERENCES `persertj_pinjaman` (`id_persertj_pinjaman`),
  ADD CONSTRAINT `pinjaman_ibfk_3` FOREIGN KEY (`id_kwm`) REFERENCES `kelompok` (`id_kwm`);

--
-- Constraints for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD CONSTRAINT `simpanan_ibfk_2` FOREIGN KEY (`id_koperasi`) REFERENCES `tbkoperasi` (`id_koperasi`),
  ADD CONSTRAINT `simpanan_ibfk_3` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `msanggota` (`id_anggota`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
