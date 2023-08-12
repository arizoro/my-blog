-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 05:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(2, 'Personal', 'personal', '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(3, 'Web Disign', 'web-disign', '2023-07-28 06:54:31', '2023-07-28 06:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_16_075928_create_posts_table', 1),
(6, '2023_07_18_010441_create_categories_table', 1),
(7, '2023_07_30_150412_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `image`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Quo ex id.', 3, 1, NULL, 'qui-et-qui-aliquam-inventore-animi', 'Accusantium et eum nesciunt aut. Repudiandae delectus repudiandae ut accusamus.', '<p?>Numquam tempore ut similique iusto rerum voluptas assumenda sit. Facere et molestiae similique est quo ipsa. Voluptatem reprehenderit id tempora voluptate ut fugit expedita. Quae magni autem doloribus architecto earum dolores dolorum.</p><p?>Repellat expedita sapiente fugit et quia pariatur natus. Est exercitationem nesciunt est aliquid alias placeat. A ullam quia vel excepturi.</p><p?>Vero quo consectetur et aspernatur maxime adipisci. Non cumque rerum nesciunt sed culpa. Qui unde praesentium vel.</p><p?>Doloremque quia earum voluptatem ut. Rem rerum sapiente provident quia dolore voluptatem. Temporibus tenetur commodi dicta maxime est. Laboriosam odio autem et et.</p><p?>Repellendus et in sunt sunt ab quis repudiandae quo. Voluptate sint laborum nostrum doloribus ea. Quia ut sint illo rerum omnis dolores cum. Accusamus reiciendis voluptatem sint ut dolor aliquid.</p><p?>Tenetur rerum nesciunt ut maiores eos iure esse voluptates. Sapiente reiciendis veniam dolor libero ducimus. Eveniet ducimus velit ut.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(2, 'Et laudantium debitis.', 3, 2, NULL, 'voluptas-voluptas-quibusdam-error-harum-adipisci-qui', 'Veniam praesentium ut et ipsa nisi necessitatibus. Accusamus enim ipsa corporis voluptates. Animi nihil non dicta aliquid.', '<p?>Velit nihil laudantium ut aut accusamus aut quis animi. Illum omnis est nostrum earum quibusdam nam molestiae. Omnis amet dolores ut ratione maiores doloribus assumenda. Nisi repellendus laudantium quo ab aut harum.</p><p?>Quas ut magnam ea exercitationem ratione repellendus quis. Rerum sunt non quam quidem accusamus animi. Eum ea velit laboriosam. Maiores minima vel et. Repudiandae nisi consequatur ut.</p><p?>Iste est id quia expedita vitae. Et quia iste ratione ut. Sunt aut nobis autem dolor. Est magnam et nisi.</p><p?>Ipsam recusandae iste nobis est. Harum numquam est ut similique. Reprehenderit porro aut dicta voluptas iure.</p><p?>Et nobis harum quasi ex non sint rerum. Ut et aut id voluptatem impedit aspernatur. Nulla unde iusto in et repellat.</p><p?>Hic minima id aspernatur nihil voluptas cum impedit. Ut nihil nostrum consequuntur et at impedit sed est. Repellat excepturi modi in.</p><p?>Ducimus dolore suscipit facere molestiae a explicabo. Ea et occaecati odio consectetur commodi dolores beatae. A laboriosam quasi sunt et voluptas voluptatum.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(3, 'Deleniti temporibus nisi.', 2, 2, NULL, 'ab-ea-asperiores-recusandae-dolores-excepturi-in', 'Voluptatem nesciunt iste perspiciatis omnis eos qui. Temporibus quia nihil voluptatum vero veniam dolorum harum.', '<p?>Eos aut vero soluta rerum est est et. Et sint excepturi qui vitae.</p><p?>Perspiciatis velit eveniet error corrupti. Eaque at similique voluptate error amet. Aut sunt vel neque debitis minus similique.</p><p?>Porro fugiat veniam quis. Non ratione animi dolorem est quod. Qui ipsa quod harum omnis aliquam accusantium.</p><p?>Omnis earum et consequuntur voluptatem veniam. In doloremque cum aut. Quis voluptatibus id qui voluptatem.</p><p?>Voluptas minus dolor ut qui. Pariatur est et consequatur eos ipsam sunt qui. Labore maiores aperiam aut soluta.</p><p?>Veritatis non magnam qui natus. Molestiae odio et et voluptatem vel. Commodi omnis laborum assumenda aperiam blanditiis. Cumque atque excepturi est et iste.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(4, 'Consequuntur quidem aliquam.', 3, 1, NULL, 'rerum-doloremque-sint-commodi-assumenda-dolor-praesentium', 'Non atque porro inventore delectus rerum qui. Culpa occaecati voluptatum qui fugiat ex ut eum. Ullam quos corporis sed voluptas a officia.', '<p?>Libero omnis sint accusantium qui autem possimus. Cupiditate quo ratione accusamus.</p><p?>Autem eius amet ducimus numquam amet. Quisquam sit nihil illum asperiores molestias exercitationem possimus dolores. Tempora sit molestias ducimus et voluptatem. Sapiente delectus tempora ea. Possimus ipsa voluptatem eligendi.</p><p?>Ut et velit porro eum nobis voluptates. Omnis consectetur fugiat nemo. Qui error laudantium ipsum expedita nam libero sed amet.</p><p?>Animi possimus quo iste fugiat ipsam deleniti maiores quia. Soluta quibusdam vero voluptatem est. Rerum exercitationem quibusdam et occaecati.</p><p?>Eveniet praesentium recusandae autem. Nesciunt rerum quia odit. Culpa est ad a sunt corporis nisi non. Et est consequatur soluta. Cumque aliquam aut tempora ipsa et totam vel.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(5, 'Tempora iure non quo.', 3, 3, NULL, 'accusantium-sed-libero-hic-quas-animi', 'Eum fugiat eos repellat eos ad. Dolorem animi fugit id nihil sunt et. A autem assumenda architecto est sunt.', '<p?>Explicabo fugit ut ex ex non est nobis porro. Voluptatem excepturi facere dolores ea nostrum eum nam. Eos quia eos repudiandae eos. Officiis ad in molestiae.</p><p?>Aut officia et neque sed et magnam. Et et voluptas molestiae libero vero fugit placeat.</p><p?>Nam laudantium quo ea harum reprehenderit ut et. Aut repudiandae nostrum recusandae nesciunt veniam culpa consequatur. Vero cumque magnam magni repudiandae quia quae.</p><p?>Veniam doloremque debitis ea earum voluptatem reiciendis autem. Dignissimos est quod dignissimos est soluta voluptatem. Non earum deserunt corrupti quis minus nemo. Dolorum molestias reprehenderit ducimus nesciunt aspernatur ducimus. Sit consequuntur sit sed iusto alias alias iusto.</p><p?>Tempore eum incidunt deleniti qui quae sed quaerat. Sint nam architecto ut dolorem et. Temporibus similique laboriosam id quos aut. Et ab optio non vel.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(6, 'Eos dolore quibusdam et.', 1, 3, NULL, 'dolores-voluptates-accusamus-est', 'Similique ab et quis qui molestias fugit libero. Voluptatem sed perspiciatis aspernatur reiciendis.', '<p?>Consequatur nihil sunt vero necessitatibus numquam ea et. Eos fugiat ipsam quidem aut vitae blanditiis voluptas. Est exercitationem veniam architecto itaque voluptatem ut et. Vel magnam sit fugit iure numquam doloribus.</p><p?>Nam quis cumque quis. Rem numquam temporibus nostrum modi nihil ullam. Harum error eum explicabo illo maxime id fugiat. Consequatur alias velit aperiam deserunt.</p><p?>Repellat molestiae dolore non ut harum totam. Dolor ut quo necessitatibus voluptatem sint aut molestias nulla. Dignissimos quis distinctio molestias dolorem asperiores debitis id voluptate. Itaque possimus repellendus quibusdam possimus cumque perferendis et eveniet.</p><p?>Dolor quisquam recusandae est fugiat sequi esse. Ut veritatis rerum enim recusandae architecto distinctio ea. Autem id sint qui et.</p><p?>Esse quasi laboriosam cum illum blanditiis alias. Et illum dolorem tempora est. Adipisci laboriosam exercitationem aspernatur voluptas et.</p><p?>Earum debitis voluptates non. Ut et ut doloribus rem et enim facilis. Sapiente quaerat ut reiciendis est mollitia omnis porro eos. Rerum facere distinctio sunt itaque.</p><p?>Natus numquam fugiat nihil velit sed et atque soluta. Dolorem consequatur sit iusto earum. Ipsam fugit rerum possimus accusamus.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(7, 'Exercitationem et aut enim repellendus neque.', 2, 3, NULL, 'aut-inventore-nostrum-ratione-maiores', 'Corrupti corrupti cumque eveniet dolores aut temporibus quasi. Molestiae quod laboriosam nostrum.', '<p?>Impedit voluptatem quos quasi voluptates. Voluptatem exercitationem nisi aut minus totam voluptas dolore sunt. Voluptates iure minima beatae nulla ut itaque amet. Aperiam et perspiciatis sunt.</p><p?>Dolores explicabo quo accusamus voluptatum aperiam. Magni corrupti perferendis odio dolores iste sed eveniet.</p><p?>Sapiente iste hic modi magni. Perspiciatis ipsa assumenda quae natus autem tenetur. Eos veniam nemo nesciunt. Hic reprehenderit laudantium eaque doloribus maxime.</p><p?>Rerum error quibusdam sed provident ut. Aliquid eum maxime est omnis sequi esse optio. Quia velit officiis eum numquam saepe sunt.</p><p?>Molestiae et aperiam ratione doloribus qui distinctio. Sint voluptatibus at quo. Pariatur veniam dolor ullam repudiandae sed velit. Quod aperiam laborum eligendi soluta officia.</p><p?>Culpa dolore non odit est quis non. Quibusdam earum omnis itaque maiores mollitia. Sequi esse qui tempore dolor. Ipsa debitis autem aut dolor.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(8, 'Et qui earum beatae debitis ut est.', 2, 4, NULL, 'aut-recusandae-reiciendis-sint-alias-quia-tempora-deserunt-dolorem', 'Aut iusto neque et tempore. Ullam voluptates velit aut pariatur non a temporibus dicta.', '<p?>Quo qui sed ad tempore aliquam aut et magnam. Accusamus mollitia vitae quaerat hic officiis placeat et consequatur. Totam non nam facere voluptatem. Voluptas beatae in totam asperiores commodi quo. Fuga et est et nostrum nulla.</p><p?>Illum nihil cumque minima voluptatibus consectetur dolorum. Labore modi magnam autem. Facilis quo asperiores occaecati officiis. Et maiores officia rem ipsam culpa ea. Libero sed quis non aliquid.</p><p?>Aut velit voluptas accusantium qui saepe. Sit labore aliquid soluta veniam et qui. Sit suscipit est a facere suscipit est aut error. Suscipit eius exercitationem quo officiis odit eveniet vel.</p><p?>Quia vel cum sint illum similique illo. Dicta sed ratione eos rerum soluta. Saepe nisi quidem beatae iusto vel ab eligendi.</p><p?>Fugiat voluptas suscipit quos laudantium eaque. Earum beatae ut quam aut deserunt. Laborum et dolore odit iure.</p><p?>Itaque aliquam necessitatibus molestiae qui numquam natus. Aliquid distinctio debitis facere ipsam.</p><p?>Commodi vero est eum harum libero molestiae. Qui dolorem officia et iusto. Repellendus voluptas omnis quas dignissimos. Et sequi qui ratione amet dignissimos ipsam vel. Dignissimos ut nemo tempora debitis esse dolorem.</p><p?>Nulla necessitatibus laborum quo iusto libero occaecati accusamus. Dolor eum laboriosam maiores minus et consequatur non. Aut nemo laborum aut et natus omnis.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(9, 'Soluta facere ut nemo est quibusdam fuga.', 1, 3, NULL, 'nesciunt-est-sit-omnis-laborum', 'Corporis omnis reprehenderit quasi explicabo tempora accusamus. Harum aliquam quae consectetur ut quam aut.', '<p?>A quia quas maxime itaque placeat atque eos. Doloremque veniam laudantium omnis ab omnis. Culpa consequatur nesciunt et ex eligendi animi blanditiis. Molestias delectus omnis cum eveniet.</p><p?>Laborum consequatur similique natus et. Dignissimos deleniti nostrum sapiente nam atque. Quos vero qui sint eius est. Praesentium repellat doloribus et.</p><p?>Qui eligendi veniam consequatur tenetur eos saepe. Expedita et quam est ut rerum aut. Et voluptatum et id omnis doloribus corrupti fugit. Architecto facilis repellendus nostrum quasi veritatis expedita.</p><p?>Veritatis rerum atque ut vitae est quod aspernatur et. Excepturi voluptatibus et et vel repellendus modi fugiat. Laudantium ipsam et ut illum.</p><p?>Animi laboriosam voluptatum iure. Dicta quia pariatur debitis repellendus veritatis. Et deserunt nostrum deleniti consequatur aut doloribus fugit. Ut assumenda illo et aliquam ut rerum blanditiis atque. Asperiores magnam fuga hic vel corporis saepe aut mollitia.</p><p?>Et voluptatem odio voluptate ex sit deserunt. Optio temporibus voluptatum temporibus rerum. Voluptas dolorem nobis quaerat et aliquam. Et deleniti dolores ea sunt nihil.</p><p?>Neque aut quasi facilis commodi eius ut ratione odit. Quae enim est quos eaque. Voluptatibus adipisci eos consectetur eveniet. Veniam natus explicabo commodi totam voluptatum dolores. Fugit vel sint iusto aliquid.</p><p?>Ad expedita voluptatem laboriosam velit perspiciatis tempore. Provident pariatur autem temporibus dolor dicta qui veniam. Ut nesciunt accusamus nesciunt distinctio laudantium.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(10, 'Vero id culpa a incidunt.', 2, 3, NULL, 'vel-nihil-nostrum-ea-sunt-hic-amet-autem', 'Corrupti soluta voluptatem ut quasi. Esse ut iste atque quam.', '<p?>Molestiae illum assumenda veritatis sed atque. In explicabo labore labore in. Quia quasi sunt in voluptas possimus. Nihil nostrum libero quae aut voluptatem animi.</p><p?>Pariatur fugiat quae facere enim modi ratione. Qui quaerat et tenetur ipsum rerum amet occaecati dolore. Voluptatum ut eum rerum doloremque harum veniam non. Sequi necessitatibus at qui et.</p><p?>Ut totam molestiae voluptatem et nesciunt. Pariatur consequatur repellendus sed dolorum nesciunt. Neque modi non facere animi. Ea sed maiores perferendis rerum impedit et modi repellendus.</p><p?>Facilis ut quo saepe consequuntur. Quidem odio eum eaque quam. Eveniet et dignissimos praesentium doloribus rerum dicta. Magnam quis molestias quia inventore ut officia aut. Ipsa maxime consequatur qui voluptas veniam blanditiis.</p><p?>Et odit voluptatem autem tenetur alias. Illum vero excepturi et maxime eos cumque aut. Quisquam dolor odio libero et saepe et. Eum ea molestias rerum aliquid alias qui.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(11, 'Consequatur qui nihil.', 2, 3, NULL, 'molestiae-velit-expedita-et-eos-laboriosam-hic', 'Ab dicta hic non eaque cum ut quaerat. Pariatur nam aperiam atque inventore similique in soluta.', '<p?>Illo libero magnam delectus sequi repudiandae. Est dicta autem quia voluptatibus. A iste perferendis adipisci nulla non quis ut. Ut minus delectus aliquam officiis aperiam culpa.</p><p?>A et at voluptas deleniti dolor occaecati et. Quo perspiciatis quis velit aliquid sit. Incidunt voluptas sit sint ut. Voluptas quo odio fugiat quisquam harum labore qui.</p><p?>Corrupti et deserunt et. Necessitatibus qui aperiam reiciendis veritatis.</p><p?>Consectetur officiis doloremque eos dolore cumque unde. Qui non ad qui. Autem accusantium ea excepturi at.</p><p?>Deserunt cum saepe et laudantium quia eius consequatur. Voluptas iusto sit sint sed et. Nesciunt consectetur a minima vero harum ullam. Ullam nostrum eos ut reprehenderit omnis reprehenderit et asperiores.</p><p?>Voluptatem odio illo ut ratione beatae et. Et perferendis sint animi iure sint corporis aut. Quis distinctio laboriosam ut occaecati minima voluptates doloremque. Commodi vitae quia quos commodi dolorum voluptas sequi.</p><p?>Molestias aliquam est quas a. Libero labore officiis sint. Ipsum doloribus tenetur hic hic animi.</p><p?>Doloremque at nam id minus quidem. Assumenda voluptatem consequuntur tempore in impedit. Est iusto neque non est.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(12, 'Enim quisquam deserunt beatae.', 1, 4, NULL, 'expedita-repellendus-ullam-esse-molestiae-commodi-aspernatur-id', 'Exercitationem nostrum voluptatem unde architecto quisquam repellat. Dolores doloribus eos temporibus vel quaerat. Deserunt eum enim id harum exercitationem ut repellat.', '<p?>Ab tempora quia vero quos dolore. Fugiat sit fugit quidem sint nemo et et delectus. Velit aut est iusto et nesciunt aut maiores. Sint sed amet sint. Omnis nisi dicta quia et impedit totam quia maxime.</p><p?>Nisi est repellat vel quam. Dolorem asperiores aspernatur quo tempore qui. Deserunt veniam voluptas dolores veniam eum cum est. Assumenda aut nesciunt quam voluptatem maxime.</p><p?>Nemo quos nulla explicabo amet accusamus nesciunt minus pariatur. Asperiores nesciunt impedit mollitia et voluptate. Cum molestiae sunt consequatur voluptatem et excepturi eos.</p><p?>Rem illo dolores ratione dolorum. Occaecati magni porro sapiente placeat.</p><p?>Repudiandae dolore in ut voluptatem illum. Dicta dolorem placeat omnis dolorem blanditiis. Aut hic nemo est beatae. Sunt architecto aut sint illum amet.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(13, 'Dolores iusto expedita.', 1, 2, NULL, 'eius-placeat-dolor-voluptas-nemo', 'Aut eaque facere delectus cumque et nesciunt facere. Nihil maiores qui molestias consequatur earum ut autem. Reprehenderit recusandae nihil consequatur voluptatem omnis nobis.', '<p?>Blanditiis doloremque qui vel iste voluptatem natus animi. Tempora et hic vel molestias quia. Provident aperiam praesentium quos recusandae dolores perferendis. Eum et sequi doloribus perspiciatis tenetur sit.</p><p?>Et omnis odit ipsam saepe id eaque debitis. Quos quia ratione nihil tenetur quia distinctio. Rerum ea quae iste perferendis aut. Dolores quia voluptatem provident at doloribus blanditiis animi.</p><p?>Necessitatibus accusantium voluptatum sit tenetur et molestias officia. Iure praesentium quibusdam harum fuga ut ut. A est explicabo et et aliquam ipsum exercitationem est.</p><p?>Omnis ut molestias est et. Illo ratione delectus quis error pariatur eum. Autem aut voluptatum perspiciatis consectetur magnam ipsam dolores. Dignissimos qui natus qui magnam corporis.</p><p?>Beatae recusandae laborum earum officiis eveniet. Voluptatem accusantium officiis eveniet quis architecto aut. Recusandae aut eos recusandae esse. Quod accusantium culpa autem repudiandae.</p><p?>Ut numquam sed et vel sed voluptatem vel. Debitis consequatur blanditiis eum earum est. Consequatur qui quia qui ut molestias harum quasi. Quasi eligendi aspernatur quaerat est voluptates et. Exercitationem vitae architecto quis necessitatibus consequatur eum fugiat.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(14, 'Temporibus tempore eligendi minus.', 3, 2, NULL, 'consequatur-sequi-beatae-et-harum-debitis-assumenda-ipsum-iure', 'Nam fuga modi corporis accusantium. Nesciunt tenetur qui expedita non. Nisi dolorem omnis omnis non repellendus.', '<p?>Adipisci rerum molestias accusantium quam. Dolor tempora nobis sequi enim iste vitae. Quia enim et nihil eum velit.</p><p?>Aspernatur laboriosam quia dolores consequuntur iusto voluptate quis aut. Ut ea facilis pariatur pariatur et perspiciatis. Illum unde in magni. Et voluptas quae quas corporis.</p><p?>Quia eum enim cumque ut totam a. Voluptatem dolor est rem sed quo. Rerum facere qui qui. Repellat velit vero et.</p><p?>Ex hic aut exercitationem vel. Praesentium aut repudiandae dignissimos minus veniam maiores ad. Distinctio et deleniti ad est. Voluptatum molestiae accusantium voluptas sunt.</p><p?>Et eaque dolores consequatur explicabo nesciunt voluptatem repellat maiores. Aut labore dolorum a.</p><p?>Possimus blanditiis nemo sint incidunt cupiditate sequi. Assumenda quam tenetur sequi distinctio enim. Id quis totam natus consequatur modi et. Consequuntur mollitia explicabo explicabo et dignissimos sit.</p><p?>Repellendus iusto quis sed et perferendis ut. Quis veritatis non non est. Suscipit soluta rem tenetur vel ipsa laudantium. Nisi tenetur ea esse nisi.</p><p?>Deserunt et neque reprehenderit animi fugiat nobis quos. Iste veniam molestiae in ex iste commodi qui. Dolore explicabo similique repellat ipsa sequi magnam.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(15, 'Repudiandae temporibus vitae.', 3, 3, NULL, 'deleniti-vel-occaecati-aut-voluptates-ab', 'Qui quam est expedita sed. Officia sint molestias recusandae expedita voluptas expedita facere qui. Sed eius dolorum et quam aspernatur consequatur.', '<p?>Qui qui harum rerum doloremque similique voluptas. Voluptates suscipit cum ad cumque consectetur. Beatae qui cumque qui. Tempore mollitia labore soluta.</p><p?>Necessitatibus et consequatur doloremque ut autem esse doloremque. Voluptatem deleniti qui aut.</p><p?>Provident quod non deserunt non optio consectetur ducimus. Quod hic in omnis non aliquid omnis quis dolor. Accusantium et sit sint rerum delectus voluptate. Quas perferendis alias occaecati aliquam eaque.</p><p?>Repudiandae modi ut ducimus minima. Laudantium officia expedita vero. Sint omnis sunt ipsam quos facilis eos ratione. Voluptatum dolorem et nobis.</p><p?>Sint voluptates voluptatem eius placeat. Rerum voluptas qui optio vel est dolores. Dignissimos rerum sed eos esse consectetur voluptas sunt.</p><p?>In blanditiis necessitatibus omnis optio dolor est. Sit quia rerum vitae et quia maxime. Saepe vel aut alias minima ea quae necessitatibus.</p><p?>A excepturi debitis dolores dolorem tempore rerum fugiat. Expedita nobis eum molestiae. Consequuntur recusandae non dicta est explicabo. Delectus pariatur vero enim unde.</p><p?>Nisi laborum corporis iure voluptatem omnis. Non excepturi fuga autem voluptatem ut. Laboriosam qui quaerat nesciunt ut eius. Vel id nihil aliquid ipsum explicabo eum.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(16, 'Omnis beatae voluptas amet consectetur.', 1, 1, NULL, 'officia-temporibus-repellendus-animi-alias-debitis-quas-id', 'Ut laborum nesciunt non et rerum. Reprehenderit nemo aliquid ducimus molestias autem eos ut vero.', '<p?>Eos mollitia magni nam aspernatur velit consequatur. Aut aspernatur minus officia vitae eos. Facilis iusto et non sint ut et.</p><p?>Iure aliquid dolor dignissimos nihil accusamus repellat. Iusto at fugiat est vel ex architecto.</p><p?>Cum odit aspernatur unde vero facilis nobis nemo. Eaque ut voluptas culpa dignissimos non veritatis. Ut vel officiis eius similique voluptatum earum cumque eum. Autem et atque voluptates est odio nemo sed similique.</p><p?>Doloribus repellendus eum autem placeat. Corrupti voluptatem nihil qui quis sed. Nesciunt rerum sit officia quia soluta sit est.</p><p?>Optio quasi totam ipsum autem. Totam vero provident nihil sit fuga et. Et nam architecto ipsa blanditiis. Nesciunt vel voluptates et qui voluptatem dolor porro iure.</p><p?>Provident expedita vitae sit est sit ut molestiae quasi. Non quas et ratione consequatur tenetur labore non. Repellendus ut iste magni nisi eius magnam.</p><p?>Earum officiis quo nisi. Earum ipsam ea eos autem cumque. Nostrum voluptas veritatis nihil. Quis est labore veniam voluptatibus soluta.</p><p?>Quibusdam minima minima officiis provident sed voluptatem et. Sapiente earum provident ab voluptas ea. Eum atque nobis laboriosam quaerat a aliquam in. Eligendi dolorem perspiciatis veritatis velit occaecati aut.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(17, 'Ut tempora totam exercitationem.', 2, 3, NULL, 'dolore-natus-et-hic-consequatur-enim', 'Numquam modi et quis. Quos voluptatem vel sit rerum.', '<p?>In error et amet. Eum aut officia odit maxime in quo. Recusandae adipisci molestiae repellendus animi. Nam modi atque autem voluptatem maxime.</p><p?>Et odit perferendis aut. Et quasi occaecati qui quaerat ipsam ad dolorem eius. Nihil ut aut nobis aliquam nemo.</p><p?>Vel aliquid sint sit soluta repudiandae id voluptate est. Dolores atque saepe est ut excepturi dolore.</p><p?>Excepturi quasi sint rerum delectus nobis. Atque non officia quos. Ut incidunt aliquam recusandae accusamus cum voluptatem sunt. Eos excepturi qui necessitatibus quis accusamus ducimus.</p><p?>Excepturi molestias sed est molestiae vel ut est. Omnis nemo possimus et dolores illo. Excepturi quos quidem ut placeat quam reprehenderit. Illum sit omnis est cupiditate ut est. Tenetur possimus earum sint dolore similique reprehenderit minima.</p><p?>Molestiae et quis error. Repellendus laborum culpa eveniet fugiat provident. Facilis magnam numquam qui qui tenetur rerum tempore voluptates. Est fuga commodi ipsum ducimus aperiam dolor.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(18, 'Consectetur sunt ducimus ipsa.', 1, 2, NULL, 'sit-laborum-quia-nihil-expedita-qui-qui-libero', 'Illum in officia sed exercitationem vero aut laborum. Necessitatibus error quidem ut qui dolore expedita ipsam ullam. Totam et perspiciatis ad ut architecto similique vero aut.', '<p?>Error ratione quis quis sint. Nulla repudiandae consequatur cupiditate. Sequi sint minus quidem ut. Vitae quod sit id. Delectus mollitia repudiandae aut dolor et.</p><p?>Earum minima rerum tenetur vel molestias ut. Sed magnam eum nihil sapiente aut facere corrupti rerum. Fugit hic incidunt est fugit ut quo. Reprehenderit inventore architecto quis deleniti vel dolore.</p><p?>Voluptatem velit perferendis tempora dolor dicta dolor sit tenetur. Magni animi doloribus consequatur nostrum voluptatem sed omnis. Debitis consequatur est consequatur et maxime. Provident perspiciatis est nam pariatur sed. Ratione porro ipsum incidunt doloremque.</p><p?>Qui eius quo maiores illum. Et corporis quo officiis vero rerum esse. Perspiciatis voluptas ea delectus aut quisquam quisquam enim.</p><p?>Incidunt amet nesciunt et dicta quis id. Eveniet numquam itaque et aut et. Placeat nemo dolor sit ad. Ut eum suscipit unde qui.</p><p?>Quia dolorem inventore totam ipsa non odio ut. Ab quo non blanditiis. Et ut est ut autem sapiente tempora molestias. Aut ut ipsum ducimus et cum.</p><p?>Eaque quia ut tempore iusto est. Atque ea esse recusandae et mollitia eum. Rem ea consequuntur esse voluptates iste.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(19, 'Corrupti a officiis nisi est.', 2, 3, NULL, 'sint-facilis-sed-et-a-consequatur-culpa', 'Aspernatur pariatur nihil totam repellendus distinctio eligendi. Quidem placeat autem a expedita et magni. Pariatur accusantium totam veniam.', '<p?>Autem fugiat eligendi velit in voluptatem. Quis blanditiis possimus et ratione dolores harum. Omnis sint sed dolorem.</p><p?>Nihil recusandae quia cumque ea. Blanditiis consequatur nobis cumque consequatur dolorem quam quam. Qui qui enim et quia officiis itaque voluptatem voluptatem. Ducimus suscipit quis expedita fugit expedita expedita quasi.</p><p?>Dolorum ut mollitia et cumque harum ipsam non. Voluptatem non iure voluptate est. Ex est mollitia quam recusandae nesciunt occaecati est ex.</p><p?>Non nisi animi aut quisquam reiciendis. Explicabo nulla officia sed. Iure nulla hic officiis laborum est sed.</p><p?>Molestiae nesciunt quod fugiat voluptate minus aliquam nam. Labore aliquam esse voluptate libero id. Iste temporibus assumenda pariatur unde itaque harum. Minima et voluptas velit quaerat numquam molestias debitis.</p><p?>Fugit nobis illum voluptatibus voluptatem necessitatibus dolor nam. Laboriosam blanditiis occaecati mollitia et. Et necessitatibus facere consequuntur iste. Impedit eos ut et cum nostrum. Qui tenetur vitae consequuntur quia fugiat et incidunt esse.</p><p?>Illum occaecati adipisci vero ad nulla iste. Eligendi est dolorum qui debitis quisquam autem unde. Consequatur eius ducimus natus perspiciatis aut officiis suscipit. Dolores dolore qui mollitia aliquid et minima qui aut.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(20, 'Aut laboriosam reprehenderit est corrupti aut nam.', 2, 3, NULL, 'saepe-enim-optio-distinctio-quis-quam-facilis-sunt', 'Beatae minima facere enim qui autem. Voluptas non dolores dicta veritatis. Similique eveniet beatae ut aliquid.', '<p?>Qui suscipit vitae consequatur ea quisquam rerum molestiae. Est qui ducimus et et. Voluptate veritatis enim in iure modi similique.</p><p?>Quia eveniet et nobis. Tempora minima fuga nulla autem autem minima dolorem et. Vel consequuntur doloremque omnis vero et repudiandae.</p><p?>Rerum at in aperiam est nulla. Laudantium placeat praesentium sit consequatur cum quod. Sed et nobis corrupti quae.</p><p?>Tempora vero ut qui suscipit harum necessitatibus. Labore alias delectus fugit vel. Esse qui libero temporibus iste quae sint.</p><p?>Ea sunt error unde quidem quibusdam esse et. Eaque maxime vitae consequatur praesentium. Placeat ut et deleniti sed est.</p>', NULL, '2023-07-28 06:54:31', '2023-07-28 06:54:31'),
(21, 'Web Programming UNPAS', 1, 1, 'post-images/HUxAz3qsMnX7YPJcUJESx3VrZN5nI8gLSs2uv7JM.jpg', 'web-programming-unpas', 'coba postingan baru', '<div>coba postingan baru</div>', NULL, '2023-07-28 07:04:52', '2023-07-28 10:56:21'),
(23, 'Ini Coba Post Ke Dua', 3, 1, 'post-images/PJuQgLG3WcGoHzsk8E1RsK3BtPRRHX7jZYQTT2r0.jpg', 'ini-coba-post-ke-dua', 'ini percobaan post yang ke dua', '<div>ini percobaan post yang ke dua</div>', NULL, '2023-07-28 10:57:31', '2023-07-28 10:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Ari Purnama', 'aripurnama', 'arizoro88@gmail.com', NULL, '$2y$10$r6ZL4qMCiZduHlxSmZ/E9OIeZOBY.hXPyvPYSZFqF2PrqbwIVkyJO', NULL, '2023-07-28 06:54:29', '2023-07-28 06:54:29', 1),
(2, 'Yessi Puspasari', 'tmaheswara', 'kanda85@gmail.com', '2023-07-28 06:54:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n6z5AcLrnNemf8YieT2Hu0hkj6d7JIr0XojgGWNWYN4XqtuiNSiEmUJ6yNNQ', '2023-07-28 06:54:31', '2023-07-28 06:54:31', 0),
(3, 'Carub Teguh Firmansyah S.T.', 'gandi54', 'salsabila.gunarto@example.org', '2023-07-28 06:54:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '72vZqjfBzV', '2023-07-28 06:54:31', '2023-07-28 06:54:31', 0),
(4, 'Emas Anggriawan', 'arta70', 'mangunsong.estiono@example.org', '2023-07-28 06:54:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GdjwxxJI5G', '2023-07-28 06:54:31', '2023-07-28 06:54:31', 0),
(5, 'Agnes Maryati', 'vtamba', 'rangga.permadi@example.com', '2023-07-28 06:54:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UnTxjAk9OZ', '2023-07-28 06:54:31', '2023-07-28 06:54:31', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
