-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 10:16 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_agenda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_agenda` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `nama_agenda`, `tgl_agenda`, `start_time`, `end_time`, `created_at`, `updated_at`, `user_id`) VALUES
(13, 'Rapat Bulanan PCM Batam Kota yang diadakan di kediaman Bapak Mabrur', '2024-06-13', '10:00:00', '13:00:00', '2024-06-13 03:47:46', '2024-06-13 03:48:26', 8),
(15, 'Pengajian Rutin Bulanan di Masjid Baitussalam', '2025-01-01', '08:00:00', '09:30:00', '2024-12-16 15:04:59', '2024-12-16 15:08:50', 17),
(16, 'Bakti Sosial untuk Masyarakat Terdampak Bencana Alam', '2025-01-22', '13:00:00', '15:00:00', '2024-12-16 15:06:11', '2024-12-16 15:06:11', 17),
(17, 'Pelatihan Kader Muhammadiyah di Gedung Dakwah PCM Batam Kota', '2024-12-29', '07:00:00', '15:00:00', '2024-12-16 15:07:55', '2024-12-16 15:12:15', 17),
(18, 'Acara Festival Budaya dan Dakwah di Lapangan atau Gedung Serbaguna Muhammadiyah', '2025-02-04', '08:00:00', '21:30:00', '2024-12-16 15:10:19', '2024-12-16 15:10:19', 17),
(19, 'Kajian Ilmiah dan Seminar Keislaman di Aula Gedung Muhammadiyah', '2025-03-26', '09:30:00', '11:30:00', '2024-12-16 15:11:35', '2024-12-16 15:11:35', 17),
(20, 'Pembukaan Kelas Pendidikan Al-Qur\'an di Masjid Darul Ulum dan SMKMU Batam', '2025-04-12', '08:30:00', '12:00:00', '2024-12-16 15:14:34', '2024-12-16 15:14:34', 17),
(21, 'Pelaksanaan Program Zakat dan Infaq di Sekretariat PCM Batam Kota', '2025-05-10', '07:30:00', '22:15:00', '2024-12-16 15:16:02', '2024-12-16 15:16:02', 17),
(22, 'Pelatihan Pengusaha Muslim di Gedung Ekonomi Muhammadiyah Batam', '2025-05-23', '13:25:00', '20:20:00', '2024-12-16 15:17:22', '2024-12-16 15:17:22', 17),
(23, 'Upacara Peringatan Hari Isra\' Miraj di Lapangan Terbuka Masjid Annur', '2025-01-26', '18:30:00', '22:15:00', '2024-12-16 15:19:53', '2024-12-16 15:19:53', 17),
(24, 'Pelatihan Kepemimpinan Muhammadiyah di Gedung Pusat Dakwah Muhammadiyah Batam', '2025-07-10', '07:40:00', '17:25:00', '2024-12-16 15:21:14', '2024-12-16 15:21:14', 17);

-- --------------------------------------------------------

--
-- Table structure for table `amalusahas`
--

CREATE TABLE `amalusahas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_amal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_amal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amalusahas`
--

INSERT INTO `amalusahas` (`id`, `nama_amal`, `link_amal`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'SMK Muhammadiyah Plus Batam Kota', 'https://www.instagram.com/smkmuba_official/', NULL, '2024-12-16 12:45:54', 8);

-- --------------------------------------------------------

--
-- Table structure for table `arsipadministrasis`
--

CREATE TABLE `arsipadministrasis` (
  `id` bigint UNSIGNED NOT NULL,
  `tgl_arsip` date NOT NULL,
  `no_surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategoriarsip_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arsipadministrasis`
--

INSERT INTO `arsipadministrasis` (`id`, `tgl_arsip`, `no_surat`, `kategoriarsip_id`, `created_at`, `updated_at`, `user_id`) VALUES
(20, '2024-06-13', '002/PCM/BTM/2024', 2, '2024-06-13 06:47:44', '2024-06-13 06:47:44', 2),
(21, '2024-06-13', '003/PCM/BTM/2024', 2, '2024-06-13 06:48:27', '2024-06-13 06:48:27', 2),
(22, '2024-06-13', '004/PCM/BTM/2024', 2, '2024-06-13 06:48:41', '2024-06-13 06:48:41', 2),
(23, '2024-06-13', '005/PCM/BTM/2024', 2, '2024-06-13 06:48:52', '2024-06-13 06:48:52', 2),
(24, '2024-06-13', '006/PCM/BTM/2024', 2, '2024-06-13 06:49:05', '2024-06-13 06:49:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `arsipfiles`
--

CREATE TABLE `arsipfiles` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_arsipfile` date NOT NULL,
  `upload_arsipfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arsipfiles`
--

INSERT INTO `arsipfiles` (`id`, `nama_file`, `tgl_arsipfile`, `upload_arsipfile`, `user_id`, `created_at`, `updated_at`) VALUES
(14, 'EDARAN PIMPINAN PUSAT MU NOMOR 01/EDR/I.0/E/2022', '2024-12-14', '1becf27dfb50ece7276b26bb6dae330fe28f02e895edd8278ae22f553f66d495.pdf', 17, '2024-12-16 18:42:01', '2024-12-16 18:42:01'),
(15, 'A Treatise on Progressive Islam', '2024-07-17', 'ff10b8d6f4c50b8d3f1d9af4312b663a625b20be3d6880a6ecd3f5c8ed8a01d2.pdf', 17, '2024-12-16 18:42:39', '2024-12-16 18:42:39'),
(16, 'AD-ART Muhammadiyah', '2024-07-17', '6dc61da1f58441fcf40591ce08597ad72e751603144658576abd0abb69308f3d.pdf', 17, '2024-12-16 18:43:17', '2024-12-16 18:43:17'),
(17, 'Berita Resmi MUTahun 2015', '2024-11-13', '2c07a872803409ce30f23e46823ee2675ac3406c831c80ca36890bd070c6b6b3.pdf', 17, '2024-12-16 18:43:45', '2024-12-16 18:43:45'),
(18, 'Blanko KTA Muhammadiyah', '2024-10-08', '6e52a44519937e2124169ecd64ad2508c688984c400b7b9b1ae744db704734fc.pdf', 17, '2024-12-16 18:44:14', '2024-12-16 18:44:14'),
(19, 'Buku Darul Ahdi Wa Syahahadah', '2024-09-26', '77598508336ebb5df817748aa997b010d8eda8e6fef58245f8efab555c58135d.pdf', 17, '2024-12-16 18:45:07', '2024-12-16 18:45:07'),
(20, 'Isu-Isu Strategis Muktamar ke 47', '2024-04-10', 'e5c33bac61dae860e3de3ce376d0fd30acc08734fe46b23576788e5f1761c804.pdf', 17, '2024-12-16 18:47:16', '2024-12-16 18:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategoriartikel_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikels`
--

INSERT INTO `artikels` (`id`, `judul`, `image`, `body`, `excerpt`, `kategoriartikel_id`, `created_at`, `updated_at`, `user_id`) VALUES
(13, 'Laravel 11: Menjelajahi Fitur dan Peningkatan Terbaru', 'c2088b84fe8a676c8812085ac321c57fb20ff453b324a2d6799adb00386115e5.png', '<div><strong>Laravel</strong>, salah satu framework PHP paling populer di dunia, terus berkembang dengan merilis versi terbarunya, Laravel 11. Framework ini dikenal karena kesederhanaan, kecepatan, dan elegansinya dalam pengembangan aplikasi web. Laravel 11 membawa sejumlah fitur baru dan peningkatan yang menjadikannya lebih powerful dan efisien. Berikut adalah beberapa fitur dan peningkatan utama dalam Laravel 11 yang perlu Anda ketahui.<br><br></div><div>1. Peningkatan Kinerja<br><br></div><div>Laravel 11 membawa peningkatan kinerja yang signifikan dibandingkan dengan versi sebelumnya. Peningkatan ini mencakup optimasi pada berbagai bagian framework, termasuk penyederhanaan query builder dan optimasi caching. Hasilnya, aplikasi yang dibangun dengan Laravel 11 akan lebih responsif dan mampu menangani beban yang lebih besar dengan lebih baik.<br><br></div><div>2. Model Query Enhancements<br><br></div><div>Peningkatan pada Model Query merupakan salah satu fokus utama dalam Laravel 11. Fitur baru ini memungkinkan pengembang untuk menulis query yang lebih kompleks dengan lebih mudah dan intuitif. Selain itu, performa query juga ditingkatkan, memungkinkan pengambilan data yang lebih cepat dari database.<br><br></div><div>3. Penyempurnaan Blade Template Engine<br><br></div><div>Blade, template engine Laravel yang terkenal dengan kesederhanaannya, juga mendapatkan sejumlah pembaruan. Laravel 11 memperkenalkan beberapa direktif baru dan peningkatan performa untuk Blade. Selain itu, debugging Blade templates kini lebih mudah dengan adanya error messages yang lebih informatif.<br><br></div><div>4. Middleware Implicit Binding<br><br></div><div>Laravel 11 memperkenalkan fitur Middleware Implicit Binding, yang memungkinkan pengikatan model ke route secara lebih otomatis dan efisien. Fitur ini menyederhanakan proses binding dan mengurangi jumlah kode yang harus ditulis oleh pengembang.<br><br></div><div>5. Event Broadcasting Enhancements<br><br></div><div>Event broadcasting adalah fitur yang memungkinkan aplikasi Laravel untuk memancarkan event real-time menggunakan WebSockets. Laravel 11 meningkatkan event broadcasting dengan dukungan yang lebih baik untuk berbagai driver dan optimasi performa yang lebih baik, memastikan event dapat dikirim dan diterima dengan lebih cepat dan andal.<br><br></div><div>6. Peningkatan pada Eloquent ORM<br><br></div><div>Eloquent ORM, alat andalan Laravel untuk berinteraksi dengan database, mendapatkan sejumlah peningkatan dalam Laravel 11. Fitur-fitur baru ini termasuk metode query yang lebih fleksibel, relasi yang lebih mudah dikelola, dan optimasi performa untuk pengambilan data.<br><br></div><div>7. Job Batching<br><br></div><div>Job batching adalah fitur yang memungkinkan pengelompokan beberapa job dalam satu batch dan melacak kemajuan mereka sebagai satu unit. Laravel 11 menyempurnakan fitur ini dengan lebih banyak kontrol dan fleksibilitas, memungkinkan pengembang untuk menangani job dengan lebih efisien.<br><br></div><div>8. Peningkatan Dokumentasi dan Komunitas<br><br></div><div>Laravel dikenal karena dokumentasinya yang komprehensif dan komunitasnya yang aktif. Laravel 11 tidak hanya melanjutkan tradisi ini tetapi juga meningkatkan dokumentasi dengan lebih banyak contoh, tutorial, dan panduan best practices. Komunitas Laravel yang kuat juga terus berkembang, memberikan dukungan dan sumber daya tambahan bagi pengembang.<br><br></div><div>9. Integrasi dengan Teknologi Terbaru<br><br></div><div>Laravel 11 memastikan kompatibilitas dan integrasi dengan teknologi terbaru di ekosistem pengembangan web. Ini termasuk dukungan untuk PHP versi terbaru, integrasi dengan alat dan layanan DevOps, serta kompatibilitas dengan berbagai database dan teknologi front-end terbaru.<br><br></div><div><strong>Kesimpulan</strong><br><br></div><div>Laravel 11 membawa berbagai fitur baru dan peningkatan yang signifikan, menjadikannya pilihan yang lebih baik untuk pengembangan aplikasi web. Dengan peningkatan kinerja, penyempurnaan pada query dan template engine, serta fitur-fitur baru seperti Middleware Implicit Binding dan Job Batching, Laravel 11 menawarkan alat yang kuat dan fleksibel untuk pengembang. Jika Anda adalah pengembang yang sudah akrab dengan Laravel, upgrade ke versi 11 akan memberikan Anda banyak keuntungan. Bagi pengembang baru, ini adalah waktu yang tepat untuk mulai mempelajari dan menggunakan Laravel.<br><br></div>', 'Laravel, salah satu framework PHP paling populer di dunia, terus berkembang dengan merilis versi terbarunya, Laravel 11. Framework ini dikenal karena kesederhanaan, kecepatan, dan elegansinya dalam pe...', 2, '2024-06-13 06:13:06', '2024-06-13 06:15:12', 8),
(14, 'React: Menghadirkan Keajaiban dalam Pengembangan Aplikasi Web', '65bd9fe1eabd640dbb640f5fda6b03525de41500379a87f2602fa8aebbd56010.jpg', '<div><strong>React</strong> adalah salah satu library JavaScript paling populer untuk membangun antarmuka pengguna (UI) yang dinamis dan responsif. Dikembangkan dan dikelola oleh Facebook, React telah merevolusi cara pengembang membangun aplikasi web dengan pendekatan deklaratif dan komponen yang dapat digunakan kembali. Berikut adalah beberapa aspek penting tentang React yang perlu Anda ketahui.<br><br></div><div>Apa itu React?<br><br></div><div>React adalah library JavaScript open-source yang digunakan untuk membangun user interfaces, khususnya untuk aplikasi single-page. React memungkinkan pengembang untuk membuat komponen UI yang kompleks dari komponen kecil dan terisolasi yang dapat dikelola secara independen.<br><br></div><div>Keunggulan Utama React<br><br></div><ol><li><strong>Komponen yang Dapat Digunakan Kembali</strong>: React mempromosikan penggunaan komponen, yang berarti setiap bagian dari UI Anda dapat didefinisikan sebagai komponen yang dapat digunakan kembali di berbagai bagian aplikasi Anda. Ini tidak hanya mengurangi duplikasi kode tetapi juga membuat kode lebih mudah dikelola dan dipelihara.<br><br></li><li><strong>Pendekatan Deklaratif</strong>: React menggunakan pendekatan deklaratif untuk mendefinisikan UI. Ini berarti Anda dapat mendeskripsikan bagaimana UI Anda seharusnya terlihat berdasarkan keadaan aplikasi Anda, dan React akan mengurus detail bagaimana melakukan update yang efisien ketika data berubah.<br><br></li><li><strong>Virtual DOM</strong>: Salah satu fitur unggulan React adalah Virtual DOM, yang meningkatkan performa aplikasi dengan meminimalisir manipulasi langsung pada DOM yang sesungguhnya. React membuat salinan in-memory dari DOM dan hanya memperbarui bagian-bagian yang berubah, yang membuat proses rendering lebih cepat.<br><br></li><li><strong>Ekosistem yang Kuat</strong>: React memiliki ekosistem yang luas dan aktif dengan banyak pustaka dan alat yang mendukung. Beberapa alat penting dalam ekosistem React termasuk Redux untuk state management, React Router untuk navigasi, dan Next.js untuk server-side rendering dan static site generation.<br><br></li><li><strong>Komunitas yang Besar dan Aktif</strong>: React didukung oleh komunitas yang besar dan aktif. Ada banyak sumber daya, tutorial, dan forum diskusi yang tersedia, yang membuat pembelajaran dan pengembangan dengan React menjadi lebih mudah dan menyenangkan.<br><br></li></ol><div>Cara Kerja React<br><br></div><div>React bekerja dengan konsep komponen. Setiap komponen di React adalah sebuah fungsi atau kelas yang dapat menerima input (disebut \"props\") dan mengembalikan elemen React yang menggambarkan bagaimana bagian UI seharusnya terlihat. Berikut adalah contoh dasar dari sebuah komponen React:<br><br></div><pre>javascript\r\nCopy codeimport React from \'react\';\r\n\r\nfunction Greeting(props) {\r\n  return &lt;h1&gt;Hello, {props.name}!&lt;/h1&gt;;\r\n}\r\n\r\nexport default Greeting;\r\n<br></pre><div>Komponen ini dapat digunakan di dalam aplikasi React lainnya seperti ini:<br><br></div><pre>javascript\r\nCopy codeimport React from \'react\';\r\nimport ReactDOM from \'react-dom\';\r\nimport Greeting from \'./Greeting\';\r\n\r\nReactDOM.render(&lt;Greeting name=\"World\" /&gt;, document.getElementById(\'root\'));\r\n<br></pre><div>Mengapa Memilih React?<br><br></div><ol><li><strong>Kecepatan dan Efisiensi</strong>: Dengan Virtual DOM dan pendekatan deklaratif, React membuat update UI menjadi cepat dan efisien. Ini sangat penting untuk aplikasi yang membutuhkan performa tinggi dan interaksi pengguna yang halus.<br><br></li><li><strong>Skalabilitas</strong>: React memungkinkan pengembangan aplikasi yang dapat diskalakan dengan baik. Dengan pendekatan komponen, Anda dapat membangun aplikasi besar dengan kode yang modular dan terorganisir.<br><br></li><li><strong>Dukungan untuk Mobile Development</strong>: React Native, framework yang dibangun di atas React, memungkinkan pengembang untuk membangun aplikasi mobile native untuk iOS dan Android menggunakan JavaScript dan React. Ini memperluas kekuatan React ke dunia mobile.<br><br></li><li><strong>SEO-Friendly</strong>: Dengan alat seperti Next.js, React dapat digunakan untuk server-side rendering, yang meningkatkan performa SEO aplikasi Anda dengan memastikan konten dapat diindeks oleh mesin pencari.<br><br></li></ol><div>Tantangan dalam Menggunakan React<br><br></div><div>Seperti teknologi lainnya, React juga memiliki tantangan tersendiri, seperti:<br><br></div><ol><li><strong>Learning Curve</strong>: Meskipun React sendiri cukup sederhana, ekosistem yang luas dan beragam bisa membuatnya menantang bagi pemula.</li><li><strong>Boilerplate Code</strong>: Mengelola state dan lifecycle methods di aplikasi besar bisa menghasilkan banyak kode boilerplate.</li><li><strong>Performance Optimization</strong>: Memastikan performa optimal memerlukan pemahaman yang mendalam tentang bagaimana React bekerja di bawah kap.</li></ol><div>Kesimpulan<br><br></div><div>React telah membuktikan dirinya sebagai salah satu alat terbaik untuk pengembangan UI modern dengan banyak keuntungan seperti komponen yang dapat digunakan kembali, performa yang tinggi, dan ekosistem yang kaya. Dengan dukungan komunitas yang kuat dan ekosistem yang berkembang, React terus menjadi pilihan utama bagi pengembang web yang ingin membangun aplikasi yang dinamis dan responsif. Jika Anda belum mencoba React, sekarang adalah waktu yang tepat untuk memulainya dan mengalami sendiri keajaiban pengembangan aplikasi web dengan React.<br><br></div>', 'React adalah salah satu library JavaScript paling populer untuk membangun antarmuka pengguna (UI) yang dinamis dan responsif. Dikembangkan dan dikelola oleh Facebook, React telah merevolusi cara penge...', 1, '2024-06-13 06:16:35', '2024-06-13 06:16:35', 8),
(15, 'Mengenal Python: Bahasa Pemrograman Serbaguna yang Menguasai Dunia Teknologi', '355e8aae8e5c366ae8db34861b0dfd4d65f9a6a14827d656f23d3b8d3dd55665.jpg', '<div><strong>Python</strong> adalah salah satu bahasa pemrograman yang paling populer dan serbaguna di dunia saat ini. Dikenal karena sintaksisnya yang sederhana dan mudah dipahami, Python telah menjadi pilihan utama bagi banyak pengembang, ilmuwan data, dan insinyur perangkat lunak. Artikel ini akan mengulas sejarah, fitur, serta aplikasi Python dalam berbagai bidang teknologi.<br><br></div><div>Sejarah Singkat Python<br><br></div><div>Python diciptakan oleh Guido van Rossum dan pertama kali dirilis pada tahun 1991. Nama \"Python\" diambil dari acara komedi Inggris \"Monty Python\'s Flying Circus,\" bukan dari ular piton. Guido van Rossum mengembangkan Python dengan tujuan untuk membuat bahasa pemrograman yang mudah dipelajari dan digunakan, sambil tetap kuat dan fleksibel.<br><br></div><div>Fitur Utama Python<br><br></div><ol><li><strong>Sintaksis Sederhana dan Mudah Dibaca</strong>: Salah satu keunggulan utama Python adalah sintaksisnya yang bersih dan mudah dibaca. Ini memungkinkan pengembang untuk menulis kode yang lebih sedikit dan lebih jelas.<br><br></li><li><strong>Bahasa Pemrograman Serbaguna</strong>: Python mendukung berbagai paradigma pemrograman, termasuk pemrograman berorientasi objek, prosedural, dan fungsional. Ini membuatnya fleksibel untuk berbagai aplikasi.<br><br></li><li><strong>Pustaka Standar yang Kaya</strong>: Python memiliki pustaka standar yang luas yang mencakup berbagai fungsi, mulai dari manipulasi string hingga komunikasi jaringan. Ini memungkinkan pengembang untuk melakukan banyak hal tanpa perlu menginstal pustaka tambahan.<br><br></li><li><strong>Komunitas yang Besar dan Aktif</strong>: Python memiliki komunitas yang besar dan aktif yang berkontribusi pada pengembangan pustaka dan alat baru. Ada banyak sumber daya, seperti dokumentasi, tutorial, dan forum yang tersedia untuk membantu pengembang.<br><br></li><li><strong>Interoperabilitas</strong>: Python dapat dengan mudah diintegrasikan dengan bahasa lain seperti C, C++, dan Java. Ini memungkinkan pengembang untuk menggunakan Python dalam proyek-proyek yang memerlukan kinerja tinggi.<br><br></li></ol><div>Aplikasi Python dalam Berbagai Bidang<br><br></div><ol><li><strong>Ilmu Data dan Pembelajaran Mesin</strong>: Python adalah bahasa pilihan utama untuk ilmu data dan pembelajaran mesin. Pustaka seperti Pandas, NumPy, SciPy, dan scikit-learn memungkinkan ilmuwan data untuk melakukan analisis data yang kompleks dan membangun model pembelajaran mesin. Selain itu, TensorFlow dan PyTorch adalah pustaka populer untuk pengembangan model kecerdasan buatan.<br><br></li><li><strong>Pengembangan Web</strong>: Python digunakan secara luas dalam pengembangan web. Framework seperti Django dan Flask memudahkan pengembang untuk membangun aplikasi web yang kuat dan skalabel. Django, misalnya, menyediakan banyak fitur out-of-the-box, seperti sistem autentikasi dan administrasi, yang mempercepat proses pengembangan.<br><br></li><li><strong>Automasi dan Scripting</strong>: Python sering digunakan untuk automasi tugas-tugas repetitif dan scripting. Dengan pustaka seperti Selenium untuk otomatisasi web dan pyautogui untuk kontrol GUI, Python membantu mengotomatisasi banyak proses yang biasanya memakan waktu.<br><br></li><li><strong>Pengembangan Aplikasi Desktop</strong>: Python juga digunakan untuk mengembangkan aplikasi desktop. Pustaka seperti Tkinter, PyQt, dan Kivy memungkinkan pengembang untuk membuat aplikasi dengan antarmuka pengguna grafis (GUI) yang interaktif.<br><br></li><li><strong>Komputasi Ilmiah dan Numerik</strong>: Python sangat populer di kalangan ilmuwan dan insinyur untuk komputasi ilmiah dan numerik. Pustaka seperti Matplotlib untuk visualisasi data, SimPy untuk simulasi, dan SymPy untuk komputasi simbolik membantu dalam penelitian dan pengembangan.<br><br></li><li><strong>Cybersecurity</strong>: Python digunakan dalam bidang keamanan siber untuk pengujian penetrasi, analisis malware, dan automasi keamanan. Alat seperti Scapy untuk analisis jaringan dan Nmap untuk pemindaian port sangat berguna bagi profesional keamanan.<br><br></li></ol><div>Mengapa Memilih Python?<br><br></div><ol><li><strong>Mudah Dipelajari</strong>: Python adalah salah satu bahasa pemrograman yang paling mudah dipelajari. Sintaksis yang sederhana dan dokumentasi yang lengkap membuatnya ideal bagi pemula.<br><br></li><li><strong>Produktivitas Tinggi</strong>: Dengan Python, pengembang dapat menulis kode yang lebih sedikit dan lebih efisien. Ini meningkatkan produktivitas dan memungkinkan pengembangan yang cepat.<br><br></li><li><strong>Komunitas yang Mendukung</strong>: Komunitas Python yang besar dan aktif berarti ada banyak sumber daya dan dukungan yang tersedia. Baik Anda seorang pemula atau ahli, Anda akan menemukan banyak tutorial, forum, dan pustaka yang membantu.<br><br></li><li><strong>Versatilitas</strong>: Python dapat digunakan untuk berbagai macam proyek, dari pengembangan web hingga analisis data, dari automasi hingga kecerdasan buatan. Ini membuatnya menjadi alat yang serbaguna untuk berbagai aplikasi.<br><br></li></ol><div>Kesimpulan<br><br></div><div>Python telah membuktikan dirinya sebagai salah satu bahasa pemrograman paling penting dan serbaguna di dunia teknologi. Dengan sintaksis yang mudah dipahami, pustaka yang kaya, dan komunitas yang mendukung, Python terus menjadi pilihan utama bagi pengembang di berbagai bidang. Jika Anda belum mengenal Python, sekarang adalah waktu yang tepat untuk memulai dan menjelajahi potensinya yang luar biasa.<br><br></div>', 'Python adalah salah satu bahasa pemrograman yang paling populer dan serbaguna di dunia saat ini. Dikenal karena sintaksisnya yang sederhana dan mudah dipahami, Python telah menjadi pilihan utama bagi...', 1, '2024-06-13 06:18:00', '2024-06-13 06:18:00', 8),
(16, 'Java: Fondasi Kuat dalam Dunia Pemrograman', '28221f3027b78fe59e904c354062be72bb58741d50d83d1bc85f7f79e0cedcda.jpeg', '<div><strong>Java</strong> adalah bahasa pemrograman yang sangat populer dan memiliki pengaruh yang besar dalam pengembangan perangkat lunak, terutama dalam membangun aplikasi berbasis desktop, web, mobile, dan enterprise. Dikembangkan oleh Sun Microsystems (sekarang dimiliki oleh Oracle Corporation), Java dikenal karena portabilitasnya, keamanannya, serta dukungan yang luas dari komunitas dan industri. Artikel ini akan mengulas sejarah, fitur, dan aplikasi Java dalam berbagai bidang teknologi.<br><br></div><div>Sejarah Singkat Java<br><br></div><div>Java dikembangkan pertama kali oleh James Gosling dan timnya di Sun Microsystems pada tahun 1991. Tujuan utama pengembangan Java adalah untuk membuat bahasa pemrograman yang dapat berjalan di berbagai platform (portable), yang pada saat itu menjadi tantangan utama dalam pengembangan perangkat lunak. Java pertama kali dirilis secara publik pada tahun 1995 dan segera menjadi populer di kalangan pengembang.<br><br></div><div>Fitur Utama Java<br><br></div><ol><li><strong>Portabilitas</strong>: Salah satu fitur paling menonjol dari Java adalah portabilitasnya. Java menggunakan konsep \"Write Once, Run Anywhere\" (WORA), yang berarti kode yang ditulis dalam Java dapat dijalankan di berbagai platform yang mendukung Java Virtual Machine (JVM), tanpa perlu mengubahnya.<br><br></li><li><strong>Object-Oriented</strong>: Java adalah bahasa pemrograman berorientasi objek. Semua kode Java berada dalam bentuk kelas dan objek, yang memungkinkan untuk modularitas, fleksibilitas, dan reusable code.<br><br></li><li><strong>Keamanan</strong>: Java memiliki model keamanan yang kuat dengan kontrol akses yang ketat terhadap sumber daya komputer. Dengan sandboxing dan mekanisme keamanan lainnya, Java memastikan aplikasi dapat berjalan dengan aman di lingkungan yang terkontrol.<br><br></li><li><strong>Rich Standard Library</strong>: Java dilengkapi dengan pustaka standar yang kaya (Java Standard Edition), yang menyediakan berbagai fungsi dan algoritma siap pakai untuk membantu pengembang membangun aplikasi dengan lebih cepat.<br><br></li><li><strong>Platform Enterprise</strong>: Java juga dikenal dengan platform Enterprise Edition (Java EE atau Jakarta EE), yang menyediakan standar dan spesifikasi untuk membangun aplikasi enterprise skala besar. Ini termasuk teknologi seperti servlets, JSP (JavaServer Pages), EJB (Enterprise JavaBeans), dan JPA (Java Persistence API).<br><br></li><li><strong>Komunitas yang Luas</strong>: Java memiliki komunitas yang besar dan aktif di seluruh dunia, dengan dukungan yang luas dari Oracle dan berbagai organisasi terkait. Komunitas ini menyediakan dukungan teknis, tutorial, dan sumber daya pembelajaran untuk pengembang Java.<br><br></li></ol><div>Aplikasi Java dalam Berbagai Bidang<br><br></div><ol><li><strong>Pengembangan Aplikasi Desktop</strong>: Java digunakan untuk mengembangkan aplikasi desktop cross-platform menggunakan JavaFX atau Swing. Aplikasi seperti IntelliJ IDEA (IDE), jDownloader, dan Minecraft dibangun dengan Java.<br><br></li><li><strong>Pengembangan Aplikasi Web</strong>: Java merupakan pilihan utama dalam pengembangan aplikasi web enterprise. Framework populer seperti Spring Framework menyediakan kerangka kerja yang kuat untuk membangun aplikasi web yang skalabel dan aman.<br><br></li><li><strong>Pengembangan Aplikasi Mobile</strong>: Dengan platform seperti Android Studio, Java digunakan untuk mengembangkan aplikasi mobile untuk sistem operasi Android. Java juga digunakan dalam pengembangan aplikasi mobile cross-platform dengan framework seperti Flutter (menggunakan Flutter for Java).<br><br></li><li><strong>Big Data dan Analitik</strong>: Java banyak digunakan dalam pengembangan aplikasi big data dan analitik. Teknologi seperti Apache Hadoop, Apache Spark, dan Apache Kafka menggunakan Java sebagai bahasa pengembangan utama.<br><br></li><li><strong>Enterprise Solutions</strong>: Java EE (sekarang dikenal sebagai Jakarta EE) digunakan dalam pengembangan aplikasi enterprise yang membutuhkan skala besar, keamanan tinggi, dan kinerja yang baik. Aplikasi seperti sistem manajemen basis data, ERP (Enterprise Resource Planning), dan aplikasi perbankan umumnya dibangun dengan Java.<br><br></li></ol><div>Mengapa Memilih Java?<br><br></div><ol><li><strong>Portabilitas dan Interoperabilitas</strong>: Java memberikan portabilitas lintas platform dan interoperabilitas yang kuat dengan bahasa lain dan infrastruktur teknologi.<br><br></li><li><strong>Keamanan dan Kinerja</strong>: Java menawarkan keamanan tinggi dan kinerja yang baik, membuatnya cocok untuk pengembangan aplikasi kritis dan aplikasi skala besar.<br><br></li><li><strong>Dukungan Komunitas</strong>: Komunitas Java yang besar dan aktif memberikan dukungan yang kuat, sumber daya pembelajaran, dan update terbaru dalam ekosistem Java.<br><br></li><li><strong>Pengembangan Enterprise</strong>: Java adalah pilihan utama untuk pengembangan aplikasi enterprise, dengan dukungan yang kuat untuk standar industri dan teknologi yang mapan.<br><br></li></ol><div>Kesimpulan<br><br></div><div>Java tetap menjadi salah satu bahasa pemrograman yang paling dominan dan penting dalam dunia teknologi. Dengan fitur-fitur seperti portabilitas, keamanan, dan dukungan untuk berbagai aplikasi, Java terus menjadi pilihan utama bagi pengembang dari berbagai bidang. Jika Anda tertarik dalam mempelajari bahasa pemrograman yang kuat dan serbaguna, Java adalah pilihan yang sangat tepat untuk dipertimbangkan.<br><br></div>', 'Java adalah bahasa pemrograman yang sangat populer dan memiliki pengaruh yang besar dalam pengembangan perangkat lunak, terutama dalam membangun aplikasi berbasis desktop, web, mobile, dan enterprise....', 2, '2024-06-13 06:19:43', '2024-06-13 06:19:43', 8);

-- --------------------------------------------------------

--
-- Table structure for table `bidangkajians`
--

CREATE TABLE `bidangkajians` (
  `id` bigint UNSIGNED NOT NULL,
  `bidang_kajian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidangkajians`
--

INSERT INTO `bidangkajians` (`id`, `bidang_kajian`, `created_at`, `updated_at`) VALUES
(1, 'Bidang Aqidah', NULL, NULL),
(2, 'Bidang Ibadah', NULL, NULL),
(3, 'Bidang Muamallah', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `judul`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(8, 'Selamat Datang di Situs Resmi Pimpinan Cabang Muhammadiyah🙏', 'A3Uh2CxyhVKmIcrufYl2VAMmJwV8GdCsU1I1u3yf.jpg', '2024-12-16 13:09:46', '2024-12-16 13:09:46', 8),
(9, 'Selamat Bulan Suci Ramadhan✨', 'AFluCgfoOh2j3fsUiHaicLUfV7pSTcSCbkN3Ix0w.jpg', '2024-12-16 13:11:02', '2024-12-16 13:11:02', 8),
(10, 'Mari Memakmurkan Masjid Muhammadiyah', '9hgsEKm1SiDOAMxJJfIt4lqFR8J06PMDRRVekl3S.jpg', '2024-12-16 13:12:15', '2024-12-16 13:12:15', 8),
(11, 'TANWIR & MILAD KE-112 MUHAMMADIYAH', '8KZk6ZSdDvdVq0LHM5DsgFu9HPH5iWo1wdoNgrTP.png', '2024-12-16 13:12:58', '2024-12-16 13:12:58', 8);

-- --------------------------------------------------------

--
-- Table structure for table `direktorikeanggotaans`
--

CREATE TABLE `direktorikeanggotaans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbm` int NOT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `cabang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pernikahan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_diri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jabatan` enum('Ketua','Wakil Ketua','Sekretaris','Bendahara','Anggota') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anggota',
  `status` enum('Menunggu Persetujuan','Disetujui','Ditolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menunggu Persetujuan',
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `direktorikeanggotaans`
--

INSERT INTO `direktorikeanggotaans` (`id`, `nama`, `nbm`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `cabang`, `ranting`, `alamat`, `status_pernikahan`, `email`, `no_hp`, `pekerjaan`, `foto_diri`, `ktam`, `created_at`, `updated_at`, `jabatan`, `status`, `user_id`) VALUES
(22, 'Sutrisno', 1228068, 'Laki-Laki', 'Kudus', '1996-08-20', 'Batam Center', 'Baloi Permai', 'PERUM LEGENDA MALAKA BLOK D.10 NO. 3 BATAM', 'Menikah', 'sutrisno.btm@gmail.com', '085835622206', 'Wirausaha', 'e24d2891524abea9a628987ff09c111de118e32fe8c5a491dad70d8d22d18054.jpg', NULL, '2024-12-16 17:12:10', '2024-12-16 17:12:10', 'Ketua', 'Disetujui', 17),
(23, 'Ahmadi Irmansyah Lubis', 1402277, 'Laki-Laki', 'Padangsidimpuan', '1994-11-10', 'Batam Center', 'Sungai Panas', 'Cluster Puri Legenda Blok B12 No.8, Baloi Permai', 'Menikah', 'ahmadi@gmail.com', '082273083850', 'Guru', '86f860bdadd0d1bf37a64bdbc1fe3774ce926baf6417a37a2a48b7b3bdde223f.jpg', NULL, '2024-12-16 17:16:48', '2024-12-16 17:16:48', 'Sekretaris', 'Disetujui', 17),
(24, 'R. Hastomo', 1371052, 'Laki-Laki', 'Mojokerto', '1971-04-18', 'Batam Center', 'Belian', 'Perum Buana Regency Blok B nomor 9', 'Menikah', 'gustomo@gmail.com', '082169995214', 'Wirausaha', '610a3088f17c3987fc4ef2c49f88b65f026849a5f8456987a4437b0ad507510b.jpg', NULL, '2024-12-16 17:25:39', '2024-12-16 17:25:39', 'Bendahara', 'Disetujui', 17),
(25, 'Heri Fadrianto', 9548570, 'Laki-Laki', 'Langkat prov. Sumatera Utara', '1975-04-04', 'Batam Center', 'Belian', 'Perum. Buana Vista Indah I Blok G no. 07', 'Menikah', 'herifadrianto@gmail.com', '082169336754', 'Pegawai Negeri Sipil', '7dbbbd1dbbc2b6b5422752f47f446186ec55c87a43a2bfecceb43b5a1563b788.jpeg', NULL, '2024-12-16 17:28:59', '2024-12-16 17:28:59', 'Wakil Ketua', 'Disetujui', 17),
(26, 'Emtizar Karyan', 1086043, 'Laki-Laki', 'Prabumulih', '1958-10-20', 'Batam Center', 'Belian', 'CENTRAL SUKAJADI RT 05 RW 02', 'Menikah', 'emtizarkarya@gmail.com', '08127018418', 'Pegawai Swasta', '05d63ca5225da7b563e55fa26c80e0fda588efe89b12edc370f8c0cf343d9587.png', '11da1c77cea02626392337df1937e75105690a43aab42194979b8e355319098f.pdf', '2024-12-16 17:36:19', '2024-12-16 17:36:19', 'Anggota', 'Disetujui', 17),
(27, 'Firman', 2653525, 'Laki-Laki', 'Padang', '1972-08-12', 'Batam Center', 'Baloi Permai', 'Legenda Avenue Blok D4 No. 2 RT 03 RW 02', 'Menikah', 'firman.nasir@gmail.com', '081270002002', 'Guru', '9d49132440c7901d6f3b92e3cf96024a74056273c4430b4305a8411a5c8f9dc1.jpeg', NULL, '2024-12-16 17:39:06', '2024-12-16 17:39:06', 'Anggota', 'Disetujui', 17),
(28, 'Sudirman Bin Abd Latief', 5665976, 'Laki-Laki', 'Labuhan Burung', '1972-09-14', 'Batam Center', 'Belian', 'Villa Pesona Asri RT 02 RW 10', 'Menikah', 'dzakwan.adib@gmail.com', '081364789885', 'Pegawai Swasta', '307e7dc0b1341d14f0c7c1247ee7341492df304b5560369620c91f0571f6f637.jpeg', NULL, '2024-12-16 17:41:16', '2024-12-16 17:41:16', 'Anggota', 'Disetujui', 17),
(29, 'Junaidi', 1370096, 'Laki-Laki', 'Bantul', '1974-01-18', 'Batam Center', 'Baloi Permai', 'Perumahan Bida Asri 1 Blok A2 RT 01 RW 09', 'Menikah', 'junaidi@gmail.com', '081372673778', 'Pegawai Swasta', 'd935f225eb7cf37a124bae0fcfffb9e453f78b24e07db0cb95f8fdcb48ec8477.jpg', NULL, '2024-12-16 17:43:01', '2024-12-16 17:43:01', 'Anggota', 'Disetujui', 17),
(30, 'Jonni', 1608841, 'Laki-Laki', 'Siantar/ Tetap Rejo', '1974-01-03', 'Batam Center', 'Belian', 'Bukit palem permai blok O1 no 29', 'Menikah', 'jonnibppwarjon@gmail.com', '081364514653', 'Pegawai Swasta', 'cd762b4c0cafc0508b797375e8c5f36ab9b00b1048bcc5ec53b29b7cbea09884.jpg', NULL, '2024-12-16 17:45:05', '2024-12-16 17:45:05', 'Anggota', 'Disetujui', 17),
(31, 'Syahrul', 8869827, 'Laki-Laki', 'Pematang Aur', '1974-09-01', 'Batam Center', 'Baloi Permai', 'Legenda Malaka RT 04 RW 03', 'Menikah', 'uls8339@gmail.com', '081364186571', 'Pegawai Swasta', 'd3e9d1243ae968a9d190cfea202947dd5d010c930f781e0c4ff5b309ed43b1f2.jpg', NULL, '2024-12-16 17:47:06', '2024-12-16 17:47:06', 'Anggota', 'Disetujui', 17),
(32, 'Syailendra Reza Irwansyah Rezeki', 1062367, 'Laki-Laki', 'Pematang Siantar', '1976-03-03', 'Batam Center', 'Belian', 'Bukit Palem Permai Blok O3 no 15', 'Menikah', 'rezarizqy76@gmail.com', '081372841975', 'Wirausaha', '18c3ae2da27de78e688060c0730e69abd7d1544b4393564d18bc19125a89e5e9.jpg', NULL, '2024-12-16 17:49:06', '2024-12-16 17:49:06', 'Anggota', 'Disetujui', 17),
(33, 'Andi Gunawan', 1370098, 'Laki-Laki', 'Palembang', '1982-03-20', 'Batam Center', 'Baloi Permai', 'Legenda Malaka Blok A4 No. 2B RT 01 RW 0', 'Menikah', 'andiamazing2017@gmail.com', '085264641171', 'Pegawai Swasta', '6a17728f94c5b1caae22f70d1fb7ea7f335b5717078357c3358644fe64fb10b0.jpeg', NULL, '2024-12-16 17:51:03', '2024-12-16 17:51:03', 'Anggota', 'Disetujui', 17),
(34, 'Sastra Tamami', 2405156, 'Laki-Laki', 'Talo', '1977-06-12', 'Batam Center', 'Belian', 'Taman Anugrah ideal blok C3 no 5', 'Menikah', 'sastrabobs@gmail.com', '081273953823', 'Guru', '063305fe8d16e5fe6f98ad867c5baa3e02182aa54a09d172b23f185a7fa5cdf0.jpg', NULL, '2024-12-16 17:52:54', '2024-12-16 17:52:54', 'Anggota', 'Disetujui', 17),
(35, 'Afrinaldi', 5783876, 'Laki-Laki', 'Payakumbuh', '1978-04-20', 'Batam Center', 'Belian', 'Odessa Blok C20 No18 RT 02 RW 40', 'Menikah', 'naldi@gmail.com', '085272128285', 'Pegawai Swasta', 'a8c8e2048a6d5af260ad98b3c311cd556a00a190fb8925752ead6b0d8869d589.jpeg', NULL, '2024-12-16 17:54:38', '2024-12-16 17:54:38', 'Anggota', 'Disetujui', 17),
(36, 'Khairul Fuadi', 4893478, 'Laki-Laki', 'Bengkulu', '1985-07-24', 'Batam Center', 'Belian', 'KDA Jalan Punai 2 No.11 RT 02 RW 33', 'Menikah', 'khairul.fuadi10@gmail.com', '081329645044', 'Pegawai Negeri Sipil', 'a40faba9d27aab618524580d88f4ffab71b77f1bfbb7ce639c8cd2d91d901316.jpeg', NULL, '2024-12-16 17:56:40', '2024-12-16 17:56:40', 'Anggota', 'Disetujui', 17),
(37, 'Mohamad Alif Dzulfiqar', 1212121, 'Laki-Laki', 'Manokwari', '1995-08-18', 'Batam Center', 'Sungai Panas', 'Hawai Garden', 'Menikah', 'alief@gmail.com', '081313131331', 'Guru', '8e537b69873e3933f8464ce19ad6beab499d2be02d035a0113c270dfe92f6358.jpg', NULL, '2024-12-16 17:58:41', '2024-12-16 17:58:41', 'Anggota', 'Disetujui', 17);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galerifotos`
--

CREATE TABLE `galerifotos` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galerifotos`
--

INSERT INTO `galerifotos` (`id`, `image`, `keterangan`, `created_at`, `updated_at`, `user_id`) VALUES
(39, 'j8Y2Ja0Sxmp0QtNE7zmdYgnbxLNT3NqsGyuDDf1i.jpg', 'Muktamar ke-48 Resmi Digelar', '2024-12-16 18:16:27', '2024-12-16 18:16:27', 17),
(40, '2MG6wTFIpj1sQfw3fBZMIHVauRg4zgblIVAsan0C.jpg', 'Kebut Persiapan Muktamar Muhammadiyah Ke – 48', '2024-12-16 18:17:09', '2024-12-16 18:17:09', 17),
(41, 'fBTBLttJjQ4jyTbEsNPeEzmxfg1kXGY10RCiqz12.jpg', 'Muhammadiyah Gelar Muktamar ke-48', '2024-12-16 18:18:08', '2024-12-16 18:18:08', 17),
(42, 'CtvxCQHIY5RNG1EVDcYOoTpizu2JpwP8kaekeL3k.jpg', 'Muhammadiyah dan Aisyiyah buka Sidang Pleno', '2024-12-16 18:19:02', '2024-12-16 18:19:02', 17),
(43, 'kFIJgdmxmYPFDFMeQ46u8CCVIfn2FzhhQF3BNHBR.jpg', 'Komisi VIII: Pemimpin Muhammadiyah Baru Bisa...', '2024-12-16 18:20:32', '2024-12-16 18:20:32', 17),
(44, 'ZzPuZcfzFNbIGSOwyut0nA35L72TQ7VgbsYr6xEV.jpg', 'Gelar Gebyar Muktamar', '2024-12-16 18:21:29', '2024-12-16 18:21:29', 17),
(45, 'bPrChuLCcWQM51J6lz0EZIqsQhgRMvhUqoKC8nr3.jpg', 'Kolaborasi PCIM-PCIA Pakistan dengan LazisMu', '2024-12-16 18:22:31', '2024-12-16 18:22:31', 17),
(46, 'YfUCRn0Bd02Rfl2nI54glqHX9gDrT10hxXcnnfh6.jpg', 'Hari Bermuhammadiyah, Majelis PKU & Sosial PCM', '2024-12-16 18:25:15', '2024-12-16 18:25:15', 17),
(47, 'M5MKWDoHuuqT0cCB1ORYLQUXgqehidUUYprqfgTt.jpg', 'Kunjungi PCM Karimunjawa', '2024-12-16 18:26:02', '2024-12-16 18:26:02', 17),
(48, 'T8bR8mJuGfMmrk3x6YbmumfFmYAwlHnei7INFPpM.jpg', 'kegiatan Bakti Sosial dan Pengobatan Gratis', '2024-12-16 18:26:40', '2024-12-16 18:26:40', 17),
(49, 'yr6ILVPqX0u1kI0PIADXkIRQFtGkBOq8duz9bl2Y.jpg', 'Majelis Pembinaan Kesehatan Umum', '2024-12-16 18:27:49', '2024-12-16 18:27:49', 17),
(50, 'OL31yMpbB1MDTAFO4SMw95x3SgO8MpcVISsun4Kp.jpg', 'MPKU PP MU Adakan Program Aksi Bergizi Sehat', '2024-12-16 18:28:49', '2024-12-16 18:28:49', 17),
(51, 'SbA7I1fAsYk7HrV0vt3oMfZDkDkBKiGHyeAPisG7.jpg', 'Pimpinan MU Diimbau Selalu Bersinergi & Kolaborasi', '2024-12-16 18:30:39', '2024-12-16 18:30:39', 17),
(52, 'bhgUVh1KFMZ5NiuNCfCapedSJRmTpMYuFWH9kCBp.jpg', 'Hasil Musywil, KH Tafsir Kembali Terpilih', '2024-12-16 18:31:00', '2024-12-16 18:31:00', 17),
(53, 'UQtZHi2jUtLLqSBjcfHMr2P27BhnCJxaNFXYN0th.jpg', 'kegiatan workshop muhammadiyah', '2024-12-16 18:32:06', '2024-12-16 18:32:06', 17);

-- --------------------------------------------------------

--
-- Table structure for table `galerivideos`
--

CREATE TABLE `galerivideos` (
  `id` bigint UNSIGNED NOT NULL,
  `judul_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galerivideos`
--

INSERT INTO `galerivideos` (`id`, `judul_video`, `link_video`, `created_at`, `updated_at`, `user_id`) VALUES
(20, 'Dokumentasi Pengabdian Pengembangan dan Implementasi Sistem Informasi PCM Batam Kota 2024', 'https://www.youtube.com/watch?v=FggK_EaJQFY', '2024-12-16 18:00:10', '2024-12-16 18:00:10', 17),
(21, 'Pengukuhan Pimpinan Ranting Muhammadiyah (PRM) Belian dan Baloi Permai - Batam Kota', 'https://www.youtube.com/watch?v=IfxrhOcZZEk', '2024-12-16 18:01:25', '2024-12-16 18:01:25', 17),
(22, 'Halal Bi Halal Keluarga Besar Muhammadiyah Kecamatan Batam Kota', 'https://www.youtube.com/watch?v=wSanaLMTPVk', '2024-12-16 18:02:30', '2024-12-16 18:02:57', 17),
(23, 'Wapres Kunjungi Muhammadiyah Boarding School MBS di Kabupaten Bogor', 'https://www.youtube.com/watch?v=S5h1Bz-IWlY', '2024-12-16 18:06:35', '2024-12-16 18:06:35', 17),
(24, 'PIDATO MILAD KE-112 MUHAMMADIYAH | Menghadirkan Kemakmuran Untuk Semua | Prof Haedar Nashir', 'https://www.youtube.com/watch?v=yTbU35cLOgk', '2024-12-16 18:07:45', '2024-12-16 18:07:45', 17),
(25, 'Pembukaan Sidang Tanwir dan Resepsi Milad ke-112 Muhammadiyah, Kupang, 4 Desember 2024', 'https://www.youtube.com/watch?v=B6Bz4nEJ4kE', '2024-12-16 18:08:49', '2024-12-16 18:08:49', 17),
(26, 'Pengajian Bulanan Pimpinan Pusat Muhammadiyah, Kemerdekaan dan Kemakmuran Bangsa', 'https://www.youtube.com/watch?v=R_Xk1o2N5WA', '2024-12-16 18:09:55', '2024-12-16 18:09:55', 17),
(27, 'Konferensi Pers Pimpinan Pusat Muhammadiyah', 'https://www.youtube.com/watch?v=lX9VrJRoB6w', '2024-12-16 18:10:36', '2024-12-16 18:10:36', 17),
(28, 'Kritik Untuk Muhammadiyah | Haedar Nashir', 'https://www.youtube.com/watch?v=_jYuxknnAcU', '2024-12-16 18:12:38', '2024-12-16 18:12:38', 17),
(29, 'Haedar Nashir, Ketua Umum Muhammadiyah Menangis Melihat Kondisi Bangsa saat ini', 'https://www.youtube.com/watch?v=lR4eT6tMR7I', '2024-12-16 18:13:38', '2024-12-16 18:13:38', 17);

-- --------------------------------------------------------

--
-- Table structure for table `identitaspcms`
--

CREATE TABLE `identitaspcms` (
  `id` bigint UNSIGNED NOT NULL,
  `sejarah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_sambutan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visimisi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identitaspcms`
--

INSERT INTO `identitaspcms` (`id`, `sejarah`, `kata_sambutan`, `visimisi`, `created_at`, `updated_at`, `user_id`) VALUES
(7, '<div>Muhammadiyah adalah salah satu organisasi Islam terbesar di Indonesia, didirikan oleh K.H. Ahmad Dahlan di Yogyakarta pada tanggal 18 November 1912. Organisasi ini didirikan sebagai respons terhadap berbagai tantangan sosial, politik, dan keagamaan yang dihadapi masyarakat Indonesia pada masa kolonial Belanda. Berikut adalah sejarah singkat Muhammadiyah:<br><br><strong>Awal Berdirinya</strong><br>K.H. Ahmad Dahlan, seorang ulama dan reformis, mendirikan Muhammadiyah dengan tujuan memperbaharui pemahaman dan praktik Islam di kalangan umat Islam di Indonesia. Beliau melihat banyak praktik keagamaan yang dianggapnya sudah menyimpang dari ajaran Islam yang murni dan ingin mengembalikan umat Islam kepada ajaran Al-Qur\'an dan Sunnah.<br><br><strong>Tujuan Utama</strong><br>Muhammadiyah bertujuan untuk melakukan pembaruan dalam berbagai aspek kehidupan umat Islam, termasuk pendidikan, kesehatan, sosial, dan ekonomi. Fokus utamanya adalah pada pendidikan, dengan mendirikan sekolah-sekolah yang menggabungkan kurikulum agama dan umum, berbeda dengan pesantren tradisional yang hanya mengajarkan ilmu agama.<br><br><strong>Perkembangan dan Kontribusi</strong><br>Pendidikan: Muhammadiyah mendirikan banyak sekolah, dari tingkat dasar hingga perguruan tinggi, termasuk Universitas Muhammadiyah yang tersebar di berbagai kota di Indonesia.<br>Kesehatan: Organisasi ini juga mendirikan banyak rumah sakit dan klinik untuk melayani masyarakat.<br>Sosial: Muhammadiyah aktif dalam kegiatan sosial, termasuk membantu korban bencana alam dan menyediakan layanan sosial bagi masyarakat miskin.<br>Pengaruh dan Peran di Indonesia<br>Muhammadiyah memainkan peran penting dalam perkembangan Islam di Indonesia, terutama dalam memperjuangkan pendidikan modern dan pelayanan sosial. Organisasi ini juga aktif dalam berbagai gerakan nasionalis, ikut serta dalam perjuangan kemerdekaan Indonesia, dan memberikan kontribusi penting dalam pembangunan bangsa.<br><br><strong>Reformasi Keagamaan</strong><br><br>Muhammadiyah dikenal sebagai organisasi yang mendorong reformasi dalam praktik keagamaan. K.H. Ahmad Dahlan mengajarkan pentingnya kembali kepada Al-Qur\'an dan Sunnah serta meninggalkan praktik-praktik yang dianggap bid\'ah (inovasi dalam agama) dan takhayul.<br><br><strong>Organisasi dan Struktur</strong><br>Muhammadiyah memiliki struktur organisasi yang teratur, dengan kepemimpinan di tingkat pusat, wilayah, cabang, hingga ranting. Setiap tingkatan memiliki peran dan tanggung jawab dalam menjalankan program-program organisasi.<br><br><strong>Cabang Internasional</strong><br>Selain di Indonesia, Muhammadiyah juga memiliki cabang di berbagai negara, termasuk Malaysia, Mesir, dan Australia, yang berfungsi untuk melayani komunitas Muslim Indonesia di luar negeri.</div>', '<div>Assalamu\'alaikum wr.wb.<br><br>Puji syukur kepada Allah Subhanahu Wa Ta\'ala, yang telah memberikan rahmat dan anugerahNya sehingga website official PCM Batam Kota ini dapat mengudara. Salah satu tujuan dari website ini adalah untuk menjawab akan setiap kebutuhan informasi dengan memanfaatkan sarana teknologi informasi yang ada.<br><br>Semoga dengan adanya website ini dapat membantu dan bermanfaat, terutama informasi yang berhubungan dengan persyarikatan khususnya di area Batam Kota.<br><br>Akhirnya kami mengharapkan masukan dari berbagai pihak untuk website ini agar kami terus belajar dan meng-update diri, sehingga tampilan, isi dan mutu website akan terus berkembang dan lebih baik nantinya. Terima kasih atas kerjasamanya, maju terus untuk mencapai cita-cita yang lebih baik lagi.<br><br>Nasrun Minallah Wa Fathun Qoriib.<br><br>Wassalamu\'alaikum wr.wb.<br><br></div>', '<div><strong>&nbsp;Visi Muhammadiyah:</strong><br>\"Menjadi gerakan Islam yang mampu memberdayakan masyarakat dan berperan aktif dalam memajukan peradaban umat manusia.\"<br><br><strong>Misi Muhammadiyah:</strong><br>Pendidikan: Membangun sistem pendidikan yang berkualitas dan merata, mengakomodasi kebutuhan dan potensi setiap individu, dengan memadukan ilmu pengetahuan umum dan agama.<br>Kesehatan: Menyediakan layanan kesehatan yang terjangkau dan berkualitas untuk meningkatkan kesejahteraan fisik dan mental masyarakat.<br>Sosial: Mendorong kesejahteraan sosial dan keadilan, melalui berbagai program pembangunan masyarakat, bantuan bagi kelompok rentan, dan pemberdayaan ekonomi.<br>Ekonomi: Mengembangkan perekonomian umat melalui berbagai program pengembangan ekonomi mikro, pelatihan kewirausahaan, dan pemberdayaan ekonomi keluarga.<br>Kebudayaan: Melestarikan dan memajukan nilai-nilai budaya Indonesia yang sesuai dengan ajaran Islam, serta mendorong kreativitas dan inovasi dalam berbagai bidang kebudayaan.<br>Dakwah dan Spiritualitas: Menyebarkan ajaran Islam yang moderat, toleran, dan inklusif, serta memperkuat spiritualitas umat melalui pendekatan yang berbasis pada Al-Qur\'an dan Sunnah.<br>Pengabdian Masyarakat: Menggerakkan kegiatan sosial dan pelayanan masyarakat sebagai wujud kepedulian terhadap sesama dan kontribusi dalam membangun kehidupan sosial yang harmonis.<br>Pengembangan Kader: Membentuk generasi penerus yang berkualitas, memiliki karakter islami, dan kompeten dalam memimpin dan mengelola berbagai aspek kehidupan.</div>', '2024-06-13 05:01:46', '2024-06-13 05:02:47', 8);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kajians`
--

CREATE TABLE `kajians` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidangkajian_id` bigint UNSIGNED NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kajians`
--

INSERT INTO `kajians` (`id`, `judul`, `image`, `body`, `excerpt`, `bidangkajian_id`, `published_at`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'Aqidah dalam Islam: Fondasi Iman dan Kebenaran', '6695e25e4feb53f223058d7d623af41ced7bf0d010c4be0dd3f422539fd54190.jpg', '<div><strong>Aqidah</strong> dalam Islam merujuk pada keyakinan dasar yang menjadi pondasi bagi setiap muslim. Ini mencakup keyakinan terhadap Allah, malaikat-malaikat-Nya, kitab-kitab-Nya, rasul-rasul-Nya, hari kiamat, dan takdir baik atau buruk. Artikel ini akan menjelaskan secara rinci konsep-konsep ini serta pentingnya aqidah dalam kehidupan seorang muslim.<br><br></div><div>Pengertian Aqidah<br><br></div><div><strong>Aqidah</strong> berasal dari kata Arab \"عقد\" yang berarti mengikat atau mempererat. Dalam konteks Islam, aqidah mengacu pada keyakinan yang teguh dan kokoh terhadap prinsip-prinsip dasar agama. Aqidah memainkan peran penting dalam menentukan identitas keagamaan seseorang dan membimbing perilaku serta tindakan sehari-hari.<br><br></div><div>Rukun Iman dalam Aqidah Islam<br><br></div><div>Aqidah Islam terdiri dari enam rukun iman (prinsip keyakinan):<br><br></div><ol><li><strong>Iman kepada Allah</strong>: Ini adalah keyakinan bahwa hanya ada satu Tuhan yang Maha Esa, yaitu Allah SWT. Allah adalah pencipta langit dan bumi, mengatur alam semesta, dan memiliki sifat-sifat mulia yang tidak ada bandingannya.<br><br></li><li><strong>Iman kepada Malaikat</strong>: Malaikat adalah makhluk Allah yang diciptakan dari cahaya. Mereka menjalankan perintah Allah tanpa kesalahan dan memiliki berbagai tugas, termasuk menyampaikan wahyu kepada para nabi dan menjaga umat manusia.<br><br></li><li><strong>Iman kepada Kitab-kitab Allah</strong>: Ini mencakup keyakinan terhadap kitab-kitab suci yang diturunkan Allah kepada para rasul-Nya sebagai petunjuk bagi umat manusia, seperti Al-Qur\'an, Taurat, Injil, Zabur, dan lain-lain.<br><br></li><li><strong>Iman kepada Rasul-rasul Allah</strong>: Ini adalah keyakinan bahwa Allah mengutus rasul-rasul-Nya kepada umat manusia untuk menyampaikan wahyu dan petunjuk-Nya. Rasul-rasul terakhir adalah Nabi Muhammad SAW, yang dianggap sebagai segala sesuatu di antara makhluk.<br><br></li><li><strong>Iman kepada Hari Kiamat</strong>: Ini adalah keyakinan bahwa akan ada kehidupan setelah kematian di mana semua manusia akan dihidupkan kembali untuk menerima balasan atas perbuatan mereka di dunia. Ini mencakup keyakinan terhadap surga, neraka, dan hisab (penghitungan amal perbuatan).<br><br></li><li><strong>Iman kepada Qadar</strong>: Ini adalah keyakinan bahwa segala sesuatu yang terjadi di alam semesta, baik yang baik maupun yang buruk, terjadi dengan pengetahuan, kehendak, dan izin Allah SWT. Qadar mencakup takdir yang telah ditentukan dan ditulis oleh Allah untuk setiap makhluk-Nya.<br><br></li></ol><div>Pentingnya Aqidah dalam Islam<br><br></div><ol><li><strong>Pondasi Iman</strong>: Aqidah adalah pondasi utama dari iman seorang muslim. Tanpa keyakinan yang kuat terhadap prinsip-prinsip dasar ini, iman seseorang dapat goyah dan rapuh.<br><br></li><li><strong>Membimbing Perilaku</strong>: Aqidah membimbing perilaku seorang muslim dalam kehidupan sehari-hari. Keyakinan pada Allah dan hari kiamat memotivasi untuk berbuat baik dan menjauhi keburukan.<br><br></li><li><strong>Menjaga Persatuan Umat</strong>: Aqidah yang sama mengikat umat Islam dari berbagai latar belakang etnis, budaya, dan geografis. Ini menguatkan ikatan persatuan dan solidaritas di antara umat Islam di seluruh dunia.<br><br></li><li><strong>Menghadapi Cobaan</strong>: Aqidah yang kokoh membantu seorang muslim untuk menghadapi cobaan dan ujian kehidupan dengan tenang dan sabar, karena mereka yakin bahwa semua yang terjadi adalah bagian dari takdir Allah yang Maha Mengetahui.<br><br></li></ol><div>Pembelajaran dan Penguatan Aqidah<br><br></div><ol><li><strong>Studi Al-Qur\'an dan Hadis</strong>: Studi Al-Qur\'an dan hadis Nabi Muhammad SAW adalah cara utama untuk memahami aqidah Islam. Al-Qur\'an adalah sumber wahyu langsung dari Allah, sementara hadis merupakan pengajaran dan tindakan Nabi yang menguraikan ajaran Islam.<br><br></li><li><strong>Kajian Ilmiah</strong>: Mengkaji aqidah dari sudut pandang ilmiah dapat membantu dalam memahami relevansi aqidah dengan realitas dan tantangan zaman modern.<br><br></li><li><strong>Konsultasi dengan Ulama</strong>: Memperoleh pemahaman lebih dalam tentang aqidah dari ulama yang terpercaya dan berpengetahuan luas adalah langkah penting dalam mengokohkan keyakinan.<br><br></li></ol><div>Kesimpulan<br><br></div><div>Aqidah dalam Islam adalah pondasi yang kuat bagi iman seorang muslim. Dengan memahami dan mengamalkan prinsip-prinsip ini, seorang muslim dapat membangun hubungan yang lebih dekat dengan Allah SWT, menghadapi hidup dengan keyakinan yang teguh, dan menghadapi ujian hidup dengan sabar dan keberanian. Pentingnya aqidah tidak hanya dalam membentuk identitas spiritual seseorang, tetapi juga dalam membentuk masyarakat dan persatuan umat Islam secara global.<br><br></div>', 'Aqidah dalam Islam merujuk pada keyakinan dasar yang menjadi pondasi bagi setiap muslim. Ini mencakup keyakinan terhadap Allah, malaikat-malaikat-Nya, kitab-kitab-Nya, rasul-rasul-Nya, hari kiamat, da...', 1, NULL, '2024-06-13 06:28:45', '2024-06-13 06:28:45', 8),
(6, 'Aqidah dalam Ibadah Islam: Landasan Utama dalam Beribadah', '2295aca0a18324ba3c08535f7520af5d40ef5c6c56039a2bd8857278cd2360ba.jpg', '<div><strong>Aqidah</strong> dalam konteks ibadah dalam Islam merujuk pada keyakinan yang teguh terhadap prinsip-prinsip dasar yang mengatur tata cara dan tujuan ibadah seorang muslim. Aqidah tidak hanya mencakup keyakinan terhadap Allah SWT, tetapi juga penghayatan terhadap keesaan-Nya, kemuliaan-Nya, serta perintah-perintah-Nya yang harus dijalankan dalam bentuk ibadah. Artikel ini akan membahas bagaimana aqidah mempengaruhi dan membentuk praktik ibadah dalam kehidupan sehari-hari seorang muslim.<br><br></div><div>Pengertian Aqidah dalam Ibadah<br><br></div><div><strong>Aqidah</strong> dalam ibadah mengarah pada keyakinan yang benar dan mendalam terhadap Allah SWT sebagai satu-satunya Tuhan yang layak disembah, dan Rasul-Nya sebagai pembawa risalah-Nya. Ini mencakup keyakinan terhadap keesaan, keagungan, dan sifat-sifat Allah yang maha sempurna, serta tunduknya seorang muslim terhadap segala perintah-Nya.<br><br></div><div>Landasan Utama Aqidah dalam Ibadah<br><br></div><ol><li><strong>Tauhid</strong>: Tauhid adalah konsep tentang keesaan Allah. Aqidah yang kuat terhadap tauhid menuntun seorang muslim untuk memurnikan ibadah hanya kepada Allah SWT, tanpa menyekutukan-Nya dengan sesuatu atau siapapun.<br><br></li><li><strong>Ketaatan dan Kepatuhan</strong>: Aqidah mengajarkan bahwa setiap ibadah, baik yang bersifat fisik maupun spiritual, harus dilakukan dengan penuh ketaatan dan kesadaran akan kebesaran Allah. Ini termasuk ketaatan terhadap lima rukun Islam (syahadat, shalat, zakat, puasa, haji) yang menjadi kewajiban bagi setiap muslim.<br><br></li><li><strong>Khusyuk dan Khusyu</strong>: Aqidah mengajarkan pentingnya menghadirkan hati dan pikiran dengan khusyuk (konsentrasi) dalam setiap ibadah. Khusyuk adalah wujud penghargaan dan penghormatan yang mendalam terhadap kehadiran Allah dalam ibadah.<br><br></li><li><strong>Penyucian Niat</strong>: Aqidah mengajarkan bahwa setiap amal ibadah harus dimulai dengan niat yang tulus dan bersih, semata-mata karena Allah SWT. Penyucian niat ini memastikan bahwa ibadah hanya ditujukan untuk mencari ridha Allah semata, tanpa mencari pujian atau pengakuan dari manusia.<br><br></li></ol><div>Contoh Aplikasi Aqidah dalam Ibadah Sehari-hari<br><br></div><ol><li><strong>Shalat</strong>: Aqidah mengajarkan bahwa shalat adalah tiang agama Islam. Seorang muslim melakukan shalat lima waktu sebagai ungkapan rasa syukur, penghormatan, dan ketaatan kepada Allah. Aqidah yang kuat memotivasi seorang muslim untuk melaksanakan shalat dengan penuh khusyuk dan kesadaran akan hadirnya Allah.<br><br></li><li><strong>Puasa</strong>: Aqidah mengajarkan bahwa puasa Ramadhan adalah perintah Allah yang harus dilaksanakan oleh setiap muslim. Aqidah yang benar mengajarkan pentingnya menahan diri dari makan, minum, dan hal-hal yang membatalkan puasa, serta menjaga akhlak dan perilaku selama berpuasa.<br><br></li><li><strong>Zakat</strong>: Aqidah mengajarkan bahwa zakat adalah kewajiban sosial yang harus dipenuhi oleh setiap muslim yang mampu. Aqidah yang kuat memotivasi seorang muslim untuk memberikan zakat dengan ikhlas dan berbagi rezeki kepada yang membutuhkan.<br><br></li><li><strong>Haji</strong>: Aqidah mengajarkan bahwa haji adalah kewajiban sekali seumur hidup bagi muslim yang mampu. Aqidah yang benar memotivasi seorang muslim untuk menjalankan ibadah haji dengan penuh rasa hormat dan penyerahan diri kepada Allah SWT.<br><br></li></ol><div>Pentingnya Memperkuat Aqidah dalam Ibadah<br><br></div><ol><li><strong>Mengokohkan Iman</strong>: Aqidah yang kuat mengokohkan iman seorang muslim terhadap Allah dan meneguhkan tekad untuk mengikuti segala perintah-Nya.<br><br></li><li><strong>Membimbing Perilaku</strong>: Aqidah yang benar membimbing perilaku seorang muslim dalam ibadah dan kehidupan sehari-hari, menjadikan ibadah sebagai fondasi untuk kehidupan yang bermakna dan bertanggung jawab.<br><br></li><li><strong>Menjaga Kesucian Ibadah</strong>: Aqidah yang kokoh memastikan bahwa setiap ibadah dilakukan dengan niat dan penghormatan yang tulus, menjaga kesucian dan keabsahan ibadah di mata Allah SWT.<br><br></li></ol><div>Pembelajaran dan Penguatan Aqidah dalam Ibadah<br><br></div><ol><li><strong>Studi Al-Qur\'an dan Hadis</strong>: Studi mendalam terhadap Al-Qur\'an dan hadis Nabi Muhammad SAW merupakan langkah awal untuk memperkuat aqidah dalam ibadah.<br><br></li><li><strong>Refleksi dan Kontemplasi</strong>: Merenungkan makna dan tujuan dari setiap ibadah dalam konteks aqidah dapat membantu memperdalam penghayatan dan kebermaknaan setiap ibadah.<br><br></li><li><strong>Konsultasi dengan Ulama</strong>: Mencari nasihat dari ulama yang berpengetahuan luas tentang aqidah dapat memberikan pencerahan dan pemahaman yang lebih dalam.<br><br></li></ol><div>Kesimpulan<br><br></div><div>Aqidah dalam ibadah Islam adalah landasan utama yang mengarahkan setiap muslim untuk melaksanakan ibadah dengan penuh kesadaran, keikhlasan, dan ketaatan kepada Allah SWT. Aqidah yang kokoh mengokohkan iman seorang muslim, membimbing perilaku dalam ibadah, serta menjaga kesucian dan keabsahan setiap amal ibadah di mata Allah. Dengan memahami dan mengamalkan aqidah dengan baik, seorang muslim dapat memperoleh keberkahan dalam ibadah dan mendekatkan diri kepada Allah SWT.<br><br></div>', 'Aqidah dalam konteks ibadah dalam Islam merujuk pada keyakinan yang teguh terhadap prinsip-prinsip dasar yang mengatur tata cara dan tujuan ibadah seorang muslim. Aqidah tidak hanya mencakup keyakinan...', 2, NULL, '2024-06-13 06:30:13', '2024-06-13 06:30:13', 8),
(8, 'Manfaat dan Ruang Lingkup Muamalah dalam Islam', '1d1383a8bb31c8ff912e73f2f70ff880a7c76defcdd4f35d66532dcbfbbb2ad0.jpg', '<div>Manusia hidup di dunia sebagai <a href=\"https://www.kompasiana.com/purica/59a6d93566feb003fa05d902/manusia-makhluk-sosial\">makhluk sosial</a>, jadi dalam menjalani hidupnya mereka harus<a href=\"https://id.wikihow.com/Berinteraksi-dengan-Orang-Lain\"> berinteraksi dengan manusia lain</a> bahkan untuk memenuhi kebutuhan jasmani mereka. Dalam memenuhi kebutuh an jasmaninya, manusia membutuhkan aturan-aturan yang mengatur urusan dunia. Aturan aturan islam itulah yang dipelajari di Fiqh Muamalah. Muamalah dalam islam bersifat sebagai hukum dan aturan yang mengatur tata cara memenuhi kebutuhan jasmani manusia dengan cara yang benar menurut syari’at islam. Muamalah ini membantu kita mengetahui yang mana yang haram dan yang halal dalam jual beli. dalam islam, jual beli bisa saja menjadi tidak sah bila tidak memenuhi syarat dan rukun akad jual beli. Maka dari itu kita harus mempelajari apa saja syarat dan rukunnya agar transaksi jual beli yang kita lakukan sah.</div><div><br></div><div><strong><br>Manfaat Belajar Muamalah dalam Islam<br></strong><br></div><div>Ada berbagai manfaat yang bisa didapat bila kita belajar <a href=\"http://www.republika.co.id/berita/jurnalisme-warga/wacana/17/12/12/p0umym396-ustaz-a-somad-harmonisasi-bali-dan-kebangkitan-umat-bali\">muamalah dalam islam</a>, salah satunya adalah memudahkan kita untuk mengetahui hukum-hukum fiqh tanpa perlu menghafalkan permasalahannya satu per satu. Manfaat keduanya yaitu membantu penentuan hukum kontemporer atau baru dengan mudah bila kita menguasai kaidah-kaidah fiqhiyah. Manfaat yang ketiga adalah mengetahui keindahan syari’at islam dari kaidah fiqh. Kita juga dapat mengatasi masalah yang ada sekarang ini dengan mudah bila menguasai <a href=\"http://www.academia.edu/15295145/KAIDAH-KAIDAH_FIQIH_QAWAID_FIQHIYAH\">kaidah-kaidah fiqh</a>. Fiqh muamalah lebih berfokus pada urusan dunia terlebih lagi jual beli, jadi bila kita mempelajari muamalah ini kita akan bisa belajar masalah usaha atau bisnis. Bagaimana kita menjalankan <a href=\"http://tokotoko.id/\"><strong>toko toko</strong></a><strong> </strong>dengan syari’at islam.</div><div><strong><br>Ruang Lingkup Pembahasan Muamalah dalam Islam<br></strong><br></div><div>Muamalah menurut Fiqh ada dua macam yaitu pengertian dalam arti luas dan pengertian dalam arti sempit. Dalam arti luas, Fiqh Muamalah artinya yaitu aturan Allah yang mengatur masalah hubungan manusia dan usaha mereka dalam mendapatkan kebutuhan jasmani dengan jalan yang terbaik. Sedangkan dalam arti luas, Muamalah merupakan kegiatan tukar menukar suatu barang dengan sesuatu yang bermanfaat menggunakan cara-cara yang sesuatu aturan islam. Ruang lingkup muamalah sendiri meliputi Muamalah Adabiyah atau muamalah yang dilihat dari pelaku ataupun subjeknya. Muamalah ini membahas tentang Akad, harta, hak dan juga pembagiannya.sedangkan ruang lingkup yang kedua adalah Muamalah madiyah atau Muamalah yang dilihat dari sisi objeknya. Muamalah madiyah ini mengatur tentang Jual beli, kerjasama, gadai, Syirkah, tanggungan atau jaminan, utang piutang, pemindahan utang, gugatan, sayembara, sewa, menyewa,&nbsp; titipan, hiwalah, ihyaul mawat atau menghidupkan tanah yang mati, dan masalah kontemporer lainnya.<br><br></div><div><a href=\"https://www.slideshare.net/yusvaferdi/konsep-muamalah-dalam-islam\">Muamalah dalam islam</a> memiliki peranan yang sangat penting, karena muamalah berisi tentang aturan-aturan dan hukum sesuai syari’at islam yang mengatur tentang urusan dunia. Kita harus mempelajari muamalah agar dapat menjalani hidup yang sesuai dengan syari’at islam. Allah menciptakan manusia dan dunia ini bukan tanpa aturan, ada huku-hukum yang harus dipatuhi dalam menjalani hidup di dunia ini. Nantinya manusia yang berhasil menjalani hidup sesuai dengan syari’at islam akan diberikan imbalan yang setimpal di akhirat. Namun muamalah ini dipelajari tidak semata mata untuk kehidupan akhirat yang damai, tapi juga kehidupan di dunia agar kita terhindar dari kemudharatan. Dalam kehidupan sehari-hari seperti memenuhi kebutuhan jasmani kita butuh yang namanya aturan agar yang kita dapatkan tidak memberikan kita akibat buruk. Islam juga mengatur hukum jual beli dengan berbagai syarat dan rukun untuk menghindari mudharat dan kerugian.</div>', 'Manusia hidup di dunia sebagai makhluk sosial, jadi dalam menjalani hidupnya mereka harus berinteraksi dengan manusia lain bahkan untuk memenuhi kebutuhan jasmani mereka. Dalam memenuhi kebutuh an jas...', 3, NULL, '2024-12-16 13:20:13', '2024-12-16 13:29:48', 8),
(9, 'Arti Muamalah dalam Hukum Islam, Prinsip, Bentuk, dan Aspeknya', '82a1ad9c43afdd485ac91107066b78902389c285d4dcc378a413a7e476507703.png', '<div>Muamalah mengatur manusia dalam bertindak dengan manusia lainnya. <a href=\"https://hot.liputan6.com/read/4681982/macam-macam-muamalah-dan-penjelasannya-dalam-islam-penting-dipahami?source=search\">Arti muamalah</a> termasuk dalam bagian fikih Islam. Fikih adalah bidang ilmu syariat Islam yang secara khusus membahas persoalan <a href=\"https://hot.liputan6.com/read/4728681/apa-itu-ijtihad-kenali-perannya-dalam-hukum-islam?source=search\">hukum</a> yang mengatur berbagai aspek kehidupan manusia. Arti muamalah mengatur manusia dalam bertindak dengan manusia lainnya.<br><br></div><div>Sebagai tuntunan perbuatan dan tindakan dalam syariah Islam, penting memahami arti muamalah. Tujuan dari muamalah adalah untuk menciptakan hubungan yang harmonis antara sesama manusia. Arti muamalah mengandung tujuan menciptakan masyarakat yang rukun dan tentram. <br><br>Arti muamalah sangat terkait dengan prinsip tolong menolong <a href=\"https://hot.liputan6.com/read/4729531/arti-kun-fayakun-dan-surahnya-dalam-al-quran-bukti-kekuasaan-allah-swt?source=search\">dalam Islam</a>. Arti muamalah berisi jalinan pergaulan, saling menolong dalam kebaikan dalam upaya menjalankan ketaatannya kepada Allah SWT.<br><br></div><div>Berikut arti muamalah, penerapan, prinsip, bentuk, dan aspeknya,<br><br></div><h1><strong><br>Arti muamalah</strong></h1><div><br></div><div>Muamalah berasal dari kata \'aamala yang berarti saling berbuat atau tindakan timbal balik. Arti muamalah adalah aktivitas yang dilakukan individu dengan individu atau beberapa lainnya untuk memenuhi masing-masing kebutuhannya. Secara singkat, muamalah adalah hubungan antar manusia.<br><br></div><div>Setiap interaksi antara dua pihak disebut sebagai muamalah. Arti muamalah uga diartikan sebagai hukum syar’i yang mengatur hubungan kepentingan individu dengan lainnya.<br><br></div><div>Dalam arti luas, arti muamalah adalah hukum syariah yang mengatur manusia dalam kaitannya dengan urusan duniawi dalam pergaulan sosial. Dalam arti khusus, arti muamalah adalah aturan-aturan yang mengatur hubungan manusia dengan manusia dalam kaitannya dengan cara memperoleh dan mengembangkan harta benda.<br><br></div><div><br><br></div><h1><strong>Fikih muamalah</strong></h1><div><strong><br></strong>Fikih muamalah membahas masalah hubungan sesama manusia, baik hubungan antar individu, hubungan individu dengan masyarakat, atau hubungan masyarakat satu dengan masyarakat lainnya. Bentuk fikih muamalah seperti transaksi perdagangan, penentuan kejahatan dan sanksi, pengaturan perang dan perjanjian, perusahaan, dan sebagainya.<br><br></div><div>Fikih Muamalah adalah ilmu yang mempelajari hukum-hukum syari’ah yang terkait dengan hubungan antarmanusia dari dalilnya yang terperinci.<br><br></div><div>Tujuan utama dari fikih muamalah adalah mengatur hubungan sesama manusia dan mewujudkan kemaslahatan bagi mereka yang sesuai dengan prinsip syariah. Muamalah atau Muamalāt adalah hukum-hukum Allah yang mengatur tentang hubungan, tindakan, dan pergaulan antar manusia.<br><br><br></div><h1><strong>Pengertian muamalah menurut ahli</strong></h1><div><strong><br></strong>Menurut modul Dasar-Dasar Fikih Muamalah, pengertian muamalah menurut ahli meliputi:<br><br></div><div><strong>Muhammad Yusuf Musa</strong><br><br></div><div>Arti muamalah menurut Muhammad Yusuf Musa adalah peraturan-peraturan Allah yang harus diikuti dan ditaati dalam hidup bermasyarakat untuk menjaga kepentingan manusia.<br><br></div><div><strong>Musthafa Ahmad Zarqa</strong><br><br></div><div>Fikih muamalah adalah hukum-hukum yang berkaitan dengan perbuatan manusia dan hubungan sesama manusia dalam urusan kebendaan, hak-hak kebendaan serta penyelesaian perselisihan di antara mereka.<br><br></div><div><strong>Idris Ahmad</strong><br><br></div><div>Fikih muamalah adalah aturan Allah yang mengatur hubungan manusia dengan manusia dalam usahanya untuk mendapatkan alat-alat keperluan jasmaninya dengan cara yang paling baik.<br><br></div><div><strong>Rasyid Ridha</strong><br><br></div><div>Arti muamalah adalah tukar-menukar barang atau sesuatu yang bermanfaat dengan cara-cara yang ditentukan.<br><br></div><div><br></div><h1><strong>Prinsip muamalah</strong></h1><div><br></div><div>Menurut modul Dasar-Dasar Fikih Muamalah, prinsip mendasar dari muamalah adalah manusia diciptakan sebagai khalifah di bumi untuk mengembangkan dan melestarikan bumi. Menurut Jurnal Hukum Ekonomi Syariah 2018, Prinsip-prinsip arti muamalah secara umum adalah:<br><br></div><div>- kebolehan dalam melakukan aspek muamalah, baik, jual, beli, sewa menyewa ataupun lainnya. Prinsip dasar muamalah adalah boleh kecuali ada dalil yang mengharamkannya.<br><br></div><div>- muamalah dilakukan atas pertimbangan membawa kebaikan bagi manusia dan atau untuk menolak segala yang merusak.<br><br></div><div>- muamalah dilaksanakan dengan memelihara nilai keseimbangan (tawazun). Konsep ini dalam syariah meliputi berbagai segi antara lain meliputi keseimbangan antara pembangunan material dan spiritual; pemanfaatan serta pelestarian sumber daya.<br><br></div><div>- muamalah dilaksanakan dengan memelihara nilai keadilan dan menghindari unsur-unsur kezaliman. Segala bentuk muamalah yang mengandung unsur penindasan tidak dibenarkan.<br><br></div><div><strong><br></strong><br></div><h1><strong>Bentuk muamalah</strong></h1><div><br></div><div>Menurut modul Dasar-Dasar Fikih Muamalah, Sa’id Muhammad al-Jalîdi membagi bentuk-bentuk muamalah menjadi:<br><br></div><div><strong>Kepemilikan</strong><br><br></div><div>Kepemilikan dalam arti muamalah adalah transaksi (‘aqd) dan tindakan (tasharruf) yang menyebabkan kepemilikan sesuatu atau manfaat. Ini seperti jual beli, sewa menyewa, sharf, salam, perkawinan, muzara’ah, musaqah dan sebagainya. Kepemilikan juga termasuk serah terima dengan niat kebaikan (tabarru’), seperti hibah, shadaqah, wasiat, i\'arah, dan sebagainya.<br><br></div><div><strong>Pembatalan</strong><br><br></div><div>Pembatalan adalah tindakan yang menyebabkan pembatalan tanpa penggantian, seperti cerai, pemutusan, pencabutan hak, pengampunan qishash. Juga masuk kategori ini adalah pembatalan sesuatu dengan penggantian, seperti khulu’, perdamaian utang, pengampunan qishash dengan ganti rugi.<br><br></div><div><strong>Pemberian wewenang</strong><br><br></div><div>Pemberian wewenang yaitu tindakan yang menyebabkan kebolehan melakukan tindakan terhadap harta atau hak yang sebelumnya dilarang, seperti pelimpahan, perwakilan, izin berdagang bagi anak kecil dan anak dalam pengampuan.<br><br></div><div><strong>Pencabutan wewenang</strong><br><br></div><div>Pencabutan wewenang dalam arti muamalah adalah tindakan yang menyebabkan terputusnya wewenang yang diberikan sebelumnya, seperti penghentian perwakilan dan pencabutan izin bagi anak kecil dalam berdagang.<br><br></div><div><strong>Kerjasama</strong><br><br></div><div>Kerjasama yaitu transaksi dan kesepakatan bekerjasama baik dari modal maupun pekerjaan atau keduanya, seperti mudharabah, muzaraah, musaqah, dan sebagainya.<br><br></div><div><strong>Pemberian kepercayaan</strong><br><br></div><div>Pemberian kepercayaan adalah segala yang mengandung unsur mengembalikan atau kerugian, seperti rahn, kafalah, hiwalah, asuransi syari’ah dan sebagainya.<br><br></div><div><br><br></div><h1><strong>Aspek muamalah</strong></h1><div><br></div><div>Muamalah terdiri dari dua aspek yang menjadi ruang lingkupnya. Dua aspek ini adalah aspek adabiyah dan madaniyah.<br><br></div><div><strong>Aspek Adabiyah</strong><br><br></div><div>Aspek Adabiyah dalam arti muamalah adalah segala aspek yang berkaitan dengan masalah adab dan akhlak, seperti ijab kabul, saling meridhai, tidak ada keterpaksaan, kejujuran, dan sebagainya.<br><br></div><div><strong>Aspek Madiyah</strong><br><br></div><div>Aspek Madiyah mencakup segala aspek yang terkait dengan kebendaan. Ini meliputi halal haram, syubhat untuk diperjual belikan, benda-benda yang menimbulkan kemadharatan, dan lainnya. Dalam aspek madiyah ini contohnya adalah al-bai (jual beli)’, ar-rahn (gadai), kafalah wad dhaman (jaminan dan tanggungan), hiwalah (pengalihan hutang), as-syirkah (perkongsian), al-mudharabah (perjanjian profit &amp; loss sharing), alwakalah (perwakilan), al-ijarah (persewaan/ pengupahan).<br><br></div><div><br><br></div>', 'Muamalah mengatur manusia dalam bertindak dengan manusia lainnya. Arti muamalah termasuk dalam bagian fikih Islam. Fikih adalah bidang ilmu syariat Islam yang secara khusus membahas persoalan hukum ya...', 3, NULL, '2024-12-16 13:51:57', '2024-12-16 14:03:04', 8),
(10, 'Bagaimanakah Hukum Bermuamalah dengan Non-Muslim?', '9fff1355ea0412a2c840eec84c5e6847f64dd0c829d568ad20a60515d2a918f6.jpg', '<div>Bermuamalah dengan non muslim dalam urusan dunia dibolehkan seperti jual beli, sewa-menyewa, gadai-menggadai, dan lain-lain.<br><br></div><div><strong><em>Penjelasan<br></em></strong><br></div><div>Dalam kehidupan yang majemuk tentu tidak bisa dilepaskan dari hubungan antar kelompok. Termasuk di dalamnya kelompok muslim berhubungan dengan non muslim, baik dalam urusan bisnis, keluarga, hubungan kerja, ketetanggaan, dan lain-lain. Satu hal yang tidak dapat dihindari adalah hubungan dalam muamalah (bisnis atau pekerjaan) di tengah keragaman keyakinan dalam masyarakat.<br><br></div><div>Di dalam hidupnya, Rasulullah saw banyak sekali berhubungan secara sosial (bermuamalah) dengan non muslim, baik dengan orang kafir, musyrik, Yahudi, Nasrani, Majusi, dan lainnya dalam berbisnis, hidup bertetangga atau usaha-usaha tertentu. Hubungan tersebut lebih karena ada keterkaitan sosial sebagai makhluk sosial. Dalam konteks ini, muamalah Rasulullah SAW yang tidak berhubungan dengan urusan agama (<em>ritual</em>).<br><br></div><div>Salah satu contoh adalah ketika Nabi SAW masih berjuang pada awal dakwah di Mekkah, orang-orang kafir Quraisy yang memusuhinya justru banyak yang menitipkan harta mereka di tangan Rasulullah SAW karena dianggap orang yang jujur dan amanah (<em>al-Amin</em>) sejak kecil. Posisinya sebagai orang yang dikenal sangat jujur, gelar sejak kecil tidak pernah dicabut meski Rasulullah saw. diangkat menjadi utusan Allah SWT. dan mendapat tantangan dan dimusuhi oleh masyarakatnya sendiri. Ketika Rasulullah SAW hijrah ke Madinah, di tangan beliau masih banyak harta titipan milik orang-orang kafir yang harus dikembalikan terlebih dahulu. Suatu sikap yang mungkin sulit terjadi bagi orang biasa, dimusuhi oleh mereka yang titip harta, tetapi Rasulullah SAW tetpi memegang amanah.<br><br></div><div>Demikian juga dalam perjalanan hijrah pun, Rasulullah SAW tetap berhubungan dengan orang non-muslim yang dipercayainya. Rasulullah SAW dan Abu Bakar menyewa seorang guide profesional untuk mengantarkan mereka berdua hingga tiba ke arah Madinah, Abdullah bin Uraiqidz, yang nota bene bukan muslim. Terkait dengan ini, keputusan Rasulullah yang mempercayakan penunjuk jalan kepada orang non muslim sebenarnya sangat beresiko, tetapi apa yang dilakukan oleh Rasulullah adalah mempercayai seseorang yang amanah, tanpa melihat latar belakang agama.<br><br>Hal lain juga Rasulullah SAW di Madinah bertetangga dengan orang yang beragama Yahudi. Satu hal yang pernah dicatat oleh sejarah adalah peristiwa Nabi pernah menggadaikan baju besinya kepada tetangga Yahudi ketika kehabisan makanan untuk mendapatkan pinjaman. Dan masih banyak lagi bagaimana contoh muamalah Rasulullah SAW secara ekonomi dengan pihak non muslim, yang tidak terkait dengan urusan agama. Mencermati data-data sejarah tersebut memperlihatkan sikap dan tindakan Rasulullah SAW telah mempraktikkan bermuamalah dengan non muslim. Artinya tidak ada larangan apapun berhubungan secara sosial selama dalam koridor mampu menjaga agama, jiwa, akal, keturunan, dan harta. Hanya saja prinsip-prinsip hubungan (muamalah) harus terpenuhi, seperti kesetaraan, kejujuran, kepercayaan, keadilan, transaksi pada hal yang di bolehkan dalam Islam, dan lain-lain.<br><br></div>', 'Bermuamalah dengan non muslim dalam urusan dunia dibolehkan seperti jual beli, sewa-menyewa, gadai-menggadai, dan lain-lain.PenjelasanDalam kehidupan yang majemuk tentu tidak bisa dilepaskan dari hubu...', 3, NULL, '2024-12-16 14:01:00', '2024-12-16 14:03:18', 8),
(11, 'Pengertian Aqidah Islam dan Penjelasannya Sesuai Al Qur\'an dan As Sunnah', 'c6301321ff656c2a151137902289c67bdf7864f0fa926f89cf1a70890fc930ad.jpg', '<div>Pengertian Akidah yang benar. Akidah merupakan sesuatu yang sangat berharga bagi setiap Muslim. Oleh karena itu, kami disini akan membahas mengenai pengertian akidah Ahlus Sunnah wal Jama\'ah beserta penjelasannya.<br><br><strong>A. Definisi ‘Aqidah</strong><br><br>‘Aqidah (اَلْعَقِيْدَةُ) menurut bahasa Arab (etimologi) berasal dari kata al-‘aqdu (الْعَقْدُ) yang berarti ikatan, at-tautsiiqu(التَّوْثِيْقُ) yang berarti kepercayaan atau keyakinan yang kuat, al-ihkaamu (اْلإِحْكَامُ) yang artinya mengokohkan (menetapkan), dan ar-rabthu biquw-wah (الرَّبْطُ بِقُوَّةٍ) yang berarti mengikat dengan kuat.[1]<br><br>Sedangkan menurut istilah (terminologi): ‘aqidah adalah iman yang teguh dan pasti, yang tidak ada keraguan sedikit pun bagi orang yang meyakininya.<br><br>Jadi, ‘Aqidah Islamiyyah adalah keimanan yang teguh dan bersifat pasti kepada Allah Subhanahu wa Ta’ala dengan segala pelaksanaan kewajiban, bertauhid[2] dan taat kepada-Nya, beriman kepada Malaikat-malaikat-Nya, Rasul-rasul-Nya, Kitab-kitab-Nya, hari Akhir, takdir baik dan buruk dan mengimani seluruh apa-apa yang telah shahih tentang Prinsip-prinsip Agama (Ushuluddin), perkara-perkara yang ghaib, beriman kepada apa yang menjadi ijma’ (konsensus) dari Salafush Shalih, serta seluruh berita-berita qath’i (pasti), baik secara ilmiah maupun secara amaliyah yang telah ditetapkan menurut Al-Qur-an dan As-Sunnah yang shahih serta ijma’ Salafush Shalih.[3]<br><br></div><div><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:438,&quot;href&quot;:&quot;http://www.ayat-kursi.com/&quot;,&quot;url&quot;:&quot;https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg9sPWNsAKekQHTP_bgKCMzbPn8ZMVGSaZNaQimp1T5t8IILje3T1XZnMdTdI3XaHezpRI7r5CaZPqRr1stLDx67N92Oo7g3cQGMxpIVBm_Nd4A_lMO14fagMvs4PTq6ati8pZe5xl8Pffz/s1600/Aqidah_Islam.jpg&quot;,&quot;width&quot;:700}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><a href=\"http://www.ayat-kursi.com/\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg9sPWNsAKekQHTP_bgKCMzbPn8ZMVGSaZNaQimp1T5t8IILje3T1XZnMdTdI3XaHezpRI7r5CaZPqRr1stLDx67N92Oo7g3cQGMxpIVBm_Nd4A_lMO14fagMvs4PTq6ati8pZe5xl8Pffz/s1600/Aqidah_Islam.jpg\" width=\"700\" height=\"438\"><figcaption class=\"attachment__caption\"></figcaption></a></figure></div><div><br><strong>B. Objek Kajian Ilmu ‘Aqidah[4]</strong><br><br>‘Aqidah jika dilihat dari sudut pandang sebagai ilmu -sesuai konsep Ahlus Sunnah wal Jama’ah- meliputi topik-topik: Tauhid, Iman, Islam, masalah ghaibiyyaat (hal-hal ghaib), kenabian, takdir, berita-berita (tentang hal-hal yang telah lalu dan yang akan datang), dasar-dasar hukum yang qath’i (pasti), seluruh dasar-dasar agama dan keyakinan, termasuk pula sanggahan terhadap ahlul ahwa’ wal bida’ (pengikut hawa nafsu dan ahli bid’ah), semua aliran dan sekte yang menyempal lagi menyesatkan serta sikap terhadap mereka.<br><br>Disiplin ilmu ‘aqidah ini mempunyai nama lain yang sepadan dengannya, dan nama-nama tersebut berbeda antara Ahlus Sunnah dengan firqah-firqah (golongan-golongan) lainnya.<br><br><strong>• Penamaan ‘Aqidah Menurut Ahlus Sunnah:</strong><br>Di antara nama-nama ‘aqidah menurut ulama Ahlus Sunnah adalah:<br><br><strong>1. Al-Iman</strong><br>‘Aqidah disebut juga dengan al-Iman sebagaimana yang disebutkan dalam Al-Qur-an dan hadits-hadits Nabi Shallallahu ‘alaihi wa sallam, karena ‘aqidah membahas rukun iman yang enam dan hal-hal yang berkaitan dengannya. Sebagaimana penyebutan al-Iman dalam sebuah hadits yang masyhur disebut dengan hadits Jibril Alaihissallam. Dan para ulama Ahlus Sunnah sering menyebut istilah ‘aqidah dengan al-Iman dalam kitab-kitab mereka.[5]<br><br><strong>2. ‘Aqidah (I’tiqaad dan ‘Aqaa-id)</strong><br>Para ulama Ahlus Sunnah sering menyebut ilmu ‘aqidah dengan istilah ‘Aqidah Salaf: ‘Aqidah Ahlul Atsar dan al-I’tiqaad di dalam kitab-kitab mereka.[6]<br><br><strong>3. Tauhid</strong><br>‘Aqidah dinamakan dengan Tauhid karena pembahasannya berkisar seputar Tauhid atau pengesaan kepada Allah di dalam Rububiyyah, Uluhiyyah dan Asma’ wa Shifat. Jadi, Tauhid merupakan kajian ilmu ‘aqidah yang paling mulia dan merupakan tujuan utamanya. Oleh karena itulah ilmu ini disebut dengan ilmu Tauhid secara umum menurut ulama Salaf.[7]<br><br><strong>4. As-Sunnah</strong><br>As-Sunnah artinya jalan. ‘Aqidah Salaf disebut As-Sunnah karena para penganutnya mengikuti jalan yang ditempuh oleh Rasulullah Shallallahu ‘alaihi wa sallam dan para Sahabat Radhiyallahu anhum di dalam masalah ‘aqidah. Dan istilah ini merupakan istilah masyhur (populer) pada tiga generasi pertama.[8]<br><br><strong>5. Ushuluddin dan Ushuluddiyanah</strong><br>Ushul artinya rukun-rukun Iman, rukun-rukun Islam dan masalah-masalah yang qath’i serta hal-hal yang telah menjadi kesepakatan para ulama.[9]<br><br><strong>6. Al-Fiqhul Akbar</strong><br>Ini adalah nama lain Ushuluddin dan kebalikan dari al-Fiqhul Ashghar, yaitu kumpulan hukum-hukum ijtihadi.[10]<br><br><strong>7. Asy-Syari’ah</strong><br>Maksudnya adalah segala sesuatu yang telah ditetapkan oleh Allah Azza wa Jalla dan Rasul-Nya berupa jalan-jalan petunjuk, terutama dan yang paling pokok adalah Ushuluddin (masalah-masalah ‘aqidah).[11]<br><br><strong>C. Prinsip \'Aqidah</strong><br><br><strong>Prinsip pertama: Berserah diri pada Allah dengan bertauhid</strong><br><br>Maksud prinsip ini adalah beribadah murni kepada Allah semata, anda dapat meliha penjelasan di halaman : <a href=\"http://www.ayat-kursi.com/2017/01/ilmu-tauhid-lengkap-yang-shahih-sesuai.html\"><strong>Ilmu Tauhid Lengkap yang Shahih Sesuai Al Qur\'an dan As Sunnah</strong></a><br><br><strong>Prinsip kedua: Taat kepada Allah dengan melakukan ketaatan</strong><br><br>Orang yang bertauhid berarti berprinsip pula menjalankan perintah Allah dan menjauhi larangan-Nya. Ketaatan berarti menjalankan perintah dan menjauhi larangan. Jadi tidak cukup menjadi seorang muwahhid (meyakini Allah itu diesakan dalam ibadah) tanpa ada amal.<br><br><strong>Prinsip ketiga: Berlepas diri dari syirik dan pelaku syirik</strong><br><br>Tidak cukup seseorang berprinsip dengan dua prinsip di atas. Tidak cukup ia hanya beribadah kepada Allah saja, ia juga harus berlepas diri dari syirik dan pelaku syirik. Jadi prinsip seorang muslim adalah ia meyakini batilnya kesyirikan dan ia pun mengkafirkan orang-orang musyrik. Seorang muslim harus membenci dan memusuhi mereka karena Allah. Karena prinsip seorang muslim adalah mencintai apa dan siapa yang Allah cintai dan membenci apa dan siapa yang Allah benci.<br><br>Demikianlah dicontohkan oleh Ibrahim ‘alaihis salam di mana beliau dan orang-orang yang bersama beliau berlepas diri dari orang-orang musyrik. Saksikan pada ayat,</div><div><br><br></div><div dir=\"rtl\">قَدْ كَانَتْ لَكُمْ أُسْوَةٌ حَسَنَةٌ فِي إِبْرَاهِيمَ وَالَّذِينَ مَعَهُ إِذْ قَالُوا لِقَوْمِهِمْ إِنَّا بُرَآَءُ مِنْكُمْ وَمِمَّا تَعْبُدُونَ مِنْ دُونِ اللَّهِ</div><div><br>“Sesungguhnya telah ada suri tauladan yang baik bagimu pada Ibrahim dan orang-orang yang bersama dengan dia; ketika mereka berkata kepada kaum mereka: “Sesungguhnya kami berlepas diri daripada kamu dari daripada apa yang kamu sembah selain Allah.” (QS. Al Mumtahanah: 4). Ibrahim berlepas diri dari orang musyrik dan sesembahan mereka.<br><br></div><div dir=\"rtl\">كَفَرْنَا بِكُمْ وَبَدَا بَيْنَنَا وَبَيْنَكُمُ الْعَدَاوَةُ وَالْبَغْضَاءُ أَبَدًا حَتَّى تُؤْمِنُوا بِاللَّهِ وَحْدَهُ</div><div><br>“Kami ingkari (kekafiran)mu dan telah nyata antara kami dan kamu permusuhan dan kebencian buat selama-lamanya sampai kamu beriman kepada Allah saja.” (QS. Al Mumtahanah: 4).<br><br>Dalam ayat lain disebutkan pula,</div><div><br><br></div><div dir=\"rtl\">لَا تَجِدُ قَوْمًا يُؤْمِنُونَ بِاللَّهِ وَالْيَوْمِ الْآَخِرِ يُوَادُّونَ مَنْ حَادَّ اللَّهَ وَرَسُولَهُ وَلَوْ كَانُوا آَبَاءَهُمْ أَوْ أَبْنَاءَهُمْ أَوْ إِخْوَانَهُمْ أَوْ عَشِيرَتَهُمْ</div><div><br>“Kamu tak akan mendapati kaum yang beriman pada Allah dan hari akhirat, saling berkasih-sayang dengan orang-orang yang menentang Allah dan Rasul-Nya, sekalipun orang-orang itu bapak-bapak, atau anak-anak atau saudara-saudara ataupun keluarga mereka.” (QS. Al Mujadilah: 22).</div><div><br><br></div><div dir=\"rtl\">يَا أَيُّهَا الَّذِينَ آَمَنُوا لَا تَتَّخِذُوا آَبَاءَكُمْ وَإِخْوَانَكُمْ أَوْلِيَاءَ إِنِ اسْتَحَبُّوا الْكُفْرَ عَلَى الْإِيمَانِ وَمَنْ يَتَوَلَّهُمْ مِنْكُمْ فَأُولَئِكَ هُمُ الظَّالِمُونَ</div><div><br>“Hai orang-orang beriman, janganlah kamu jadikan bapak-bapak dan saudara-saudaramu menjadi wali(mu), jika mereka lebih mengutamakan kekafiran atas keimanan dan siapa di antara kamu yang menjadikan mereka wali, maka mereka itulah orang-orang yang zalim.” (QS. At Taubah: 23).<br><br></div><div dir=\"rtl\">يَا أَيُّهَا الَّذِينَ آَمَنُوا لَا تَتَّخِذُوا عَدُوِّي وَعَدُوَّكُمْ أَوْلِيَاءَ</div><div><br>“Hai orang-orang yang beriman, janganlah kamu mengambil musuh-Ku dan musuhmu menjadi teman-teman setia.” (QS. Al Mumtahanah: 1).<br><br>Demikianlah tiga prinsip agar disebut muslim sejati, yaitu bertauhid, melakukan ketaatan dan berlepas diri dari syirik dan pelaku syirik.<br><br>Footnote<br>[1]. Lisaanul ‘Arab (IX/311: عقد) karya Ibnu Manzhur (wafat th. 711 H) t dan Mu’jamul Wasiith (II/614: عقد).<br>[2]. Tauhid Rububiyyah, Uluhiyyah, dan Asma’ wa Shifat Allah.<br>[3]. Lihat Buhuuts fii ‘Aqiidah Ahlis Sunnah wal Jamaa’ah (hal. 11-12) oleh Dr. Nashir bin ‘Abdul Karim al-‘Aql, cet. II/ Daarul ‘Ashimah/ th. 1419 H, ‘Aqiidah Ahlis Sunnah wal Jamaa’ah (hal. 13-14) karya Syaikh Muhammad bin Ibrahim al-Hamd dan Mujmal Ushuul Ahlis Sunnah wal Jamaa’ah fil ‘Aqiidah oleh Dr. Nashir bin ‘Abdul Karim al-‘Aql.<br>[4]. Lihat Buhuuts fii ‘Aqiidah Ahlis Sunnah wal Jamaa’ah (hal. 12-14).<br>[5]. Seperti Kitaabul Iimaan karya Imam Abu ‘Ubaid al-Qasim bin Sallam (wafat th. 224 H), Kitaabul Iimaan karya al-Hafizh Abu Bakar ‘Abdullah bin Muhammad bin Abi Syaibah (wafat th. 235 H), al-Imaan karya Ibnu Mandah (wafat th. 359 H) dan Kitabul Iman karya Syaikhul Islam Ibnu Taimiyyah (wafat th. 728 H), رحمهم الله .<br>[6]. Seperti ‘Aqiidatus Salaf Ash-haabil Hadiits karya ash-Shabuni (wafat th. 449 H), Syarah Ushuul I’tiqaad Ahlis Sunnah wal Jamaa’ah (hal. 5-6) oleh Imam al-Lalika-i (wafat th. 418 H) dan al-I’tiqaad oleh Imam al-Baihaqi (wafat th. 458 H), رحمهم الله.<br>[7]. Seperti Kitaabut Tauhiid dalam Shahiihul Bukhari karya Imam al-Bukhari (wafat th. 256 H), Kitaabut Tauhiid wa Itsbaat Shifaatir Rabb karya Ibnu Khuzaimah (wafat th. 311 H), Kitaab I’tiqaadit Tauhiid oleh Abu ‘Abdillah Muhammad bin Khafif (wafat th. 371 H), Kitaabut Tauhiid oleh Ibnu Mandah (wafat th. 359 H) dan Kitaabut Tauhiid oleh Muhammad bin ‘Abdil Wahhab (wafat th. 1206 H), رحمهم الله.<br>[8]. Seperti kitab as-Sunnah karya Imam Ahmad bin Hanbal (wafat th. 241 H), as-Sunnah karya ‘Abdullah bin Ahmad bin Hanbal (wafat th. 290 H), as-Sunnah karya al-Khallal (wafat th. 311 H) dan Syarhus Sunnah karya Imam al-Barba-hari (wafat th. 329 H), رحمهم الله.<br>[9]. Seperti kitab Ushuuluddin karya al-Baghdadi (wafat th. 429 H), asy-Syarh wal Ibaanah ‘an Ushuuliddiyaanah karya Ibnu Baththah al-Ukbari (wafat th. 387 H) dan al-Ibaanah ‘an Ushuuliddiyaanah karya Imam Abul Hasan al-Asy’ari (wafat th. 324 H), رحمهم الله.<br>[10]. Seperti kitab al-Fiqhul Akbar karya Imam Abu Hanifah rahimahullah (wafat th. 150).<br>[11]. Seperti kitab asy-Syarii’ah oleh al-Ajurri (wafat th. 360 H) dan al-Ibaanah ‘an Syarii’atil Firqah an-Naajiyah karya Ibnu Baththah.</div>', 'Pengertian Akidah yang benar. Akidah merupakan sesuatu yang sangat berharga bagi setiap Muslim. Oleh karena itu, kami disini akan membahas mengenai pengertian akidah Ahlus Sunnah wal Jama\'ah beserta p...', 1, NULL, '2024-12-16 14:08:24', '2024-12-16 14:08:24', 8),
(12, 'Aqidah Islam dan Penerapannya dalam Kehidupan', '463efb84300390e3bd750c523ec0deb76470ca83a6b5b1102b8b6827f2acffdb.jpg', '<div>Aqidah Islam merupakan istilah yang sudah sering didengar di kalangan umat <a href=\"https://kumparan.com/topic/islam\">Islam</a>. Untuk memahami apa itu aqidah Islam, berikut ini adalah penjelasan singkat mengenai pengertian aqidah Islam serta penerapannya dalam kehidupan untuk Anda pahami.<br><br><strong>Pengertian Aqidah Islam dan Contoh Penerapannya<br></strong><br></div><div>Aqidah Islam merupakan hal yang sudah semestinya dimiliki bagi tiap umat <a href=\"https://kumparan.com/topic/muslim\">Muslim</a>. Hal ini karena dalam mengerjakan ibadah dan juga amalan lainnya sebagai seorang Muslim, kita wajib menjalankannya sesuai dengan aqidah Islam yang ada. Aqidah Islam ini berarti kepercayaan atau keyakinan kuat yang dimiliki oleh seorang Muslim.</div><div><a href=\"https://kumparan.com/topic/pengertian\">Pengertian </a>aqidah Islam juga disebutkan secara rinci dalam buku berjudul<em> Intisari Aqidah Ahlussunnah wal Jama\'ah yang disusun oleh AA.Hamid al-Atsari</em> (2006:33) yang memaparkan bahwa aqidah Islam artinya ketetapan yang diwujudkan dalam bentuk keyakinan dengan adanya Allah dan juga diutusnya Rasulullah.<br><br>Aqidah Islam ini tentunya perlu dibangun dan dipupuk dalam diri agar kita dapat menjalankan ajaran Islam dengan benar. Aqidah Islam yang benar sudah pasti berlandaskan dari sumber yang tepat dan dapat dipercaya, yaitu <a href=\"https://kumparan.com/topic/alquran\">Alquran </a>dan hadist. Jangan sampai pondasi keimanan dan aqidah Islam kita salah, karena jika kita tidak memiliki aqidah Islam yang benar maka tentu seluruh amalan kita akan menjadi sia-sia.<br><br>Aqidah Islam ini dapat kita terapkan dalam kehidupan sehari-hari. Meski aqidah Islam tak dapat dijumpai secara fisik dan tak kasat mata, kita perlu menerapkannya dalam diri sendiri, di keseharian kita. Aqidah Islam dapat kita terapkan dengan berbagai cara. Misalnya dengan terus mempelajari Alquran dan <a href=\"https://kumparan.com/search/Hadist/topik\">hadist</a>, beribadah dan beramal dengan niat karena Allah, dan masih banyak lagi bentuk penerapan aqidah Islam yang dapat kita terapkan dalam keseharian kita.</div><div>Hal tersebut juga dapat kita lakukan sebagai cara untuk terus memperkokoh aqidah Islam dalam diri kita, agar kita senantiasa dapat menjadi seorang Muslim yang baik dan juga menjadi hamba Allah yang disayangi serta dirahmati oleh Allah.</div><div>Pemaparan singkat mengenai aqidah Islam tersebut dapat Anda jadikan sebagai pengetahuan baru untuk memperdalam ilmu agama dan juga meningkatkan keimanan dalam diri kita. Semoga bermanfaat.</div>', 'Aqidah Islam merupakan istilah yang sudah sering didengar di kalangan umat Islam. Untuk memahami apa itu aqidah Islam, berikut ini adalah penjelasan singkat mengenai pengertian aqidah Islam serta pene...', 1, NULL, '2024-12-16 14:12:37', '2024-12-16 14:12:37', 8),
(13, 'Kajian Fiqih Ibadah; Muqoronah Hakikiyah Dan Muqoronah Urfiyah', 'd43e80b88f34a9e0f1dc01ee777bb4cebb6f0de84cc4512c95fbd23eb422ce2e.jpg', '<div>Terkait masalah ibadah, dalam Madzhab Syafi’iyah terdapat istilah <em>Muqoronah Hakikiyah</em> Dan <em>Muqoronah Urfiyah. </em><strong>Pertama</strong><em>, Muqoronah Hakikiyah</em> adalah niat seseorang yang dibarengkan dengan setiap awal pekerjaan ibadah secara menyeluruh. Dalam shalat misalnya, niat dibersamakan dengan takbir –sebagai awal dari ibadah shalat- dengan semua bagian-bagian takbir, dari awal bacaan takbir sampai akhir bacaan takbir (dari <em>Alif-</em>nya lafad <em>Allahu</em> sampai <em>Ra’-</em>nya lafad <em>Akbar</em>). Dalam wudhu’ misalnya, niat dibarengkan dengan basuhan wajah –sebagai awal pekerjaan dari wudhu’- dengan semua bagian basuhan-basuhan wajah. <strong>Kedua</strong><em>, Muqoronah Urfiyah</em> adalah membersamakan niat dengan sebagian dari awal pekerjaan setiap ibadah. Misalnya dalam shalat, niat dibersamakan dengan takbir, walaupun hanya satu huruf. Dalam wudhu’ niat dibarengkan dengan basuhan wajah, sekalipun sebagian dari wajah. (Sayyid Abi Bakar, <em>Ianah al-Thalibin,</em> jld. 1, hal. 131, Ibrahim al-Bajuri, <em>Hasyiyah al-Bajury</em>, jld. 1, hal. 148)<br><br></div><div>Niat adalah bermaksud melakukan suatu pekerjaan yang dibarengkan dengan perbuatan tersebut. Artinya niat ada ketika awal suatu perbuatan juga dilakukan. Dalam pembahasan diatas, Ulama madzhab Syafi’iyah memunculkan istilah niat <em>Muqoronah Hakikiyah</em> yang dipelopori oleh Ulama <strong>مُتَقَدِّمُونْ</strong> (golongan masa terdahulu), dan niat <em>Muqoronah Urfiyah</em> yang dikemukakan oleh Ulama <strong>مُتَأَخِّرُونْ</strong> (golongan masa kini).<br><br></div><div>Dari hal ini, menurut Ulama <em>mutaqoddimun</em>, niat yang sah adalah niat <em>Muqoronah Hakikiyah</em>, artinya, niat harus bersamaan dengan takbir yang merupakan awal pekerjaan shalat, dari pertama kali bacaan takbir sampai selesai takbir. Sementara menurut ulama <em>muta</em>`<em>akhkhirun</em>, niat <em>Muqoronah Urfiyah</em> sudah dianggap cukup. Menurutnya Niat tidak harus bersamaan dan tetap ada sejak awal takbir sampai selesai, namun cukup menghadirkan niatnya diawal takbir saja, atau diakhir takbir, atau disebagian takbir walaupun satu huruf dari takbir.<br><br></div><div>Terakhir, keharusan niat ini sesungguhnya adalah untuk memberikan “memo” kepada setiap orang bahwasannya ia sedang bermunajat kepada Allah swt. Sehingga rasa khusu`, tawadhu`, ikhlas dan benar-benar berpasrah diri diharapkan muncul pada diri orang yang sedang menunaikan ibadah. Dengan teknis dan tatacara pelaksanaan niat ini secara benar, ibadah yang dilakukan menjadi sempurna.<br><br></div>', 'Terkait masalah ibadah, dalam Madzhab Syafi’iyah terdapat istilah Muqoronah Hakikiyah Dan Muqoronah Urfiyah. Pertama, Muqoronah Hakikiyah adalah niat seseorang yang dibarengkan dengan setiap awal peke...', 2, NULL, '2024-12-16 14:20:26', '2024-12-16 14:20:26', 8);
INSERT INTO `kajians` (`id`, `judul`, `image`, `body`, `excerpt`, `bidangkajian_id`, `published_at`, `created_at`, `updated_at`, `user_id`) VALUES
(14, 'Amal Ibadah di Hari Jumat', 'ce970a3ffb4f9806b35b093705f882f87aa7164b8b17509dc9bcdc7fcda87b9f.jpeg', '<div>Bismillah….<br>Bagi umat Islam hari Jumat adalah hari yang sangat istimewa. Bahkan hari itu disebut sebagai sayyidul ayyam atau hari yang paling utama dari semua hari. Sebagaimana disebutkan dalam hadis:<br>Dari Abu Hurairah m RA, Rasulullah SAW bersabda, “Sebaik-baiknya hari yang padanya terbit matahari adalah hari Jumat. Pada hari itulah saat diciptakannya Adam, dimasukkannya ia ke surga, dan dikeluarkannya dari surga.” (HR. Muslim)<br>Banyak amal ibadah yang sunnahkan Rasulullah untuk dilakukan di hari Jumat. Amal ibadah tersebut memiliki keutamaan yang sangat luar biasa yang tidak terdapat pada hari hari lain. Berikut amal ibadah yang harus kita upayakan untuk dikerjakan di hari Jumat.<br><br></div><div><strong>MANDI BESAR</strong><br>Pada hari Jumat kita disunnahkan untuk mandi besar sebagaimana sabda Rasulullah:<br>Dari Abu Hurairah, dari Nabi Shallallahu ‘Alaihi Wasallam, beliau bersabda, “Barangsiapa yang mandi kemudian mendatangi Jum’at, lalu ia shalat semampunya dan diam (mendengarkan khutbah) hingga selesai, kemudian ia lanjutkan dengan shalat bersama Imam, maka akan diampuni (dosa-dosa yang dilakukannya) antara hari itu dan hari jum’at yang lain. Dan bahkan hingga lebih tiga hari.” (HR. Muslim ).<br>Sesuai sunnah Rasul, kita harus membersihkan diri dengan mandi besar untuk niat menghadiri salat Jumat. Selain itu memakai minyak wangi, membersihkan kuku, dan memotong rambut menjadi amalan baik sebelum melaksanakan salat Jumat.<br>Salman Al Farisi berkata, Rasulullah SAW bersabda:<br>“Barang siapa yang mandi pada hari Jum’at, bersuci sesuai kemampuan, merapikan rambutnya, mengoleskan parfum, lalu berangkat ke masjid, dan masuk masjid tanpa melangkahi di antara dua orang untuk dilewatinya, kemudian salat sesuai tuntunan dan diam tatkala imam berkhutbah, niscaya diampuni dosa-dosanya di antara dua Jum’at”. (HR. Bukhari).<br><br></div><div><strong>MEMBACA ALKAHFI</strong><br>Amalan hari Jumat berikutnya adalah membaca Surah Al Kahfi. Membaca surat ini bisa dilakukan pada malam jumat atau siang hari pada Hari Jumat.<br>Sebagaimana sabda Rasulullah:<br>Dalam hadist yang derajatnya sahih, Rasulullah bersabda, “Barang siapa yang membaca surat al-Kahfi pada hari Jumat, dia akan disinari cahaya di antara dua Jumat.” (HR. Al-Hakim<br><br></div><div><strong>MEMBACA SURAT YASIN</strong><br>Selain Surat Al Kahfi, umat muslim juga dianjurkan membaca Surat Yasin pada hari Jumat. Keutamaan membaca Surat Yasin ditegaskan dalam sebuah hadis riwayat Abu Daud sebagai berikut. “Barangsiapa membaca surat Yasin dan al-Shaffat di malam Jumat, Allah mengabulkan permintaannya.” (HR Abu Daud dari al-Habr).<br><br></div><div><strong>PERBANYAK SHALAWAT</strong><br>Pada hari Jumat umat Islam juga dianjurkan untuk banyak bersholawat kepada rasulullah sebagaimana disebutkan dalam hadis:<br>Rasulullah SAW bersabda, “Perbanyaklah sholawat kepadaku pada setiap Jumat. Karena sholawat umatku akan diperlihatkan padaku pada setiap Jumat. Barangsiapa yang banyak bersholawat kepadaku, dialah yang paling dekat denganku pada hari kiamat nanti.” (HR. Baihaqi)<br><br></div><div><strong>BANYAK BERDZIKIR</strong><br>Hari Jumat diperintahkan kita banyak berdzikir sebagaimana firman Allah:<br>SWT berfirman:<br>“Hai orang-orang beriman, apabila diseru untuk menunaikan shalat Jumat, Maka bersegeralah kamu kepada dzikir kepada Allah dan tinggalkanlah jual beli. Yang demikian itu lebih baik bagimu jika kamu mengetahui. Apabila telah ditunaikan shalat, Maka bertebaranlah kamu di muka bumi; dan carilah karunia Allah dan dzikirlah kepada Allah yang banyak supaya kamu beruntung,” (QS Al-Jumu’ah: 9-10).<br><br></div><div><strong>BANYAK BERDOA</strong><br>Hari Jumat adalah waktu mustajabah untuk berdoa. Ada satu waktu yang kalau kita berdoa pasti akan dikabulkan Allah.<br>Dalam sebuah hadis Rasulullah SAW bersabda:<br>“Di hari Jumat terdapat suatu waktu yang tidaklah seorang hamba muslim tepat pada saat itu berdiri salat meminta sesuatu kepada Allah, melainkan Allah pasti memberikan apa yang ia minta.” Beliau pun mengisyaratkan dengan tangannya untuk menggambarkan sedikitnya (sebentarnya) waktu tersebut. (HR. Bukhari dan Muslim)<br>Demikian amal ibadah yang dianjurkan dilakukan di hari Jumat, semoga bermanfaat.<br><br></div>', 'Bismillah….Bagi umat Islam hari Jumat adalah hari yang sangat istimewa. Bahkan hari itu disebut sebagai sayyidul ayyam atau hari yang paling utama dari semua hari. Sebagaimana disebutkan dalam hadis:D...', 2, NULL, '2024-12-16 14:29:10', '2024-12-16 14:33:37', 8),
(15, 'Serial Fikih Ibadah; Hal yang Mubah, Makruh dan Membatalkan Shalat', 'f21376a42c3d81053153379c23310c35d0673d5051b5b961ced3d454cedba1ff.jpg', '<div>HAL-HAL YANG MUBAH DALAM SHALAT.<br><br></div><div>Beberapa hal berikut ini hukumnya adalah mubah (diperbolehkan) di dalam shalat:<br><br></div><div>a. Menangis, merintih.<br><br></div><div>Bila seseorang menangis atau merintih di dalam shalat, maka hal itu tidaklah membatalkan shalat. Diriwayatkan bahwa Rasulullah SAW menangis ketika shalat. Begitu juga Abu Bakar ra. juga menangis dalam shalatnya. Diriwayatkan pula bahwa Umar ra shalat subuh dan menangis ketika membaca surah Yusuf. Allah SWT memuji hambaNya yang bersujud dan menangis:<br><br></div><div dir=\"rtl\">إِذَا تُتْلَىٰ عَلَيْهِمْ آيَاتُ الرَّحْمَٰنِ خَرُّوا سُجَّدًا وَبُكِيًّا.<br><br></div><div>Artinya: “Apabila dibacakan ayat-ayat Allah yang Maha Pemurah kepada mereka, Maka mereka menyungkur dengan bersujud dan menangis.” (QS. Maryam: 58).<br><br></div><div>b. Sedikit gerakan karena kebutuhan di dalam Shalat.<br><br></div><div>Diriwayatkan oleh Abu Qatadah Al Anshari bahwa Rasulullah SAW menggendong bayi di dalam shalatnya:<br><br></div><div dir=\"rtl\">أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يُصَلِّي وَهُوَ حَامِلٌ أُمَامَةَ بِنْتَ زَيْنَبَ بِنْتِ رَسُولِ اللَّهِ صلى الله عليه وسلم وَلأَبِي الْعَاصِ بْنِ الرَّبِيعِ بْنِ عَبْدِ شَمْسٍ، فَإِذَا سَجَدَ وَضَعَهَا، وَإِذَا قَامَ حَمَلَهَا. (رواه البخاري ومسلم)<br><br></div><div>Artinya: “Sesungguhnya Rasulullah SAW melaksanakan shalat dan Beliau sedang menggendong Umamah binti Zainab binti Rasulullah SAW, istri Abul ‘Ash bin Rabi’. Jika Beliau sujud, beliau letakkan bayi tersebut. Jika berdiri, Beliau angkat kembali.” (HR Bukari dan Muslim).<br><br></div><div>c. Membunuh hewan yang membahayakan.<br><br></div><div>Hal ini dibolehkan karena berdasarkan hadits Nabi SAW:<br><br></div><div dir=\"rtl\">اقتلوا الأسودين في الصَّلاة، الحيَّة والعَقْرب»، رواه أصحاب السنن.<br><br></div><div>Artinya: “Bunuhlah dua hewan hitam dalam shalat, ular dan kala jengking.” (HR Pemilik sunan).<br><br></div><div>d. Berjalan sedikit karena ada kebutuhan tanpa merubah posisi dari arah kiblat.<br><br></div><div>Rasulullah SAW pernah melakukannya sebagaimana riwayat imam Ahmad, Abu Daud, At Tirmidzi dan An Nasa’i, dari Aisyah RA. Berjalan sedikit juga boleh dilakukan karena hendak memenuhkan shaf yang kosong di samping atau di depan kita.<br><br></div><div>Ibnu Abbas menceritakan peristiwa Rasulullah SAW maju dan mundur di saat shalat. Ketika terjadi gerhana matahari di zaman Nabi SAW Beliau shalat. Mereka berkata: “Wahai Rasulullah, kami melihat Anda maju hendak mengambil sesuatu di tempat shalat Anda lalu kami lihat Anda mundur.” Beliau menjawab:<br><br></div><div dir=\"rtl\">إِنِّي أُرِيتُ الْجَنَّةَ فَتَنَاوَلْتُ مِنْهَا عُنْقُودًا وَلَوْ أَخَذْتُهُ لَأَكَلْتُمْ مِنْهُ مَا بَقِيَتِ الدُّنْيَا<br><br></div><div>Artinya: “Telah diperlihatkan kepadaku surga, dan aku hendak mengambil setangkai anggur, yang bila saja aku berhasil mengambilnya, tentu kalian akan ikut memakannya, dan tetap ada sampai dunia habis.” (HR. Bukhari)<br><br></div><div>e. Menoleh dengan wajah ketika darurat atau ketika diperlukan saja.<br><br></div><div>Hal ini dibolehkan dengan syarat tidak mengubah badan dari arah kiblat. Sebagaimana dalam hadits riwayat Sahl bin Hanzhalah:<br><br></div><div dir=\"rtl\">ثُوِّبَ بِالصَّلاَةِ يَعْنِي صَلاَةَ الصُّبْحِ فَجَعَلَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُصَلِّي وَهُوَ يَلْتَفِتُ إِلَى الشِّعْبِ<br><br></div><div>Artinya: “Dibacakan iqamat shalat Subuh. Lalu Rasulullah SAW shalat seraya menoleh ke arah Syi’bi.” (HR. Abu Daud)<br><br></div><div>f. Menjawab salam dengan isyarat tangan.<br><br></div><div>Rasulullah SAW melakukan hal tersebut ketika para sahabat memberi salam di saat Beliau shalat, sebagaimana hadits dari Bilal bin Rabah:<br><br></div><div dir=\"rtl\">كَانَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَرُدُّ عَلَيْهِمْ حِينَ كَانُوا يُسَلِّمُونَ عَلَيْهِ وَهُوَ فِي الصَّلاَةِ قَالَ كَانَ يُشِيرُ بِيَدِهِ<br><br></div><div>Artinya: “Adalah Nabi SAW menjawab para sahabat yang mengucapkan salam kepada Beliau di saat beliau shalat, yaitu dengan berisyarat memakai tangannya.” (HR. Tirmidzi).<br><br></div><div>g. Membetulkan imam.<br><br></div><div>Bila imam tersalah dalam gerakan shalat, maka makmum yang dibelakang imam boleh mengingatkan dengan cara bertasbih bagi laki-laki dan menepuk tangan bagi wanita. Sebagaimana sabda Nabi SAW:<br><br></div><div dir=\"rtl\">إِذَا نَابَكُمْ شَيْءٌ فِي الصَّلَاةِ فَلْيُسَبِّحِ الرِّجَالُ، وَلْيُصَفِّحِ النِّسَاءُ<br><br></div><div>Artinya: “Jika kalian mengalami sesuatu -dalam shalat- maka hendaknya bagi orang laki-laki untuk bertasbih dan bagi orang perempuan untuk bertepuk tangan. (HR. Abu Dawud dan an-Nasa’i)<br><br></div><div>Jika imam tersalah dalam ayat yang dibaca atau terlupa, maka makmum yang di belakang dibolehkan mengingatkan imam dengan mendiktekan ayat yang benar. Rasulullah SAW bersabda:<br><br></div><div dir=\"rtl\">أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ صَلَّى صَلَاةً فَقَرَأَ فِيهَا فَلُبِسَ عَلَيْهِ فَلَمَّا انْصَرَفَ قَالَ لِأُبَيٍّ أَصَلَّيْتَ مَعَنَا ،قَالَ نَعَمْ، قَالَ فَمَا مَنَعَكَ.<br><br></div><div>Artinya: “Bahwa Nabi SAW mengerjakan shalat dan membaca (beberapa ayat al-Quran) dalam shalatnya, dan Beliau tersalah-salah dalam bacaannya. Seusai shalat Beliau bersabda kepada Ubay: “Apakah kamu tadi ikut shalat bersama kami?” Ubay menjawab; Ya. Beliau berkata: “Apa yang mencegahmu (untuk tidak membenarkan tentang ayat tadi)?” (HR. Abu Dawud).<br><br></div><div>HAL-HAL YANG MAKRUH KETIKA SHALAT.<br><br></div><div>Ada beberapa perkara yang makruh untuk dilakukan ketika shalat. Di antaranya adalah sebagai berikut:<br><br></div><div>a. Meninggalkan hal-hal yang sunat di dalam shalat.<br><br></div><div>b. Menoleh saat shalat dengan memalingkan leher tanpa ada keperluan mendesak.<br><br></div><div>Dari ‘Aisyah ra, ia bertanya pada Rasulullah SAW mengenai berpaling (menoleh) dalam shalat. Nabi SAW lantas menjawab:<br><br></div><div dir=\"rtl\">هُوَ اخْتِلاَسٌ يَخْتَلِسُهُ الشَّيْطَانُ مِنْ صَلاَةِ الْعَبْدِ<br><br></div><div>Artinya: “Itu adalah copetan yang dicopet oleh syetan dalam shalat seseorang.” (HR. Bukhari).<br><br></div><div>Adapun jika ada kebutuhan untuk menoleh seperti saat shalat khauf ketika akan datangnya musuh, maka hal itu dibolehkan.<br>Yang dimaksud dari bahasan di atas adalah jika menoleh dengan memalingkan wajah atau leher. Adapun jika memalingkan dada sehingga menjauh dari arah kiblat, shalatnya batal karena meninggalkan rukun menghadap kiblat. Adapun mencuri pandangan dengan mata, tidaklah mengapa dalam kondisi darurat.<br><br></div><div>c. Berkacak pinggang.<br><br></div><div>Sebagaimana hadits yang diriwayatkan dari Abu Hurairah ra, dia berkata:<br><br></div><div dir=\"rtl\">نُهِيَ أَنْ يُصَلِّيَ الرَّجُلُ مُخْتَصَرًا.<br><br></div><div>Artinya: “Dilarang shalat sambil berkacak pinggang.” (HR Bukhari dan Muslim).<br><br></div><div>d. Menguap.<br><br></div><div>Sebagaimana hadits dari Abu Hurairah ra, Nabi SAW bersabda:<br><br></div><div dir=\"rtl\">اَلتَّثَـاؤُبُ فِي الصَّلاَةِ مِنَ الشَّيْطَانِ، فَإِذَا تَثَـاءَبَ أَحَدُكُمْ فَلْيَكْظِمْ مَا اسْتَطَاعَ.<br><br></div><div>Artinya: “Menguap dalam shalat adalah dari syaitan. Jika salah seorang dari kalian menguap, maka tahanlah sebisa mungkin.” (HR Tirmidzi)<br><br></div><div>e. Memandang ke langi-langit.<br><br></div><div>Hal ini berdasarkan hadits dari Anas bin Malik ra, ia berkata bahwa Rasulullah SAW bersabda:<br><br></div><div dir=\"rtl\">مَا بَالُ أَقْوَامٍ يَرْفَعُونَ أَبْصَارَهُمْ إِلَى السَّمَاءِ فِى صَلاَتِهِمْ » . فَاشْتَدَّ قَوْلُهُ فِى ذَلِكَ حَتَّى قَالَ « لَيَنْتَهُنَّ عَنْ ذَلِكَ أَوْ لَتُخْطَفَنَّ أَبْصَارُهُمْ<br><br></div><div>Artinya: “Kenapa bisa ada kaum yang mengangkat pandangannya ke langit-langit dalam shalatnya.” Beliau keras dalam sabda beliau tersebut, hingga beliau bersabda, “Hendaklah tidak memandang seperti itu, kalau tidak, pandangannya akan disambar.” (HR. Bukhari).<br><br></div><div>f. Meludah ke arah kiblat atau ke kanan.<br><br></div><div>Jabir ra, meriwayatkan bahwa Rasulullah SAW bersabda:<br><br></div><div dir=\"rtl\">إِنَّ أَحَدَكُمْ إِذَا قَامَ يُصَلِّي فَإِنَّ اللهَ تَبَارَكَ وَتَعَالَى قِبَلَ وَجْهِهِ، فَلاَ يَبْصُقَنَّ قِبَلَ وَجْهِهِ وَلاَ عَنْ يَمِيْنِهِ. وَلِيَبْصُقْ عَنْ يَسَـارِهِ تَحْتَ رِجْلِهِ الْيُسْرَى، فَإِنْ عَجِلَتْ بِهِ بَادِرَةٌ فَلْيَقُلْ بِثَوْبِهِ هكَذَا. ثُمَّ طَوَى ثَوْبَهُ بَعْضَهُ عَلَى بَعْضٍ.<br><br></div><div>Artinya: “Sesungguhnya jika salah seorang dari kalian berdiri untuk shalat, maka sesungguhnya Allah SWT berada di hadapannya. Maka janganlah ia meludah ke arah depan atau ke kanan. Hendaklah ia meludah ke sebelah kiri di bawah kaki kirinya. Dan jika terlanjur keluar, maka hendaklah ia tumpahkan ke pakaiannya.” Beliau kemudian melipat bajunya satu sama lain.” (HR Muslim dan Abu Daud)<br><br></div><div>g. Menyilangkan jari-jemari<br><br></div><div>Dari Abu Hurairah ra, dia mengatakan bahwa Rasulullah SAW bersabda:<br><br></div><div dir=\"rtl\">إِذَا تَوَضَّأَ أَحَدُكُمْ فِيْ بَيْتِهِ ثُمَّ أَتَى الْمَسْجِدَ كَانَ فِي صَلاَةٍ حَتَّى يَرْجِعَ، فَلاَ يَقُلْ هكَذَا، وَشَبَكَ بَيْنَ أَصَابِعِهِ.<br><br></div><div>Artinya: “Jika salah seorang di antara kalian wudhu’ di rumahnya kemudian mendatangi masjid, maka dia berada dalam sebuah shalat hingga pulang. Janganlah ia melakukan seperti ini.” Beliau menyilangkan jari-jemarinya. (Shahih Ibnu Khuzaimah)<br><br></div><div>h. Mendahului gerakan imam.<br><br></div><div>Dari Abu Hurairah ra, dari Nabi SAW, beliau bersabda:<br><br></div><div dir=\"rtl\">أَمَا يَخْشَى أَحَدُكُمْ إِذَا رَفَعَ رَأْسَهُ قَبْلَ اْلإِمَامِ أَنْ يَجْعَلَ اللهُ رَأْسَهُ رَأْسَ حِمَارٍ، أَوْ يَجْعَلَ اللهُ صُوْرَتَهُ صُوْرَةَ حِمَارٍ.<br><br></div><div>Artinya: “Tidakkah salah seorang di antara kalian takut, Allah menjadikan kepalanya seperti kepala keledai bila dia mengangkat kepalanya sebelum imam. Atau menjadikan rupanya seperti rupa keledai.” (HR Bukhari dan Muslim).<br><br></div><div>i. Melakukan shalat ketika hidangan sudah disajikan atau ketika menahan buang air besar dan kecil.<br>Dari ‘Aisyah ra, dia berkata, “Aku mendengar Nabi SAW bersabda:<br><br></div><div dir=\"rtl\">لاَ صَلاَةَ بِحَضْرَةِ الطَّعَامِ، وَلاَ وَهُوَ يُدَافِعُهُ اْلأَخْبَثَانِ.<br><br></div><div>Artinya: “Tidak (sempurna) shalat ketika hidangan sudah disajikan, dan tidak (sempurna) pula shalat orang yang menahan buang air besar atau kecil.” (HR Muslim dan Abu Daud).<br><br></div><div>HAL-HAL YANG MEMBATALKAN SHALAT.<br><br></div><div>Berikut ini adalah hal-hal yang dapat membatalkan shalat:<br><br></div><div>a. Shalat akan langsung batal apabila seseorang berhadats kecil seperti buang angin, buang air kecil atau buang air besar, atau hadats besar seperti keluar darah haid. Hal ini sudah diterangkan di awal dalam tema syarat sah shalat.<br><br></div><div>b. Tidak menghadap kiblat atau berpaling ke arah bukan kiblat dengan sengaja. Kecuali ketika shalat di atas kendaraan. Hal ini juga termasuk dalam pembahasan syarat sah shalat.<br><br></div><div>c. Terbukanya aurat dengan sengaja. Sebab hal ini juga bagian dari syarat sah shalat.<br><br></div><div>d. Berbicara dan berkata-kata dengan sengaja di dalam shalat. Hal ini berdasarkan sabda Rasulullah SAW:<br><br></div><div dir=\"rtl\">إِنَّ هَذِهِ الصَّلاَةَ لاَ يَصْلُحُ فِيهَا شَىْءٌ مِنْ كَلاَمِ النَّاسِ إِنَّمَا هُوَ التَّسْبِيحُ وَالتَّكْبِيرُ وَقِرَاءَةُ الْقُرْآنِ”. رواه مسلم.<br><br></div><div>Artinya: “Sungguh shalat ini tidak pantas di dalamnya terdapat sesuatu dari perkataan manusia. Perkataan yang pantas hanyalah tasbih, takbir dan bacaan Al-Qur’an.” (HR. Muslim).<br><br></div><div>e. Tertawa terbahak-bahak membatalkan shalat, berdasarkan ijmak para Ulama.<br><br></div><div>f. Makan dan minum dengan sengaja, membatalkan shalat berdasarkan ijmak para ulama.<br><br></div><div>g. Bergerak yang tidak perlu dan berulang-ulang, yang bukan bagian dari gerakan dan kesempurnaan shalat, adalah membatalkan shalat berdasarkan ijmak para ulama.<br><br></div><div>h. Meninggalkan salah satu rukun shalat dengan sengaja, maka hal itu membatalkan shalat.<br><br></div><div>Sebagaimana perbuatan shalat orang yang buruk shalatnya dihadapan Rasulullah SAW. Ia tidak melakukan tumakninah dalam shalatnya sehingga Rasulullah SAW memerintahkannya untuk mengulangi shalatnya. Sebagaimana dalam hadits Abu Hurairah:<br><br></div><div dir=\"rtl\">أنَّ النَّبِىَّ – صلى الله عليه وسلم – دَخَلَ الْمَسْجِدَ فَدَخَلَ رَجُلٌ فَصَلَّى ثُمَّ جَاءَ فَسَلَّمَ عَلَى النَّبِىِّ – صلى الله عليه وسلم – فَرَدَّ النَّبِىُّ – صلى الله عليه وسلم – عَلَيْهِ السَّلاَمَ فَقَالَ « ارْجِعْ فَصَلِّ فَإِنَّكَ لَمْ تُصَلِّ » فَصَلَّى ، ثُمَّ جَاءَ فَسَلَّمَ عَلَى النَّبِىِّ – صلى الله عليه وسلم – فَقَالَ « ارْجِعْ فَصَلِّ فَإِنَّكَ لَمْ تُصَلِّ » . ثَلاَثًا . فَقَالَ وَالَّذِى بَعَثَكَ بِالْحَقِّ فَمَا أُحْسِنُ غَيْرَهُ فَعَلِّمْنِى . قَالَ إِذَا قُمْتَ إِلَى الصَّلاَةِ فَكَبِّرْ ، ثُمَّ اقْرَأْ مَا تَيَسَّرَ مَعَكَ مِنَ الْقُرْآنِ ، ثُمَّ ارْكَعْ حَتَّى تَطْمَئِنَّ رَاكِعًا ، ثُمَّ ارْفَعْ حَتَّى تَعْتَدِلَ قَائِمًا ، ثُمَّ اسْجُدْ حَتَّى تَطْمَئِنَّ سَاجِدًا ، ثُمَّ ارْفَعْ حَتَّى تَطْمَئِنَّ جَالِسًا ، ثُمَّ اسْجُدْ حَتَّى تَطْمَئِنَّ سَاجِدًا ، ثُمَّ افْعَلْ ذَلِكَ فِى صَلاَتِكَ كُلِّهَا.<br><br></div><div>Artinya: “Nabi SAW ketika masuk masjid, maka masuklah seseorang, lalu ia melaksanakan shalat. Setelah itu, ia datang dan memberi salam pada Nabi SAW, lalu Beliau menjawab salamnya. Beliau berkata, “Ulangilah shalatmu karena sesungguhnya engkau tidaklah shalat.” Lalu ia pun shalat dan datang lalu memberi salam pada Nabi SAW. Beliau tetap berkata yang sama seperti sebelumnya, “Ulangilah shalatmu karena sesungguhnya engkau tidaklah shalat.” Sampai diulangi hingga tiga kali. Orang yang buruk shalatnya tersebut berkata, “Demi yang mengutusmu membawa kebenaran, aku tidak bisa melakukan shalat lebih baik dari itu. Makanya ajarilah aku!” Rasulullah SAW lantas mengajarinya dan bersabda, “Jika engkau hendak shalat, maka bertakbirlah. Kemudian bacalah ayat Alquran yang mudah bagimu. Lalu rukuklah dan sertai tumakninah ketika rukuk. Lalu bangkitlah dan beriktidallah sambil berdiri. Kemudian sujudlah sertai tumakninah ketika sujud. Kemudian bangkitlah dan duduk antara dua sujud sambil thumakninah. Kemudian sujud kembali sambil disertai tumakninah ketika sujud. Lakukan seperti itu dalam setiap shalatmu.” (HR. Bukhari dan Muslim)<br><br></div><div>Wallahu A’laa wa A’lam.</div>', 'HAL-HAL YANG MUBAH DALAM SHALAT.Beberapa hal berikut ini hukumnya adalah mubah (diperbolehkan) di dalam shalat:a. Menangis, merintih.Bila seseorang menangis atau merintih di dalam shalat, maka hal itu...', 2, NULL, '2024-12-16 14:33:16', '2024-12-16 14:33:16', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kategoriarsips`
--

CREATE TABLE `kategoriarsips` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_arsip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoriarsips`
--

INSERT INTO `kategoriarsips` (`id`, `kategori_arsip`, `created_at`, `updated_at`) VALUES
(1, 'Surat Masuk', NULL, NULL),
(2, 'Surat Keluar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategoriartikels`
--

CREATE TABLE `kategoriartikels` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_artikel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoriartikels`
--

INSERT INTO `kategoriartikels` (`id`, `kategori_artikel`, `created_at`, `updated_at`) VALUES
(1, 'Tajuk', NULL, NULL),
(2, 'Opini', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategoriberitas`
--

CREATE TABLE `kategoriberitas` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_berita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoriberitas`
--

INSERT INTO `kategoriberitas` (`id`, `kategori_berita`, `created_at`, `updated_at`) VALUES
(1, 'Nasional', NULL, NULL),
(2, 'Internasional', NULL, NULL),
(3, 'Pimpinan Cabang Muhammadiyah', NULL, NULL),
(4, 'Pimpinan Ranting Muhammadiyah', NULL, NULL),
(5, 'Ortom', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `komentarartikels`
--

CREATE TABLE `komentarartikels` (
  `id` bigint UNSIGNED NOT NULL,
  `komentar_artikel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarartikels`
--

INSERT INTO `komentarartikels` (`id`, `komentar_artikel`, `artikel_id`, `created_at`, `updated_at`) VALUES
(8, 'p', 13, '2024-06-13 06:13:14', '2024-06-13 06:13:14'),
(9, 'p', 13, '2024-06-13 06:14:06', '2024-06-13 06:14:06'),
(10, 'tes', 13, '2024-06-13 06:14:49', '2024-06-13 06:14:49'),
(11, 'saya mengerti', 15, '2024-06-16 06:50:10', '2024-06-16 06:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `komentarberitas`
--

CREATE TABLE `komentarberitas` (
  `id` bigint UNSIGNED NOT NULL,
  `komentar_berita` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `portalberita_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarberitas`
--

INSERT INTO `komentarberitas` (`id`, `komentar_berita`, `portalberita_id`, `created_at`, `updated_at`) VALUES
(26, 'Subhanallah Masyaallah......', 22, '2024-12-16 15:43:09', '2024-12-16 15:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `komentarkajians`
--

CREATE TABLE `komentarkajians` (
  `id` bigint UNSIGNED NOT NULL,
  `komentar_kajian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kajian_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarkajians`
--

INSERT INTO `komentarkajians` (`id`, `komentar_kajian`, `kajian_id`, `created_at`, `updated_at`) VALUES
(10, 'Subhanallah', 6, '2024-06-13 07:59:45', '2024-06-13 07:59:45'),
(11, 'ajgkfkafhjgriu', 5, '2024-06-16 06:51:22', '2024-06-16 06:51:22'),
(12, 'Semoga Bermanfaat🙏', 8, '2024-12-16 13:30:53', '2024-12-16 13:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `mediasosials`
--

CREATE TABLE `mediasosials` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_medsos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_medsos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mediasosials`
--

INSERT INTO `mediasosials` (`id`, `nama_medsos`, `link_medsos`, `created_at`, `updated_at`, `user_id`) VALUES
(4, 'Instagram', 'https://www.instagram.com/pcmbatamkota/', '2024-06-13 04:52:53', '2024-12-16 15:24:11', 17),
(5, 'Official', 'https://www.pcm-batamkota.org/', '2024-12-16 15:22:19', '2024-12-16 15:22:19', 17),
(6, 'Facebook', 'https://www.facebook.com/pcmbatamkota2023?_rdr', '2024-12-16 15:25:05', '2024-12-16 15:25:05', 17);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_20_133153_create_roles_table', 1),
(5, '2024_04_20_152346_add_roles_id_to_users_table', 1),
(6, '2024_04_22_082457_create_galerifotos_table', 1),
(7, '2024_04_28_015018_create_direktorikeanggotaans_table', 1),
(8, '2024_05_12_145026_create_identitaspcms_table', 1),
(9, '2024_05_13_160019_create_arsipfiles_table', 1),
(10, '2024_05_14_164601_create_kategoriarsips_table', 1),
(11, '2024_05_14_164602_create_arsipadministrasis_table', 1),
(12, '2024_05_15_124311_create_galerivideos_table', 1),
(13, '2024_05_15_164107_create_mediasosials_table', 1),
(14, '2024_05_16_064538_create_amalusahas_table', 1),
(15, '2024_05_16_071344_create_kategoriberitas_table', 1),
(16, '2024_05_16_072002_create_portalberitas_table', 1),
(17, '2024_05_18_054327_create_komentarberitas_table', 1),
(18, '2024_05_18_224855_create_kategoriartikels_table', 1),
(19, '2024_05_18_225250_create_artikels_table', 1),
(20, '2024_05_19_001442_create_komentarartikels_table', 1),
(21, '2024_05_19_133851_create_agendas_table', 1),
(22, '2024_05_19_151241_create_pengumumen_table', 1),
(23, '2024_05_26_032945_create_bidangkajians_table', 2),
(24, '2024_05_26_033702_create_kajians_table', 3),
(25, '2024_05_26_042513_create_ortoms_table', 4),
(26, '2024_05_26_104618_create_saldos_table', 5),
(27, '2024_05_26_110332_create_uang_kas_table', 6),
(28, '2024_06_02_130642_create_settings_table', 7),
(29, '2024_06_05_223438_add_column_to_settings_table', 8),
(30, '2024_06_06_131520_add_column_to_direktorikeanggotaans_table', 9),
(31, '2024_06_06_210407_create_carousels_table', 10),
(32, '2024_06_09_093817_create_komentarkajians_table', 11),
(33, '2024_06_09_120713_add_column_to_settings_table', 12),
(34, '2024_06_13_103239_add_column_to_agendas_table', 12),
(35, '2024_06_13_104528_add_user_id_to_agendas_table', 13),
(36, '2024_06_13_105836_add_user_id_to_pengumumen_table', 14),
(37, '2024_06_13_110418_add_user_id_to_amalusahas_table', 15),
(38, '2024_06_13_111509_add_user_id_to_carousels_table', 16),
(39, '2024_06_13_113229_add_user_id_to_settings_table', 17),
(40, '2024_06_13_114523_add_user_id_to_ortoms_table', 18),
(41, '2024_06_13_115204_add_user_id_to_mediasosials_table', 19),
(42, '2024_06_13_115849_add_user_id_to_identitaspcms_table', 20),
(43, '2024_06_13_121138_add_user_id_to_galerifotos_table', 21),
(44, '2024_06_13_123430_add_user_id_to_galerivideos_table', 22),
(45, '2024_06_13_125140_add_user_id_to_portalberitas_table', 23),
(46, '2024_06_13_131115_add_user_id_to_artikels_table', 24),
(47, '2024_06_13_132502_add_user_id_to_kajians_table', 25),
(48, '2024_06_13_134359_add_user_id_to_arsipadministrasis_table', 26),
(49, '2024_06_13_140345_add_user_id_to_direktorikeanggotaans_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `ortoms`
--

CREATE TABLE `ortoms` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ortom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ketua` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ortoms`
--

INSERT INTO `ortoms` (`id`, `nama_ortom`, `nama_ketua`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'Pimpinan Cabang Aisyiyah Batam Kota', 'Indrastuti', '2024-06-13 04:46:26', '2024-12-16 14:38:53', 8),
(6, 'Pimpinan Ranting Muhammadiyah Batam Kota', 'Zarmi Mazridanto', '2024-06-13 04:46:58', '2024-12-16 14:35:32', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumumen`
--

CREATE TABLE `pengumumen` (
  `id` bigint UNSIGNED NOT NULL,
  `judul_pengumuman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengumuman` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumumen`
--

INSERT INTO `pengumumen` (`id`, `judul_pengumuman`, `isi_pengumuman`, `created_at`, `updated_at`, `user_id`) VALUES
(11, 'Publikasi Website Resmi PCM Batam Kota', 'Pada hari ini, Website Official Pimpinan Cabang Muhammadiyah Kecamatan Batam Kota, Dinyatakan Resmi Rilis', '2024-06-13 04:01:57', '2024-06-13 04:01:57', 8),
(12, 'Pengumuman Kegiatan Pengajian Rutin', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDiberitahukan kepada seluruh warga Muhammadiyah dan Aisyiyah bahwa pengajian rutin akan dilaksanakan pada: Hari/Tanggal: Rabu, 20 Desember 2024 Waktu: Pukul 19.00 WIB Tempat: Masjid Muhammadiyah Al-Falah\r\n\r\nPengajian kali ini akan mengangkat tema \"Peran Muhammadiyah dalam Meningkatkan Kualitas Generasi Muda\". Kehadiran saudara/i sangat diharapkan.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:44:09', '2024-12-16 14:44:09', 17),
(13, 'Pengumuman Pemilu Pengurus Cabang', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDengan ini diberitahukan bahwa Pemilu untuk memilih pengurus cabang Muhammadiyah akan dilaksanakan pada: Hari/Tanggal: Sabtu, 25 Desember 2024 Waktu: Pukul 09.00 - 12.00 WIB Tempat: Aula Gedung Muhammadiyah\r\n\r\nDiharapkan partisipasi aktif dari seluruh anggota untuk memilih pemimpin yang terbaik. Semoga Allah memberkahi langkah kita.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:45:51', '2024-12-16 14:45:51', 17),
(14, 'Pengumuman Donasi untuk Bencana Alam', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nMari bersama-sama kita bantu saudara-saudara kita yang terdampak bencana alam di wilayah X. Kami mengajak seluruh warga Muhammadiyah untuk menyalurkan bantuan berupa:\r\n\r\nSumbangan uang\r\nPakaian layak pakai\r\nMakanan siap saji\r\nBantuan dapat disalurkan melalui rekening yang tertera atau langsung di posko bantuan yang berada di Masjid Muhammadiyah. Semoga amal kita diterima oleh Allah.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:46:13', '2024-12-16 14:46:13', 17),
(15, 'Pengumuman Kegiatan Bakti Sosial', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDalam rangka memperingati Hari Lahir Muhammadiyah yang ke-112, kami akan mengadakan kegiatan bakti sosial berupa:\r\n\r\nPembagian sembako\r\nLayanan kesehatan gratis\r\nPembersihan lingkungan\r\nKegiatan ini akan dilaksanakan pada: Hari/Tanggal: Minggu, 30 Desember 2024 Waktu: Pukul 08.00 WIB Tempat: Lingkungan sekitar Masjid Muhammadiyah\r\n\r\nPartisipasi saudara/i sangat kami harapkan. Semoga kegiatan ini membawa manfaat bagi umat.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:47:17', '2024-12-16 14:47:17', 17),
(16, 'Pengumuman Pelatihan Kader Muhammadiyah', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDiberitahukan kepada seluruh warga Muhammadiyah bahwa pelatihan kader akan dilaksanakan pada: Hari/Tanggal: Sabtu, 23 Desember 2024 Waktu: Pukul 08.00 - 16.00 WIB Tempat: Gedung Pusat Dakwah Muhammadiyah\r\n\r\nPelatihan ini bertujuan untuk meningkatkan kapasitas kepemimpinan dan keorganisasian di kalangan anggota Muhammadiyah. Diharapkan seluruh calon kader dapat menghadiri kegiatan ini.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:49:25', '2024-12-16 14:49:25', 17),
(17, 'Pengumuman Upacara Peringatan Hari Besar Islam', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDengan ini kami mengundang seluruh warga Muhammadiyah untuk menghadiri upacara peringatan Maulid Nabi Muhammad SAW yang akan dilaksanakan pada: Hari/Tanggal: Kamis, 14 Desember 2024 Waktu: Pukul 07.00 WIB Tempat: Masjid Muhammadiyah Al-Amin\r\n\r\nMari kita bersama-sama memperingati kelahiran Nabi Muhammad SAW dengan penuh hikmat dan keikhlasan.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:50:31', '2024-12-16 14:50:31', 17),
(18, 'Pengumuman Pendaftaran Anggota Baru', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nKami membuka pendaftaran untuk anggota baru Muhammadiyah yang ingin bergabung dalam kegiatan dakwah dan sosial di lingkungan kita. Pendaftaran dapat dilakukan di sekretariat Muhammadiyah mulai tanggal: Hari/Tanggal: 15 Desember - 31 Desember 2024 Waktu: Pukul 09.00 - 15.00 WIB\r\n\r\nJadilah bagian dari gerakan besar Muhammadiyah untuk membawa kebaikan bagi umat. Mari bergabung bersama kami!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:51:29', '2024-12-16 14:51:29', 17),
(19, 'Pengumuman Kegiatan Kuliah Tamu', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDiberitahukan kepada seluruh warga Muhammadiyah bahwa akan ada kuliah tamu dengan tema \"Peran Muhammadiyah dalam Pembangunan Karakter Bangsa\" yang akan disampaikan oleh: Narasumber: Dr. H. Ali Murtadho, MA Hari/Tanggal: Jumat, 22 Desember 2024 Waktu: Pukul 19.00 WIB Tempat: Aula Muhammadiyah\r\n\r\nKehadiran saudara/i sangat diharapkan untuk memperluas wawasan keislaman dan kebangsaan kita.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:51:47', '2024-12-16 14:51:47', 17),
(20, 'Pengumuman Pembayaran Zakat Fitrah', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDengan datangnya bulan Ramadhan, kami mengingatkan seluruh warga Muhammadiyah untuk segera menunaikan zakat fitrah. Pembayaran zakat dapat dilakukan di sekretariat Muhammadiyah mulai tanggal: Hari/Tanggal: 1 - 20 Ramadhan 1446 H Tempat: Kantor Sekretariat Muhammadiyah\r\n\r\nSemoga dengan berzakat kita mendapatkan keberkahan dan kebahagiaan di dunia dan akhirat.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:52:01', '2024-12-16 14:52:01', 17),
(21, 'Pengumuman Lomba Dakwah Digital', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDalam rangka mengembangkan dakwah Muhammadiyah di era digital, kami mengadakan Lomba Dakwah Digital dengan tema \"Menguatkan Syiar Islam melalui Media Sosial\". Lomba ini terbuka untuk seluruh anggota Muhammadiyah dengan ketentuan:\r\n\r\n-Mengirimkan video dakwah berdurasi 3-5 menit\r\n-Tema dakwah sesuai dengan nilai-nilai Islam dan Muhammadiyah\r\n-Kirimkan video paling lambat tanggal 10 Januari 2025\r\nPemenang lomba akan mendapatkan hadiah menarik. Ayo ikut berpartisipasi!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:53:08', '2024-12-16 14:53:08', 17),
(22, 'Pelaksanaan Shalat Tarawih Bersama', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nMenjelang bulan suci Ramadhan, kami mengundang seluruh warga Muhammadiyah untuk mengikuti Shalat Tarawih Bersama di Masjid Muhammadiyah yang akan dilaksanakan pada: Hari/Tanggal: Mulai 1 Ramadhan 1446 H Waktu: Pukul 19.30 WIB Tempat: Masjid Muhammadiyah Al-Hidayah\r\n\r\nMari bersama-sama kita meningkatkan ibadah di bulan penuh berkah ini.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:55:11', '2024-12-16 14:55:11', 17),
(23, 'Kegiatan Silaturahmi Pengurus', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nKami mengundang seluruh pengurus dan anggota aktif Muhammadiyah untuk hadir dalam kegiatan Silaturahmi Pengurus yang akan dilaksanakan pada: Hari/Tanggal: Sabtu, 16 Desember 2024 Waktu: Pukul 10.00 WIB Tempat: Gedung Pusat Dakwah Muhammadiyah\r\n\r\nKegiatan ini bertujuan untuk mempererat ukhuwah dan membahas program-program kedepan. Kehadiran saudara/i sangat diharapkan.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:55:32', '2024-12-16 14:55:32', 17),
(24, 'Pembukaan Kelas Pendidikan Anak', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDengan ini kami memberitahukan bahwa pendaftaran Pendidikan Anak Muhammadiyah (PAM) untuk tahun ajaran 2024-2025 sudah dibuka. Kelas yang tersedia meliputi:\r\n\r\nTK Muhammadiyah\r\nSD Muhammadiyah\r\nProgram Pengajaran Al-Qur’an\r\nPendaftaran dapat dilakukan mulai tanggal: Hari/Tanggal: 15 Desember 2024 - 31 Januari 2025 Waktu: Pukul 08.00 - 15.00 WIB Tempat: Sekretariat Pendidikan Muhammadiyah\r\n\r\nAyo daftarkan anak-anak kita untuk pendidikan yang berkualitas!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:56:11', '2024-12-16 14:56:11', 17),
(25, 'Pengumuman Pembukaan Program Beasiswa Muhammadiyah', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDalam rangka mendukung pendidikan anak bangsa, Muhammadiyah membuka program Beasiswa Pendidikan untuk jenjang S1, S2, dan S3. Beasiswa ini diperuntukkan bagi mahasiswa yang memenuhi syarat dan membutuhkan bantuan biaya pendidikan.\r\n\r\nPendaftaran dibuka mulai: Hari/Tanggal: 1 Januari - 31 Januari 2025 Tempat: Sekretariat Muhammadiyah\r\n\r\nUntuk informasi lebih lanjut, silakan menghubungi kami di nomor yang tertera. Semoga program ini bermanfaat bagi umat.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:57:01', '2024-12-16 14:57:01', 17),
(26, 'Pelatihan Penguatan Ekonomi Umat', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nKami mengundang seluruh anggota Muhammadiyah untuk mengikuti Pelatihan Penguatan Ekonomi Umat yang akan dilaksanakan pada: Hari/Tanggal: Minggu, 28 Desember 2024 Waktu: Pukul 08.00 - 14.00 WIB Tempat: Aula Masjid Muhammadiyah\r\n\r\nPelatihan ini bertujuan untuk meningkatkan keterampilan ekonomi anggota dalam menghadapi tantangan zaman. Daftarkan diri Anda segera, tempat terbatas!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:57:31', '2024-12-16 14:57:31', 17),
(27, 'Lomba Cerdas Cermat Islam', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDalam rangka meningkatkan pemahaman keislaman di kalangan generasi muda, kami mengadakan Lomba Cerdas Cermat Islam tingkat cabang Muhammadiyah yang akan dilaksanakan pada: Hari/Tanggal: Jumat, 5 Januari 2025 Waktu: Pukul 09.00 WIB Tempat: Gedung Serbaguna Muhammadiyah\r\n\r\nLomba ini terbuka bagi pelajar SD, SMP, dan SMA. Hadiah menarik menanti para pemenang. Daftarkan tim Anda segera!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:58:05', '2024-12-16 14:58:05', 17),
(28, 'Peringatan Hari Sumpah Pemuda', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDalam rangka memperingati Hari Sumpah Pemuda yang jatuh pada tanggal 28 Oktober, kami mengundang seluruh warga Muhammadiyah untuk mengikuti upacara dan kegiatan yang akan dilaksanakan pada: Hari/Tanggal: Sabtu, 28 Oktober 2024 Waktu: Pukul 07.00 WIB Tempat: Lapangan Masjid Muhammadiyah\r\n\r\nMari kita perkuat semangat persatuan dan kesatuan dalam bingkai NKRI.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:58:30', '2024-12-16 14:58:30', 17),
(29, 'Pengumuman Pembukaan Kursus Bahasa Arab', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nMuhammadiyah membuka Kursus Bahasa Arab bagi siapa saja yang ingin mempelajari bahasa Al-Qur’an dan hadis. Kursus ini akan dilaksanakan mulai: Hari/Tanggal: Senin, 1 Januari 2025 Waktu: Pukul 17.00 - 19.00 WIB Tempat: Gedung Pusat Pendidikan Muhammadiyah\r\n\r\nUntuk pendaftaran dan informasi lebih lanjut, silakan hubungi sekretariat kami. Ayo, tingkatkan kemampuan bahasa Arab kita!\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:58:47', '2024-12-16 14:58:47', 17),
(30, 'Pelaksanaan Ibadah Haji dan Umrah', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nBagi warga Muhammadiyah yang berniat untuk menunaikan Ibadah Haji atau Umrah tahun 2025, kami membuka pendaftaran dan informasi terkait pelaksanaan ibadah tersebut. Pendaftaran dibuka mulai: Hari/Tanggal: 10 Desember 2024 - 20 Januari 2025 Tempat: Kantor Sekretariat Muhammadiyah\r\n\r\nSilakan menghubungi bagian Haji dan Umrah untuk konsultasi lebih lanjut. Semoga perjalanan ibadah kita mendapat keberkahan.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:59:20', '2024-12-16 14:59:20', 17),
(31, 'Pengumuman Kegiatan Rapat Koordinasi', 'Assalamu\'alaikum warahmatullahi wabarakatuh,\r\n\r\nDengan ini kami mengundang seluruh pengurus cabang Muhammadiyah untuk hadir dalam Rapat Koordinasi Pengurus yang akan dilaksanakan pada: Hari/Tanggal: Kamis, 21 Desember 2024 Waktu: Pukul 09.00 WIB Tempat: Aula Gedung Muhammadiyah\r\n\r\nAgenda rapat adalah evaluasi kegiatan tahun 2024 dan perencanaan program tahun 2025. Kehadiran pengurus sangat diharapkan untuk kelancaran agenda ke depan.\r\n\r\nWassalamu\'alaikum warahmatullahi wabarakatuh.', '2024-12-16 14:59:43', '2024-12-16 14:59:43', 17);

-- --------------------------------------------------------

--
-- Table structure for table `portalberitas`
--

CREATE TABLE `portalberitas` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategoriberita_id` bigint UNSIGNED NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portalberitas`
--

INSERT INTO `portalberitas` (`id`, `judul`, `image`, `body`, `excerpt`, `kategoriberita_id`, `published_at`, `created_at`, `updated_at`, `user_id`) VALUES
(20, 'Muhammadiyah Tak Pernah Berhenti Salurkan Program Kemanusiaan untuk Perdamaian', '790e7876e5445f12dec35be0f01c94adca2739ea3dfc528b5f91115126ad68f5.jpeg', '<div><strong>MUHAMMADIYAH.OR.ID, JAKARTA</strong> – Ketua Pimpinan Pusat (PP) Muhammadiyah, Syafiq Mughni menuturkan, proyek kemanusiaan yang dilakukan Muhammadiyah bukanlah sebuah awal, dan bukan juga akhir. Muhammadiyah saat ini berada di tengah-tengah, yang artinya proyek-proyek kemanusiaan yang dilakukan untuk perdamaian dunia masih terus berjalan hingga saat ini.<br><br></div><div>Pernyataan Syafiq tersebut dijelaskan dalam forum <em>Strategic Global Partnership for Palestine</em> dengan tema <em>Prospect of Palestine Peacebuilding Program and the Future of Gaza</em> pada Senin (16/12) bertempat di Hall Masjid At Tanwir Kantor PP Muhammadiyah Jakarta.<br><br></div><div>“Kita melihat situasi di Palestina dan Timur Tengah ini sebagai konsentrasi kita dan sejak awal Muhammadiyah sudah sangat konsen terhadap masalah kemanusiaan,”jelas Syafiq.<br><br></div><div>Pada kesempatan tersebut, Syafiq menjelaskan tentang beberapa program bantuan kemanusiaan yang dilakukan oleh Muhammadiyah, seperti program pendidikan dan pelatihan peningkatan kapasitas dalam usaha-usaha membangun perdamaian.<br><br>“Berbagai program telah diselenggarakan oleh Muhammadiyah. Kami mempunyai program bantuan kemanusiaan, program-program pendidikan seperti beasiswa yang diberikan khususnya untuk warga Palestina yang ingin belajar di Perguruan Tinggi Muhammadiyah ‘Aisyiyah (PTMA),” jelas Syafiq.<br><br></div><div>Selain itu, Muhammadiyah juga memiliki program pengembangan masyarakat dengan pelatihan peningkatan kapasitas khususnya bagi perempuan.<br><br>Usaha-usaha perdamaian tersebut terus di gaungkan oleh Muhammadiyah. Syafiq menjelaskan bahwa organisasi besar seperti Muhammadiyah tentunya memiliki peranan penting bukan hanya untuk bangsa namun juga untuk dunia. Dalam penanganan konflik, pendekatan psikologis sosial dinilai sangat penting. Syafiq juga berharap bahwa suatu hari nanti Palestina akan dapat bangkit dan diakui dunia sebagai negara yang merdeka dan berdaulat.<br><br></div><div>“Kita bisa melihat situasi krisis di Palestina dimana pendekatan psikologis sangat penting. Muhammadiyah sangat berperan di sini. Bayangkan bagaimana situasinya jika kita keluar di tengah konflik maka pasti akan sangat berdampak besar. Oleh sebab itu, pendekatan psikologis sosial sangat diperlukan untuk usaha-usaha perdamaian di negara yang terkena konflik seperti di Palestina,”imbuhnya.<br><br></div><div>Terlihat hadir pada acara tersebut, Duta Besar Palestina untuk Indonesia Zuhair Al-Shun, Ketua Lazismu Pusat Ahmad Imam Mujadid Rais, Sekretaris LHKI PP Muhammadiyah Yayah Khisbiyah, dan Adeb Salem selaku perwakilan dari <em>The Organization of Islamic Cooperation (OIC)</em>, serta Kayed Al Meary yang berasal dari Witnes-Syahid Palestine<em>.<br></em><br></div><div>Dalam acara tersebut, Zuhair sangat mengapresiasi usaha-usaha Indonesia dan Muhammadiyah dalam usaha-usaha untuk mendukung Palestina. Dalam pidatonya Zuhair berharap bahwa konflik panjang tersebut bisa terselesaikan dan Palestina akan menjadi negara yang merdeka.<br><br></div><div>“Saya harap program ini dapat sukses dalam mendukung kemerdekaan palestina. Indonesia adalah negara yang sangat hebat dan indah yang selalu mendukung Palestina dari lubuk hatinya. Terimakasih untuk Indonesia, terimakasih juga untuk Muhammadiyah. Insyaallah Palestina akan bebas dan merdeka. Mari kita bersama-sama menyelamatkan Palestina,”ungkapnya. <strong>(bhisma)<br></strong><br></div>', 'MUHAMMADIYAH.OR.ID, JAKARTA – Ketua Pimpinan Pusat (PP) Muhammadiyah, Syafiq Mughni menuturkan, proyek kemanusiaan yang dilakukan Muhammadiyah bukanlah sebuah awal, dan bukan juga akhir. Muhammadiyah...', 1, NULL, '2024-12-16 15:36:25', '2024-12-16 15:36:25', 17),
(21, 'Tegal Muhammadiyah University Siapkan Beasiswa Bagi Influencer', '8bc77f081b75877272a497e0c594f3b44cf226e16196d9e98da48ce34fb3dc50.jpeg', '<div><strong>MUHAMMADIYAH.OR.ID, TEGAL –</strong> Rektor Tegal Muhammadiyah University (TMU) Jebul Suroso menekankan pentingnya memberikan akses pendidikan tinggi berkualitas kepada generasi muda.<br><br></div><div>“TMU berkomitmen untuk menyediakan pendidikan yang unggul dan inklusif. Melalui program PMB ini, kami berharap dapat menarik mahasiswa-mahasiswa berprestasi dari seluruh Indonesia,” ujarnya pada Sabtu (14/12) dalam peluncuran program Penerimaan Mahasiswa Baru (PMB) untuk tahun ajaran 2025/2026.<br><br></div><div>Untuk menarik minat calon mahasiswa, TMU menawarkan berbagai program beasiswa, termasuk beasiswa jalur Influencer dan pengurus OSIS. Beasiswa Influencer ditujukan bagi siswa yang memiliki pengikut media sosial dengan kriteria minimal: Instagram 10.000 pengikut, TikTok 15.000.000 pengikut, dan YouTube 5.000 pengikut. Setelah diterima, penerima beasiswa akan memiliki kewajiban untuk mempromosikan TMU melalui platform media sosial mereka.<br><br></div><div>“Beasiswa ini adalah bentuk apresiasi kami terhadap dedikasi dan kreativitas siswa. Kami yakin mereka dapat membawa perubahan positif bagi masyarakat,” tambahnya.<br><br>TMU menargetkan untuk menerima 500 mahasiswa baru pada tahun ajaran 2025/2026. Berbagai persiapan telah dilakukan untuk mencapai target ini, termasuk peningkatan fasilitas kampus, peningkatan kualitas tenaga pengajar, serta sosialisasi ke berbagai sekolah dan komunitas.<br><br></div><div>Hadirnya TMU juga mendapat apresiasi dari Pj Wali Kota Tegal, Agus Dwi Sulistyantono.<br><br></div><div>Kami sangat mengapresiasi upaya TMU dalam menyediakan pendidikan tinggi yang berkualitas bagi masyarakat Tegal. Semoga TMU terus berkembang dan memberikan kontribusi positif bagi perkembangan pendidikan di daerah ini,” ujarnya.<br><br>Dengan peluncuran PMB ini, diharapkan TMU dapat terus berperan aktif dalam mencerdaskan kehidupan bangsa dan mencetak lulusan yang kompeten serta siap bersaing di era global. Semoga target 500 mahasiswa baru pada tahun ajaran 2025/2026 dapat tercapai dan TMU semakin berkembang dan maju.</div>', 'MUHAMMADIYAH.OR.ID, TEGAL – Rektor Tegal Muhammadiyah University (TMU) Jebul Suroso menekankan pentingnya memberikan akses pendidikan tinggi berkualitas kepada generasi muda.“TMU berkomitmen untuk men...', 1, NULL, '2024-12-16 15:39:20', '2024-12-16 15:39:20', 17),
(22, 'Iran berhak membela diri terhadap tindakan agresi rezim zionis Israel', 'f014dc9bb7cf0b5284368c1e150ce37d493046caf34a58c6dbf261c1ee9fe080.png', '<div>Teheran (ANTARA) - Kementerian Luar Negeri Iran mengatakan bahwa Republik Islam berhak dan berkewajiban untuk membela diri terhadap tindakan agresi rezim Zionis yang terjadi pada Sabtu dini hari.<br><br></div><div>Dalam pernyataan yang dikeluarkan Sabtu, Kementerian Luar Negeri Iran bereaksi terhadap serangan udara rezim Israel pada Sabtu dini hari terhadap Iran.<br><br></div><div>Kantor hubungan masyarakat komando pertahanan udara Iran mengeluarkan pernyataan pada Sabtu mengumumkan bahwa serangan udara Israel terhadap pusat-pusat militer di Teheran, provinsi barat Ilam, dan provinsi barat daya Khuzestan telah dicegat dan berhasil ditangkal dengan baik.<br><br></div><div>Sesuai dengan hak yang melekat untuk pertahanan yang sah, yang diabadikan dalam Pasal 51 Piagam Perserikatan Bangsa-Bangsa (PBB), Iran berkewajiban dan berhak untuk membela diri terhadap tindakan agresi asing, demikian bunyi pernyataan tersebut.<br><br></div><div>Iran dengan tegas mengutuk tindakan agresif rezim Zionis terhadap beberapa pusat militer di Iran, menganggapnya sebagai pelanggaran yang jelas terhadap hukum internasional dan Piagam PBB, khususnya prinsip pelarangan ancaman atau penggunaan kekuatan terhadap integritas teritorial dan kedaulatan nasional suatu negara, tambahnya.<br><br></div><div>Sebagaimana ditegaskan oleh otoritas terkait Republik Islam, Kementerian Luar Negeri mengatakan, berdasarkan hak yang melekat atas pembelaan yang sah, yang juga tercantum dalam Pasal 51 Piagam PBB, Iran berhak dan berkewajiban untuk membela diri terhadap agresi Israel.<br><br></div><div>Menyerukan untuk memaksimalkan semua kemampuan material dan spiritualnya guna mempertahankan keamanan dan kepentingan vitalnya serta mengakui tugasnya terhadap perdamaian dan stabilitas regional, Republik Isalm mengingatkan negara-negara regional tentang tanggung jawab individu dan kolektif mereka untuk menjaga perdamaian dan stabilitas di kawasan tersebut, sorot pernyataan itu.<br><br></div><div>Iran berterima kasih kepada semua negara yang cinta damai di kawasan dan negara-negara lain yang telah menyatakan rasa jijik terhadap dan mengutuk tindakan agresif rezim Israel dengan mengakui situasi kritis tersebut, menurut pernyataan itu lebih lanjut.<br><br></div><div>Kelanjutan pendudukan, tindakan ilegal, dan kekejaman Israel di kawasan tersebut, terutama genosida terhadap Palestina dan agresi terhadap Lebanon, yang didukung oleh AS dan beberapa negara Barat lainnya, merupakan penyebab utama ketegangan dan ketidakamanan di kawasan tersebut, pernyataan tersebut menggarisbawahi.<br><br></div><div>Pernyataan tersebut juga mendesak tanggung jawab negara-negara anggota PBB, konvensi larangan genosida dan hukum kemanusiaan internasional untuk mengambil langkah segera guna menghentikan perang genosida dan agresi terhadap Gaza dan Lebanon serta mengakhiri hasutan perang rezim Zionis.<br><br></div><div>Pernyataan itu pun mendesak negara-negara anggota Konvensi Pencegahan dan Penghukuman Kejahatan Genosida serta negara-negara anggota Konvensi Jenewa 1949 untuk mengambil langkah yang sama.<br><br></div><div>Sumber: IRNA-OANA<br><br></div>', 'Teheran (ANTARA) - Kementerian Luar Negeri Iran mengatakan bahwa Republik Islam berhak dan berkewajiban untuk membela diri terhadap tindakan agresi rezim Zionis yang terjadi pada Sabtu dini hari.Dalam...', 2, NULL, '2024-12-16 15:42:33', '2024-12-16 15:44:15', 17),
(23, 'HNW dorong realisasi zakat untuk mahasiswa muslim Timur Tengah', '7095900c46a749394375eca7e9dababb16e5be8cf40665ab2f02a2ce266f1937.png', '<div>Jakarta (ANTARA) - Wakil Ketua Majelis Permusyawaratan Rakyat (MPR) RI Hidayat Nur Wahid (HNW) mendorong realisasi zakat bagi mahasiswa muslim, yang sedang menempuh pendidikan perguruan tinggi Islam di Timur Tengah, dalam rangka program penyiapan kader-kader ulama.<br><br></div><div>\"Mereka layak mendapatkan bagian zakat sebagai kelompok <em>fi sabilillah,</em> yaitu satu dari delapan kelompok yang berhak menerima zakat,\" kata Hidayat Nur Wahid dalam keterangan tertulis yang diterima di Jakarta, Selasa.<br><br></div><div>Dorongan itu juga diperkuat dengan kondisi mahasiswa muslim asal Indonesia di berbagai negara Timur Tengah, seperti Pakistan, Yaman, Mesir, Sudan, Maroko, Yordania dan Turki, yang terdampak COVID-19, termasuk kondisi ekonomi keluarga yang membiayainya.<br><br></div><div>\"Saya sering menerima keluhan mereka yang meminta bantuan dan kehadiran negara di tengah kesulitan yang dihadapi, akibat meluasnya dampak COVID-19,\" tambahnya.<br><br></div><div>Merujuk pada kondisi tersebut, Hidayat mendorong adanya peningkatan alokasi dana zakat bagi para mahasiswa, sekaligus dalam rangka kaderisasi ulama.<br><br></div><div>Dengan adanya alokasi dana zakat tersebut, tambahnya, maka kesinambungan peran para ulama di masa depan dapat terjaga.<br><br></div><div>\"Ini tentu saja agar pengamalan sila pertama Pancasila, yakni Ketuhanan Yang Maha Esa, tetap terus terjaga,\" tukasnya.<br><br></div><div>Dalam rapat kerja dengan Menteri Agama pada 8 April 2020, Hidayat telah menyampaikan usulan tersebut. Bahkan, sudah ada keputusan yang disepakati bersama untuk membantu mahasiswa Indonesia yang terdampak COVID-19 di perguruan tinggi agama luar negeri.<br><br></div><div>Hidayat juga menyambut baik program Beasiswa Cendekia Luar Negeri dan Kaderisasi 1.000 Ulama dari Badan Amil Zakat Nasional (Baznas), yang sudah disalurkan ke beberapa negara, di antaranya Malaysia, Mesir dan India.<br><br></div><div>Dia berharap penyaluran program beasiswa itu harus optimal, karena jumlah mahasiswa penerima masih jauh di bawah 1.000 sebagaimana program yang dicanangkan.<br><br></div><div>Untuk mengatasi hal tersebut, Hidayat berharap Baznas dan lembaga amil zakat lain di bawah Kementerian Agama turut merealisasikan dan menyukseskan program tersebut.<br><br></div><div>\"Apalagi, dana ziswaf (zakat, infak, sedekah, wakaf) yang dikumpulkan sepanjang 2021 mencapai Rp14,1 triliun,\" kata politisi senior Partai Keadilan Sejahtera (PKS) tersebut.<br><br></div><div>Sementara itu, Ketua Baznas Noor Achmad sependapat dengan usul Hidayat. Dia Noor Achmad mengatakan Baznas akan menyiapkan mekanisme teknis terkait hal itu.<br><br></div><div>Baznas dan Badan Wakaf Indonesia (BWI) diminta meningkatkan cakupan program yang lebih nyata dan menyentuh masyarakat, antara lain bantuan bagi mahasiswa perguruan tinggi Islam di luar negeri.<br><br></div><div>\"Kami setuju dan juga telah bertemu mereka. Kami siap membantu, baik melalui program di Baznas pusat maupun di Baznas daerah,\" ujar Noor Achmad.<br><br></div>', 'Jakarta (ANTARA) - Wakil Ketua Majelis Permusyawaratan Rakyat (MPR) RI Hidayat Nur Wahid (HNW) mendorong realisasi zakat bagi mahasiswa muslim, yang sedang menempuh pendidikan perguruan tinggi Islam d...', 2, NULL, '2024-12-16 15:46:56', '2024-12-16 15:46:56', 17),
(24, 'Selama Ramadan, Aisyiyah Kota Batam Selenggarakan Berbagai Kegiatan Sosial untuk Ummat', '774c1d52d795cfd42990dc9cc7e52965aeb8d6029062b6245344dbafaf51391f.jpg', '<div><a href=\"https://radarhukum.id/tag/batam/\"><strong>Batam</strong></a><strong>, </strong><a href=\"http://radarhukum.id/\"><strong>Radarhukum.id</strong></a> – Ramadan merupakan bulan penuh berkah yang dinanti-nantikan umat Islam. Bulan Ramadan banyak diisi dengan berbagai kegiatan positif demi meningkatkan ketakwaan dan kesalihan. Dalam pandangan <a href=\"https://radarhukum.id/tag/muhammadiyah/\">Muhammadiyah</a>, kesalihan tidak hanya terbatas pada individu, tetapi juga melibatkan keluarga, masyarakat, bahkan bernegara. Dalam upaya meningkatkan kesalihan sosial-masyarakat, pada Ramadan 1445 Hijriah ini, Pimpinan Daerah <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> (<a href=\"https://radarhukum.id/tag/pda/\">PDA</a>) Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> mengadakan sejumlah kegiatan yang menyentuh langsung kepada ummat.<br><br>Ketua Pimpinan Daerah <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, Ir. <a href=\"https://radarhukum.id/tag/indrastuti/\">Indrastuti</a> menyampaikan, beberapa kegiatan telah berhasil dilaksanakan <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, termasuk pengajian bulanan, pembagian takjil, penyediaan dapur umum, buka bersama keluarga besar <a href=\"https://radarhukum.id/tag/muhammadiyah/\">Muhammadiyah</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, dan pemberian hampers untuk <a href=\"https://radarhukum.id/tag/guru/\">guru</a> TK.<br><br></div><div>“Pengajian bulanan, merupakan agenda rutin Majelis Tabligh <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>. Untuk bulan Ramadhan kali ini, dilaksanakan pada tanggal 7 Ramadan di <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> Center, Tiban, Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, dengan Ustadz Subur sebagai penceramahnya,” ujar Ketua <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> melalui keterangan tertulis.<br><br>Selain itu, diterangkan <a href=\"https://radarhukum.id/tag/indrastuti/\">Indrastuti</a>, Majelis Kesejahteraan Sosial <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> juga menginisiasi pembagian takjil dan paket sembako kepada masyarakat sekitar, yang dilakukan setelah pengajian Ramadan di <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> Center, Tiban.<br><br></div><div>“Tak hanya itu, Majelis Kesejahteraan Sosial <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> juga mengadakan dapur umum, memasak satu bulan penuh untuk menyediakan paket berbuka puasa bagi jama\'ah di Masjid Prof. Dr. Hamka, Komplek Dakwah <a href=\"https://radarhukum.id/tag/muhammadiyah/\">Muhammadiyah</a> Asean, <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, dengan dana berasal dari para muhsinin,” jelas <a href=\"https://radarhukum.id/tag/indrastuti/\">Indrastuti</a>.<br><br><a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>, tambahnya, juga aktif dalam kegiatan buka bersama keluarga besar <a href=\"https://radarhukum.id/tag/muhammadiyah/\">Muhammadiyah</a>, serta berbagi kebahagiaan dengan membagikan bingkisan lebaran kepada <a href=\"https://radarhukum.id/tag/guru/\">guru</a> TK ABA.<br><br></div><div>“Majelis <a href=\"https://radarhukum.id/tag/pendidikan/\">Pendidikan</a> Dasar PAUD dan Menengah <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> mengadakan silaturahmi antar <a href=\"https://radarhukum.id/tag/guru/\">Guru</a> TK ABA dan RTQ se-Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> di Masjid Prof. Hamka pada tanggal 5 April 2024. Di akhir acara, <a href=\"https://radarhukum.id/tag/pda/\">PDA</a> bersama Lazismu Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> membagikan hampers kepada <a href=\"https://radarhukum.id/tag/guru/\">Guru</a> TK ABA dan RTQ,”<br><br></div><div>Ketua <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> berharap, apresiasi untuk <a href=\"https://radarhukum.id/tag/guru/\">guru</a> TK ABA tersebut bisa menambah semangat mereka untuk mendidik para siswa dalam rangka menyiapkan generasi penerus bangsa yang unggul berdasarkan iman dan taqwa, sebagaimana visi dibentuknya TK ABA.<br><br></div><div>Dia menambahkan, sebagai bagian dari Organisasi Otonom Muhammmadiyah,&nbsp; <a href=\"https://radarhukum.id/tag/aisyiyah/\">Aisyiyah</a> <a href=\"https://radarhukum.id/tag/batam/\">Batam</a> akan terus memberikan kontribusi positif untuk ummat dan umumnya untuk masyarakat Kota <a href=\"https://radarhukum.id/tag/batam/\">Batam</a>.<br><br></div>', 'Batam, Radarhukum.id – Ramadan merupakan bulan penuh berkah yang dinanti-nantikan umat Islam. Bulan Ramadan banyak diisi dengan berbagai kegiatan positif demi meningkatkan ketakwaan dan kesalihan. Dal...', 5, NULL, '2024-12-16 15:50:04', '2024-12-16 15:50:04', 17),
(25, 'Musyda, Zarmi Mazridanto Pimpin PDM Kota Batam Periode 2022-2027', '56ed95d71ae8afc314aaff03ce76e793e801d970cd9ac1af10c516bc88c444de.jpg', '<div><strong>BATAM, Suara Muhammadiyah</strong> – H. Zarmi Mazridanto terpilih sebagai Ketua Pimpinan Daerah Muhammadiyah (PDM) Kota Batam, Provinsi Kepulauan Riau untuk periode 2022-2027.<br><br></div><div>H. Zarmi yang sebelumnya menjabat Ketua Pimpinan Cabang Muhammadiyah (PCM) Kecamatan Bengkong tersebut meraih 82 suara dari 94 pemilih dalam Musyawarah Daerah (Musda) ke-VI PDM Kota Batam yang digelar di Sekretariat Muhammadiyah Kota Batam, Tembesi, Ahad (14/5/2023).<br><br>Ketua Pimpinan Wilayah Muhammadiyah Provinsi Kepulauan Riau Drs. Huzaifa Dadang dalam sambutannya saat pembukaan Musda kemarin mengatakan, Musda pada prinsipnya adalah ajang bersilaturahmi dan bergembira antar Kader Muhammadiyah.<br><br></div><div>“Jika terjadi perbedaan pendapat, itu adalah hal biasa dalam Persyarikatan atau organisasi,” ujarnya.<br><br></div><div>Selain bersilaturahmi, kata Dadang, tentu akan dilakukan pemilihan kepemimpinan. Ia berharap, ketua dan unsur pimpinan yang terpilih dapat membawa Muhammadiyah Batam kian lebih baik.<br><br></div><div>“Untuk program kerja nanti dapat kita pilah mana yang bisa kita aplikasikan dari hasil Muktamar Muhammadiyah ke-48 kemarin,” ujarnya.<br><br></div><div>Ketua PDM Terpilih, Zarmi Mazridanto mengucapkan terimakasih atas kontribusi semua pihak sehingga Musda dapat berjalan dengan lancar.<br><br></div><div>Ia berharap, usai Musda ini, semua Kader Muhammadiyah di Kota Batam dapat terus bergandengan tangan untuk memajukan persyarikatan.<br><br></div><div>“Mari kita rajut kekompakan untuk memajukan Muhammadiyah Kota Batam. Tidak ada lagi kubu A dan kubu B, semua kita kader Muhammadiyah Batam perannya ditunggu serta dibutuhkan oleh Persyarikatan dan ummat,” sebutnya. (Ifan/Riz)<br><br></div>', 'BATAM, Suara Muhammadiyah – H. Zarmi Mazridanto terpilih sebagai Ketua Pimpinan Daerah Muhammadiyah (PDM) Kota Batam, Provinsi Kepulauan Riau untuk periode 2022-2027.H. Zarmi yang sebelumnya menjabat...', 3, NULL, '2024-12-16 15:54:08', '2024-12-16 15:54:08', 17),
(26, 'Hadiri Musyda ke-6 Muhammadiyah Batam, Jefridin: Terus Bawa Manfaat Wujudkan Batam Kota Baru yang Baldatun Thayyibatun Wa Rabbun Ghofur', '492904bd9f57723aa5b8eea12c9b9277a9ddbae505acc0256e4090cb2cca3934.jpg', '<div><strong>MC Pemko Batam</strong> – Mewakili Wali Kota Batam Muhammad Rudi, Sekretaris Daerah (Sekda) Kota Batam Jefridin M.Pd menghadiri Musyawarah Daerah (Musyda) Pimpinan Daerah Muhammadiyah (PDM) Kota Batam di Aula Pusat Informasi Haji (PIH) Kota Batam, Sabtu (13/5/2023).<br><br></div><div>Musyawarah yang disejalankan dengan silaturahmi dan halal bihalal tersebut, mengusung tema ‘Dengan semangat berkemajuan Kita Wujudkan Batam Kota Baru yang Baldatun Thayyibatun Wa Rabbun Ghofur’.<br><br></div><div>Di kesempatan tersebut, Jefridin menyebutkan bahwa sejatinya tema yang diusung dalam kegiatan ini sejalan dengan cita-cita pengembangan Batam di era kepemimpinan Muhammad Rudi.<br><br></div><div>“Walikota Muhammad Rudi sedang fokus mewujudkan Batam Kota Baru. Dan visi Batam sendiri kita ketahui menjadi Bandar Dunia Madani yang Modern dan Sejahtera,” ucap Jefridin sembari tak lupa menyampaikan salam walikota kepada warga Muhammadiyah Kota Batam yang hadir.<br><br></div><div>Ia menyebutkan, bersama kekuatan atau kelompok sosial lainnya, Muhammadiyah telah memberikan sumbangsihnya bagi pengembangan Batam dan Kepri khususnya dan Indonesia pada umumnya.<br><br></div><div>Untuk itu ia berharap, sebagai salah satu ormas Islam terbesar di Indonesia ini, Muhammadiyah terus andil dengan potensinya ikut andil dalam menyukseskan pembangunan fisik maupun nonfisik.<br><br></div><div>“Alhamdulilah selama ini kepengurusan telah menjalin kerjasama yang baik. Beliau minta untuk terus mendukung pembangunan, mudah-mudahan pengurus selanjutnya tetap berkolaborasi,” harap dia.<br><br></div><div>Memungkasi sambutannya, Jefridin mengucapkan selamat menyelenggarakan Musyda ke-6 kepada warga Muhammadiyah.<br><br></div><div>Ia berharap pimpinan baru yang kelak terpilih dapat menghadirkan dan menjalankan program yang bernas bagi Batam.<br><br></div><div>“Dari pengurus yang kolektif kolegial ini,&nbsp; Insha Allah melahirkan program yang bernas dan itu harapan kita semua. Sejauh ini sumbangsih Muhammadiyah sudah bagus, bersama ormas-ormas lainnya telah mendukung pembangunan Kota Batam ini yang kita cintai ini,” pungkasnya.<br><br></div><div><br></div>', 'MC Pemko Batam – Mewakili Wali Kota Batam Muhammad Rudi, Sekretaris Daerah (Sekda) Kota Batam Jefridin M.Pd menghadiri Musyawarah Daerah (Musyda) Pimpinan Daerah Muhammadiyah (PDM) Kota Batam di Aula...', 4, NULL, '2024-12-16 15:59:25', '2024-12-16 15:59:25', 17),
(27, 'Kolaborasi, ‘Aisyiyah Burikan Gelar Pengajian dan Pengukuhan NA', '105c8a3e7d19fc2cde2b3e12d453a063d32c5f2fef92016801e169a6f5f88cea.jpg', '<div><strong>KUDUS, Suara Muhammadiyah – </strong>Pimpinan Ranting ‘Aisyiyah Burikan Kota Kudus seukses menggelar pengajian ‘Aisyiyah dan pengukuhan Pimpinan Ranting Nasyiatul ‘Aisyiyah Burikan pada Jum’at, 27 September 2024. Acara yang berlangsung khidmat di Musholla Nurul Yaqin Burikan ini dihadiri oleh pimpinan, anggota dan simpatisan ‘Aisyiyah Burikan dan sekitarnya.<br><br></div><div>Dalam kesempatan ini, Pimpinan Cabang Nasyiatul ‘Aisyiyah Kota Kudus, Novi Hidayati Noor Rumayani, S.Pd.I. menyampaikan apresiasi atas difasilitasinya pengukuhan PRNA Burikan. “Semoga hal ini menjadi langkah nyata yang berkelanjutan dalam memperkuat proses kaderisasi ‘Aisyiyah terutama di Ranting Burikan dan di Kabupaten Kudus secara keseluruhan.&nbsp; Kepada ketua PRNA terpilih, Nabila Zahida, S.Pd. beserta jajarannya selamat mengemban Amanah. Semoga Allah SWT senantiasa memberikan kekuatan, hikmah dan kemudahan dalam menjalankan tugas dan membawa PRNA Burikan semakin maju dan berkontribusi nyata bagi sesama.“ Demikian disampaikan oleh ketua PCNA Kota Kudus yang juga sebagai guru di MI Muhammadiyah I Kudus.<br><br>“Dengan penuh rasa Syukur, telah kita saksikan pengukuhan Pimpinan Ranting Nasyiatul ‘Aisyiyah Burikan ini dilakukan setelah pengukuhan PRNA Jetak Kembang, dan nanti akan disusul oleh PR NA Kerjasan. Harapannya, semangat kaderisasi Naysiatul ‘Aisyiyah di Kota Kudus semakin berkobar dan melahirkan generasi muda yang berkualitas dan dapat menjadi contoh bagi ranting-ranting lainnya dalam menjalankan program yang bermanfaat bagi umat,” papar bu Novi.<br><br></div><div>Hj. Khosifah, S.Pd.I. dalam tausyiahnya menyampaikan, “Perempuan dan laki-laki sama-sama sebagai hamba Allah, yang keduanya memiliki kedudukan setara dan memiliki fungsi ibadah. Yang membedakan kedudukan keduanya di hadapan Allah hanyalah kualitas iman, takwa, pengabdian kepada Allah dan amal salihnya, sebagaimana disebutkan dalam QS Adz Dzariyat: 56. Terkait dengan nilai-nilai kesetaraan tersebut, seharusnya dijadikan sebagai dasar utama untuk meraih prestasi dan kesuksesan bagi laki-laki dan perempuan kita harus memandang hidup penuh optimis dan tidak mudah berputus asa dari rahmat Allah SWT. “<br><br></div><div>“Kaderisasi Nasyiatul ‘Aisyiyah bertujuan untuk mengembangkan potensi seluruh anggota, semuanya memiliki kesempatan yang sama untuk berkontribusi dan meraih prestasi. Dengan kaderasisasi, dapat mendorong untuk aktif berperan dalam masyarakat, mengembangkan diri, serta mencapai tujuan hidup,” demikian lanjut Hj. Khosifah, S.Pd.I. yang juga sebagai wakil Ketua PDA Kabupaten Kudus. (<strong>NabilaZ</strong>).<br><br></div>', 'KUDUS, Suara Muhammadiyah – Pimpinan Ranting ‘Aisyiyah Burikan Kota Kudus seukses menggelar pengajian ‘Aisyiyah dan pengukuhan Pimpinan Ranting Nasyiatul ‘Aisyiyah Burikan pada Jum’at, 27 September 20...', 5, NULL, '2024-12-16 16:03:52', '2024-12-16 16:03:52', 17),
(28, 'Bahlil Sebut Muhammadiyah Bakal Garap Tambang Eks Adaro', '016ddebdd7b5069b851a6e3d04354ce49c1128f87a9df6526691a279236cacc4.jpeg', '<div>Jakarta - Menteri ESDM Bahlil Lahadalia menyatakan PP Muhammadiyah bakal segera menerima izin pengelolaan tambang eks Perjanjian Karya Pengusahaan Pertambangan Batubara (PKP2B). Muhammadiyah akan menggarap PKP2B eks Adaro Energy.<br>Dia mengaku izin pengelolaan tambang itu hampir rampung, namun sudah bisa dipastikan Muhammadiyah akan menggarap tambang bekas Adaro.<br><br>\"Eks PKP2B kemungkinan besar kalau saya nggak lupa itu punya Adaro kemungkinan besar,\" kata Bahlil kepada wartawan ketika ditanya nasib izin tambang Muhammadiyah Balikpapan, Kalimatan Timur pada Sabtu (14/1/2024) yang lalu.<br><br>\"Nanti saya cek lagi ya tinggal nunggu apanya lupa karena banyak sekali kerjaan ini,\" katanya melanjutkan.<br><br>Sebelumnya, Ketua Bidang Ekonomi, Bisnis, dan Industri Halal PP Muhammadiyah, Muhadjir Effendy mengatakan pihaknya mendapatkan tawaran menggarap tambang di tiga wilayah PKP2B dari Kementerian ESDM, eks tambang Adaro Energy, Kideco Jaya Agung, atau Arutmin.<br><br>\"Mengenai di mana yang kami pilih, dari yang sudah diumumkan oleh Pak Bahlil itu sudah kami survei. Kami sudah bentuk survei internal untuk melihat di Adaro, Kideco, Arutmin, jadi kami sudah bentuk tim untuk survei internal kami,\" ungkap Muhadjir ditemui di Kompleks Istana Kepresidenan, Jakarta Pusat, Jumat (18/10/2024) yang lalu.<br><br>Sejalan dengan itu, pihaknya juga terus mempersiapkan badan usaha khusus untuk menangani bisnis tambang Muhammadiyah. Akan ada satu perusahaan induk tambang Muhammadiyah dan juga satu perusahaan operator tambang yang akan dibentuk.<br><br>\"Saya tidak ingin kami menerima tambang, kemudian ternyata yang mengerjakan bukan kami. Maka kami bentuk namanya ada sekarang ada strategic corporate dan ada operating corporate sudah kami bentuk,\" sebut Muhadjir.<br><br>Ditanya soal kapan target mulai menggarap tambang, Muhadjir nampak tak mau buru-buru. \"Masih jauh lah itu, ngeruk tambang belum,\" katanya.<br><br>IUP NU Sudah Keluar<br>Selain Muhamadiyah sudah ada juga PB Nadhlatul Ulama (NU) yang sudah menerima tawaran untuk menggarap lahan batu bara hasil penciutan lahan dari tambang PT Kaltim Prima Coal (KPC).<br><br>Khusus NU, Bahlil bilang Izin Usaha Pertambangannya sudah keluar. Kini tinggal bagaimana NU saja yang menentukan kapan mau memulai proses penambangan batu bara.<br><br>\"Sudah jalan, sudah selesai sudah IUP sudah keluar kalau nggak salah, jadi tinggal NU yang jalan saja,\" kata Bahlil.<br><br>Adapun berdasarkan informasi dari PBNU, kemungkinan lahan yang akan dikeruk batu baranya mencapai 26 ribu hektare pada lahan tambang eks KPC. NU menjadi ormas keagamaan pertama yang mendapatkan izin tambang dari pemerintah.<br><br>Seperti diketahui pemerintah memang menawarkan kesempatan bagi organisasi masyarakat keagamaan untuk mengelola eks tambang PKP2B. Tawaran ini diberikan sesuai Peraturan Pemerintah Nomor 25 Tahun 2024.<br><br>(hal/rrd)</div>', 'Jakarta - Menteri ESDM Bahlil Lahadalia menyatakan PP Muhammadiyah bakal segera menerima izin pengelolaan tambang eks Perjanjian Karya Pengusahaan Pertambangan Batubara (PKP2B). Muhammadiyah akan meng...', 1, NULL, '2024-12-16 16:17:48', '2024-12-16 16:17:48', 17),
(29, 'Ketum PP Muhammadiyah Soal Usulan Sertifikasi Pendakwah: Sebaiknya Tidak', '68fe4e7f407a2522cacefe29e14173ff8ced170015546f8a82ef75980171853d.jpeg', '<div>Jakarta - Buntut kasus Miftah Maulana Habiburrahman atau Gus Miftah mengolok-olok penjual teh, muncul usulan dari anggota Komisi VIII DPR Maman Imanulhaq agar seluruh juru dakwah di Indonesia disertifikasi. Ketua Umum PP Muhammadiyah Haedar Nashir merespons usulan tersebut.<br>Menurut Nashir, perlu ada kajian yang matang untuk merealisasikan usulan itu. Dia sendiri berpendapat tidak perlu ada sertifikasi bagi pendakwah atau ulama.<br><br>\"Dikaji secara matang (sertifikasi pendakwah), jangan langsung diputus. Bahkan sebaiknya tidak,\" kata Nashir dilansir detikJatim, Senin (9/12/2024).<br><br>Nashir mengatakan pemerintah harus mengambil keputusan dengan matang. Dia mengingatkan agar tidak menjadikan satu atau dua kasus sebagai acuan mengadakan sertifikasi pendakwah.<br><br>\"Sebaiknya segala hal dibahas dan diputuskan secara matang jangan karena satu dua kasus, lalu kita pilihannya verbal,\" ujarnya.<br><br>Menurutnya, yang paling penting untuk disertifikasi adalah kepala elite agama atau elite bangsa. Sebab, menurutnya, merekalah yang akan menjadi teladan.<br><br>\"Maka karena itu, kami berharap bahwa agama itu bisa menjadi suluh kehidupan, bukan menjadi entertainment dalam kehidupan kita,\" jelasnya.<br><br></div>', 'Jakarta - Buntut kasus Miftah Maulana Habiburrahman atau Gus Miftah mengolok-olok penjual teh, muncul usulan dari anggota Komisi VIII DPR Maman Imanulhaq agar seluruh juru dakwah di Indonesia disertif...', 1, NULL, '2024-12-16 16:23:06', '2024-12-16 16:23:06', 17),
(30, 'Menteri Mu\'ti Minta Muhammadiyah Bersinergi Wujudkan Pendidikan Bermutu', 'e10b2bc08e98bb6f01817df968dee5275bf632b0480b94ef00fb1425b148abdb.jpeg', '<div>Jakarta - Negara-negara dengan ekonomi yang maju biasanya memiliki sistem pendidikan yang berkembang dengan baik. Contohnya, Singapura dan Finlandia berhasil mencapai kemajuan berkat pendidikan yang berkualitas tinggi.<br>Hal ini disampaikan oleh Prof Dr Abdul Mu\'ti, Sekretaris Pimpinan Pusat Muhammadiyah, di depan peserta Sidang Tanwir Muhammadiyah yang berlangsung di Kupang pada 5 Desember 2024.<br><br>Sidang Tanwir ini merupakan pertemuan tingkat kedua setelah Muktamar, dihadiri oleh jajaran Pimpinan Pusat, Unsur Pembantu Pimpinan, Pimpinan Organisasi Otonom, serta Pimpinan Wilayah dari seluruh Indonesia, dengan tema \"Menghadirkan Kemakmuran untuk Semua.\"<br><br>Pendidikan yang berkualitas untuk semua adalah amanat dari UUD 1945, yang menyatakan bahwa setiap warga negara berhak mendapatkan pendidikan. Hal ini juga dikuatkan oleh UU Sisdiknas No. 20 Tahun 2023, yang menegaskan hak setiap warga negara untuk memperoleh pendidikan yang bermutu.<br><br>\"Terkait dengan penugasan saya di kabinet Merah Putih, sebagai Menteri Pendidikan Dasar dan Menengah, yang memiliki Pendidikan Bermutu untuk Semua, merupakan amanat UUD 1945 dan juga amanat dari UU Sisdiknas No 20 tahun 2023, bahwa setiap warga negara berhak mendapatkan pendidikan yang bermutu,\" ujar Mu\'ti yang juga Menteri Pendidikan Dasar dan Menengah (Mendikdasmen) dalam keterangan yang diterima detikedu, Jumat (6/12/2024).<br><br>Menteri Mu\'ti juga berharap agar Muhammadiyah dapat bersinergi dan berkolaborasi dalam mewujudkan visi tersebut. Harapan ini bukan tanpa dasar, karena Muhammadiyah telah terbukti menjadi pengelola lembaga pendidikan terbesar di Indonesia.<br><br>\"Perlu saya sampaikan secara nyata Muhammadiyah memiliki peran penting dalam pendidikan nasional. Jumlah sekolah swasta yang paling banyak di Indonesia adalah sekolah yang dikelola oleh Muhammadiyah, begitu pula jumlah murid swasta terbesar belajar di perguruan Muhammadiyah,\" jelasnya yang disambut tepuk tangan peserta.<br><br>Data per bulan April 2024 menunjukkan bahwa terdapat 1.054.000 murid yang belajar di sekolah-sekolah Muhammadiyah di seluruh Indonesia. Selain itu, Muhammadiyah juga memiliki jumlah guru terbanyak, termasuk di dalamnya guru-guru yang lulus dari PPPK. Dari lebih dari 110.000 guru yang lulus PPPK, lebih dari 10.000 di antaranya berasal dari Muhammadiyah.<br><br>Menteri Mu\'ti mengidentifikasi beberapa langkah yang dapat dilakukan bersama, salah satunya adalah program wajib belajar 13 tahun yang dimulai dari pendidikan pra-sekolah.<br><br>Pendidikan pra-sekolah yang paling banyak dijalankan adalah oleh Aisyiyah, yang menunjukkan bahwa keberhasilan program wajib belajar 13 tahun sangat bergantung pada peran ibu-ibu Aisyiyah melalui Taman Kanak-kanak Aisyiyah Bustanul Athfal.<br><br>Kerja sama lain dengan Muhammadiyah adalah menyediakan layanan pendidikan berkualitas untuk semua, khususnya di daerah 3T (tertinggal, terdepan, terluar).<br><br>Keberhasilan layanan pendidikan di daerah 3T memerlukan dukungan dari Lembaga Pengembangan Cabang Ranting dan Pembinaan Masjid (LPCRPM), Majelis Pemberdayaan Masyarakat (MPM), dan Lembaga Dakwah Khusus (LDK). Di daerah 3T, terdapat undang-undang yang mengatur satu desa satu PAUD, yang dapat dikelola oleh LPCRPM.<br><br>Menurut Mu\'ti, di daerah terpencil yang sulit dijangkau oleh layanan sekolah, pendekatan dapat dilakukan melalui relawan pendidikan atau relawan pengajar. Hal ini dapat bersinergi dengan LDK, di mana relawan tidak hanya mengajar tetapi juga berdakwah di kalangan komunitas.<br><br>Mu\'ti berharap agar program-program pendidikan dapat terus berjalan dengan dukungan yang memadai, dan hal ini tentu saja sangat dipengaruhi oleh kualitas pendidikan di sekolah-sekolah Muhammadiyah serta kualitas para guru Muhammadiyah.<br><br>\"Itulah beberapa hal yang akan saya sampaikan untuk nanti bisa menjadi sinergi bersama dalam memajukan pendidikan mewujudkan pendidikan bermutu menuju bangsa yang bermutu,\" ujar Mu\'ti.<br><br></div>', 'Jakarta - Negara-negara dengan ekonomi yang maju biasanya memiliki sistem pendidikan yang berkembang dengan baik. Contohnya, Singapura dan Finlandia berhasil mencapai kemajuan berkat pendidikan yang b...', 1, NULL, '2024-12-16 16:27:11', '2024-12-16 16:27:11', 17),
(31, 'Aisyiyah Tekankan Pentingnya Gerakan Perempuan Membangun Bangsa', '7ae4de8b37384edf2697ea4c9626c99980de18d0c53d61d7fdb8c8d1c3146a29.jpg', '<div><strong>JAKARTA</strong> - <a href=\"https://www.okezone.com/tag/aisyiyah\">Aisyiyah </a>menggelar sarasehan bertajuk Refleksi Gerakan Perempuan Menuju Indonesia yang Berkeadilan di Gedung PP Muhammadiyah Jakarta pada Jumat 22 November 2024. Kegiatan yang digelar menjelang Tanwir Aisyiyah 15-17 Januari 2025 itu dihadiri anggota dan perwakilan organisasi perempuan Indonesia.&nbsp;<br><br></div><div>Ketua Umum Pimpinan Pusat Aisyiyah, Salmah Orbayinah, mengungkapkan, Aisyiyah sebagai salah satu organisasi perempuan tertua dan terbesar di Indonesia memiliki peran penting dalam memperjuangkan hak-hak perempuan dan kesejahteraan keluarga. Sarasehan ini bukan hanya sebagai bagian kegiatan pra tanwir, tetapi juga untuk menyambut Hari Ibu, 22 Desember 2024 dan Kongres Wanita Indonesia (KOWANI) pada 4 Desember 2024 di Jakarta.&nbsp;<br><br>Dalam hal ini, Aisyiyah berperan aktif dalam membangun jaringan gerakan perempuan di Indonesia, termasuk berperan penting bagi berdirinya KOWANI pada 1965 sebagaimana disampaikan Ketua Umum KOWANI, Giwo Rubianto Wiyogo.<br><br></div><div>Tujuan kegiatan ini untuk menggali sejarah dan perkembangan gerakan perempuan di Indonesia dari masa ke masa; memahami kontribusi gerakan perempuan terhadap pembangunan nasional dalam berbagai bidang, terutama pendidikan, ekonomi, dan politik; meningkatkan kesadaran dan partisipasi masyarakat dalam mendukung kesetaraan gender dan pemberdayaan perempuan; dan menumbuhkan rasa solidaritas antar perempuan dan memperkuat jaringan gerakan perempuan di Indonesia.<br><br>Pakar Pendidikan Islam dan Peneliti Gerakan Perempuan, Masyitoh Chusnan, menuturkan perempuan memiliki peran penting baik secara domestik maupun publik. Dalam gerakan perempuan ini, setiap organisasi memiliki perannya sendiri dan KOWANI menjadi payung dalam gerakan perempuan dalam membangun bangsa melalui tiga pilar utama, yaitu pendidikan, kesehatan dan kesejahteraan sosial, di mana ketiga pilar tersebut tidak lepas dari berkeadilan.&nbsp;<br><br></div><div>Menurut Peneliti Ahli Utama Politik BRIN, Siti Zuhro, berkeadilan harus memberikan kontribusi bagi sesama. “Berkeadilan harus memberikan kontribusi bagi sesama. Berkeadilan artinya mewujudkan Indonesia yang baldatun toyyibatun warobbun ghofur, Indonesia yang gemah ripah loh jinawi, makmur, masyarakatnya Sejahtera,\" imbuhnya.<br><br></div><div>Aisyiyah memahami pentingnya peran gerakan perempuan dalam membangun bangsa, oleh karenanya sarasehan yang digelar kemarin bertujuan untuk memberikan pengetahuan dan pengertian kepada para perempuan Indonesia tentang gerakan perempuan Indonesia dari berbagai perspektif, termasuk sejarah, sosial, politik, dan kontribusi perempuan dalam pembangunan nasional dengan menghadirkan para ahli dan tokoh gerakan perempuan untuk sebuah diskusi berbagi pengetahuan dan pengalaman. Gerakan Dakwah, Tajdid, Ilmu, dan Amal merupakan wujud dari gerakan perempuan Islam berkemajuan, demikian diutarakan Siti Syamsiyatun, Ketua LPPA PP Aisyiyah.&nbsp;<br><br></div><div>“Ada tujuh karakter utama dalam konsep perempuan berkemajuan. Ketujuh karakter tersebut adalah iman dan takwa; taat beribadah; akhlak karimah; berpikir tajdid; bersikap wasathiyah, amaliyah sholihat, dan bersifat inklusif,” ujar Siti Syamsiyatun.<br><br><br></div>', 'JAKARTA - Aisyiyah menggelar sarasehan bertajuk Refleksi Gerakan Perempuan Menuju Indonesia yang Berkeadilan di Gedung PP Muhammadiyah Jakarta pada Jumat 22 November 2024. Kegiatan yang digelar menjel...', 5, NULL, '2024-12-16 16:29:53', '2024-12-16 16:29:53', 17),
(32, 'Muhammadiyah Luncurkan Produk AC, Bisa Ingatkan Waktu Salat', '006f82f755a33481153c309a2d3b045637baef81dda01a0011e275bf553df6d1.jpeg', '<div>Jakarta, CNN Indonesia -- PP Muhammadiyah meluncurkan produk pendingin udara bernama ACMU atau Air Conditioner (AC) Muhammadiyah dalam acara Tanwir Muhammadiyah di Kupang, Nusa Tenggara Timur (NTT) beberapa waktu lalu.<br>CEO PT Green Sinar Mentari Jaenudin menjelaskan bahwa ACMU mengadopsi teknologi inverter mutakhir.<br><br>\"ACMU merupakan AC bintang 5 yang memiliki efisiensi energi tinggi dan emisi karbon rendah. Ini sesuai dengan standar pemerintah,\" ujar Jaenudin di laman resmi Muhammadiyah.<br><br>Ia mengatakan ACMU dirancang dengan teknologi terkini untuk efisiensi energi dan kelestarian lingkungan. Dalam keterangan resminya, ACMU telah diuji di enam rumah sakit Muhammadiyah, dengan total pemasangan mendekati 1.000 unit sejak 2017.<br><br>Penghematan energi yang tercatat berkisar antara 17 persen hingga 26 persen, seperti di RS Islam Jakarta Cempaka Putih, RS Muhammadiyah Lamongan dan RS PKU Muhammadiyah Gamping<br><br>Salah satu fitur unggulan ACMU adalah pengingat waktu shalat yang terintegrasi. Pengguna akan dapat memilih tampilan visual jadwal shalat atau pengingat azan setiap waktu shalat. Fitur ini dirancang untuk membantu pengguna tetap fokus pada ibadah meski sedang beraktivitas.<br><br>ACMU diproduksi di Semarang. Saat ini, 90 persen bahan baku masih diimpor, namun perusahaan berkomitmen meningkatkan komponen dalam negeri seiring meningkatnya permintaan.<br><br>ACMU menawarkan garansi hingga 10 tahun-sebuah keunggulan yang jarang ditemui pada produk serupa.<br><br>Produk ini juga memiliki berbagai tipe, mulai dari AC split 1 PK, 1,5 PK, hingga AC cassette untuk keperluan ruangan besar. Harga ACMU bersaing, dengan AC 2 PK bintang 5 memiliki harga lebih terjangkau dibandingkan produk serupa di pasaran.<br><br><strong>(rzr/DAL)</strong><br><br></div>', 'Jakarta, CNN Indonesia -- PP Muhammadiyah meluncurkan produk pendingin udara bernama ACMU atau Air Conditioner (AC) Muhammadiyah dalam acara Tanwir Muhammadiyah di Kupang, Nusa Tenggara Timur (NTT) be...', 1, NULL, '2024-12-16 16:32:43', '2024-12-16 16:32:43', 17),
(33, 'Imam Besar Nabawi Akan Bertemu Jokowi & Pimpin Salat Jumat di Istiqlal', 'ed0a1dd2395079ef35ab2723dbacf80964685f4bc039796a76c464f726fb11fc.png', '<div>Jakarta, CNN Indonesia -- Imam Besar Masjid Nabawi Syekh Ahmad bin Ali Al-Hudhaify melakukan kunjungan ke Indonesia selama empat hari, mulai Selasa (7/10) ini hingga Jumat (11/10) nanti.<br>Syekh Ahmad akan menggelar pertemuan dengan sejumlah tokoh di Indonesia dari mulai Presiden RI Joko Widodo (Jokowi) hingga Majelis Ulama Indonesia (MUI).<br><br>Dia juga dijadwalkan akan menyampaikan khutbah dan menjadi imam salat Juamt di Masjid Istiqlal, Jakarta, pada kunjungan resminya ke RI ini.<br><br>Pada Selasa ini, Syekh Ahmad akan menggelar pertemuan dengan Pengurus Majelis Ulama Indonesia (MUI), lalu dilanjutkan dengan bertemu Menteri Agama RI Yaqut Cholil Qoumas.<br><br>Kemudian besok, Rabu (9/10), Syekh Ahmad bin Ali akan bertemu dengan Presiden Joko Widodo di Istana Negara, Jakarta. Setelah bersama Presiden, Syekh Ahmad melanjutkan kunjungannya untuk bertemu pengurus PBNU dan Dewan Dakwah Islamiyah Indonesia.<br><br>Pada Kamis (10/10), Syekh Ahmad akan ke Muhammadiyah dan bertemu dengan pengurus pusat ormas Islam tersebut. Dia lalu bakal mengisi ceramah umum di UIN Syarif Hidayatullah Jakarta.<br><br>Agenda Syekh Ahmad pada Kamis itu ditutup agenda kunjungan ke Ponpes Darujannah, Jakarta.<br><br>Pada hari terakhir di Indonesia, Syekh Ahmad bin Ali Al-Hudhaifi akan bertemu dengan pengurus Masjid Istiqlal dan dijadwalkan akan menjadi imam Shalat Jumat. Namun yang perlu dicatat, jadwal tersebut dapat berubah sewaktu-waktu.<br><br>Mengutip dari Antara, kunjungan Syekh Ahmad bin Ali ini dilakukan sesuai dengan arahan dan diawasi langsung Menteri Urusan Islam, Dakwah, dan Penyuluhan Arab Saudi Syaikh Abdul Latif bin Abdul Aziz Al-Syaikh, dengan tujuan menggaungkan pesan dua masjid suci dan memperkuat kerja sama antara Kerajaan Saudi dan negara-negara Islam.<br><br>\"Saya berterima kasih atas sambutan istimewa dari hadirin semua. Saya ingin menyampaikan bahwa saya sangat mencintai seluruh Muslim yang ada di Indonesia,\" ujar Imam Besar Masjid Nabi Muhammad SAW itu setibanya di Jakarta.<br><br>Direktur Jenderal Bimbingan Masyarakat Islam Kementerian Agama Kamaruddin Amin menyampaikan bahwa pada kunjungan kenegaraan yang dilakukan oleh Imam Besar Masjid Nabawi Syekh Ahmad ini untuk memperkuat silaturahmi antara Arab Saudi dan Indonesia.<br><br>\"Jadi ini sebagai bentuk silaturahmi dan kerja sama yang erat antara Arab Saudi dan Indonesia serta adanya keterkaitan emosional sebagai Imam Masjid Nabawi,\" katanya.<br><br>(Antara/kid)</div>', 'Jakarta, CNN Indonesia -- Imam Besar Masjid Nabawi Syekh Ahmad bin Ali Al-Hudhaify melakukan kunjungan ke Indonesia selama empat hari, mulai Selasa (7/10) ini hingga Jumat (11/10) nanti.Syekh Ahmad ak...', 1, NULL, '2024-12-16 16:35:37', '2024-12-16 16:35:37', 17),
(34, '3 Pelaku Pembunuhan Mahasiswa Muhammadiyah di Kendari Ditangkap', '9234a47991ccaa3810c1e1e1e2bd7719aaa1c69d4c78a97cae145ce54afab723.jpeg', '<div>Makassar, CNN Indonesia -- Polisi menangkap dua pria dan satu orang wanita yang diduga jadi pelaku pembunuhan mahasiswa Universitas Muhammadiyah, Laode Hartono (25). Mayat Laode ditemukan warga di Jalan KS Tubun, Kecamatan Baruga, Kota Kendari, Sulawesi Tenggara.<br>\"Iya, satu laki-laki dan satu perempuan telah ditangkap. Sementara satu lagi ditangkap di daerah Morowali, Sulteng,\" kata Kapolresta Kendari, Kombes Pol Aris Tri Yunarko dalam keterangannya, Senin (7/10).<br><br>Penangkapan ini bermula saat polisi menyelidiki laporan warga terkait adanya penemuan jasad seorang laki-laki dengan kondisi penuh luka di bagian kepala dan leher akibat benturan benda tumpul. Polisi akhirnya mengamankan pelaku EN dan seorang wanita inisial IN.<br><br>\"Setelah mengamankan kedua pelaku, kemudian dikembangkan ke pelaku lainnya yakni ER yang diketahui bersembunyi di Morowali dan berhasil menangkap pelaku. Jadi totalnya ada 3 orang pelaku,\" ungkapnya.<br><br>Polisi saat ini masih melakukan pemeriksaan untuk mengungkap motif ketiga pelaku menghabisi nyawa korban.<br><br>\"Saat ini, pelaku sedang menjalani pemeriksaan untuk mengungkap motif dan peran masing-masing pelaku,\" tuturnya.<br><br>Sebelumnya, jasad mahasiswa Muhammadiyah Kendari, bernama Laode Hartono (25) ditemukan warga di Jalan KS Tubun, Kecamatan Baruga, Kota Kendari, Sulawesi Tenggara, pada Jumat (4/10).<br><br>Kondisi mayat korban ditemukan sejumlah luka di bagian kepala dan leher yang diduga disebabkan akibat hantaman benda tumpul.<br><br>(mir/DAL)</div>', 'Makassar, CNN Indonesia -- Polisi menangkap dua pria dan satu orang wanita yang diduga jadi pelaku pembunuhan mahasiswa Universitas Muhammadiyah, Laode Hartono (25). Mayat Laode ditemukan warga di Jal...', 1, NULL, '2024-12-16 16:37:48', '2024-12-16 16:37:48', 17);
INSERT INTO `portalberitas` (`id`, `judul`, `image`, `body`, `excerpt`, `kategoriberita_id`, `published_at`, `created_at`, `updated_at`, `user_id`) VALUES
(35, 'CT dan NU-Muhammadiyah Silaturahmi ke Malaysia, Bertemu Anwar Ibrahim', 'fc437524c898cdbd5440313c6e879bcd6a082b09e2e26f06b504b0c4c01833ad.jpeg', '<div>Jakarta, CNN Indonesia -- Chairman CT Corp, Chairul Tanjung (CT) menjadi pembicara kunci dalam Forum Serantau Yayasan Pembangunan Ekonomi Islam Malaysia (YAPEIM) di Putrajaya, Malaysia, hari ini. Ia juga disambut hangat oleh Perdana Menteri (PM) Malaysia, Anwar Ibrahim.<br>CT datang ke Malaysia bersama rombongan pimpinan Ormas Islam di Indonesia, antara lain Rais Aam Nahdatul Ulama (NU) KH Miftachul Akhyar, Wakil Ketua MUI serta pimpinan Muhammadiyah Anwar Abbas, serta Mantan Menko Perekonomian Hatta Rajasa, dan Mantan Menteri Pendidikan dan Kebudayaan M Nuh.<br><br>CT juga didampingi Ketua Muhammadiyah Syafiq Abdul Mughni, Pengurus PBNU Mughits Al Irogi, CEO detikNetwork Abdul Aziz serta CEO Trans Retail Indonesia Shafie Shamsuddin.<br><br>Dalam kegiatan Forum Serantau, CT menyampaikan pidato bertajuk Kebangkitan Harimau Asia di Nusantara. Dia mengawali pidatonya dengan menjelaskan kondisi umat Islam di Asia Tenggara.<br><br>\"Negara-negara serantau itu memiliki Muslim populasi yang besar. Dalam data statistik terakhir yang saya miliki, kita itu memiliki 253 juta penduduk muslim, atau 42 persen populasi Asia Tenggara,\" ujar CT dalam Forum Serantau di Putrajaya, Malaysia, Selasa (1/10/2024).<br><br><br>CT kemudian menyoroti soal jumlah populasi Muslim di Indonesia yang mencapai 85 persen, tapi belum tercermin dalam hal penguasaan ekonomi.&nbsp;<br><br>CT pun menguraikan masalah bersama yang membuat umat muslim belum menjadi mayoritas dalam penguasaan ekonomi, yaitu kebodohan, kemalasan, kemiskinan, kesenjangan/ketertinggalan dan ketidakpedulian.<br><br>\"Nah, ini lah yang harus kita perangi, kita hilangkan,\" ujar CT.<br><br>Menurut CT, ada sejumlah hal yang dapat dilakukan untuk memperkuat posisi umat Muslim dalam perekonomian. Di antaranya ialah memberi akses pendidikan yang luas, meningkatkan kualitas pendidikan, peningkatan kualitas saranan dan prasarana pendidikan serta penguasaan teknologi.<br><br>Ia juga menegaskan bahwa kemiskinan tidak boleh diterima mentah-mentah sebagai takdir, tapi harus diperangi.&nbsp;<br><br><br><br></div><h1><strong>Hadiri jamuan Anwar Ibrahim</strong></h1><div>Selain menjadi pembicara, CT juga menghadiri jamuan dari PM Malaysia Anwar Ibrahim. Anwar mengatakan CT merupakan sahabatnya dan senang bisa menyambutnya di Malaysia.<br><br>\"Saya berbesar hati menerima kehadiran sahabat saya, Bapak Chairul Tanjung bersama dengan tokoh politik dan pimpinan pertubuhan Islam Indonesia petang ini di Seri Perdana, Putrajaya,\" ujar Anwar.<br><br>Anwar didampingi Menteri Dalam Negeri, Menteri Pendidikan Tinggi dan pejabat dari kementerian lain dalam jamuan tersebut. Dia mengatakan Indonesia dan Malaysia memiliki hubungan baik sejak dulu.<br><br>\"Saya singgung pengalaman silam sehingga kini mengenai hubungan baik dengan negara serumpun yakni Indonesia dan yakin ia akan terus berkekalan dan bertambah erat,\" ujarnya.<br><br>Di akun Instagramnya, Anwar juga mengunggah momen tengah berbicara santai dan tertawa bersama CT.<br><br>Dalam pertemuan ini juga dicapai kesepakatan kerja sama bidang pendidikan antara NU dan Muhammadiyah dengan lembaga nonprofit di Malaysia.<br><br><strong>(vws/vws)</strong></div>', 'Jakarta, CNN Indonesia -- Chairman CT Corp, Chairul Tanjung (CT) menjadi pembicara kunci dalam Forum Serantau Yayasan Pembangunan Ekonomi Islam Malaysia (YAPEIM) di Putrajaya, Malaysia, hari ini. Ia j...', 2, NULL, '2024-12-16 16:40:11', '2024-12-16 16:40:11', 17),
(36, 'Muhammadiyah Kritik DPR Abaikan MK: Harusnya Jadi Teladan', '694aa24583be1dd44e9d26068d15726ddc92be20206676e8da51caf64bab7b1b.jpeg', '<div>Jakarta, CNN Indonesia -- Sekretaris Umum Pimpinan Pusat Muhammadiyah Abdul Mu\'ti mengaku sulit memahami langkah dan keputusan DPR RI yang bertentangan dengan keputusan Mahkamah Konstitusi (MK) terkait dengan syarat usia dan ambang batas pencalonan kepala daerah.<br>\"Sebagai lembaga legislatif, DPR seharusnya menjadi teladan dan mematuhi undang-undang,\" tegas Mu\'ti lewat keterangan tertulis, Kamis (22/8).<br><br>Mu\'ti juga menekankan DPR sebagai lembaga negara yang merepresentasikan kehendak rakyat semestinya menghayati betul dasar-dasar bernegara yang mengedepankan kebenaran, kebaikan, dan kepentingan negara dan rakyat dibanding dengan kepentingan politik kekuasaan semata.<br><br>\"DPR sebagai pilar Legislatif hendaknya menghormati setinggi-tingginya lembaga Yudikatif, termasuk Mahkamah Konstitusi,\" jelas Mu\'ti.<br><br><br>Menurut Mu\'ti DPR tidak semestinya berseberangan, berbeda, dan menyalahi keputusan MK dalam masalah persyaratan calon kepala daerah dan ambang batas pencalonan kepala daerah dengan melakukan pembahasan RUU Pilkada 2024.<br><br>\"Langkah DPR tersebut selain dapat menimbulkan masalah disharmoni dalam hubungan sistem ketatanegaraan, juga akan menjadi benih permasalahan serius dalam Pilkada 2024. Selain itu akan menimbulkan reaksi publik yang dapat mengakibatkan suasana tidak kondusif dalam kehidupan kebangsaan,\" jelas Mu\'ti.<br><br>DPR dan Pemerintah hendaknya sensitif dan tidak menganggap sederhana terhadap arus massa, akademisi, dan mahasiswa yang turun ke jalan menyampaikan aspirasi penegakan hukum dan perundang-undangan.<br><br>\"Perlu sikap arif dan bijaksana agar arus massa tidak menimbulkan masalah kebangsaan dan kenegaraan yang semakin meluas,\" pungkas Mu\'ti.<br><br>Sebelumnya, MK telah mengetok palu dua gugatan terkait Pilkada 2024 yaitu gugatan dengan perkara nomor 60/PUU-XXII/2024 dan nomor 70/PUU-XXII/2024.<br><br>Melalui kedua putusan tersebut, MK memutuskan partai atau gabungan partai politik peserta Pemilu bisa mengajukan calon kepala daerah meski tidak punya kursi DPRD dan syarat usia cagub harus berumur 30 tahun saat penetapan calon.<br><br>Menindaklanjuti itu, Panitia Kerja RUU Pilkada DPR RI malah menyepakati perubahan syarat ambang batas pencalonan pilkada dari jalur partai hanya berlaku untuk partai yang tidak punya kursi di DPRD.<br><br>Wakil Ketua Baleg DPR Achmad Baidowi alias Awiek pun mengatakan pihaknya sudah menyurati pimpinan DPR. Baleg berharap pengesahan RUU ini bisa masuk dalam rapat paripurna hari ini.<br><br>(tim/DAL)</div>', 'Jakarta, CNN Indonesia -- Sekretaris Umum Pimpinan Pusat Muhammadiyah Abdul Mu\'ti mengaku sulit memahami langkah dan keputusan DPR RI yang bertentangan dengan keputusan Mahkamah Konstitusi (MK) terkai...', 1, NULL, '2024-12-16 16:52:14', '2024-12-16 16:52:14', 17),
(37, 'Pengembangan Sistem Informasi untuk Muhammadiyah Batam Kota', '59b8b0b816dcf5d5f94cdb3c7a89214df21c38f0e73a550cdbfc6fed8e98ab8e.jpg', '<div><strong>batampos</strong> – Tim Pengabdian Masyarakat Dosen dari Jurusan Teknik Informatika Politeknik Negeri Batam telah berhasil mengembangkan dan mengimplementasikan sistem informasi organisasi di Pimpinan Cabang Muhammadiyah (PCM) Kecamatan Batam Kota. Kegiatan ini bertujuan untuk mendukung modernisasi pengelolaan administrasi dan informasi di lingkungan Muhammadiyah Batam Kota.<br><br></div><div>Proyek ini dimulai dengan analisis kebutuhan yang dilakukan secara mendalam oleh tim pengabdian masyarakat bersama pengurus Muhammadiyah Batam Kota. Sistem informasi yang dikembangkan bertujuan mempermudah pengelolaan data keanggotaan, kegiatan, dan penyebaran informasi penting dalam organisasi, sehingga operasional organisasi dapat berjalan lebih efisien dan terstruktur.<br><br></div><div>Ketua Tim Pengabdian Masyarakat, Ahmadi Irmansyah Lubis, S.Kom., M.Kom., mengungkapkan bahwa proyek ini merupakan bagian dari pengabdian masyarakat yang dilakukan oleh Politeknik Negeri Batam, sesuai dengan Tri Dharma Perguruan Tinggi.<br><br></div><div>“Kami melihat adanya kebutuhan mendesak untuk peningkatan sistem pengelolaan data di Muhammadiyah Batam Kota, dan kami berkomitmen untuk memberikan solusi berbasis teknologi yang dapat diimplementasikan secara efektif di tingkat Kecamatan Batam Kota,” ujar Ahmadi.<br><br></div><div>Dalam proses pengembangannya, tim pengabdian masyarakat melibatkan beberapa mahasiswa sebagai bentuk praktik langsung dari ilmu yang mereka pelajari di kampus. “Proyek ini memberikan pengalaman nyata bagi mahasiswa, karena mereka terlibat langsung dalam setiap tahap pengembangan, mulai dari perancangan sistem hingga uji coba implementasi,” tambah Ahmadi.<br><br></div><div>Sistem yang dikembangkan menggunakan teknologi berbasis website, sehingga dapat diakses dengan mudah oleh seluruh anggota Muhammadiyah di berbagai lokasi. Dengan adanya sistem ini, komunikasi antaranggota dan pengelolaan program kerja dapat dilakukan lebih terstruktur dan transparan. Selain itu, laporan keuangan dan dokumentasi kegiatan organisasi juga akan lebih mudah dipantau oleh para pengurus dan anggota. Dalam kesempatan tersebut, dilakukan pula pembangunan website sistem informasi dan pelaporan donasi untuk Pembangunan Masjid Taqwa Muhammadiyah Batam Kota, yang merupakan salah satu program kerja PCM Batam Kota saat ini.<br><br></div><div>Sistem informasi ini direncanakan untuk terus dikembangkan dan diperbarui sesuai kebutuhan organisasi. Harapannya, dengan adanya sistem yang lebih modern, Muhammadiyah Batam Kota dapat menjalankan fungsinya dengan lebih baik dan menjadi contoh bagi organisasi serupa di wilayah lain.<br><br></div><div>Acara serah terima sistem informasi ini dilaksanakan Sabtu (5/10) lalu dan dihadiri oleh beberapa pengurus, anggota, serta tim pengabdian masyarakat dari Jurusan Teknik Informatika Politeknik Negeri Batam.<br><br></div><div>Para pengurus PCM Batam Kota, yang diwakili Ketua PCM Batam Kota, Sutrisno, menyampaikan apresiasi mendalam atas kontribusi tim dosen dan mahasiswa dalam meningkatkan efektivitas organisasi melalui pemanfaatan teknologi informasi. Dengan selesainya proyek ini, diharapkan sinergi antara dunia pendidikan tinggi dan organisasi masyarakat seperti Muhammadiyah dapat terus terjalin, memberikan manfaat nyata bagi pengembangan masyarakat yang lebih luas.<strong><br></strong><br></div>', 'batampos – Tim Pengabdian Masyarakat Dosen dari Jurusan Teknik Informatika Politeknik Negeri Batam telah berhasil mengembangkan dan mengimplementasikan sistem informasi organisasi di Pimpinan Cabang M...', 3, NULL, '2024-12-16 16:57:51', '2024-12-16 16:57:51', 17),
(38, 'Muhammadiyah Dapat Kucuran Rp2 T dari Bank Muamalat, Buat Apa?', 'b5ecb41b79c20feac21bef3d3d05e7d3f43ff7b8fc263c0f633b530f6c57b368.jpeg', '<div>Jakarta, CNN Indonesia -- Muhammadiyah bakal menerima dana pembiayaan sebesar Rp2 triliun dari Bank Muamalat sebagai bagian dari kerja sama kedua pihak.<br><br>Kepala Badan Pelaksana Badan Pengelola Keuangan Haji (BPKH) Fadlul Imansyah menjelaskan uang Rp2 triliun itu bertujuan untuk pengembangan Amal Usaha Muhammadiyah (AUM) yang mencakup rumah sakit, perguruan tinggi, pondok pesantren, dan masjid. Pembiayaan ini demi memperluas program kemaslahatan umat.<br><br>\"Program yang telah didukung BPKH, seperti pendirian Masjid At-Tanwir di Menteng, Pondok Pesantren Muallimin, dan RS Bandung Barat menjadi bukti nyata sinergi yang terjalin antara BPKH dan Muhammadiyah,\" kata Fadlul dalam keterangan tertulis, seperti dikutip laman BKPH, Jumat (9/8).<br><br>Muhammadiyah dan Bank Muamalat sudah menandatangani nota kesepahaman (MoU) di Yogyakarta, dengan masing-masing diwakili Ketua Umum PP Muhammadiyah Haedar Nashir dan Direktur Bank Muamalat Karno.<br><br>Dalam kerja sama tersebut, akan ada dua ruang lingkup utama yang dijalankan. Pertama, pemanfaatan jasa dan program Corporate Social Responsibility (CSR) Bank Muamalat untuk mendukung pengembangan cabang, ranting, dan masjid yang dikelola Muhammadiyah.<br><br>Kedua, Bank Muamalat akan menggandeng lembaga zakat nasional milik Muhammadiyah, Lazismu, dalam berbagai program yang berfokus pada pengelolaan keuangan dan dukungan zakat.<br><br>Bank Muamalat juga bertekad mensosialisasikan serta mengelola keuangan terkait haji di lingkungan Muhammadiyah untuk memastikan proses yang aman, terjangkau, dan mudah diakses oleh jamaah.<br><br>Prototipe kerja sama ini pun diharapkan dapat membawa manfaat yang signifikan dalam memajukan, mencerdaskan, dan mensejahterakan bangsa.<br><br>\"Dengan langkah strategis ini, BPKH berharap dapat terus berkontribusi meningkatkan kualitas hidup umat melalui berbagai inisiatif yang berfokus pada kebaikan bersama,\" tutup Fadlul.<br><br>(blq/tsa)</div>', 'Jakarta, CNN Indonesia -- Muhammadiyah bakal menerima dana pembiayaan sebesar Rp2 triliun dari Bank Muamalat sebagai bagian dari kerja sama kedua pihak.Kepala Badan Pelaksana Badan Pengelola Keuangan...', 1, NULL, '2024-12-16 17:00:24', '2024-12-16 17:00:24', 17),
(39, 'Desak Aparat Segera Tangkap Harun Masiku, Pemuda Muhammadiyah: Bisa Ganggu Stabilitas Politik', 'ad2e12179824f0511cdda09df6edc3c00833ef66b6aea42c2c8c715d39006753.jpg', '<div>JAKARTA, KOMPAS.com - Sekretaris Jenderal Pemuda Muhammadiyah Najih Prastiyo mendesak aparat penegak hukum segera menangkap buronan kasus korupsi, Harun Masiku.&nbsp;<br><br>Pihaknya menyebut kasus pidana korupsi yang menyeret eks kader PDI Perjuangan (PDI-P) itu harus segera dituntaskan.<br><br>&nbsp;\"Harun Masiku ini sudah nyaris lima tahun jadi buron, sampai sekarang belum ditangkap. Saya kira KPK harus ambil langkah tegas dan produktif. Buron semacam Masiku bisa melemahkan supremasi hukum,\" kata Najih dalam keterangan yang diterima Kompas.com, Minggu (15/12/2024).<br><br>\"Penangkapan Masiku hemat saya perlu untuk tegakkan keadilan dan untuk menunjukkan bahwa hukum berlaku untuk semua orang tanpa terkecuali. Kalau tidak segera ditangkap, kasus ini bisa ganggu stabilitas politik,\" sambung dia.<br><br>Najih menduga, terdapat pihak yang terus mencoba menghalangi proses hukum terhadap Masiku.<br><br>Oleh sebab itu, ia meminta Komisi Pemberantasan Korupsi (KPK) dan aparat hukum untuk menindak siapa saja yang menghalangi proses hukum sesuai dengan Pasal 221 KUHP.<br><br>\"Saya duga ada pihak yang memang terus coba halangi proses hukum ini. Oknum semacam ini harus ditindak, sesuai dengan perintah Undang-Undang Pasal 221 KUHP,\" kata dia.<br><br>Najih juga menyebut kalangan kader PDI-P untuk tidak melindungi Masiku.<br><br>Ia juga meminta PDI-P lugas mengadili Hasto Kristiyanto, sekretaris jenderal partai banteng moncong putih yang dianggap terlibat dalam dugaan kasus penyuapan.<br><br>“Kasus Harun Masiku ini bagaimanapun erat kaitannya dengan Sekjen PDI-P Pak Hasto Kristiyanto. Saya heran kok Pak Hasto lantang bicara di mana-mana, serasa lupa dengan kasus penyuapan yang seret namanya sendiri,\" ujar dia.<br><br>Hingga kini, Harun masih buron setelah empat tahun masuk dalam daftar pencarian orang (DPO) KPK. Terbaru, KPK mengungkap profil terbaru dan ciri fisik dari DPO Harun Masiku sebagai pembaruan data DPO yang dirilis pada 2020.<br><br>Sebelumnya, PDI-P menuding langkah KPK memanggil Hasto Kristiyanto untuk menggali informasi baru mengenai Harun Masiku bermuatan politik, terutama menjelang Pemilihan Kepala Daerah (Pilkada) 2024 yang di seluruh daerah di Indonesia. Harun Masiku merupakan mantan kader PDI-P yang telah ditetapkan sebagai tersangka dalam kasus dugaan suap terhadap Komisioner Komisi Pemilihan Umum (KPU) Wahyu Setiawan pada 2019.</div>', 'JAKARTA, KOMPAS.com - Sekretaris Jenderal Pemuda Muhammadiyah Najih Prastiyo mendesak aparat penegak hukum segera menangkap buronan kasus korupsi, Harun Masiku.&nbsp;Pihaknya menyebut kasus pidana kor...', 1, NULL, '2024-12-16 17:04:28', '2024-12-16 17:04:28', 17);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Sekretaris', NULL, NULL),
(3, 'Bendahara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saldos`
--

CREATE TABLE `saldos` (
  `id` bigint UNSIGNED NOT NULL,
  `total_saldo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saldos`
--

INSERT INTO `saldos` (`id`, `total_saldo`, `created_at`, `updated_at`) VALUES
(1, 7201000.00, '2024-05-26 04:00:42', '2024-05-26 04:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HQVnqmWY96P1zCN1jhENvGOJl6cRzdg4mfJk4GmZ', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOENJMFk1eldHREhzMERSdFFPdXYwQjZ4MXV0dnluYzJsOFd1UkZEOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvYXJzaXAtZmlsZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNzt9', 1734374836),
('im0HJyaTh8BjPSEMBEA4YrIdbxqZfLkYGz12171W', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTWhORTJlYTlMNE5zNFVCY3ExSGJtcVp2R21KVGZYRXNtR1EzNGdpcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE3O30=', 1734429477);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `favicon`, `nama_website`, `logo`, `no_telp`, `email`, `footer`, `created_at`, `updated_at`, `alamat`, `user_id`) VALUES
(3, 'PCM Batam Kota | Situs Resmi PCM', '7OicfqRMEoXhbKpQmU4Ew22fPJtstUeel3qrjWvy.png', 'Pimpinan Cabang Muhammadiyah', 'pywUOY5CLWDK5VHwpW8z05wVqNULqQoQXECTMtrx.png', '+62 858-3562-2206', 'pcmbatamkota.official@gmail.com', 'Pimpinan Cabang Muhammadiyah Batam Kota', NULL, '2024-12-17 09:50:00', 'Jl. Rexvin Boulevard, Belian, Batam Kota, no 74', 17);

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal_kas` date NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('Pengeluaran','Pendapatan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uang_kas`
--

INSERT INTO `uang_kas` (`id`, `tanggal_kas`, `deskripsi`, `tipe`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(12, '2024-06-06', 'Donasi', 'Pendapatan', 1500000.00, 9, '2024-06-06 02:50:42', '2024-06-06 02:50:42'),
(13, '2024-06-06', 'Beli pel', 'Pendapatan', 51000.00, 9, '2024-06-06 02:51:02', '2024-06-06 02:51:02'),
(14, '2024-06-06', 'beli sajadah', 'Pengeluaran', 450000.00, 9, '2024-06-06 02:51:17', '2024-06-06 02:51:17'),
(15, '2024-06-06', 'perbaiki ac', 'Pengeluaran', 1500000.00, 9, '2024-06-06 02:51:38', '2024-06-06 02:51:38'),
(16, '2024-06-06', 'donasi lagi', 'Pendapatan', 1500000.00, 9, '2024-06-06 02:51:55', '2024-06-06 02:51:55'),
(17, '2024-06-06', 'Perbaikan pintu', 'Pengeluaran', 150000.00, 9, '2024-06-06 02:52:17', '2024-06-06 02:52:17'),
(18, '2024-06-06', 'perbaikan keramik', 'Pengeluaran', 150000.00, 9, '2024-06-06 02:52:37', '2024-06-06 02:52:37'),
(19, '2024-06-06', 'Donasi dari H.J. Mabrur', 'Pendapatan', 10000000.00, 9, '2024-06-06 02:53:12', '2024-06-06 02:53:12'),
(20, '2024-06-06', 'membangun kubah masjidasdasd', 'Pengeluaran', 5000000.00, 9, '2024-06-06 02:53:43', '2024-06-06 08:31:48'),
(21, '2024-06-06', 'asdasd', 'Pendapatan', 1500000.00, 9, '2024-06-06 08:32:17', '2024-06-06 08:32:17'),
(23, '2024-06-13', 'Beli Remote AC Masjid', 'Pengeluaran', 100000.00, 9, '2024-06-13 13:03:01', '2024-06-13 13:03:01');

--
-- Triggers `uang_kas`
--
DELIMITER $$
CREATE TRIGGER `update_saldo_after_delete` AFTER DELETE ON `uang_kas` FOR EACH ROW BEGIN
    IF OLD.tipe = 'Pengeluaran' THEN
        UPDATE saldos
        SET total_saldo = total_saldo + OLD.jumlah
        WHERE id = 1;
    ELSEIF OLD.tipe = 'Pendapatan' THEN
        UPDATE saldos
        SET total_saldo = total_saldo - OLD.jumlah
        WHERE id = 1;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_saldo_after_insert` AFTER INSERT ON `uang_kas` FOR EACH ROW BEGIN
    IF NEW.tipe = 'Pengeluaran' THEN
        UPDATE saldos
        SET total_saldo = total_saldo - NEW.jumlah
        WHERE id = 1;
    ELSEIF NEW.tipe = 'Pendapatan' THEN
        UPDATE saldos
        SET total_saldo = total_saldo + NEW.jumlah
        WHERE id = 1;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_saldo_after_update` AFTER UPDATE ON `uang_kas` FOR EACH ROW BEGIN
    DECLARE old_amount DECIMAL(10,2);
    DECLARE new_amount DECIMAL(10,2);
    
    -- Simpan jumlah uang sebelum dan setelah update
    SET old_amount = OLD.jumlah;
    SET new_amount = NEW.jumlah;

    -- Kurangi saldo jika tipe pengeluaran
    IF OLD.tipe = 'Pengeluaran' THEN
        UPDATE saldos
        SET total_saldo = total_saldo + old_amount
        WHERE id = 1;
    END IF;

    -- Tambahkan saldo jika tipe pendapatan
    IF OLD.tipe = 'Pendapatan' THEN
        UPDATE saldos
        SET total_saldo = total_saldo - old_amount
        WHERE id = 1;
    END IF;

    -- Update saldo baru jika tipe pengeluaran
    IF NEW.tipe = 'Pengeluaran' THEN
        UPDATE saldos
        SET total_saldo = total_saldo - new_amount
        WHERE id = 1;
    END IF;

    -- Update saldo baru jika tipe pendapatan
    IF NEW.tipe = 'Pendapatan' THEN
        UPDATE saldos
        SET total_saldo = total_saldo + new_amount
        WHERE id = 1;
    END IF;
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(2, 'Secretary', 'Sekretaris', 'sekretaris@gmail.com', NULL, '$2y$12$Aj/EcJRf3HgCQBYxNmITp.eVKbHWM2aMUS5xtOe07f6AFYObulJGC', NULL, '2024-05-19 10:07:43', '2024-12-16 15:29:15', 2),
(8, 'Muhammad Mabrur Al Mutaqi', 'mabrur', 'mabruralmutaqi@gmail.com', NULL, '$2y$12$rq1om40wgvIt.kXpoAhS.eAXDLlSSeOSn7mcVyQqCLLwwkBnlIOgW', NULL, '2024-05-25 10:47:25', '2024-06-02 05:20:31', 1),
(9, 'Economy', 'Bendahara', 'bendahara@gmail.com', NULL, '$2y$12$6WQP/K8amuf3U/Hk268pkOM1KW.rKOQ12p8d0ulIxaQB2X6V8tCAq', NULL, '2024-05-25 10:48:38', '2024-12-16 15:31:23', 3),
(17, 'administrator', 'admin', 'admin@gmail.com', NULL, '$2y$12$0zIfvYk7g8.dfK7bqC07s.bz67/12n2xnGDWiAVS3JdY6yCmDSkK6', NULL, '2024-12-16 14:39:11', '2024-12-16 14:39:11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agendas_user_id_foreign` (`user_id`);

--
-- Indexes for table `amalusahas`
--
ALTER TABLE `amalusahas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `amalusahas_user_id_foreign` (`user_id`);

--
-- Indexes for table `arsipadministrasis`
--
ALTER TABLE `arsipadministrasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arsipadministrasis_kategoriarsip_id_foreign` (`kategoriarsip_id`),
  ADD KEY `arsipadministrasis_user_id_foreign` (`user_id`);

--
-- Indexes for table `arsipfiles`
--
ALTER TABLE `arsipfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arsipfiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikels_kategoriartikel_id_foreign` (`kategoriartikel_id`),
  ADD KEY `artikels_user_id_foreign` (`user_id`);

--
-- Indexes for table `bidangkajians`
--
ALTER TABLE `bidangkajians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carousels_user_id_foreign` (`user_id`);

--
-- Indexes for table `direktorikeanggotaans`
--
ALTER TABLE `direktorikeanggotaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direktorikeanggotaans_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galerifotos`
--
ALTER TABLE `galerifotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerifotos_user_id_foreign` (`user_id`);

--
-- Indexes for table `galerivideos`
--
ALTER TABLE `galerivideos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerivideos_user_id_foreign` (`user_id`);

--
-- Indexes for table `identitaspcms`
--
ALTER TABLE `identitaspcms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identitaspcms_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kajians`
--
ALTER TABLE `kajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kajians_bidangkajian_id_foreign` (`bidangkajian_id`),
  ADD KEY `kajians_user_id_foreign` (`user_id`);

--
-- Indexes for table `kategoriarsips`
--
ALTER TABLE `kategoriarsips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoriartikels`
--
ALTER TABLE `kategoriartikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoriberitas`
--
ALTER TABLE `kategoriberitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentarartikels`
--
ALTER TABLE `komentarartikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentarartikels_artikel_id_foreign` (`artikel_id`);

--
-- Indexes for table `komentarberitas`
--
ALTER TABLE `komentarberitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentarberitas_portalberita_id_foreign` (`portalberita_id`);

--
-- Indexes for table `komentarkajians`
--
ALTER TABLE `komentarkajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentarkajians_kajian_id_foreign` (`kajian_id`);

--
-- Indexes for table `mediasosials`
--
ALTER TABLE `mediasosials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mediasosials_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortoms`
--
ALTER TABLE `ortoms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ortoms_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengumumen_user_id_foreign` (`user_id`);

--
-- Indexes for table `portalberitas`
--
ALTER TABLE `portalberitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalberitas_kategoriberita_id_foreign` (`kategoriberita_id`),
  ADD KEY `portalberitas_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uang_kas_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `amalusahas`
--
ALTER TABLE `amalusahas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `arsipadministrasis`
--
ALTER TABLE `arsipadministrasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `arsipfiles`
--
ALTER TABLE `arsipfiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bidangkajians`
--
ALTER TABLE `bidangkajians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `direktorikeanggotaans`
--
ALTER TABLE `direktorikeanggotaans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galerifotos`
--
ALTER TABLE `galerifotos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `galerivideos`
--
ALTER TABLE `galerivideos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `identitaspcms`
--
ALTER TABLE `identitaspcms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kajians`
--
ALTER TABLE `kajians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategoriarsips`
--
ALTER TABLE `kategoriarsips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoriartikels`
--
ALTER TABLE `kategoriartikels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoriberitas`
--
ALTER TABLE `kategoriberitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentarartikels`
--
ALTER TABLE `komentarartikels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `komentarberitas`
--
ALTER TABLE `komentarberitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `komentarkajians`
--
ALTER TABLE `komentarkajians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mediasosials`
--
ALTER TABLE `mediasosials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ortoms`
--
ALTER TABLE `ortoms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumumen`
--
ALTER TABLE `pengumumen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `portalberitas`
--
ALTER TABLE `portalberitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agendas`
--
ALTER TABLE `agendas`
  ADD CONSTRAINT `agendas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `amalusahas`
--
ALTER TABLE `amalusahas`
  ADD CONSTRAINT `amalusahas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `arsipadministrasis`
--
ALTER TABLE `arsipadministrasis`
  ADD CONSTRAINT `arsipadministrasis_kategoriarsip_id_foreign` FOREIGN KEY (`kategoriarsip_id`) REFERENCES `kategoriarsips` (`id`),
  ADD CONSTRAINT `arsipadministrasis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `arsipfiles`
--
ALTER TABLE `arsipfiles`
  ADD CONSTRAINT `arsipfiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `artikels`
--
ALTER TABLE `artikels`
  ADD CONSTRAINT `artikels_kategoriartikel_id_foreign` FOREIGN KEY (`kategoriartikel_id`) REFERENCES `kategoriartikels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artikels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carousels`
--
ALTER TABLE `carousels`
  ADD CONSTRAINT `carousels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `direktorikeanggotaans`
--
ALTER TABLE `direktorikeanggotaans`
  ADD CONSTRAINT `direktorikeanggotaans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `galerifotos`
--
ALTER TABLE `galerifotos`
  ADD CONSTRAINT `galerifotos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `galerivideos`
--
ALTER TABLE `galerivideos`
  ADD CONSTRAINT `galerivideos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `identitaspcms`
--
ALTER TABLE `identitaspcms`
  ADD CONSTRAINT `identitaspcms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `kajians`
--
ALTER TABLE `kajians`
  ADD CONSTRAINT `kajians_bidangkajian_id_foreign` FOREIGN KEY (`bidangkajian_id`) REFERENCES `bidangkajians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kajians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `komentarartikels`
--
ALTER TABLE `komentarartikels`
  ADD CONSTRAINT `komentarartikels_artikel_id_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `artikels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarberitas`
--
ALTER TABLE `komentarberitas`
  ADD CONSTRAINT `komentarberitas_portalberita_id_foreign` FOREIGN KEY (`portalberita_id`) REFERENCES `portalberitas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarkajians`
--
ALTER TABLE `komentarkajians`
  ADD CONSTRAINT `komentarkajians_kajian_id_foreign` FOREIGN KEY (`kajian_id`) REFERENCES `kajians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mediasosials`
--
ALTER TABLE `mediasosials`
  ADD CONSTRAINT `mediasosials_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ortoms`
--
ALTER TABLE `ortoms`
  ADD CONSTRAINT `ortoms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD CONSTRAINT `pengumumen_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `portalberitas`
--
ALTER TABLE `portalberitas`
  ADD CONSTRAINT `portalberitas_kategoriberita_id_foreign` FOREIGN KEY (`kategoriberita_id`) REFERENCES `kategoriberitas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `portalberitas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD CONSTRAINT `uang_kas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
