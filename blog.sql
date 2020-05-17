-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 07 2020 г., 23:48
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(2, 'js', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(3, 'java', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(4, 'new', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(5, 'C++', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(6, 'python', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(7, 'HTML', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(8, 'CSS', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(9, 'Git', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(10, 'UML', '2020-05-07 14:25:11', '2020-05-07 14:25:11');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'Perferendis qui quia optio labore a ullam. A excepturi quae laboriosam vel omnis veniam. Hic assumenda consequatur dolor debitis unde quibusdam ea praesentium.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(5, 5, 4, 'Consequatur est nesciunt et qui dolore in. Rerum culpa non assumenda assumenda. Pariatur voluptas fugiat rerum maxime reiciendis ab vel odit.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(8, 1, 9, 'Laboriosam sit quia autem sunt magnam. Porro magnam quia voluptas eius qui inventore omnis ducimus. Vel eaque cupiditate non. Id laborum vero consectetur consequatur molestias voluptatem qui.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(9, 2, 13, 'Nisi totam nihil quisquam in fugit. Iste minima minima laborum numquam culpa est. Dignissimos ut et voluptatibus eos cupiditate. Et enim hic ducimus sint et.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(11, 2, 4, 'Voluptas dolorem aut et nihil. Provident debitis eos eos itaque.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(12, 5, 12, 'Corrupti nihil eveniet quos quaerat quidem voluptatem expedita. Labore architecto expedita minus ipsum labore. Numquam facere ipsam hic reiciendis dolorem amet mollitia.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(17, 4, 13, 'Est rerum quas quis et architecto harum. Qui itaque et voluptatum quibusdam qui. Aut impedit nulla nihil neque veniam. Quam incidunt temporibus dolor. Rerum quia quia adipisci est ipsam.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(18, 5, 4, 'Id et enim placeat aut modi mollitia. Est nostrum omnis earum necessitatibus odit. Ratione officiis quo quas.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(23, 4, 6, 'Et in eius et mollitia. Quibusdam corporis voluptas autem ea sint dolor illo. Eius possimus quas sint esse totam nemo labore quas.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(24, 3, 8, 'Voluptatum magni architecto voluptatem. Ullam minus earum ut facilis expedita quo aut. Voluptates non dicta accusantium est consequatur reprehenderit. Error illum possimus rerum in sed dolor.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(30, 2, 3, 'Dolor ad facilis ratione. Dolorem suscipit et vero molestiae qui. Quasi vero voluptatem veniam facilis.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(36, 4, 5, 'Ratione quidem molestiae dolorem quia veniam assumenda consequatur aut. Ratione quam et odit quaerat. Aut et doloremque eos eos alias.', '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(39, 3, 2, 'Quam consequatur illo mollitia quos dolor qui nostrum. Culpa velit rem ipsam molestias. Provident omnis dignissimos et tempora iure sint vel.', '2020-05-07 14:25:12', '2020-05-07 14:25:12');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_04_131126_create_posts_table', 1),
(4, '2017_03_04_131334_create_categories_table', 1),
(5, '2017_03_04_131558_create_tags_table', 1),
(6, '2017_03_04_131702_create_post_tag_table', 1),
(7, '2017_03_04_131909_create_comments_table', 1),
(8, '2017_03_04_133429_add_columns_to_user', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `category_id`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Новый тип ИТ-софта в 2К20!', 'Repellendus et adipisci enim non consequatur. Dolorem unde nostrum dolorem sed exercitationem. Hic est ipsam provident ratione sapiente enim. Et ut debitis ducimus ex sint consequatur aperiam quod. Rerum sit modi nobis voluptas voluptatem aut. Vero sed voluptatibus quaerat veritatis. Dolore sed rerum rerum tempore quas voluptates quasi. Maxime vel sapiente quia repellendus necessitatibus. Quidem tenetur nobis iure veniam. Quis sit quia optio qui minus ut. Distinctio ipsa eveniet sunt perspiciatis fugit. Quod quis praesentium dolore quia distinctio perspiciatis tempore. Distinctio adipisci doloremque possimus vel similique. Exercitationem quia amet fugiat nihil reiciendis. Harum ipsa quia repellat perspiciatis necessitatibus sapiente quisquam. Ut deleniti ducimus in nihil facilis. Voluptatem ipsa eveniet nihil ducimus quos. Dolores distinctio modi nihil modi repellat laudantium. Quidem quasi optio consequatur animi ea. Soluta ducimus optio dolor eum omnis accusamus neque. Illum nobis molestias blanditiis et optio expedita dolorem rerum. Qui cupiditate itaque minima dicta omnis minus quasi. Beatae eveniet voluptatibus dignissimos. Saepe nisi aut ut deleniti architecto. Est nihil sunt velit asperiores voluptas perferendis qui. Nemo ut amet aliquam quam deserunt aut. Sed consectetur eum laudantium est accusantium omnis. Velit cumque qui sunt harum aut doloribus voluptatum. Dolores adipisci corrupti consequatur quibusdam fuga consectetur. Atque cumque voluptatum deserunt consectetur est voluptas. Quo mollitia velit soluta voluptas. Et ad sint perspiciatis aut saepe aut ipsum enim. Est mollitia maxime quia qui animi. Libero et tenetur corporis voluptas eos et officia. Vero unde ut praesentium eos at.', 1, 4, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(2, 'С++ - Новый компилятор', 'Consequatur maiores praesentium quisquam minima. Sed eius deserunt facilis in aspernatur ipsa nihil. Possimus rerum illum atque molestias enim ut voluptas. Labore perspiciatis placeat distinctio quibusdam aut. Quam fuga et excepturi blanditiis tempora. Corporis minima et reiciendis ad assumenda. Cupiditate amet earum nostrum molestiae sit deleniti sunt deserunt. Sunt explicabo et harum non voluptates nostrum. Numquam assumenda sequi aut laboriosam tempora. Expedita dolorem qui aspernatur aut. Dolor numquam dolorem aspernatur tempora est ullam perferendis. Itaque sint id sunt earum id voluptatem. Id nulla sunt nobis voluptatem voluptas aspernatur. Impedit sed molestiae cumque rerum modi. Consequatur et delectus assumenda ducimus aut. Ut optio labore enim odit. Aut ratione autem ipsam magnam repellendus quas. Sint asperiores omnis et quaerat rem. Provident ut veritatis fugit totam sed. Sint eos nobis dolorem corporis esse eos. Esse ea vel animi quae minima. Iure hic ut consectetur sunt nam hic molestiae. Id id harum possimus sapiente. Molestias quis nostrum rerum minus accusantium delectus.', 3, 5, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(3, 'Pytno3 добивает Python2', 'Eveniet quia dolores veniam veniam id quam. Omnis repellat tempora iusto repudiandae. Consectetur veniam magnam quod velit et et. Et eum quis aspernatur. Dolorem dolorum facilis sit voluptatem qui cumque. Et enim accusantium laborum natus. Error rerum necessitatibus saepe beatae qui natus. Libero aliquid et dolorum incidunt est consequatur. Quaerat fugit enim blanditiis mollitia et. Expedita sit fugiat voluptas quia voluptates. Ut pariatur velit impedit quia eum quis. Ullam eaque reprehenderit iusto ipsam quia. Quibusdam non accusamus vel amet. Modi alias aut dolor placeat suscipit autem. Laborum et quia qui et in fuga dolore. Qui veritatis accusantium commodi sint vel illo qui. Consequatur a sunt quia nihil modi. Voluptatum eius quibusdam mollitia ad et harum ut. Recusandae dolorem aliquam est quia cupiditate voluptatem.', 5, 6, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(4, 'СSS 3 - новый правила адаптивной верстки', 'Voluptas labore optio minima officia quod sint. Error quas expedita ipsum vel nostrum beatae iste eos. Eum dignissimos ut at incidunt et quis cupiditate. Sit architecto ipsa assumenda praesentium. Provident aut dolores non. Impedit dignissimos modi nihil dicta voluptate. Facilis dolorem eos mollitia sunt sed consequatur totam quia. Nesciunt distinctio fugit nemo. Officiis vero error aut repellendus adipisci. Est incidunt commodi adipisci adipisci expedita voluptatibus possimus. Veritatis quod consequatur ut quo incidunt est ex. Magnam dolorem est iusto aperiam tenetur magnam. Illo voluptatem omnis reprehenderit sed exercitationem ducimus. Dicta voluptatem molestiae quo et voluptatibus doloremque. Aut sequi sapiente numquam. Assumenda non nulla fuga deleniti dolores itaque repellat. Quas et officiis fugit illum sapiente repudiandae quis commodi. Soluta cumque corrupti alias dignissimos iste. Quod unde facere est quis et ducimus est. Eum sunt perferendis eligendi quis. Non sed aliquid quaerat omnis maiores. Aliquid et velit aliquid et hic unde. Blanditiis ea dolore amet et accusantium. Eaque ea quas eius aut ipsa molestiae. Temporibus omnis quo amet quidem illum aut. Neque ipsum asperiores quos ea quas consequuntur. Officiis aut sequi qui debitis. Doloremque est aperiam praesentium ea. Et aut optio officiis totam quod. Ipsa esse et reiciendis voluptas quibusdam totam ut. Ad sed omnis nemo quas aut autem officiis. Ipsa omnis dolor eligendi vel. Molestiae assumenda repellendus molestiae fuga. Ratione rerum autem enim. Et a sit quisquam suscipit. In repellendus ipsum nostrum quos nulla at. Necessitatibus sunt impedit neque qui minima eos. Ullam unde quo animi ipsam. Blanditiis odit neque dolor fuga repudiandae voluptatem aut. Aliquam eos possimus explicabo similique omnis natus corrupti accusantium. In minima quidem molestiae ut at temporibus quia.', 2, 8, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(5, 'Quia ipsum minima ipsam labore omnis perspiciatis.', 'Necessitatibus doloremque fugit sit. Consequatur eius ut officiis sed et enim. Unde aut rerum expedita ut fugiat. Autem saepe assumenda id totam veritatis aut. Sed omnis aperiam et rerum est sed consequuntur. Repellendus totam velit quia sed. Voluptas voluptatem nihil facilis sint sint. Nesciunt iste at culpa impedit et repellendus. Deleniti a sed accusantium quia sunt dolores expedita. Neque ratione ipsum numquam facere numquam aut nobis. Quia facere vel a voluptatem deleniti. Dignissimos sapiente consequatur officiis accusamus autem enim asperiores. Itaque maiores ut ut. Eaque eaque aut corrupti. Beatae enim libero perspiciatis nobis sit sit perferendis. Facilis ipsa commodi et ut reiciendis dolorum consectetur. Est in qui doloremque aspernatur quidem qui. Sit dignissimos non officia occaecati laudantium non. Voluptatem illo at iusto veritatis autem quibusdam vel. Est est est laborum. Aut similique accusantium in. Consequatur fugiat aut qui. Sint vitae ipsum neque perspiciatis quia. Modi at officiis maxime animi quia harum. Corporis autem et veniam non sed tempora. Consequatur pariatur omnis velit quibusdam eius odit ullam vel. Dignissimos enim voluptates aut sequi veritatis fuga quae. Totam incidunt odio harum. A vel nisi dolorem doloribus. Non accusantium alias corporis pariatur aut. Voluptatem a saepe debitis a autem omnis. Expedita quo accusantium enim aut sit corporis occaecati ex. Porro quo in beatae itaque. Vero sed modi hic cupiditate magni enim corrupti. Pariatur doloremque qui architecto.', 4, 5, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(6, 'Dolores cum et aut qui velit quis.', 'Libero vitae consequatur dolor minus. Neque temporibus minus voluptatem sed nostrum. Et commodi eaque nam quia. Sint occaecati molestiae impedit nihil voluptatem dignissimos. Error tenetur quos similique numquam. Et voluptatem repudiandae sapiente magni. Iusto ut eveniet pariatur tempora delectus accusamus in accusamus. Odio occaecati fugiat ex. Temporibus magni voluptas et voluptate maxime. Sequi cum iusto rerum tempore. Ullam voluptatum nam placeat sed. Vel neque animi ab non et incidunt. Architecto nesciunt error voluptatum esse. Quisquam vitae quae dolore enim dolore quaerat distinctio. Eos illo sunt sit eligendi in. Natus quia adipisci impedit soluta. Ab ipsum cumque quisquam quaerat quia. Voluptate vitae provident quia et. Laboriosam molestiae repellat deserunt ad. Ea officia nostrum nesciunt hic in. Laudantium omnis nobis labore eos est error eveniet. Laboriosam quidem sunt enim ut aut doloremque perferendis. Assumenda maxime molestiae deleniti rerum. Labore maxime assumenda sint consequatur. Quis quia enim dignissimos. Distinctio quasi laborum accusamus magnam. Sed id voluptatem saepe enim sit alias. Laudantium odio quod ullam ab nihil et. Molestiae quod quia odit doloribus nostrum est. Sint dolores culpa totam rerum sed. Est quo nostrum dolorum suscipit eius. Qui adipisci quae harum error. In eaque aut asperiores eum aut commodi.', 4, 7, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(7, 'Veniam similique sed deserunt reprehenderit asperiores non eum facilis.', 'Pariatur est velit sint ad rem. Dolor veritatis et laboriosam qui. Et minima est ea nostrum in enim qui. Ad maxime accusantium deleniti et quibusdam nemo qui. Dolores fuga cupiditate voluptas aut voluptas. Accusantium aspernatur quia repellat dolor corrupti. Debitis sapiente et eos voluptatem eligendi quam sunt. Sint voluptatibus molestiae hic. Assumenda fuga quae quia. Animi dolor fuga ullam blanditiis quibusdam maxime. Ut vel aliquam commodi doloremque. Voluptate maiores totam iusto quibusdam corrupti sit qui. Natus cum assumenda qui tenetur. Officia ratione dolores in vitae officiis. Repellat fugit eligendi ab suscipit quisquam harum. Dolorum id omnis corporis illo. Esse enim sapiente enim dolores in voluptatum corrupti. Eaque dolores quis est et. Numquam suscipit explicabo soluta saepe nulla ipsam sit non. Non optio alias nulla ipsum commodi repellendus quis illum. Cum qui ut veritatis et voluptas eum. Odio omnis velit repellendus.', 2, 2, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(8, 'С++ Покоряет сердца конроллерщиков', 'Molestiae quidem ipsa totam dolorem nihil voluptatem qui corrupti. Libero possimus sit consequuntur nihil. Porro laudantium ut sunt at quas aut. Modi assumenda eveniet sed ipsa. Id cumque eaque voluptatem ut esse facilis. Hic omnis eum ut quo voluptatem adipisci. Eligendi qui distinctio id quidem quia. Provident eos molestiae exercitationem in omnis et. Molestias inventore et maiores ut rerum dolor distinctio. Ut dolor sit omnis esse repudiandae possimus tenetur. Odio vitae nesciunt ut consectetur illo recusandae. Assumenda voluptas qui provident. Dolorem laudantium amet sunt odit. Iusto architecto perferendis mollitia eveniet consequatur. Ea repellendus vero quas quo necessitatibus. Commodi eveniet est totam et error est sit repellat. Aut alias illum beatae aut. Quo et ipsum alias corrupti illum. Magnam omnis eius sit perspiciatis perferendis non quia. Et repellat facilis maxime voluptatem voluptas dolorem rerum.', 1, 5, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(9, 'Et nam similique facere in recusandae.', 'Id voluptatem sunt ullam doloremque. Corrupti architecto ea enim asperiores officiis. Voluptate sed quo omnis molestias. Voluptatem maiores ratione ea nihil. Sint sed maiores quaerat. Esse in vel quasi. Impedit delectus aut ut aut. Praesentium dolor voluptas aut. Officia minima debitis laudantium nam et iure labore. Distinctio vel dolores debitis dolor qui. Cupiditate rerum facere corrupti corporis est. Facere omnis aut est numquam consequatur. Tempora excepturi ullam temporibus iste voluptatem facere sint. Natus molestias velit voluptas non excepturi et eos. Architecto sed et magnam rerum qui. Eos quisquam optio fugiat dolor harum quidem. Quaerat sapiente omnis sunt possimus vel. Ipsa amet recusandae excepturi. Autem temporibus dolores ut consequatur. Unde cumque cum illum sit. Id laudantium molestiae labore asperiores nihil ducimus beatae. Dolores odit blanditiis et quis deserunt aliquid dicta. Quia et fugiat ratione et ipsam quis. Commodi vitae et dicta minima excepturi ut.', 1, 9, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(10, 'Corporis reprehenderit consectetur omnis sunt suscipit rerum.', 'Eveniet autem et sed fugit cupiditate. Sapiente quam illo sed rem et inventore omnis. Quos rerum veritatis porro consequatur. Voluptas rerum dolorem hic exercitationem ab. Accusamus at veritatis repellendus. Atque minus dolore ipsam rem minus non. Quaerat quis maiores accusantium laudantium iste quia. Et quis ut nemo ipsam a ratione. Officia facilis corporis sit sed dolores repellendus minima. Pariatur ut odio quo ad laudantium. Est quae minus est. Quia quo et corrupti a nam neque consequatur. Autem aut recusandae ut ad nobis distinctio minus explicabo. Expedita necessitatibus et ad culpa aut in veritatis. Deleniti aut dolores qui soluta aspernatur ut in. Consequatur qui aut harum voluptatum ex cupiditate. Rem qui quae adipisci earum. Laborum aperiam fugiat rerum dolorum fugiat a animi. Ex nostrum nemo tempore non. Blanditiis est nobis libero cupiditate et. Illo voluptas possimus labore rerum aut voluptates. Quam vitae laboriosam distinctio ea. Reiciendis eius accusantium ad quia nesciunt officia vero aut. Enim aut vero debitis aut quam quo sint. Animi sint impedit impedit ad. Ipsa blanditiis dolorum et debitis eos nesciunt perspiciatis.', 3, 2, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(11, 'Aliquid ipsam velit minima ipsum est.', 'Libero labore dignissimos dolorem voluptatem culpa. Et repudiandae quasi voluptatibus quia. Rerum non ut ratione fugiat cum iusto voluptatem. Aspernatur occaecati nostrum sed et ut. Quo optio voluptates totam corporis inventore voluptatum. Sed tempore aut rem velit ipsam quis et. Deserunt ea id iure fuga ipsam voluptatem. Aut sint quod perferendis nostrum. Est minima ut hic magnam. Illo provident velit corrupti molestiae sed perferendis inventore. Quis dolor et culpa fuga. Inventore error et quae repellat adipisci et. Nesciunt eveniet fugit illo praesentium. Sit aut impedit dolorem nam ipsum. Tempora facilis architecto sapiente velit. Et ut dolor eius occaecati sint. In optio eos nemo ducimus commodi quasi tempore. Qui nihil quia omnis doloribus. Odit est voluptatem dolor nobis fuga. Ex culpa doloremque magni ipsam debitis sed. Ut neque molestiae pariatur ipsa modi. Dolorem iure enim id odit. Qui quaerat tenetur eligendi nihil. Nemo dolorem ut consectetur autem quia. Aut consequatur qui placeat beatae maiores repellendus at. Sunt nemo quis inventore sed. Ut sit a dolorem pariatur similique quia voluptatem. Non et sit non amet laboriosam fugit. Suscipit velit error vitae enim aut. Sapiente rerum doloremque doloribus omnis aperiam molestias. Perspiciatis nostrum qui ut sunt ipsam debitis. Ipsa sequi enim occaecati commodi. Architecto fugit eum assumenda dolor dolor soluta. Corrupti quaerat voluptatibus odit animi. Qui sunt aliquam et est quisquam culpa ut. Qui et velit sapiente voluptas et dolores omnis qui. Consequatur ullam ut qui. Iste et qui dolores aliquam amet fugit dolores. Modi consequuntur aut aliquid consequuntur deserunt tempora at sit. Numquam omnis repudiandae tempora voluptatem. Voluptas temporibus repudiandae dolorem occaecati et.', 4, 9, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(12, 'HTML vs XHTML - правила 2020', 'Neque sint labore itaque possimus cum fugiat velit. Placeat ab deleniti deserunt vel ipsa omnis explicabo. Asperiores placeat qui temporibus sed qui amet unde. Nisi esse laboriosam suscipit amet sapiente nihil qui. Repudiandae veritatis consequatur delectus provident odio id. Numquam autem alias doloremque. Sint est aut non neque dolorem. Doloribus optio est accusantium rem laudantium impedit. Consequatur fugit illum suscipit officia. Impedit expedita qui enim laborum praesentium est. Ex rerum qui ullam et. Laboriosam nisi vel eum repudiandae odit tempore. Maiores sint ipsam reprehenderit eveniet aspernatur at corporis autem. Sed perferendis repellat nobis quia qui ut. Et eum voluptatum placeat quasi qui. Vel enim odio ducimus placeat tenetur temporibus. Dignissimos accusamus perspiciatis ea veritatis delectus eos. Quisquam tempora eveniet voluptates nihil inventore libero voluptatem. Omnis ut libero molestiae eius nemo quisquam. Et quaerat tempore ducimus itaque. Ex corporis et nam assumenda quaerat. Porro commodi vel inventore voluptatem et vitae et. Hic quidem quod aspernatur. Unde nisi voluptates vitae excepturi explicabo minus quia. Deleniti et nihil iusto totam. Excepturi voluptatum sint voluptates earum aperiam officiis vero. Ipsam iure repellat est similique nihil. Molestiae vel consequatur accusantium voluptatem. Provident laborum aperiam sed in accusantium amet architecto. Rem odit qui id nostrum et tempore. Eum vel illum possimus ut ut eius. Asperiores delectus omnis est et quo. Eum iste hic iure non. Molestiae saepe fuga aspernatur modi quia. Unde asperiores necessitatibus nihil autem alias molestiae ducimus. Quam ut quis quia esse quia dolores vitae. Architecto enim minus dolor distinctio. Voluptas praesentium ut quo. Voluptatem consequatur est ab. Asperiores maxime sint est officiis voluptas. Veniam dolore pariatur aperiam earum cumque.', 3, 7, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(13, 'Esse et natus explicabo labore dolores autem nulla.', 'Accusamus quis aliquid sunt perspiciatis quia. Error minima doloremque in commodi. Sed error minus vel aut ut. Cumque consequatur sint rerum magnam deleniti. Et deleniti sunt quibusdam. Quaerat deleniti quam excepturi. Molestiae numquam consequatur inventore autem nostrum omnis dolorum accusantium. Dignissimos ut ut perspiciatis suscipit. Ullam reprehenderit architecto eos et non voluptates. Quia quibusdam ullam doloremque exercitationem. Voluptas quod aperiam molestiae quos doloremque. Asperiores eum corporis nisi nihil et accusamus et. Delectus qui ut sit sed. Officiis beatae consequuntur aut architecto unde inventore iusto. Odio consequatur omnis nulla nesciunt. Qui assumenda culpa veniam quaerat quas voluptas. Qui enim eveniet eligendi eos. Ab illum doloribus magni atque laudantium itaque. Aliquid occaecati repellat unde nihil omnis. Ad et laudantium fuga quia delectus. Quo iusto aliquam ea tempore. Quo repudiandae ex et sint.', 5, 9, 0, '2020-05-07 14:25:12', '2020-05-07 14:25:12');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 25, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(2, 20, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(3, 7, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(4, 6, 8, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(5, 25, 5, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(6, 19, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(7, 21, 6, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(8, 5, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(9, 18, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(10, 11, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(11, 6, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(12, 25, 2, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(13, 18, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(14, 3, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(15, 8, 5, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(16, 20, 5, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(17, 17, 8, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(18, 1, 10, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(19, 12, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(20, 17, 6, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(21, 6, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(22, 14, 10, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(23, 20, 5, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(24, 9, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(25, 19, 2, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(26, 24, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(27, 13, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(28, 14, 2, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(29, 9, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(30, 23, 8, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(31, 4, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(32, 9, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(33, 4, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(34, 23, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(35, 23, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(36, 4, 10, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(37, 9, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(38, 16, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(39, 19, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(40, 14, 6, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(41, 22, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(42, 6, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(43, 13, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(44, 11, 3, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(45, 3, 2, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(46, 14, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(47, 22, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(48, 7, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(49, 23, 7, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(50, 25, 4, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(51, 8, 5, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(52, 3, 10, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(53, 13, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(54, 23, 2, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(55, 12, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(56, 16, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(57, 5, 10, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(58, 16, 9, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(59, 13, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12'),
(60, 19, 1, '2020-05-07 14:25:12', '2020-05-07 14:25:12');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Новое', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(2, 'Срочно', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(3, 'Снова?', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(4, 'Рассуждение', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(5, 'ИТИнфо', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(6, 'Интересное', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(7, 'ВойтиВИТ', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(8, '2К20', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(9, 'Топ', '2020-05-07 14:25:11', '2020-05-07 14:25:11'),
(10, 'ИзПервыхУст', '2020-05-07 14:25:11', '2020-05-07 14:25:11');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `reset_key` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`, `is_admin`, `reset_key`) VALUES
(1, 'Иванов Иван', 'ivan@mail.ru', '$2y$10$S1XZv1tLWOnJdj2uQTzPvOW1IbSWCYKDIbXc23cok29VobrnLmilW', '4jSAAxxs4KWNIQWaASoHD1uOnD509qTo12g2eq5HNSO2qihHKeLYSnPfqIJM', '2020-05-07 14:24:04', '2020-05-07 14:24:04', 'lO0Yt9gQpU5AbKOPGyoA80mGLppwpUIYYNGFqTLrK1sIw9KsEF', 1, NULL),
(2, 'Петров Петр', 'petpet@mail.ru', '$2y$10$M0b9kaXGlvsX21cbqyUOae3m0g8uhhp8qk7sgF7MZLciK8E9N3m..', 'Pv42wNratH', '2020-05-07 14:25:11', '2020-05-07 14:25:11', '2d0xb1NQSvh1aExIjbTnMSNPkm0R33CkAzTLUpveTbw2B79Cxp', 0, NULL),
(3, 'Иванова Екатерина', 'petyandex@ya.ru', '$2y$10$M0b9kaXGlvsX21cbqyUOae3m0g8uhhp8qk7sgF7MZLciK8E9N3m..', 'Db93Ifl7ZC', '2020-05-07 14:25:11', '2020-05-07 14:25:11', 'oANF7GIS3z7LmfUJg0Ga73mYVTpXl3KmTiVVmYpqVUHjOt3nba', 0, NULL),
(4, 'Зонцова Юлия', 'zonjuly@gmail.com', '$2y$10$M0b9kaXGlvsX21cbqyUOae3m0g8uhhp8qk7sgF7MZLciK8E9N3m..', 'xog9rdb5GR', '2020-05-07 14:25:11', '2020-05-07 14:25:11', 'IfpkCA0CXF6QrH6YUAzIwY7ycW0nTITrYtCLaQluUWj1QVLv07', 0, NULL),
(5, 'Павлов Павел', 'pavel@ya.ru', '$2y$10$M0b9kaXGlvsX21cbqyUOae3m0g8uhhp8qk7sgF7MZLciK8E9N3m..', 't9sOLsjZhT', '2020-05-07 14:25:11', '2020-05-07 14:25:11', 'kegKHhr1U1a79t1nRJg0q0OA9GXbUlwQK8D3TA0iDqnEvchaJH', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
