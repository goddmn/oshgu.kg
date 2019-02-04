-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 26 2018 г., 13:50
-- Версия сервера: 5.7.20-0ubuntu0.16.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `admin_aiti2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file`
--

CREATE TABLE `ex_file` (
  `id` int(11) NOT NULL,
  `id_user` int(255) DEFAULT NULL,
  `fail` varchar(255) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL,
  `name_kg` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_file`
--

INSERT INTO `ex_file` (`id`, `id_user`, `fail`, `vrem`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image1.jpg', NULL, '', '', ''),
(2, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image2.jpg', NULL, '', '', ''),
(3, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image3.jpg', NULL, '', '', ''),
(4, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image4.jpg', NULL, '', '', ''),
(5, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image5.jpg', NULL, '', '', ''),
(6, 1, 'http://aiti.oshsu.kg/adminex/asset/images/gallery/image6.jpg', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file_page`
--

CREATE TABLE `ex_file_page` (
  `id` int(11) NOT NULL,
  `id_page` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_file_page`
--

INSERT INTO `ex_file_page` (`id`, `id_page`, `id_file`, `vrem`) VALUES
(1, 4, 6, '2018-12-20 13:06:26');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_menu`
--

CREATE TABLE `ex_menu` (
  `id` int(11) NOT NULL,
  `id_type_menu` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `name_kg` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_menu`
--

INSERT INTO `ex_menu` (`id`, `id_type_menu`, `id_parent`, `id_page`, `url`, `target`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 1, 0, 1, NULL, NULL, 'Университет', 'Университет', 'Университет'),
(2, 1, 0, 2, NULL, NULL, 'Окуу иштери', 'Окуу иштери', 'Окуу иштери'),
(3, NULL, NULL, NULL, NULL, NULL, 'Илимий иштер', 'Илимий иштер', 'Илимий иштер'),
(4, 1, 0, 5, NULL, NULL, 'Эл аралык ишмерд??л?к', 'Эл аралык ишмерд??л?к', 'Эл аралык ишмерд??л?к');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_page`
--

CREATE TABLE `ex_page` (
  `id` int(11) NOT NULL,
  `id_type_page` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `mesto` varchar(250) NOT NULL,
  `vrem_a` datetime DEFAULT NULL,
  `vrem_b` datetime DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `audio` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `log` int(11) DEFAULT '1',
  `stat` int(11) DEFAULT '0',
  `vrem` datetime DEFAULT NULL,
  `tema_kg` varchar(255) NOT NULL,
  `tema_ru` varchar(255) DEFAULT NULL,
  `tema_en` varchar(250) NOT NULL,
  `page_text_kg` text CHARACTER SET utf8 NOT NULL,
  `page_text_ru` text CHARACTER SET utf32 NOT NULL,
  `page_text_en` text CHARACTER SET utf8,
  `key_text_kg` varchar(255) DEFAULT NULL,
  `key_text_ru` varchar(255) DEFAULT NULL,
  `key_text_en` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_page`
--

INSERT INTO `ex_page` (`id`, `id_type_page`, `id_user`, `mesto`, `vrem_a`, `vrem_b`, `foto`, `video`, `audio`, `url`, `log`, `stat`, `vrem`, `tema_kg`, `tema_ru`, `tema_en`, `page_text_kg`, `page_text_ru`, `page_text_en`, `key_text_kg`, `key_text_ru`, `key_text_en`) VALUES
(1, 1, 1, '', NULL, NULL, NULL, NULL, '', '', 1, 0, '2018-12-20 13:06:26', 'Ч.Айтматовдун 90 жылдыгына карата КК факультетинде иш чара болду', 'Ч.Айтматовдун 90 жылдыгына карата КК факультетинде иш чара болду', '', '', '', NULL, NULL, NULL, ''),
(2, 2, 1, '', NULL, NULL, NULL, NULL, '', '', 0, 0, '2018-12-20 13:06:26', 'Ч.Айтматовдун 90 жылдыгына карата КК факультетинде иш чара болду', 'Ч.Айтматовдун 90 жылдыгына карата КК факультетинде иш чара болду', '', '', '', NULL, NULL, NULL, ''),
(3, 1, 1, '', NULL, NULL, NULL, NULL, '', '', 1, 0, '2018-12-20 13:06:26', 'ОшМУнун магистранттары жана профессордук окутуучулук курамы.', 'ОшМУнун магистранттары жана профессордук окутуучулук курамы.', '', '', '', NULL, NULL, NULL, ''),
(4, 4, 2, 'ОшМУнун бакшы имараты', '2018-12-19 05:00:00', '2018-12-23 05:14:34', 'asset/images/gallery/image1.jpg', NULL, '', '', 1, 0, '2018-12-20 13:06:26', 'ОшМУда жаны жылдык балаты жанды', 'В ОшГУ зажглась новогодняя ёлка', 'A Christmas tree was lit in Osh State University', 'Ош мамлекеттик университетинде жаңы жылдык балаты жанды. Бийиктиги 16 метр болгон жаңы жылдык балаты университеттин башкы имаратынын алдына орнотулуп, айланасы кооз жасалгаланды.  Университеттин гана эмес, шаардын көркүнө көрк кошкон балаты түнкүсүн жарыктандырылып, көз жоосун алат.  Жаңы 2019-жылга карата университетте бир нече майрамдык кечелер тартууланат. 25-декабрь саат 10-00дө ОшМУнун башкы имаратында университетте эмгектенген окутуучулардын, кызматкерлердин балдары үчүн «Жаңы жылдык балаты» кечеси уюштурулат. Кечени жомок каармандары коштоп, таланттуу ырчы-бийчи студенттерден майрамдык ыр-бийлер тартууланып, бөбөктөргө белектер берилет.  Ошондой эле 25-декабрь саат 16-00дө студенттер үчүн “Ректордук бал”, 26-октябрда профессордук-окутуучулук курам үчүн майрамдык кечелер менен коштолот.  Жалпыңыздардын Жаңы жылыңыздар кут болсун!', 'На площади у главного корпуса ОшГУ зажглась новогодняя ёлка.\n\n16 метровая ёлка украсила не только университет, она добавила новогодний колорит общей городской картине.\n\nВ университете предусмотрен целый ряд разнообразных новогодних представлений, вечеров и других праздничных мероприятий. В 10 часов 25-декабря в главном корпусе пройдет новогодний утреник для детей сотрудников университета с дедом морозм, снегурочкой, песнями и танцами. И, конечно же, с подарками.\n\nНовогодние праздники продолжатся в тот же день, но уже для студентов. По традиции студентов ждет "Ректорский бал".И завершатся мероприятия новогодним вечером для профессорско-преподавательского коллектива 26 декабря. С наступающим новым годом, друзья!Университеттин гана эмес, шаардын көркүнө көрк кошкон балаты түнкүсүн жарыктандырылып, көз жоосун алат.  Жаңы 2019-жылга карата университетте бир нече майрамдык кечелер тартууланат. 25-декабрь саат 10-00дө ОшМУнун башкы имаратында университетте эмгектенген окутуучулардын, кызматкерлердин балдары үчүн «Жаңы жылдык балаты» кечеси уюштурулат. Кечени жомок каармандары коштоп, таланттуу ырчы-бийчи студенттерден майрамдык ыр-бийлер тартууланып, бөбөктөргө белектер берилет.  Ошондой эле 25-декабрь саат 16-00дө студенттер үчүн “Ректордук бал”, 26-октябрда профессордук-окутуучулук курам үчүн майрамдык кечелер менен коштолот.  Жалпыңыздардын Жаңы жылыңыздар кут болсун!', 'A Christmas tree was lit on the square near the main building of Osh State University.\n\nThe 16 meter Christmas tree was decorated not only by the university, it added the New Year\'s flavor to the general urban picture.\n\nThe university has a number of various New Year\'s performances, evenings and other festive events. At 10 o\'clock on the 25th of December in the main building there will be a New Year\'s matinee for the children of the university staff with Santa Claus, Snow Maiden, songs and dances. And, of course, with gifts.\n\nNew Year\'s holidays will continue on the same day, but for students. According to the tradition of students waiting for the "Rector\'s Ball." And the event will end on New Year\'s Eve for the teaching staff on December 26. Happy New Year, friends! University of Ghana Emes, Shaardin Kurku, Kurk Koshkon Balaty Tankoskn Zharykandyrylyp, Koz Joosun Alat. The 2019-zhylga karata university university bir neche mayramdyk kecheler tartuulanat. 25-December Saat 10-00d OshMunun Bashky Imaratandu Universityte Egtegengen Okutuchulardyn, Kyzmatkerlerdin Baldary ү Hechn “Zhaky Zhyldyk Balat” Kechesi uyushturalat. Kecheni Zhomok Kaarmandry Kostop, a talent of a rychi-bichi studentterden mayramdyk yr-beyler tartuulanip, bөbөktөrg belekter berilet. Oshondoy Ele 25-December Saat 16-00dө student үchen ү “Rectorduk Bal”, 26-october professor prof-okutuchuluk Kuram үchen май mayrahdyk kecheler å change-out. Zhalpyңyzdardyn Zhaңy zhylyңyzdar kut bolsun!', NULL, NULL, ''),
(5, 1, 2, '', NULL, NULL, NULL, NULL, '', '', 1, 0, '2018-12-20 13:06:26', 'ОшМУнун ректору, профессор К.Исаковдун жаны жылдык куттуктоосу', 'ОшМУнун ректору, профессор К.Исаковдун жаны жылдык куттуктоосу', '', '', '', NULL, NULL, NULL, ''),
(6, 2, 1, '', NULL, NULL, NULL, NULL, '', '', 1, 0, '2018-12-20 13:06:26', 'ОшМУда жаны жылдык балаты жанды', 'ОшМУ началась вечеринка Нового года', '', '', '', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_menu`
--

CREATE TABLE `ex_type_menu` (
  `id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `name_kg` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_type_menu`
--

INSERT INTO `ex_type_menu` (`id`, `style`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 'label-danger', 'Главный меню', 'Главный меню', 'Главный меню'),
(2, 'label-success', 'Фуутер 1 меню', 'Фуутер 1 меню', 'Фуутер 1 меню'),
(3, 'label-success', 'Фуутер 2 меню', 'Фуутер 2 меню', 'Фуутер 2 меню'),
(4, 'label-primary', 'Верхный меню', 'Верхный меню', 'Верхный меню');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_page`
--

CREATE TABLE `ex_type_page` (
  `id` int(11) NOT NULL,
  `style` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_kg` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_type_page`
--

INSERT INTO `ex_type_page` (`id`, `style`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 'label-primary', 'Жаңылык', 'Новости', 'News'),
(2, 'label-default', 'Баракча', 'Страница', 'Page'),
(3, 'label-danger', 'Жарыя', 'Объявление', 'Announcement'),
(4, 'label-success', 'Окуя', 'События', 'Events'),
(5, 'label-warning', 'Фотогалерея', 'Фотогалерея', 'Photo Gallery'),
(6, 'label-warning', 'Видеогалерея', 'Видеогалерея', 'Video Gallery'),
(7, 'label-info', 'Слайдер', 'Слайдер', 'Slider');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_user`
--

CREATE TABLE `ex_type_user` (
  `id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `name_ru` varchar(50) NOT NULL,
  `name_kg` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ex_type_user`
--

INSERT INTO `ex_type_user` (`id`, `style`, `name_ru`, `name_kg`, `name_en`) VALUES
(1, 'label-danger', 'Администратор', 'Администратор', 'Администратор'),
(2, 'label-success', 'Редактор', 'Редактор', 'Редактор'),
(3, 'label-primary', 'Автор', 'Автор', 'Автор'),
(4, 'label-warning', 'Участник', 'Участник', 'Участник'),
(5, 'label-default', 'Подписчик', 'Подписчик', 'Подписчик');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_user`
--

CREATE TABLE `ex_user` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fio` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `type_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `ex_user`
--

INSERT INTO `ex_user` (`id`, `login`, `pass`, `fio`, `name`, `tel`, `type_user`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Абдирасулов А.', NULL, '35646540', 1),
(2, 'argfan', '202cb962ac59075b964b07152d234b70', 'Эгешов А.', NULL, '56678567', 2),
(3, 'press', '202cb962ac59075b964b07152d234b70', 'Самиева У.', NULL, '88608362', 3),
(4, 'press2', '202cb962ac59075b964b07152d234b70', 'Каримов Т.', NULL, '78411260', 4),
(5, 'press3', '202cb962ac59075b964b07152d234b70', 'Туманова Р.', NULL, '10040973', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fio`
--

CREATE TABLE `fio` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fio`
--

INSERT INTO `fio` (`id`, `name`) VALUES
(1, 'Төлөн ака'),
(2, 'Мажит ака'),
(3, 'Жармат ака'),
(4, 'Жалал ака'),
(5, 'Садык (хирург)'),
(6, 'Исмаил ака');

-- --------------------------------------------------------

--
-- Структура таблицы `gruppa`
--

CREATE TABLE `gruppa` (
  `id` int(10) NOT NULL,
  `fio` varchar(250) NOT NULL,
  `ball1` int(10) DEFAULT '0',
  `ball2` int(50) NOT NULL,
  `ball3` int(30) NOT NULL,
  `ball4` int(30) NOT NULL,
  `ball5` int(30) NOT NULL,
  `ball6` int(30) NOT NULL,
  `ball7` int(30) NOT NULL,
  `ball8` int(30) NOT NULL,
  `ball9` int(30) NOT NULL,
  `ball10` int(30) NOT NULL,
  `ball11` int(30) NOT NULL,
  `ball12` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gruppa`
--

INSERT INTO `gruppa` (`id`, `fio`, `ball1`, `ball2`, `ball3`, `ball4`, `ball5`, `ball6`, `ball7`, `ball8`, `ball9`, `ball10`, `ball11`, `ball12`) VALUES
(1, 'Акматов Дастан', 2, 5, 5, 1, 2, 2, 3, 2, 2, 2, 3, 8),
(2, 'Алимов Мавлан', 1, 4, 4, 2, 1, 1, 3, 2, 1, 1, 1, 8),
(3, 'Бердибаев Кутман', 2, 5, 5, 1, 1, 1, 3, 2, 2, 2, 2, 8),
(4, 'Джураев Жавлан', 2, 4, 5, 1, 1, 1, 3, 1, 1, 1, 1, 8),
(5, 'Жусубали кызы Элиза', 2, 5, 5, 1, 2, 2, 3, 2, 1, 2, 2, 4),
(6, 'Исламидинова Айтурган', 2, 5, 5, 1, 2, 2, 4, 3, 2, 2, 2, 6),
(7, 'Капарова Айпери', 2, 5, 5, 1, 1, 2, 3, 2, 1, 2, 2, 8),
(8, 'Кашкариев Дастан', 2, 5, 4, 1, 1, 1, 3, 2, 1, 2, 1, 6),
(9, 'Кубанычбек кызы Махабат', 2, 5, 5, 1, 1, 2, 2, 2, 2, 2, 2, 8),
(10, 'Кубатбек кызы Адаш', 2, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 8),
(11, 'Муратбек кызы Гулдана', 2, 5, 5, 1, 1, 2, 1, 2, 2, 2, 2, 4),
(12, 'Ниматиллаев Бекмамат', 2, 3, 4, 1, 1, 1, 1, 2, 1, 2, 1, 4),
(13, 'Тажибай уулу Нурболот', 1, 3, 4, 1, 1, 1, 3, 2, 1, 2, 2, 5),
(14, 'Тойчубай кызы Айданек', 1, 5, 5, 1, 2, 2, 3, 2, 2, 2, 2, 4),
(15, 'Токтобаев Абдувахап', 1, 5, 5, 1, 1, 1, 3, 2, 1, 1, 2, 8),
(16, 'Токтомуратова Айзада', 1, 5, 5, 1, 1, 2, 3, 2, 2, 2, 2, 4),
(17, 'Хасанов Хожиакбар', 1, 4, 4, 1, 1, 1, 3, 2, 1, 1, 1, 4),
(18, 'Халмуратов Мурзабек', 1, 5, 4, 1, 1, 1, 3, 2, 2, 1, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `jurnal`
--

CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL,
  `id_fio` int(11) NOT NULL,
  `aiy` int(11) NOT NULL,
  `summa` float NOT NULL,
  `data` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jurnal`
--

INSERT INTO `jurnal` (`id`, `id_fio`, `aiy`, `summa`, `data`, `id_user`) VALUES
(104, 1, 1, 100, '2018-04-24', 2),
(105, 1, 2, 100, '2018-04-24', 2),
(106, 2, 5, 100, '2018-04-24', 2),
(107, 2, 1, 100, '2018-04-24', 2),
(108, 2, 2, 100, '2018-04-24', 2),
(109, 2, 3, 100, '2018-04-24', 2),
(110, 2, 4, 100, '2018-04-24', 2),
(111, 2, 5, 100, '2018-04-24', 2),
(112, 6, 1, 100, '2018-04-24', 2),
(113, 6, 2, 100, '2018-04-24', 2),
(114, 6, 3, 100, '2018-04-24', 2),
(115, 6, 4, 100, '2018-04-24', 2),
(116, 6, 5, 100, '2018-04-24', 2),
(117, 6, 6, 100, '2018-04-24', 2),
(118, 2, 1, 100, '2018-04-24', 2),
(119, 2, 2, 100, '2018-04-24', 2),
(120, 2, 3, 100, '2018-04-24', 2),
(121, 2, 4, 100, '2018-04-24', 2),
(122, 2, 5, 100, '2018-04-24', 2),
(123, 2, 6, 100, '2018-04-24', 2),
(124, 2, 7, 100, '2018-04-24', 2),
(125, 2, 8, 100, '2018-04-24', 2),
(126, 2, 9, 100, '2018-04-24', 2),
(127, 2, 10, 100, '2018-04-24', 2),
(128, 2, 11, 100, '2018-04-24', 2),
(129, 2, 12, 100, '2018-04-24', 2),
(130, 1, 1, 100, '2018-04-24', 1),
(131, 1, 2, 100, '2018-04-24', 1),
(132, 1, 3, 100, '2018-04-24', 1),
(133, 1, 4, 100, '2018-04-24', 1),
(134, 1, 5, 100, '2018-04-24', 1),
(135, 1, 6, 100, '2018-04-24', 1),
(136, 1, 7, 100, '2018-04-24', 1),
(137, 1, 8, 100, '2018-04-24', 1),
(138, 1, 9, 100, '2018-04-24', 1),
(139, 1, 10, 100, '2018-04-24', 1),
(140, 1, 11, 100, '2018-04-24', 1),
(141, 1, 12, 100, '2018-04-24', 1),
(142, 6, 1, 100, '2018-04-24', 1),
(143, 6, 2, 100, '2018-04-24', 1),
(144, 6, 3, 100, '2018-04-24', 1),
(145, 6, 4, 100, '2018-04-24', 1),
(146, 6, 5, 100, '2018-04-24', 1),
(147, 6, 6, 100, '2018-04-24', 1),
(148, 6, 7, 100, '2018-04-24', 1),
(149, 6, 8, 100, '2018-04-24', 1),
(150, 6, 9, 100, '2018-04-24', 1),
(151, 6, 10, 100, '2018-04-24', 1),
(152, 6, 11, 100, '2018-04-24', 1),
(153, 6, 12, 100, '2018-04-24', 1),
(154, 3, 1, 100, '2018-04-24', 1),
(155, 3, 2, 100, '2018-04-24', 1),
(156, 3, 3, 100, '2018-04-24', 1),
(157, 3, 4, 100, '2018-04-24', 1),
(158, 3, 5, 100, '2018-04-24', 1),
(159, 3, 6, 100, '2018-04-24', 1),
(160, 3, 7, 100, '2018-04-24', 1),
(161, 3, 8, 100, '2018-04-24', 1),
(162, 3, 9, 100, '2018-04-24', 1),
(163, 3, 10, 100, '2018-04-24', 1),
(164, 3, 11, 100, '2018-04-24', 1),
(165, 3, 12, 100, '2018-04-24', 1),
(166, 4, 1, 100, '2018-04-24', 1),
(167, 4, 2, 100, '2018-04-24', 1),
(168, 4, 3, 100, '2018-04-24', 1),
(169, 4, 4, 100, '2018-04-24', 1),
(170, 4, 5, 100, '2018-04-24', 1),
(171, 4, 6, 100, '2018-04-24', 1),
(172, 4, 7, 100, '2018-04-24', 1),
(173, 4, 8, 100, '2018-04-24', 1),
(174, 4, 9, 100, '2018-04-24', 1),
(175, 4, 10, 100, '2018-04-24', 1),
(176, 4, 11, 100, '2018-04-24', 1),
(177, 4, 12, 100, '2018-04-24', 1),
(178, 4, 1, 100, '2018-04-24', 2),
(179, 4, 2, 100, '2018-04-24', 2),
(180, 4, 3, 100, '2018-04-24', 2),
(181, 4, 4, 100, '2018-04-24', 2),
(182, 4, 5, 100, '2018-04-24', 2),
(183, 3, 5, 100, '2018-04-25', 2),
(184, 1, 1, 100, '2018-04-25', 2),
(185, 1, 2, 100, '2018-04-25', 2),
(186, 1, 3, 100, '2018-04-25', 2),
(187, 1, 4, 100, '2018-04-25', 2),
(188, 1, 5, 100, '2018-04-25', 2),
(189, 1, 6, 100, '2018-04-25', 2),
(190, 1, 7, 100, '2018-04-25', 2),
(191, 1, 8, 100, '2018-04-25', 2),
(192, 1, 9, 100, '2018-04-25', 2),
(193, 1, 10, 100, '2018-04-25', 2),
(194, 1, 11, 100, '2018-04-25', 2),
(195, 1, 12, 100, '2018-04-25', 2),
(196, 1, 1, 1, '2018-04-25', 2),
(197, 1, 2, 1, '2018-04-25', 2),
(198, 1, 3, 1, '2018-04-25', 2),
(199, 1, 4, 1, '2018-04-25', 2),
(200, 1, 5, 1, '2018-04-25', 2),
(201, 1, 6, 1, '2018-04-25', 2),
(202, 1, 7, 1, '2018-04-25', 2),
(203, 1, 8, 1, '2018-04-25', 2),
(204, 1, 9, 1, '2018-04-25', 2),
(205, 1, 10, 1, '2018-04-25', 2),
(206, 1, 11, 1, '2018-04-25', 2),
(207, 1, 12, 1, '2018-04-25', 2),
(208, 3, 1, 100, '2018-04-25', 2),
(209, 3, 2, 100, '2018-04-25', 2),
(210, 3, 3, 100, '2018-04-25', 2),
(211, 3, 4, 100, '2018-04-25', 2),
(212, 3, 5, 100, '2018-04-25', 2),
(213, 3, 6, 100, '2018-04-25', 2),
(214, 3, 7, 100, '2018-04-25', 2),
(215, 3, 8, 100, '2018-04-25', 2),
(216, 3, 9, 100, '2018-04-25', 2),
(217, 3, 10, 100, '2018-04-25', 2),
(218, 3, 11, 100, '2018-04-25', 2),
(219, 3, 12, 100, '2018-04-25', 2),
(220, 6, 1, 100, '2018-04-26', 2),
(221, 6, 2, 100, '2018-04-26', 2),
(222, 6, 3, 100, '2018-04-26', 2),
(223, 6, 4, 100, '2018-04-26', 2),
(224, 6, 5, 100, '2018-04-26', 2),
(225, 6, 6, 100, '2018-04-26', 2),
(226, 6, 7, 100, '2018-04-26', 2),
(227, 6, 8, 100, '2018-04-26', 2),
(228, 6, 9, 100, '2018-04-26', 2),
(229, 6, 10, 100, '2018-04-26', 2),
(230, 6, 11, 100, '2018-04-26', 2),
(231, 6, 12, 100, '2018-04-26', 2),
(232, 2, 5, 100, '2018-04-26', 2),
(233, 2, 6, 100, '2018-04-26', 2),
(234, 2, 7, 100, '2018-04-26', 2),
(235, 1, 5, 100, '2018-05-01', 2),
(236, 1, 6, 100, '2018-05-01', 2),
(237, 3, 5, 100, '2018-05-01', 2),
(238, 3, 6, 100, '2018-05-01', 2),
(239, 3, 7, 100, '2018-05-01', 2),
(240, 1, 1, 200, '2018-05-01', 2),
(241, 1, 2, 200, '2018-05-01', 2),
(242, 1, 3, 200, '2018-05-01', 2),
(243, 1, 4, 200, '2018-05-01', 2),
(244, 1, 5, 200, '2018-05-01', 2),
(245, 1, 6, 200, '2018-05-01', 2),
(246, 1, 7, 200, '2018-05-01', 2),
(247, 1, 8, 200, '2018-05-01', 2),
(248, 1, 9, 200, '2018-05-01', 2),
(249, 1, 10, 200, '2018-05-01', 2),
(250, 1, 11, 200, '2018-05-01', 2),
(251, 1, 12, 200, '2018-05-01', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `name_lab`
--

CREATE TABLE `name_lab` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shag` int(50) NOT NULL,
  `ball` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `name_lab`
--

INSERT INTO `name_lab` (`id`, `name`, `shag`, `ball`) VALUES
(1, 'Лабораториялык сабак 1', 2, 1),
(2, 'Лабораториялык сабак 2', 5, 1),
(3, 'Лабораториялык сабак 3', 5, 2),
(4, 'Лабораториялык сабак 4', 6, 2),
(5, 'Лабораториялык сабак 5', 4, 2),
(6, 'Лабораториялык сабак 6', 5, 2),
(7, 'Лабораториялык сабак 7', 5, 1),
(8, 'Лабораториялык сабак 8', 5, 1),
(9, 'Лабораториялык сабак 9', 5, 2),
(10, 'Лабораториялык сабак 10', 5, 2),
(11, 'Лабораториялык сабак 11', 5, 2),
(12, 'Лабораториялык сабак 12', 8, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nomer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `login`, `pass`, `nomer`) VALUES
(1, 'Айтибек', 'admin', '75cef98d1d85c6d2e01746f5674affb1', '0778730089'),
(2, 'Эрлан', 'erlan', '827ccb0eea8a706c4c34a16891f84e7b', '0778730089');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ex_file`
--
ALTER TABLE `ex_file`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_file_page`
--
ALTER TABLE `ex_file_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_menu`
--
ALTER TABLE `ex_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_page`
--
ALTER TABLE `ex_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_type_menu`
--
ALTER TABLE `ex_type_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_type_page`
--
ALTER TABLE `ex_type_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_type_user`
--
ALTER TABLE `ex_type_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ex_user`
--
ALTER TABLE `ex_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fio`
--
ALTER TABLE `fio`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gruppa`
--
ALTER TABLE `gruppa`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `name_lab`
--
ALTER TABLE `name_lab`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ex_file`
--
ALTER TABLE `ex_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `ex_file_page`
--
ALTER TABLE `ex_file_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `ex_menu`
--
ALTER TABLE `ex_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `ex_page`
--
ALTER TABLE `ex_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `ex_type_menu`
--
ALTER TABLE `ex_type_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `ex_type_page`
--
ALTER TABLE `ex_type_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `ex_type_user`
--
ALTER TABLE `ex_type_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `ex_user`
--
ALTER TABLE `ex_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `fio`
--
ALTER TABLE `fio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `gruppa`
--
ALTER TABLE `gruppa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT для таблицы `name_lab`
--
ALTER TABLE `name_lab`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
