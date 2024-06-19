-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2024 at 12:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

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
  `nama_agenda` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(13, 'Rapat Bulanan PCM Batam Kota yang diadakan di kediaman Bapak Mabrur', '2024-06-13', '10:00:00', '13:00:00', '2024-06-13 03:47:46', '2024-06-13 03:48:26', 8);

-- --------------------------------------------------------

--
-- Table structure for table `amalusahas`
--

CREATE TABLE `amalusahas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_amal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_amal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amalusahas`
--

INSERT INTO `amalusahas` (`id`, `nama_amal`, `link_amal`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'SMK Muhammadiyah Plus Batam Kota', 'https://smkn1batam.sch.id/', NULL, '2024-06-15 07:12:27', 8);

-- --------------------------------------------------------

--
-- Table structure for table `arsipadministrasis`
--

CREATE TABLE `arsipadministrasis` (
  `id` bigint UNSIGNED NOT NULL,
  `tgl_arsip` date NOT NULL,
  `no_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_arsipfile` date NOT NULL,
  `upload_arsipfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arsipfiles`
--

INSERT INTO `arsipfiles` (`id`, `nama_file`, `tgl_arsipfile`, `upload_arsipfile`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Tugas Manajemen Proyek', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:41:12', '2024-06-06 02:41:12'),
(5, 'Testing', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:41:24', '2024-06-06 02:41:24'),
(6, 'Tugas Manajemen Proyek jj', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:41:37', '2024-06-06 02:41:37'),
(7, 'Tugas Teori 9', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:41:52', '2024-06-06 02:41:52'),
(8, 'Kanban Board', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:42:05', '2024-06-06 02:42:05'),
(9, 'Tugas Manajemen Proyek', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:43:39', '2024-06-06 02:43:39'),
(10, 'Testing', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:45:31', '2024-06-06 02:45:31'),
(11, 'Tugas Manajemen Proyek', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:45:49', '2024-06-06 02:45:49'),
(12, 'Testing', '2024-06-06', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:46:01', '2024-06-06 02:46:01'),
(13, 'Tugas Manajemen Proyek jj', '2024-06-14', '1a3ca674cfb95c03470d3a91de4f06d80812fd4705d9abef1f471c6541252720.pdf', 2, '2024-06-06 02:46:15', '2024-06-06 02:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `bidang_kajian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `judul`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(7, 'Selamat Datang Di Website Official Pimpinan Cabang Muhammadiyah Kecamatan Batam Kota', 'ntfTspgZZKV4YI1TcA98a5RnGxnQAgPmmZKYoCxu.jpg', '2024-06-13 04:22:07', '2024-06-13 04:22:07', 8);

-- --------------------------------------------------------

--
-- Table structure for table `direktorikeanggotaans`
--

CREATE TABLE `direktorikeanggotaans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbm` int NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `cabang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pernikahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_diri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jabatan` enum('Ketua','Wakil Ketua','Sekretaris','Bendahara','Anggota') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Anggota',
  `status` enum('Menunggu Persetujuan','Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menunggu Persetujuan',
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `direktorikeanggotaans`
--

INSERT INTO `direktorikeanggotaans` (`id`, `nama`, `nbm`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `cabang`, `ranting`, `alamat`, `status_pernikahan`, `email`, `no_hp`, `pekerjaan`, `foto_diri`, `ktam`, `created_at`, `updated_at`, `jabatan`, `status`, `user_id`) VALUES
(17, 'Muhammad Mabrur Al Mutaqi', 0, 'Laki-Laki', 'Pulau Tumbar', '2002-05-21', 'Batam Center', 'Belian', 'Batu Aji', 'Belum Menikah', 'mabruralmutaqi@gmail.com', '082178192938', 'Pegawai Swasta', '145200c2b6e3f2dc9d3ec1936ed805b5251eb4a64039d74cb9513d841e7e724c.jpg', NULL, '2024-06-13 07:20:10', '2024-06-13 07:28:58', 'Ketua', 'Disetujui', 2),
(18, 'Daniel', 0, 'Laki-Laki', 'Batam', '2024-06-13', 'Batam Center', 'Baloi Permai', 'Batu Aji', 'Belum Menikah', 'daniel@gmail.com', '082178192938', 'Belum Bekerja', '7e580f4a88a925e911f7ff972780a651bb7b0d9636f6e2b291c1fb64e8ab3313.png', NULL, '2024-06-13 07:24:26', '2024-06-13 07:28:52', 'Sekretaris', 'Disetujui', 2),
(19, 'Samuel Saputra', 0, 'Laki-Laki', 'Batam', '2024-06-13', 'Batam Center', 'Belian', 'Batu Aji', 'Belum Menikah', 'samuel@gmail.com', '082178192938', 'Arsitek', '2c3059ff49b6f38c086cd12b9ad97e849fc60c30cd63498bbcfcdbb4dcf6df4b.png', NULL, '2024-06-13 07:25:21', '2024-06-13 07:28:40', 'Bendahara', 'Disetujui', 2),
(20, 'Asyraf Rais', 0, 'Laki-Laki', 'Batam', '2024-06-13', 'Batam Center', 'Baloi Permai', 'Batu Aji', 'Belum Menikah', 'operator@gmail.com', '082178192938', 'Pegawai Negeri Sipil', '7e580f4a88a925e911f7ff972780a651bb7b0d9636f6e2b291c1fb64e8ab3313.png', NULL, '2024-06-13 07:27:38', '2024-06-13 07:28:29', 'Wakil Ketua', 'Disetujui', 2),
(21, 'Ahmad Riky', 0, 'Laki-Laki', 'Batam', '1999-09-09', 'Batam Center', 'Belian', 'Jl. Rexvin Boulevard, Belian, Batam Kota, no 74', 'Belum Menikah', 'nurul@gmail.com', '082178192938', 'Pelajar/Mahasiswa', '145200c2b6e3f2dc9d3ec1936ed805b5251eb4a64039d74cb9513d841e7e724c.jpg', 'ddc7338916b40f248f782c6d4dba0b7320a9ca8a47a4025d3010d46aff0c02d2.pdf', '2024-06-13 07:30:14', '2024-06-13 07:31:15', 'Anggota', 'Disetujui', 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galerifotos`
--

CREATE TABLE `galerifotos` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galerifotos`
--

INSERT INTO `galerifotos` (`id`, `image`, `keterangan`, `created_at`, `updated_at`, `user_id`) VALUES
(27, 'kwHo3HoSMe8ZnxyAwy3oQdIaEcsmnmxeE8bnFBpa.jpg', 'Budget Buddy1', '2024-06-13 05:23:10', '2024-06-13 05:23:22', 8),
(28, 'lFIi4Wq8j9BvMsrBRHHYeEicW7i4k7MU9Bp1oFQ8.jpg', 'presentasi budgetbuddy', '2024-06-13 05:23:40', '2024-06-13 05:23:40', 8),
(29, 'xYjZfSwinAzhKDjv3le8NT0SZJ22oabcTUXIuqf2.jpg', 'Budget Buddy', '2024-06-13 05:23:59', '2024-06-13 05:23:59', 8),
(30, 'kOQ10jImDEbcApxKhQGLaXZTBtsJdckaeTSsrQOk.jpg', 'Budget Buddy', '2024-06-13 05:24:14', '2024-06-13 05:24:14', 8),
(31, 'NxhlCEJxBiLE5w1XbFdNrzcT19Kqa6XKECPTzDQf.jpg', 'presentasi budgetbuddy', '2024-06-13 05:24:33', '2024-06-13 05:24:33', 8),
(32, 'Ch21ddXFSSss1kXbZpagbfa3AhuudmwkUDQMX1Iw.jpg', 'Mabrur Almamater', '2024-06-13 05:24:54', '2024-06-13 05:24:54', 8),
(33, 'iAoYvXkCrx0hsYWbLasbvPlqjh5mXqDu62erdz9q.jpg', 'PCM Batam Kota', '2024-06-13 13:52:08', '2024-06-13 13:52:08', 8),
(34, '9KFq1G0B5GJmNrY5hYKrZS5xIaga7A2Aq9iI4wAe.jpg', 'Kelompok PCM', '2024-06-13 13:52:25', '2024-06-13 13:52:25', 8),
(35, '8eolbh6uTozw4zYJwpgvC6PSPWWmZfPq3rUIkwyw.jpg', 'Kelompok PCM Kerja Kelompok', '2024-06-13 13:52:47', '2024-06-13 13:52:47', 8),
(36, 'MeW0y60gjKlqxt8EIAIR7gkmh85eNc8eHPz0h3HR.jpg', 'Kelompok PCM', '2024-06-13 13:53:25', '2024-06-13 13:53:25', 8),
(37, 'Y4APq0FmMN0BbS2GP7zEu77JNCFeVtAq2fWl0GDq.jpg', 'PCM Presentasi', '2024-06-14 04:25:26', '2024-06-14 04:25:26', 8);

-- --------------------------------------------------------

--
-- Table structure for table `galerivideos`
--

CREATE TABLE `galerivideos` (
  `id` bigint UNSIGNED NOT NULL,
  `judul_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galerivideos`
--

INSERT INTO `galerivideos` (`id`, `judul_video`, `link_video`, `created_at`, `updated_at`, `user_id`) VALUES
(19, 'LAGU CAFE POPULER 2024 - AKUSTIK CAFE SANTAI 2024 Full Album - AKUSTIK LAGU INDONESIA 2024 #11', 'https://www.youtube.com/watch?v=bdhJ061h_VI', '2024-06-13 05:36:15', '2024-06-13 05:36:15', 8);

-- --------------------------------------------------------

--
-- Table structure for table `identitaspcms`
--

CREATE TABLE `identitaspcms` (
  `id` bigint UNSIGNED NOT NULL,
  `sejarah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_sambutan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visimisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
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
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(6, 'Aqidah dalam Ibadah Islam: Landasan Utama dalam Beribadah', '2295aca0a18324ba3c08535f7520af5d40ef5c6c56039a2bd8857278cd2360ba.jpg', '<div><strong>Aqidah</strong> dalam konteks ibadah dalam Islam merujuk pada keyakinan yang teguh terhadap prinsip-prinsip dasar yang mengatur tata cara dan tujuan ibadah seorang muslim. Aqidah tidak hanya mencakup keyakinan terhadap Allah SWT, tetapi juga penghayatan terhadap keesaan-Nya, kemuliaan-Nya, serta perintah-perintah-Nya yang harus dijalankan dalam bentuk ibadah. Artikel ini akan membahas bagaimana aqidah mempengaruhi dan membentuk praktik ibadah dalam kehidupan sehari-hari seorang muslim.<br><br></div><div>Pengertian Aqidah dalam Ibadah<br><br></div><div><strong>Aqidah</strong> dalam ibadah mengarah pada keyakinan yang benar dan mendalam terhadap Allah SWT sebagai satu-satunya Tuhan yang layak disembah, dan Rasul-Nya sebagai pembawa risalah-Nya. Ini mencakup keyakinan terhadap keesaan, keagungan, dan sifat-sifat Allah yang maha sempurna, serta tunduknya seorang muslim terhadap segala perintah-Nya.<br><br></div><div>Landasan Utama Aqidah dalam Ibadah<br><br></div><ol><li><strong>Tauhid</strong>: Tauhid adalah konsep tentang keesaan Allah. Aqidah yang kuat terhadap tauhid menuntun seorang muslim untuk memurnikan ibadah hanya kepada Allah SWT, tanpa menyekutukan-Nya dengan sesuatu atau siapapun.<br><br></li><li><strong>Ketaatan dan Kepatuhan</strong>: Aqidah mengajarkan bahwa setiap ibadah, baik yang bersifat fisik maupun spiritual, harus dilakukan dengan penuh ketaatan dan kesadaran akan kebesaran Allah. Ini termasuk ketaatan terhadap lima rukun Islam (syahadat, shalat, zakat, puasa, haji) yang menjadi kewajiban bagi setiap muslim.<br><br></li><li><strong>Khusyuk dan Khusyu</strong>: Aqidah mengajarkan pentingnya menghadirkan hati dan pikiran dengan khusyuk (konsentrasi) dalam setiap ibadah. Khusyuk adalah wujud penghargaan dan penghormatan yang mendalam terhadap kehadiran Allah dalam ibadah.<br><br></li><li><strong>Penyucian Niat</strong>: Aqidah mengajarkan bahwa setiap amal ibadah harus dimulai dengan niat yang tulus dan bersih, semata-mata karena Allah SWT. Penyucian niat ini memastikan bahwa ibadah hanya ditujukan untuk mencari ridha Allah semata, tanpa mencari pujian atau pengakuan dari manusia.<br><br></li></ol><div>Contoh Aplikasi Aqidah dalam Ibadah Sehari-hari<br><br></div><ol><li><strong>Shalat</strong>: Aqidah mengajarkan bahwa shalat adalah tiang agama Islam. Seorang muslim melakukan shalat lima waktu sebagai ungkapan rasa syukur, penghormatan, dan ketaatan kepada Allah. Aqidah yang kuat memotivasi seorang muslim untuk melaksanakan shalat dengan penuh khusyuk dan kesadaran akan hadirnya Allah.<br><br></li><li><strong>Puasa</strong>: Aqidah mengajarkan bahwa puasa Ramadhan adalah perintah Allah yang harus dilaksanakan oleh setiap muslim. Aqidah yang benar mengajarkan pentingnya menahan diri dari makan, minum, dan hal-hal yang membatalkan puasa, serta menjaga akhlak dan perilaku selama berpuasa.<br><br></li><li><strong>Zakat</strong>: Aqidah mengajarkan bahwa zakat adalah kewajiban sosial yang harus dipenuhi oleh setiap muslim yang mampu. Aqidah yang kuat memotivasi seorang muslim untuk memberikan zakat dengan ikhlas dan berbagi rezeki kepada yang membutuhkan.<br><br></li><li><strong>Haji</strong>: Aqidah mengajarkan bahwa haji adalah kewajiban sekali seumur hidup bagi muslim yang mampu. Aqidah yang benar memotivasi seorang muslim untuk menjalankan ibadah haji dengan penuh rasa hormat dan penyerahan diri kepada Allah SWT.<br><br></li></ol><div>Pentingnya Memperkuat Aqidah dalam Ibadah<br><br></div><ol><li><strong>Mengokohkan Iman</strong>: Aqidah yang kuat mengokohkan iman seorang muslim terhadap Allah dan meneguhkan tekad untuk mengikuti segala perintah-Nya.<br><br></li><li><strong>Membimbing Perilaku</strong>: Aqidah yang benar membimbing perilaku seorang muslim dalam ibadah dan kehidupan sehari-hari, menjadikan ibadah sebagai fondasi untuk kehidupan yang bermakna dan bertanggung jawab.<br><br></li><li><strong>Menjaga Kesucian Ibadah</strong>: Aqidah yang kokoh memastikan bahwa setiap ibadah dilakukan dengan niat dan penghormatan yang tulus, menjaga kesucian dan keabsahan ibadah di mata Allah SWT.<br><br></li></ol><div>Pembelajaran dan Penguatan Aqidah dalam Ibadah<br><br></div><ol><li><strong>Studi Al-Qur\'an dan Hadis</strong>: Studi mendalam terhadap Al-Qur\'an dan hadis Nabi Muhammad SAW merupakan langkah awal untuk memperkuat aqidah dalam ibadah.<br><br></li><li><strong>Refleksi dan Kontemplasi</strong>: Merenungkan makna dan tujuan dari setiap ibadah dalam konteks aqidah dapat membantu memperdalam penghayatan dan kebermaknaan setiap ibadah.<br><br></li><li><strong>Konsultasi dengan Ulama</strong>: Mencari nasihat dari ulama yang berpengetahuan luas tentang aqidah dapat memberikan pencerahan dan pemahaman yang lebih dalam.<br><br></li></ol><div>Kesimpulan<br><br></div><div>Aqidah dalam ibadah Islam adalah landasan utama yang mengarahkan setiap muslim untuk melaksanakan ibadah dengan penuh kesadaran, keikhlasan, dan ketaatan kepada Allah SWT. Aqidah yang kokoh mengokohkan iman seorang muslim, membimbing perilaku dalam ibadah, serta menjaga kesucian dan keabsahan setiap amal ibadah di mata Allah. Dengan memahami dan mengamalkan aqidah dengan baik, seorang muslim dapat memperoleh keberkahan dalam ibadah dan mendekatkan diri kepada Allah SWT.<br><br></div>', 'Aqidah dalam konteks ibadah dalam Islam merujuk pada keyakinan yang teguh terhadap prinsip-prinsip dasar yang mengatur tata cara dan tujuan ibadah seorang muslim. Aqidah tidak hanya mencakup keyakinan...', 2, NULL, '2024-06-13 06:30:13', '2024-06-13 06:30:13', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kategoriarsips`
--

CREATE TABLE `kategoriarsips` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_arsip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `kategori_artikel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `kategori_berita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `komentar_artikel` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `komentar_berita` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `portalberita_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarberitas`
--

INSERT INTO `komentarberitas` (`id`, `komentar_berita`, `portalberita_id`, `created_at`, `updated_at`) VALUES
(22, 'p', 15, '2024-06-13 05:55:03', '2024-06-13 05:55:03'),
(23, 'halo', 15, '2024-06-13 05:56:49', '2024-06-13 05:56:49'),
(24, 'iyaa nih saya baru 3 tahun di batam sudah jd pengangguran, sedih', 19, '2024-06-13 06:06:46', '2024-06-13 06:06:46'),
(25, 'ceritanya bagus', 18, '2024-06-16 06:47:10', '2024-06-16 06:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `komentarkajians`
--

CREATE TABLE `komentarkajians` (
  `id` bigint UNSIGNED NOT NULL,
  `komentar_kajian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kajian_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentarkajians`
--

INSERT INTO `komentarkajians` (`id`, `komentar_kajian`, `kajian_id`, `created_at`, `updated_at`) VALUES
(10, 'Subhanallah', 6, '2024-06-13 07:59:45', '2024-06-13 07:59:45'),
(11, 'ajgkfkafhjgriu', 5, '2024-06-16 06:51:22', '2024-06-16 06:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `mediasosials`
--

CREATE TABLE `mediasosials` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_medsos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_medsos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mediasosials`
--

INSERT INTO `mediasosials` (`id`, `nama_medsos`, `link_medsos`, `created_at`, `updated_at`, `user_id`) VALUES
(4, 'Instagram', 'https://www.instagram.com/mabruralmutaqi', '2024-06-13 04:52:53', '2024-06-13 04:53:12', 8);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `nama_ortom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ketua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ortoms`
--

INSERT INTO `ortoms` (`id`, `nama_ortom`, `nama_ketua`, `created_at`, `updated_at`, `user_id`) VALUES
(5, 'Pimpinan Cabang Aisyiyah Batam Kota', 'Muhammad Mabrur Al Mutaqi', '2024-06-13 04:46:26', '2024-06-13 04:46:46', 8),
(6, 'Pimpinan Ranting Muhammadiyah Batam Kota', 'Daniel Charli Samuel Siburian', '2024-06-13 04:46:58', '2024-06-13 04:46:58', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumumen`
--

CREATE TABLE `pengumumen` (
  `id` bigint UNSIGNED NOT NULL,
  `judul_pengumuman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengumuman` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumumen`
--

INSERT INTO `pengumumen` (`id`, `judul_pengumuman`, `isi_pengumuman`, `created_at`, `updated_at`, `user_id`) VALUES
(11, 'Publikasi Website Resmi PCM Batam Kota', 'Pada hari ini, Website Official Pimpinan Cabang Muhammadiyah Kecamatan Batam Kota, Dinyatakan Resmi Rilis', '2024-06-13 04:01:57', '2024-06-13 04:01:57', 8);

-- --------------------------------------------------------

--
-- Table structure for table `portalberitas`
--

CREATE TABLE `portalberitas` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(15, 'Kecerdasan Buatan (AI): Mengubah Dunia dengan Teknologi Canggih', 'b566597e1a3765430203442a9329f995170d88e1028f25fcc70a787866c7a536.jpeg', '<div><strong>Pengantar Kecerdasan Buatan</strong><br><br></div><div>Kecerdasan Buatan (Artificial Intelligence atau AI) adalah bidang ilmu komputer yang berfokus pada pengembangan sistem yang dapat melakukan tugas yang biasanya memerlukan kecerdasan manusia. Ini termasuk tugas seperti pengenalan suara, pemahaman bahasa alami, pengambilan keputusan, dan pemecahan masalah. AI telah menjadi bagian integral dari berbagai industri, mengubah cara kita bekerja, hidup, dan bermain.<br><br></div><div><strong>Sejarah Singkat AI</strong><br><br></div><div>Perkembangan AI dimulai pada pertengahan abad ke-20 dengan pemikiran tentang mesin yang dapat \"berpikir\". Alan Turing, salah satu pelopor dalam bidang ini, memperkenalkan konsep mesin yang dapat meniru proses berpikir manusia. Sejak itu, AI telah mengalami berbagai fase perkembangan, dari ekspektasi tinggi di tahun 1950-an hingga periode \"musim dingin AI\" ketika pendanaan dan minat menurun karena kemajuan yang lambat. Namun, dengan meningkatnya daya komputasi dan ketersediaan data dalam jumlah besar, AI kini kembali menjadi pusat perhatian dengan kemajuan yang signifikan.<br><br></div><div><strong>Jenis-Jenis AI</strong><br><br></div><ol><li><strong>AI Sempit (Narrow AI)</strong>: Juga dikenal sebagai AI lemah, AI sempit dirancang untuk melakukan tugas tertentu. Contoh termasuk asisten virtual seperti Siri dan Alexa, sistem rekomendasi di Netflix dan Amazon, serta algoritma pengenalan wajah di media sosial.<br><br></li><li><strong>AI Umum (General AI)</strong>: AI umum memiliki kemampuan untuk memahami, belajar, dan menerapkan pengetahuan di berbagai domain, mirip dengan kecerdasan manusia. Meskipun AI umum adalah tujuan akhir banyak peneliti, saat ini belum ada sistem AI yang mencapai tingkat ini.<br><br></li><li><strong>AI Superinteligensi (Superintelligent AI)</strong>: Ini adalah tahap di mana kecerdasan mesin melampaui kecerdasan manusia dalam hampir semua aspek, termasuk kreativitas, pemecahan masalah, dan pengambilan keputusan. AI superinteligensi masih bersifat spekulatif dan merupakan subjek perdebatan etis dan filosofis.<br><br></li></ol><div><strong>Aplikasi AI dalam Kehidupan Sehari-hari</strong><br><br></div><ol><li><strong>Kesehatan</strong>: AI digunakan untuk menganalisis data medis dan membantu diagnosis penyakit. Algoritma pembelajaran mesin dapat mengidentifikasi pola dalam data yang mungkin terlewatkan oleh dokter manusia.<br><br></li><li><strong>Transportasi</strong>: Kendaraan otonom menggunakan AI untuk menavigasi jalan dan menghindari rintangan. Perusahaan seperti Tesla dan Waymo berada di garis depan inovasi ini.<br><br></li><li><strong>Keuangan</strong>: AI membantu dalam mendeteksi penipuan, mengelola portofolio investasi, dan memberikan layanan pelanggan melalui chatbots.<br><br></li><li><strong>Pendidikan</strong>: AI dapat memberikan pengalaman belajar yang disesuaikan dengan kebutuhan individu, menawarkan bimbingan tambahan, dan mengevaluasi kinerja siswa.<br><br></li><li><strong>Hiburan</strong>: AI digunakan dalam pengembangan video game, rekomendasi konten di platform streaming, dan bahkan dalam menciptakan musik dan seni.<br><br></li></ol><div><strong>Tantangan dan Etika dalam AI</strong><br><br></div><div>Dengan semua kelebihannya, AI juga membawa tantangan etis dan sosial. Beberapa isu utama meliputi:<br><br></div><ul><li><strong>Privasi</strong>: Pengumpulan dan analisis data besar-besaran menimbulkan kekhawatiran tentang privasi individu.</li><li><strong>Bias</strong>: Algoritma AI dapat mencerminkan dan memperkuat bias yang ada dalam data, menyebabkan diskriminasi.</li><li><strong>Pekerjaan</strong>: Otomatisasi yang didorong oleh AI dapat menggantikan pekerjaan manusia, menimbulkan tantangan ekonomi dan sosial.</li><li><strong>Keamanan</strong>: AI yang kuat dapat digunakan untuk tujuan berbahaya, seperti pengembangan senjata otonom.</li></ul><div><strong>Masa Depan AI</strong><br><br></div><div>Masa depan AI sangat menjanjikan dengan potensi untuk revolusi di berbagai bidang. Penelitian terus berlanjut untuk mengembangkan AI yang lebih canggih dan aman. Fokus masa depan termasuk pengembangan AI yang lebih transparan, dapat dijelaskan, dan bertanggung jawab.<br><br></div><div><strong>Kesimpulan</strong><br><br></div><div>Kecerdasan Buatan adalah teknologi yang mengubah dunia dengan cepat. Dengan aplikasi yang luas dan potensi yang besar, AI menawarkan peluang luar biasa sekaligus menimbulkan tantangan etis yang perlu kita hadapi bersama. Dengan pendekatan yang bijaksana, kita dapat memanfaatkan AI untuk kebaikan bersama dan menciptakan masa depan yang lebih cerdas dan berkelanjutan.<br><br></div>', 'Pengantar Kecerdasan BuatanKecerdasan Buatan (Artificial Intelligence atau AI) adalah bidang ilmu komputer yang berfokus pada pengembangan sistem yang dapat melakukan tugas yang biasanya memerlukan ke...', 2, NULL, '2024-06-13 05:54:24', '2024-06-13 05:55:49', 8),
(16, 'Korupsi: Mengungkap Ancaman yang Menggerogoti Bangsa', '41d4da8fa6858d1016212487bde37a3ffe173b3f60f8f77e5692c409bbf71802.jpg', '<div>Pengantar Korupsi<br><br></div><div>Korupsi adalah penyalahgunaan kekuasaan untuk keuntungan pribadi. Praktik ini mencakup berbagai bentuk perilaku, termasuk penyuapan, pemerasan, nepotisme, dan penggelapan dana publik. Korupsi merupakan ancaman serius bagi pembangunan ekonomi, sosial, dan politik, menggerogoti kepercayaan publik dan merusak sistem pemerintahan.<br><br></div><div>Bentuk-Bentuk Korupsi<br><br></div><ol><li><strong>Penyuapan</strong>: Memberi atau menerima uang, barang, atau layanan sebagai imbalan untuk keuntungan atau layanan yang tidak semestinya.</li><li><strong>Pemerasan</strong>: Memaksa seseorang untuk memberikan uang atau layanan dengan ancaman atau kekerasan.</li><li><strong>Nepotisme</strong>: Memberikan pekerjaan atau keuntungan lainnya kepada keluarga atau teman tanpa melalui proses yang adil.</li><li><strong>Penggelapan</strong>: Pencurian atau penyalahgunaan dana yang dipercayakan kepada seseorang, terutama dalam konteks administrasi publik atau perusahaan.</li></ol><div>Dampak Korupsi<br><br></div><ol><li><strong>Ekonomi</strong>: Korupsi menghambat pertumbuhan ekonomi dengan mengurangi investasi asing, meningkatkan biaya bisnis, dan mengalihkan sumber daya dari penggunaan yang produktif.</li><li><strong>Politik</strong>: Korupsi merusak legitimasi pemerintahan, mengurangi partisipasi politik, dan memperkuat kekuasaan kelompok elite.</li><li><strong>Sosial</strong>: Korupsi memperburuk ketimpangan sosial, mengurangi akses masyarakat miskin terhadap layanan publik, dan meningkatkan ketidakpuasan sosial.</li><li><strong>Lingkungan</strong>: Korupsi dapat menyebabkan pengelolaan sumber daya alam yang buruk, meningkatkan eksploitasi lingkungan, dan mempercepat degradasi ekosistem.</li></ol><div>Faktor Penyebab Korupsi<br><br></div><ol><li><strong>Kelemahan Institusi</strong>: Institusi yang lemah, termasuk sistem peradilan dan penegakan hukum, sering kali gagal mencegah dan menghukum perilaku koruptif.</li><li><strong>Kurangnya Transparansi</strong>: Ketidaktransparanan dalam proses pengambilan keputusan dan pengelolaan dana publik memudahkan korupsi.</li><li><strong>Budaya dan Norma Sosial</strong>: Di beberapa masyarakat, korupsi dianggap sebagai praktik yang biasa dan diterima.</li><li><strong>Ketidakadilan Ekonomi</strong>: Ketimpangan ekonomi yang tinggi seringkali mendorong individu untuk mencari keuntungan pribadi melalui cara-cara yang tidak sah.</li></ol><div>Upaya Pemberantasan Korupsi<br><br></div><ol><li><strong>Peningkatan Transparansi</strong>: Memperbaiki transparansi dalam administrasi publik dan proses pengambilan keputusan untuk mengurangi peluang korupsi.</li><li><strong>Penguatan Institusi</strong>: Meningkatkan kapasitas dan independensi lembaga penegak hukum, termasuk komisi antikorupsi dan sistem peradilan.</li><li><strong>Edukasi dan Kesadaran Publik</strong>: Mengedukasi masyarakat tentang dampak buruk korupsi dan pentingnya integritas dalam kehidupan sehari-hari.</li><li><strong>Teknologi dan Inovasi</strong>: Menggunakan teknologi informasi untuk memantau dan mengaudit pengeluaran publik, serta menyediakan platform pelaporan anonim untuk whistleblowers.</li><li><strong>Kerja Sama Internasional</strong>: Kolaborasi antarnegara dalam memerangi korupsi lintas batas, termasuk pelacakan dan pengembalian aset yang dicuri.</li></ol><div>Kasus-Kasus Korupsi Terkenal<br><br></div><ol><li><strong>Skandal Enron</strong>: Salah satu kasus korupsi perusahaan terbesar di Amerika Serikat, di mana eksekutif Enron terlibat dalam pemalsuan laporan keuangan.</li><li><strong>1MDB (Malaysia)</strong>: Kasus korupsi besar yang melibatkan dana investasi negara Malaysia, yang diduga disalahgunakan untuk kepentingan pribadi pejabat tinggi negara.</li><li><strong>Odebrecht (Brasil)</strong>: Perusahaan konstruksi Brasil yang terlibat dalam penyuapan pejabat pemerintah di berbagai negara Amerika Latin untuk memenangkan kontrak proyek besar.</li></ol><div>Peran Masyarakat dalam Pemberantasan Korupsi<br><br></div><div>Masyarakat memiliki peran penting dalam pemberantasan korupsi. Partisipasi aktif dalam pemantauan dan pelaporan tindakan korupsi, serta dukungan terhadap kebijakan antikorupsi, sangat diperlukan. Masyarakat juga dapat mendukung organisasi masyarakat sipil dan media independen yang berperan sebagai watchdog dalam mengawasi tindakan pemerintah dan sektor swasta.<br><br></div><div>Kesimpulan<br><br></div><div>Korupsi adalah masalah serius yang memerlukan pendekatan terpadu dan komitmen bersama dari pemerintah, sektor swasta, dan masyarakat. Dengan transparansi, akuntabilitas, dan penegakan hukum yang kuat, serta partisipasi aktif masyarakat, kita dapat mengurangi korupsi dan membangun masa depan yang lebih adil dan berkelanjutan.<br><br></div>', 'Pengantar KorupsiKorupsi adalah penyalahgunaan kekuasaan untuk keuntungan pribadi. Praktik ini mencakup berbagai bentuk perilaku, termasuk penyuapan, pemerasan, nepotisme, dan penggelapan dana publik....', 1, NULL, '2024-06-13 05:58:53', '2024-06-13 05:58:53', 8),
(17, 'Peluncuran Tapera: Solusi Perumahan Terjangkau untuk Rakyat Indonesia', 'e19cbe33416007e321051b0cea8e7893498d16a27af350541e307601d750b7b5.jpg', '<div><strong>Jakarta, 13 Juni 2024</strong> - Pemerintah Indonesia resmi meluncurkan Tabungan Perumahan Rakyat (Tapera), sebuah program yang bertujuan untuk menyediakan solusi perumahan yang terjangkau bagi masyarakat. Peluncuran Tapera diresmikan dalam sebuah acara yang dihadiri oleh Presiden Joko Widodo, Menteri Pekerjaan Umum dan Perumahan Rakyat, Basuki Hadimuljono, dan sejumlah pejabat tinggi lainnya.<br><br></div><div>Latar Belakang Tapera<br><br></div><div>Tapera adalah program yang diinisiasi oleh pemerintah untuk mengatasi masalah perumahan yang dihadapi oleh masyarakat berpenghasilan rendah dan menengah di Indonesia. Program ini berfungsi sebagai wadah tabungan jangka panjang yang memungkinkan masyarakat untuk menabung sebagian dari pendapatan mereka secara rutin. Dana yang terkumpul akan digunakan untuk menyediakan pinjaman perumahan dengan bunga rendah dan skema pembayaran yang terjangkau.<br><br></div><div>Tujuan dan Manfaat Tapera<br><br></div><div>Dalam pidatonya, Presiden Joko Widodo menyatakan bahwa Tapera bertujuan untuk meningkatkan akses masyarakat terhadap perumahan yang layak dan terjangkau. \"Tapera adalah komitmen kami untuk memastikan setiap warga negara memiliki tempat tinggal yang layak dan nyaman. Ini adalah langkah penting dalam upaya kita mewujudkan keadilan sosial bagi seluruh rakyat Indonesia,\" ujarnya.<br><br></div><div>Manfaat Tapera antara lain:<br><br></div><ol><li><strong>Akses Pembiayaan Perumahan</strong>: Memberikan akses kepada masyarakat untuk mendapatkan pembiayaan perumahan dengan bunga rendah dan skema pembayaran yang fleksibel.</li><li><strong>Tabungan Jangka Panjang</strong>: Mendorong budaya menabung di kalangan masyarakat untuk kebutuhan perumahan di masa depan.</li><li><strong>Peningkatan Kualitas Hidup</strong>: Dengan memiliki rumah yang layak, diharapkan kualitas hidup masyarakat akan meningkat, termasuk dalam hal kesehatan, pendidikan, dan stabilitas ekonomi.</li></ol><div>Mekanisme Tapera<br><br></div><div>Program Tapera akan dikelola oleh Badan Pengelola Tabungan Perumahan Rakyat (BP Tapera), yang bertanggung jawab atas pengumpulan, pengelolaan, dan penyaluran dana. Setiap pekerja, baik dari sektor formal maupun informal, akan diwajibkan untuk menyisihkan sebagian kecil dari gaji bulanan mereka sebagai kontribusi ke Tapera. Pemberi kerja juga akan turut serta menyumbang sebagian dana untuk setiap pekerja yang mereka pekerjakan.<br><br></div><div>Dana yang terkumpul akan diinvestasikan dalam berbagai instrumen keuangan yang aman dan menguntungkan. Keuntungan dari investasi ini akan digunakan untuk memberikan subsidi bunga pinjaman dan meningkatkan jumlah dana yang tersedia untuk pembiayaan perumahan.<br><br></div><div>Tantangan dan Harapan<br><br></div><div>Meskipun Tapera diharapkan dapat memberikan solusi nyata bagi masalah perumahan di Indonesia, program ini juga menghadapi sejumlah tantangan. Salah satunya adalah memastikan partisipasi dan kesadaran masyarakat tentang pentingnya menabung untuk perumahan. Selain itu, pengelolaan dana yang transparan dan akuntabel menjadi kunci keberhasilan program ini.<br><br></div><div>Menteri Basuki Hadimuljono menambahkan, \"Kami sangat optimis dengan peluncuran Tapera. Namun, kami juga menyadari bahwa ini bukan tugas yang mudah. Diperlukan kerjasama yang kuat antara pemerintah, sektor swasta, dan masyarakat untuk mencapai tujuan ini. Kami berkomitmen untuk menjalankan program ini dengan transparan dan akuntabel.\"<br><br></div><div>Respon Masyarakat<br><br></div><div>Peluncuran Tapera mendapat sambutan positif dari berbagai kalangan. Asosiasi Pengembang Perumahan dan Permukiman Seluruh Indonesia (APERSI) menyatakan dukungannya terhadap program ini dan siap untuk berkolaborasi dengan pemerintah dalam penyediaan perumahan yang layak.<br><br></div><div>Salah satu warga, Rini (34), seorang pegawai swasta di Jakarta, menyambut baik program ini. \"Dengan adanya Tapera, saya merasa lebih tenang karena ada harapan untuk memiliki rumah sendiri. Ini sangat membantu, terutama bagi kami yang berpenghasilan pas-pasan,\" ujarnya.<br><br></div><div>Kesimpulan<br><br></div><div>Peluncuran Tapera merupakan langkah besar dalam upaya pemerintah untuk menyediakan perumahan yang terjangkau bagi seluruh rakyat Indonesia. Dengan mekanisme yang terencana dan kerjasama semua pihak, diharapkan program ini dapat berjalan dengan sukses dan memberikan manfaat yang signifikan bagi masyarakat.<br><br></div>', 'Jakarta, 13 Juni 2024 - Pemerintah Indonesia resmi meluncurkan Tabungan Perumahan Rakyat (Tapera), sebuah program yang bertujuan untuk menyediakan solusi perumahan yang terjangkau bagi masyarakat. Pel...', 1, NULL, '2024-06-13 06:00:52', '2024-06-13 06:00:52', 8),
(18, 'Kenaikan UKT: Mahasiswa Menggelar Aksi Protes di Berbagai Kota', 'bdcb44a2a43bd586926e9685d9c36d4bc22ebeb03b51bc3a7b3a1030654978b4.jpeg', '<div><strong>Jakarta, 13 Juni 2024</strong> - Gelombang protes mahasiswa melanda berbagai kota besar di Indonesia setelah diumumkannya kenaikan Uang Kuliah Tunggal (UKT) di sejumlah perguruan tinggi negeri. Kebijakan ini memicu kekhawatiran di kalangan mahasiswa dan orang tua tentang meningkatnya biaya pendidikan tinggi.<br><br></div><div>Latar Belakang Kenaikan UKT<br><br></div><div>Kenaikan UKT diumumkan oleh Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi (Kemendikbudristek) pada awal Juni 2024. Menurut pihak kementerian, kenaikan ini diperlukan untuk menutupi biaya operasional yang meningkat, memperbaiki fasilitas, dan meningkatkan kualitas pendidikan.<br><br></div><div>Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi, Nadiem Makarim, dalam pernyataannya mengatakan, \"Kenaikan UKT ini tidak bisa dihindari mengingat kebutuhan untuk peningkatan kualitas pendidikan yang lebih baik. Kami berkomitmen untuk memastikan bahwa dana tambahan ini akan digunakan secara transparan dan akuntabel untuk kepentingan mahasiswa.\"<br><br></div><div>Respon Mahasiswa<br><br></div><div>Mahasiswa dari berbagai perguruan tinggi segera merespon dengan menggelar aksi protes di kampus-kampus dan jalan-jalan utama di kota besar seperti Jakarta, Bandung, Yogyakarta, dan Surabaya. Mereka menuntut penundaan kenaikan UKT dan dialog terbuka dengan pihak kementerian serta rektorat universitas.<br><br></div><div>Ketua Badan Eksekutif Mahasiswa Universitas Indonesia (BEM UI), Ahmad Zulkarnain, dalam orasinya mengatakan, \"Kenaikan UKT ini memberatkan kami, terutama di tengah kondisi ekonomi yang belum pulih sepenuhnya pasca-pandemi. Kami meminta transparansi dalam pengelolaan dana dan kejelasan mengenai manfaat yang akan kami terima dari kenaikan ini.\"<br><br></div><div>Dampak Ekonomi dan Sosial<br><br></div><div>Kenaikan UKT menimbulkan kekhawatiran di kalangan orang tua mahasiswa, terutama bagi mereka yang berasal dari keluarga berpenghasilan rendah. Banyak yang khawatir bahwa kenaikan ini akan menyebabkan peningkatan angka putus kuliah karena ketidakmampuan membayar biaya pendidikan.<br><br></div><div>Salah satu orang tua mahasiswa, Ibu Siti (45), mengatakan, \"Kami sudah berjuang keras untuk menyekolahkan anak kami hingga ke perguruan tinggi. Kenaikan UKT ini membuat kami khawatir tidak akan mampu lagi membiayai pendidikan anak kami.\"<br><br></div><div>Tanggapan Pemerintah dan Universitas<br><br></div><div>Kemendikbudristek telah merespon protes ini dengan menyatakan kesiapan untuk berdialog dengan perwakilan mahasiswa dan orang tua. Mereka juga menjanjikan adanya skema bantuan keuangan dan beasiswa tambahan untuk membantu mahasiswa yang terdampak kenaikan UKT.<br><br></div><div>Beberapa universitas juga mengeluarkan pernyataan yang serupa, berjanji untuk mengkaji ulang kebijakan kenaikan UKT dan mencari solusi yang lebih bijaksana. Rektor Universitas Gadjah Mada (UGM), Prof. Panut Mulyono, mengatakan, \"Kami memahami kekhawatiran mahasiswa dan orang tua. Kami akan melakukan dialog terbuka untuk mencari solusi terbaik yang tidak memberatkan semua pihak.\"<br><br></div><div>Aksi Lanjutan dan Harapan<br><br></div><div>Para mahasiswa menyatakan akan terus menggelar aksi protes hingga ada kesepakatan yang memuaskan semua pihak. Mereka juga menyerukan solidaritas dari seluruh mahasiswa di Indonesia untuk bersama-sama menolak kenaikan UKT yang dianggap memberatkan.<br><br></div><div>Koordinator Aliansi Mahasiswa Indonesia, Budi Prasetyo, mengatakan, \"Kami tidak akan berhenti berjuang hingga suara kami didengar dan diperhatikan. Pendidikan adalah hak semua warga negara dan tidak boleh menjadi beban yang tak tertanggungkan.\"<br><br></div><div>Kesimpulan<br><br></div><div>Kenaikan UKT di berbagai perguruan tinggi negeri memicu gelombang protes dari mahasiswa yang merasa kebijakan ini memberatkan mereka dan orang tua. Meskipun pihak pemerintah dan universitas menyatakan kesiapan untuk berdialog dan mencari solusi, aksi protes masih terus berlanjut dengan harapan adanya perubahan kebijakan yang lebih adil dan tidak memberatkan.<br><br></div><div>Berita ini menggarisbawahi pentingnya dialog terbuka dan transparansi dalam pengelolaan dana pendidikan untuk memastikan akses yang merata bagi semua lapisan masyarakat.<br><br></div>', 'Jakarta, 13 Juni 2024 - Gelombang protes mahasiswa melanda berbagai kota besar di Indonesia setelah diumumkannya kenaikan Uang Kuliah Tunggal (UKT) di sejumlah perguruan tinggi negeri. Kebijakan ini m...', 1, NULL, '2024-06-13 06:03:06', '2024-06-13 06:03:06', 8),
(19, 'Lonjakan Pengangguran di Indonesia: Pemerintah Dituntut Ambil Tindakan Cepat', 'ca5bdca870b5885682bb83d00b0d554fa840000a13db8658e191ff58744bfa2d.jpg', '<div><strong>Jakarta, 13 Juni 2024</strong> - Tingkat pengangguran di Indonesia mengalami lonjakan signifikan dalam beberapa bulan terakhir, memicu kekhawatiran di kalangan pemerintah, masyarakat, dan pakar ekonomi. Data terbaru dari Badan Pusat Statistik (BPS) menunjukkan peningkatan tingkat pengangguran hingga mencapai 7,5%, naik dari 5,8% pada periode yang sama tahun sebelumnya.<br><br></div><div>Penyebab Lonjakan Pengangguran<br><br></div><div>Beberapa faktor utama yang menyebabkan lonjakan pengangguran ini antara lain:<br><br></div><ol><li><strong>Dampak Pandemi COVID-19</strong>: Meskipun pandemi mulai mereda, banyak sektor ekonomi yang masih berjuang untuk pulih. Banyak perusahaan yang belum mampu kembali ke kapasitas penuh, yang menyebabkan pemutusan hubungan kerja (PHK) dan pengurangan tenaga kerja.<br><br></li><li><strong>Perubahan Teknologi</strong>: Digitalisasi dan otomatisasi yang meningkat di berbagai sektor telah mengurangi kebutuhan akan tenaga kerja manusia. Banyak pekerjaan tradisional yang kini digantikan oleh teknologi canggih dan sistem otomatis.<br><br></li><li><strong>Ketidakstabilan Ekonomi Global</strong>: Ketidakpastian ekonomi global, termasuk fluktuasi harga komoditas dan ketegangan perdagangan internasional, telah berdampak pada sektor-sektor seperti manufaktur dan pertanian, yang banyak menyerap tenaga kerja.<br><br></li></ol><div>Dampak Sosial dan Ekonomi<br><br></div><div>Lonjakan pengangguran ini memiliki dampak luas, baik secara sosial maupun ekonomi. Peningkatan jumlah pengangguran telah menyebabkan:<br><br></div><ol><li><strong>Kesulitan Ekonomi</strong>: Banyak keluarga yang kehilangan sumber pendapatan utama mereka, yang mengakibatkan peningkatan kemiskinan dan kesulitan ekonomi.<br><br></li><li><strong>Kesehatan Mental</strong>: Tingkat stres dan kecemasan meningkat di kalangan mereka yang kehilangan pekerjaan, yang berkontribusi pada masalah kesehatan mental.<br><br></li><li><strong>Ketidakstabilan Sosial</strong>: Pengangguran yang tinggi dapat memicu ketidakstabilan sosial, termasuk peningkatan tingkat kejahatan dan protes masyarakat.<br><br></li></ol><div>Tanggapan Pemerintah<br><br></div><div>Pemerintah Indonesia menyadari seriusnya masalah ini dan telah mengumumkan beberapa langkah untuk mengatasi lonjakan pengangguran. Menteri Ketenagakerjaan, Ida Fauziyah, menyatakan bahwa pemerintah akan mempercepat pelaksanaan program-program penciptaan lapangan kerja dan pelatihan vokasi.<br><br></div><div>\"Situasi ini memerlukan tindakan segera. Kami akan meningkatkan program pelatihan keterampilan dan memastikan bahwa tenaga kerja kita siap untuk menghadapi perubahan di pasar kerja. Selain itu, kami akan mendorong investasi di sektor-sektor yang dapat menciptakan banyak lapangan kerja,\" kata Menteri Ida.<br><br></div><div>Program dan Inisiatif<br><br></div><div>Beberapa program yang akan dijalankan oleh pemerintah antara lain:<br><br></div><ol><li><strong>Pelatihan dan Pengembangan Keterampilan</strong>: Program pelatihan vokasi dan keterampilan akan ditingkatkan untuk membantu pekerja yang terkena PHK agar dapat memperoleh keterampilan baru yang dibutuhkan di pasar kerja saat ini.<br><br></li><li><strong>Dukungan bagi Usaha Mikro, Kecil, dan Menengah (UMKM)</strong>: Pemerintah akan menyediakan insentif dan bantuan bagi UMKM untuk membantu mereka pulih dan menciptakan lapangan kerja baru.<br><br></li><li><strong>Investasi dalam Infrastruktur</strong>: Proyek-proyek infrastruktur besar diharapkan dapat menyerap banyak tenaga kerja dan memberikan dorongan bagi perekonomian.<br><br></li><li><strong>Digitalisasi dan Teknologi</strong>: Pemerintah akan mendorong pengembangan ekonomi digital yang dapat membuka peluang baru bagi tenaga kerja di sektor teknologi dan startup.<br><br></li></ol><div>Tanggapan dari Masyarakat dan Pakar<br><br></div><div>Para pakar ekonomi dan masyarakat menyambut baik inisiatif pemerintah, namun menekankan perlunya implementasi yang cepat dan efektif. Ekonom dari Universitas Indonesia, Dr. Faisal Basri, menyatakan, \"Langkah-langkah yang diumumkan pemerintah adalah langkah yang tepat, namun harus ada mekanisme yang jelas untuk memastikan program-program tersebut dijalankan dengan efisien dan mencapai sasaran.\"<br><br></div><div>Sementara itu, Aliansi Buruh Indonesia (ABI) menyerukan agar pemerintah tidak hanya fokus pada pelatihan, tetapi juga memperhatikan perlindungan sosial bagi mereka yang terkena dampak pengangguran. \"Kami berharap pemerintah juga memperkuat jaringan pengaman sosial untuk membantu keluarga yang terkena dampak langsung dari pengangguran,\" kata Ketua ABI, Nining Elitos.<br><br></div><div>Kesimpulan<br><br></div><div>Lonjakan pengangguran di Indonesia adalah tantangan besar yang memerlukan tindakan cepat dan efektif dari semua pihak. Pemerintah telah mengumumkan berbagai langkah untuk mengatasi masalah ini, namun keberhasilan upaya tersebut akan sangat bergantung pada implementasi dan kerjasama antara pemerintah, sektor swasta, dan masyarakat. Dengan kerja sama yang baik, diharapkan tingkat pengangguran dapat ditekan dan perekonomian kembali stabil.<br><br></div>', 'Jakarta, 13 Juni 2024 - Tingkat pengangguran di Indonesia mengalami lonjakan signifikan dalam beberapa bulan terakhir, memicu kekhawatiran di kalangan pemerintah, masyarakat, dan pakar ekonomi. Data t...', 1, NULL, '2024-06-13 06:05:36', '2024-06-13 06:05:36', 8);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6kVVAyQg6oIAd8pHHsr3wAVUtaVKeSk2i5NzN6ZP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamh0a0pwRTZ2MVFCYlBwNDVKaEZiWEpCVktaYW1OUDJUZW1ZbUdXMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kaXJla3Rvcmkta2Vhbmdnb3RhYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718788670),
('aLBHWkEjR9pTZrGP2ClTA7VV8oZZACfVwLPqdD7U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWV5UVFEc0JhVFF5S1VTTEtHaGpZRDlCejZ5ajFUZUdZYm5iOXI5eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718769400),
('aok0xC6lXKzUsVBUGehOVR1LvQmcngbaoQAOj593', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUg2aGNDeURlSkV5b3pkM1N0Z2lObWJvS0ZHM1JiMnlTSFhGSE5pbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9nYWxlcmktZm90byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1718769514),
('F3MNPPeGbgchRNveeQNPYx7QRNpz9lNXJepXzsJJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0t3dFhROUM0VDBWOE10MzZNYVg4UW9Kek9OeXhHMzlSa1p5Yks5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718769416),
('FapXQX4qX4QON40oIzb11HrKFApd3NmdTF2O14VM', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUZLN2RHaHVlZmZPR1ZGTXFTQWQ4Qk1LZ3dUbUF1VEM1UHpPUEpSSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718767588),
('mgDnMSBasWmumVWpHqOKOMb6qE57xjtXrYlaqazG', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0Y2NTh0WEM1b2Y4aGhnMEJ1VnBKaWNab2xSOWNORGlkYzhwT1RUbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718767561),
('pLveN21mXtHAFKET5TJxYfxCWBjs9yfKmWzr1XKp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEtwRVM0dWVoRkp3bzE2cHF1dEpSRlFSeXhaNDhkRHdTazNSREczaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnRpa2VsLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718798653),
('pz0rwtEotWtsaFd7Sqm93LVfzS5x1nRtxsKGE6Wo', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXIxTWlGRTkzRWRKM3NxbjczZ0tUQXVwZmFFSm42ZUlIdWNXcEQ3SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718769019),
('Tty1KYXFVYfdcsNn8dXP5393kbjoNA6LZjO39o9S', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0FsZE05VzdCeVVJQXQ3T3ZOMDRIc2ZnSkhTdktpQnNVU2RITm0xMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718768992),
('z56Yoi9tTNcLKFqEhEQkn4edCajSdJXOrxurOyji', NULL, '127.0.0.1', 'WhatsApp/2.2423.10 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmJIYlFZcWd1d1JXVzJYMnVJOVcxZkV2cDlZQlgwb2xCYXFvSjE4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718769408),
('ZOk3XXsk31uBZJh6lZEaTLtH5DA6EFj8QZbqnMRX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW5zYzJuWEVRR3JJTm85MzJlV25BWmdGSE9LeFVzeHVEZlpBaFc3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718767657),
('Zu1EgDrJeMyy31wqFQwNJ1OjxXEoJmNidI86p5IM', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUxnTXpjb1JpWk1BM0RDdEx2enJnZ25NUVJCQXFqODNsVkF1M281ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718769420);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `favicon`, `nama_website`, `logo`, `no_telp`, `email`, `footer`, `created_at`, `updated_at`, `alamat`, `user_id`) VALUES
(3, 'PCM Batam Kota | Situs Resmi PCM', 'jeCQwnnVFHaViK6by21lGhqTAiWMoXWiJhMdUiSw.png', 'Pimpinan Cabang Muhammadiyah', '20IcdEgnB11l2MkYVYF68i5xoH2iWxE1aLlO4Ixi.png', '082178192938', 'pcmbatamkota.official@gmail.com', 'Pimpinan Cabang Muhammadiyah Batam Kota', NULL, '2024-06-13 04:38:45', 'Jl. Rexvin Boulevard, Belian, Batam Kota, no 74', 8);

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal_kas` date NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('Pengeluaran','Pendapatan') COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(2, 'Rizky Nurfadhilah', 'kiki', 'nrfdlhrizky@gmail.com', NULL, '$2y$12$GEehPvapt2vU2ME0eKoW6.wKt8PTeDfsFgiKrDxKJp95gqiMcv82S', NULL, '2024-05-19 10:07:43', '2024-05-25 11:05:19', 2),
(8, 'Muhammad Mabrur Al Mutaqi', 'mabrur', 'mabruralmutaqi@gmail.com', NULL, '$2y$12$rq1om40wgvIt.kXpoAhS.eAXDLlSSeOSn7mcVyQqCLLwwkBnlIOgW', NULL, '2024-05-25 10:47:25', '2024-06-02 05:20:31', 1),
(9, 'Daniel', 'daniel123', 'daniel@gmail.com', NULL, '$2y$12$ppy6fbKvB2ZgY1gccUzq/.fVXU/R/MNpsU5v7CXaNLwateakZIR2y', NULL, '2024-05-25 10:48:38', '2024-06-01 13:55:18', 3),
(12, 'Nurul', 'Nurul', 'nurul@gmail.com', NULL, '$2y$12$4VT6pV9lLVPTZ7KB.y8IFeCKDzoLqmbX9ngCOEB.4mNGh0m7gQdOu', NULL, '2024-05-25 12:17:19', '2024-05-25 12:17:19', 2),
(15, 'Asyraf Rais', 'Asyraf Rais', 'operator@gmail.com', NULL, '$2y$12$JY4hkmKFFDEWgWmeRUsbv.U5HspWtadeycnbfjvgwxda0aIMt7Lx2', NULL, '2024-06-14 03:31:48', '2024-06-14 03:31:48', 2),
(16, 'Rizky', 'kikayy', 'nrfdlkiky@gmail.com', NULL, '$2y$12$ziGrIuOiBdMHTxngSl9O8.z9ZKmhpbwmF6.lufjxkg2oIW.K/awgi', NULL, '2024-06-16 06:59:53', '2024-06-16 06:59:53', 2);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `direktorikeanggotaans`
--
ALTER TABLE `direktorikeanggotaans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galerifotos`
--
ALTER TABLE `galerifotos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `galerivideos`
--
ALTER TABLE `galerivideos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `komentarkajians`
--
ALTER TABLE `komentarkajians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mediasosials`
--
ALTER TABLE `mediasosials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portalberitas`
--
ALTER TABLE `portalberitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
