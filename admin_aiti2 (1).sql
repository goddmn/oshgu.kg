-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 31 2019 г., 15:27
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `admin_aiti2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file`
--

CREATE TABLE IF NOT EXISTS `ex_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(255) DEFAULT NULL,
  `fail` varchar(255) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL,
  `name_kg` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `fail_thumb` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `ex_file`
--

INSERT INTO `ex_file` (`id`, `id_user`, `fail`, `vrem`, `name_kg`, `name_ru`, `name_en`, `fail_thumb`, `type`) VALUES
(1, 1, 'image1.jpg', NULL, '', '', '', 'image1.jpg', 0),
(2, 1, 'image2.jpg', NULL, '', '', '', 'image2.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file_page`
--

CREATE TABLE IF NOT EXISTS `ex_file_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ex_file_page`
--

INSERT INTO `ex_file_page` (`id`, `id_page`, `id_file`, `vrem`) VALUES
(1, 4, 6, '2018-12-20 13:06:26');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_menu`
--

CREATE TABLE IF NOT EXISTS `ex_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT '0',
  `id_parent` int(11) DEFAULT '0',
  `id_page` int(11) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `target` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=79 ;

--
-- Дамп данных таблицы `ex_menu`
--

INSERT INTO `ex_menu` (`id`, `sort`, `id_parent`, `id_page`, `url`, `target`, `name_kg`, `name_ru`, `name_en`) VALUES
(48, 0, 50, 23, '', NULL, 'Кыргыз филологиясы жана журналистика факультети\n', 'Знание', 'Knoweledge'),
(45, 2, 2, 1, NULL, NULL, 'Окуу процесси', 'Процесс обучения', 'Process of education'),
(46, 5, 2, NULL, 'http://oshgu.kg/pages/news', NULL, 'Жанылыктар', 'Новости', 'News'),
(42, 0, 2, NULL, NULL, NULL, 'Университет', 'Университет', 'University'),
(43, 1, 2, 1, NULL, NULL, 'Билим беруу', 'Билим беруу', 'Education'),
(51, 3, 50, 25, NULL, NULL, 'Дүйнөлүк тилдер жана маданият факультети', '', ''),
(49, 3, 50, 24, NULL, NULL, 'Орус филологиясы факультети', 'Знание', 'Knoweledge'),
(50, 0, 43, NULL, NULL, NULL, 'Факультеттер', 'Факультеттер', 'Факультеттер'),
(52, 3, 50, 26, NULL, NULL, 'Математика жана информациялык технологиялар факультети', '', ''),
(53, 3, 50, 27, NULL, NULL, 'Физика-техника факультети', '', ''),
(54, 3, 50, 28, NULL, NULL, 'Бизнес жана менеджмент факультети', '', ''),
(55, 3, 50, 29, NULL, NULL, 'Табият таануу жана география факультети', '', ''),
(56, 3, 50, 30, NULL, NULL, 'Педагогика жана дене тарбия факультети', '', ''),
(57, 3, 50, 31, NULL, NULL, 'Тарых факультети', '', ''),
(58, 3, 50, 32, NULL, NULL, 'Искусcтво факультети', '', ''),
(59, 3, 50, 33, NULL, NULL, 'Юридика факультети', '', ''),
(60, 3, 50, 34, NULL, NULL, 'Индустриалдык-педагогикалык колледж', '', ''),
(61, 3, 64, 35, 'http://de.oshsu.kg/pdf/ishplan-2018-2019.pdf', NULL, '2018-2019-окуу жылы учун иш-план', '', ''),
(62, 3, 64, 36, 'http://de.oshsu.kg/list_of_faculty_jadybal.html', NULL, 'Жадыбалдар', '', ''),
(63, 3, 64, 37, 'http://de.oshsu.kg/list_of_faculty_calendar.html', NULL, 'Академиялык календарь', '', ''),
(64, 0, 45, NULL, NULL, NULL, 'Окуу процесси', '', ''),
(65, 0, 0, NULL, NULL, NULL, 'right_menu1', '', 'right_menu1'),
(66, 0, 65, NULL, NULL, NULL, 'Абитуриенттерге', '', ''),
(67, 0, 65, NULL, NULL, NULL, 'Студенттерге', NULL, ''),
(68, 0, 65, NULL, NULL, NULL, 'Бүтүрүүчүлөргө', NULL, ''),
(69, 0, 65, NULL, NULL, NULL, 'Мугалимдерге', NULL, ''),
(70, 0, 0, NULL, NULL, NULL, 'Билим берүү ресурстары', NULL, 'right_menu2'),
(71, 0, 70, NULL, NULL, NULL, 'ibooks.oshsu.kg', NULL, ''),
(72, 0, 70, NULL, NULL, NULL, 'okuma.kg', NULL, ''),
(73, 0, 70, NULL, NULL, NULL, 'Ош МУнун китепканасы\r\n', NULL, ''),
(74, 0, 70, NULL, NULL, NULL, 'Ош МУнун расмий сайты', NULL, ''),
(75, 0, 0, NULL, NULL, NULL, 'right_menu3', '', 'right_menu3'),
(76, 0, 75, NULL, NULL, NULL, 'Билим берүү порталы\r\n', '', ''),
(77, 0, 75, NULL, NULL, NULL, 'Сабактардын жадыбалы\r\n\r\n', '', ''),
(78, 0, 75, NULL, NULL, NULL, 'Онлайн тестирлөө\r\n\r\n\r\n', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_page`
--

CREATE TABLE IF NOT EXISTS `ex_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_type_page` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 NOT NULL,
  `vrem_ot` datetime DEFAULT NULL,
  `vrem_do` datetime DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gallery` varchar(200) NOT NULL,
  `foto_thumb` varchar(250) CHARACTER SET utf8 NOT NULL,
  `gallery_thumb` varchar(200) NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `audio` varchar(250) CHARACTER SET utf8 NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 NOT NULL,
  `log` int(11) DEFAULT '1',
  `stat` int(11) DEFAULT '0',
  `vrem` datetime DEFAULT NULL,
  `tema_kg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tema_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tema_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `page_text_kg` text CHARACTER SET utf8 NOT NULL,
  `page_text_ru` text CHARACTER SET utf8 NOT NULL,
  `page_text_en` text CHARACTER SET utf8,
  `key_text_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `key_text_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `key_text_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `ex_page`
--

INSERT INTO `ex_page` (`id`, `id_type_page`, `id_user`, `user`, `address`, `vrem_ot`, `vrem_do`, `foto`, `gallery`, `foto_thumb`, `gallery_thumb`, `video`, `audio`, `url`, `log`, `stat`, `vrem`, `tema_kg`, `tema_ru`, `tema_en`, `page_text_kg`, `page_text_ru`, `page_text_en`, `key_text_kg`, `key_text_ru`, `key_text_en`) VALUES
(24, NULL, 0, '', '', NULL, NULL, NULL, '1.jpg,2.jpg,3.jpg', '', '', NULL, '', '', 1, 0, NULL, 'Орус филологиясы факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/russian_phil.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/ruslit.pdf">Орус филология факультетинин окутуучулук курамы</a>\r\n			  	\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/russian_phil.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/ruslit.pdf">Орус филология факультетинин окутуучулук курамы</a>\r\n			  	\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/russian_phil.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/ruslit.pdf">Орус филология факультетинин окутуучулук курамы</a>\r\n			  	\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', NULL, NULL, ''),
(23, NULL, 0, '', '3', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Кыргыз филологиясы жана журналистика факультети', 'Tema', 'Tema', '	<ul class="nav nav-tabs">\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\n			</ul>\n\n			\n			<div class="tab-content">\n			  <div class="tab-pane active" id="home">\n			  	<p><b> ФАКУЛЬТЕТТИН КЫСКАЧА ТАРЫХЫ</b></p>\n			  	<p> Кыргыз тили жана адабияты адистигине даярдоо 1951-жылы башталган. 1992-жылы 2-июлдагы Кыргыз Республикасынын Билим берүү министрлигинин буйругу менен өз алдынча Кыргыз филологиясы факультети болуп түзүлүп, адистерди даярдоо мүмкүнчүлүгүнө ээ болгон. 2010-жылы ОшМУнун Окумуштуулар кеңешинин (31.08.10.) чечимине ылайык факультет Кыргыз филологиясы жана журналистика деп аталып, кайра түзүлгөн. Курамына журналистика бөлүмү менен “Өзбек филологиясы” кафедрасы кийирилген. Азыркы убакта факультетти ф.и.к., доцент Н.Турганбаев жетектөөдө. </p>\n			  	<p>Факультет болочок филолог жана журналисттерди даярдоо менен гана чектелбестен, бул аймакта мамлекеттик саясат менен улуттук маданияттын бекем орун-очок алышына да олуттуу салым кошууда. Факультетти түптөп, алгачкылардан болуп иштеп кетишкен белгилүү окумуштуулар: проф. А.Турсунов, проф. А.Садыков, академик А.Акматалиев, проф. С.Ибрагимов, проф. С.Шатманов, проф. Н.Бейшекеев, проф. Ж.Мамытовдор. Ушул окуу жайдан көрүнүктүү аалымдар да өсүп чыгышкан. Мисалы, п.и.д., проф. Б.Алымов, ф.и.к., доцент А.Сыдыков, ф.и.к., доцент С.Гапаров, ф.и.к., проф. Ж.Шериев, ф.и.д., проф. М.Сулайманов, Токтогулдук сыйлыктын лауреаты, ф.и.д., проф. Т.Аширбаев, КРнын Эл мугалими М.Байымбетов, ф.и.д., проф. С.Искендерова, ф.и.д., проф. Б.Сагынбаева, ф.и.д., проф. Ү.Култаева, п.и.д., проф. А.Муратов, п.и.д., проф. С.Момуналиевдер. Факультеттин бүтүрүүчүлөрүнүн ичинен ондогон көркөм сөздүн чеберлери менен таанымал журналисттер да чыккан. Алсак, КРдин Эл баатыры, Эл жазуучусу, Токтогул атындагы мамлекеттик сыйлыктын лауреаты С.Жусуев, КРдин Эл артисти, Токтогул атындагы мамлекеттик сыйлыктын лауреаты комузчу Б.Мадазимов, А.Осмонов, Молдо Нияз сыйлыктарынын лауреаты акын журналист-акындар А. Акбаров, акындар К.Бакиров, М.Жаныбеков, А.Эргешова, Б.Төлөнов жана А.Токсонбаев, А.Монуев, Т.Алдакулов ж.б. </p>\n			  </div>\n			  <div class="tab-pane" id="profile">\n			  	<!-- <img src="images/structure/"> -->\n			  </div>\n			  <div class="tab-pane" id="messages">\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/kyrgyz_phyl.pdf">Кыргыз филологиясы жана журналистика факультетинин окутуучулук курамы</a>\n	\n			  </div>\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\n			</div>', '	<ul class="nav nav-tabs">\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\n			</ul>\n\n			\n			<div class="tab-content">\n			  <div class="tab-pane active" id="home">\n			  	<p><b> ФАКУЛЬТЕТТИН КЫСКАЧА ТАРЫХЫ</b></p>\n			  	<p> Кыргыз тили жана адабияты адистигине даярдоо 1951-жылы башталган. 1992-жылы 2-июлдагы Кыргыз Республикасынын Билим берүү министрлигинин буйругу менен өз алдынча Кыргыз филологиясы факультети болуп түзүлүп, адистерди даярдоо мүмкүнчүлүгүнө ээ болгон. 2010-жылы ОшМУнун Окумуштуулар кеңешинин (31.08.10.) чечимине ылайык факультет Кыргыз филологиясы жана журналистика деп аталып, кайра түзүлгөн. Курамына журналистика бөлүмү менен “Өзбек филологиясы” кафедрасы кийирилген. Азыркы убакта факультетти ф.и.к., доцент Н.Турганбаев жетектөөдө. </p>\n			  	<p>Факультет болочок филолог жана журналисттерди даярдоо менен гана чектелбестен, бул аймакта мамлекеттик саясат менен улуттук маданияттын бекем орун-очок алышына да олуттуу салым кошууда. Факультетти түптөп, алгачкылардан болуп иштеп кетишкен белгилүү окумуштуулар: проф. А.Турсунов, проф. А.Садыков, академик А.Акматалиев, проф. С.Ибрагимов, проф. С.Шатманов, проф. Н.Бейшекеев, проф. Ж.Мамытовдор. Ушул окуу жайдан көрүнүктүү аалымдар да өсүп чыгышкан. Мисалы, п.и.д., проф. Б.Алымов, ф.и.к., доцент А.Сыдыков, ф.и.к., доцент С.Гапаров, ф.и.к., проф. Ж.Шериев, ф.и.д., проф. М.Сулайманов, Токтогулдук сыйлыктын лауреаты, ф.и.д., проф. Т.Аширбаев, КРнын Эл мугалими М.Байымбетов, ф.и.д., проф. С.Искендерова, ф.и.д., проф. Б.Сагынбаева, ф.и.д., проф. Ү.Култаева, п.и.д., проф. А.Муратов, п.и.д., проф. С.Момуналиевдер. Факультеттин бүтүрүүчүлөрүнүн ичинен ондогон көркөм сөздүн чеберлери менен таанымал журналисттер да чыккан. Алсак, КРдин Эл баатыры, Эл жазуучусу, Токтогул атындагы мамлекеттик сыйлыктын лауреаты С.Жусуев, КРдин Эл артисти, Токтогул атындагы мамлекеттик сыйлыктын лауреаты комузчу Б.Мадазимов, А.Осмонов, Молдо Нияз сыйлыктарынын лауреаты акын журналист-акындар А. Акбаров, акындар К.Бакиров, М.Жаныбеков, А.Эргешова, Б.Төлөнов жана А.Токсонбаев, А.Монуев, Т.Алдакулов ж.б. </p>\n			  </div>\n			  <div class="tab-pane" id="profile">\n			  	<!-- <img src="images/structure/"> -->\n			  </div>\n			  <div class="tab-pane" id="messages">\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/kyrgyz_phyl.pdf">Кыргыз филологиясы жана журналистика факультетинин окутуучулук курамы</a>\n	\n			  </div>\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\n			</div>', '	<ul class="nav nav-tabs">\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\n			</ul>\n\n			\n			<div class="tab-content">\n			  <div class="tab-pane active" id="home">\n			  	<p><b> ФАКУЛЬТЕТТИН КЫСКАЧА ТАРЫХЫ</b></p>\n			  	<p> Кыргыз тили жана адабияты адистигине даярдоо 1951-жылы башталган. 1992-жылы 2-июлдагы Кыргыз Республикасынын Билим берүү министрлигинин буйругу менен өз алдынча Кыргыз филологиясы факультети болуп түзүлүп, адистерди даярдоо мүмкүнчүлүгүнө ээ болгон. 2010-жылы ОшМУнун Окумуштуулар кеңешинин (31.08.10.) чечимине ылайык факультет Кыргыз филологиясы жана журналистика деп аталып, кайра түзүлгөн. Курамына журналистика бөлүмү менен “Өзбек филологиясы” кафедрасы кийирилген. Азыркы убакта факультетти ф.и.к., доцент Н.Турганбаев жетектөөдө. </p>\n			  	<p>Факультет болочок филолог жана журналисттерди даярдоо менен гана чектелбестен, бул аймакта мамлекеттик саясат менен улуттук маданияттын бекем орун-очок алышына да олуттуу салым кошууда. Факультетти түптөп, алгачкылардан болуп иштеп кетишкен белгилүү окумуштуулар: проф. А.Турсунов, проф. А.Садыков, академик А.Акматалиев, проф. С.Ибрагимов, проф. С.Шатманов, проф. Н.Бейшекеев, проф. Ж.Мамытовдор. Ушул окуу жайдан көрүнүктүү аалымдар да өсүп чыгышкан. Мисалы, п.и.д., проф. Б.Алымов, ф.и.к., доцент А.Сыдыков, ф.и.к., доцент С.Гапаров, ф.и.к., проф. Ж.Шериев, ф.и.д., проф. М.Сулайманов, Токтогулдук сыйлыктын лауреаты, ф.и.д., проф. Т.Аширбаев, КРнын Эл мугалими М.Байымбетов, ф.и.д., проф. С.Искендерова, ф.и.д., проф. Б.Сагынбаева, ф.и.д., проф. Ү.Култаева, п.и.д., проф. А.Муратов, п.и.д., проф. С.Момуналиевдер. Факультеттин бүтүрүүчүлөрүнүн ичинен ондогон көркөм сөздүн чеберлери менен таанымал журналисттер да чыккан. Алсак, КРдин Эл баатыры, Эл жазуучусу, Токтогул атындагы мамлекеттик сыйлыктын лауреаты С.Жусуев, КРдин Эл артисти, Токтогул атындагы мамлекеттик сыйлыктын лауреаты комузчу Б.Мадазимов, А.Осмонов, Молдо Нияз сыйлыктарынын лауреаты акын журналист-акындар А. Акбаров, акындар К.Бакиров, М.Жаныбеков, А.Эргешова, Б.Төлөнов жана А.Токсонбаев, А.Монуев, Т.Алдакулов ж.б. </p>\n			  </div>\n			  <div class="tab-pane" id="profile">\n			  	<!-- <img src="images/structure/"> -->\n			  </div>\n			  <div class="tab-pane" id="messages">\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/kyrgyz_phyl.pdf">Кыргыз филологиясы жана журналистика факультетинин окутуучулук курамы</a>\n	\n			  </div>\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\n			</div>', NULL, NULL, ''),
(25, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Дүйнөлүк тилдер жана маданият факультети', NULL, '', '<ul class="nav nav-tabs">\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\n			</ul>\n\n			\n			<div class="tab-content">\n			  <div class="tab-pane active" id="home">1</div>\n			  <div class="tab-pane" id="profile">\n			  	<img src="images/structure/international.jpg">\n			  </div>\n			  <div class="tab-pane" id="messages">3</div>\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\n			</div>', '', NULL, NULL, NULL, ''),
(26, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Математика жана информациялык технологиялар факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  		<img src="images/structure/mit.jpg">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	 <a target="blank" href="pdf/okutuuchuluk_kuram/MIT.pdf">МИТ факультетинин окутуучулук курамы</a>\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(27, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Физика-техника факультети', NULL, '', '<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/phys_tech.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/phyz_tech.pdf">Физика-техника факультетинин окутуучулук курамы</a>\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(28, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Бизнес жана менеджмент факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">\r\n\r\n			  </div>\r\n			  <div class="tab-pane" id="profile">\r\n				<img src="images/structure/bim.jpg">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/bim.pdf">БИМ факультетинин окутуучулук курамы</a>\r\n			\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(29, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Табият таануу жана география факультети', NULL, '', '<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/natural.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">3</div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>v', '', NULL, NULL, NULL, ''),
(30, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Педагогика жана дене тарбия факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/educational.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">3</div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(31, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Тарых факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/history.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			  	<a target="blank" href="pdf/okutuuchuluk_kuram/history.pdf">Тарых факультетинин окутуучулук курамы</a>\r\n			\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(32, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Искусcтво факультети', NULL, '', '	<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/art.jpg">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">3</div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(33, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Юридика факультети', NULL, '', '<ul class="nav nav-tabs">\r\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\r\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\r\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\r\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\r\n			</ul>\r\n\r\n			\r\n			<div class="tab-content">\r\n			  <div class="tab-pane active" id="home">1</div>\r\n			  <div class="tab-pane" id="profile">\r\n			  	<img src="images/structure/law.JPG">\r\n			  </div>\r\n			  <div class="tab-pane" id="messages">\r\n			 <a target="blank" href="pdf/okutuuchuluk_kuram/law.pdf">Юридика факультетинин окутуучулук курамы</a>\r\n			  	\r\n			  </div>\r\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\r\n			</div>', '', NULL, NULL, NULL, ''),
(34, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', '', 1, 0, NULL, 'Индустриалдык-педагогикалык колледж', NULL, '', '	<ul class="nav nav-tabs">\n			  <li class="active"><a href="#home" data-toggle="tab">Тарыхы</a></li>\n			  <li><a href="#profile" data-toggle="tab">Структурасы</a></li>\n			  <li><a href="#messages" data-toggle="tab">Профессордук окутуучулук курам</a></li>\n			 <!--  <li><a href="#settings" data-toggle="tab">Настройки</a></li> -->\n			</ul>\n\n			\n			<div class="tab-content">\n			  <div class="tab-pane active" id="home">\n<a target="blank" href="../../assets/pdf/history/ipk.pdf">Индустриалдык -педагогикалык колледжинин тарыхы</a>\n			  </div>\n			  <div class="tab-pane" id="profile">\n			  	<img src="../../assets/images/structure/ipk.JPG">\n			  </div>\n			  <div class="tab-pane" id="messages">\n			  	<a target="blank" href="../../assets/pdf/okutuuchuluk_kuram/ipk.pdf"> Индустриалдык -педагогикалык колледжинин\nокутуучулук курамы</a>\n			  </div>\n			  <!-- <div class="tab-pane" id="settings">4</div> -->\n			</div>', '', NULL, NULL, NULL, ''),
(35, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', 'http://de.oshsu.kg/pdf/ishplan-2018-2019.pdf', 1, 0, NULL, '', NULL, '', '', '', NULL, NULL, NULL, ''),
(36, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', 'http://de.oshsu.kg/list_of_faculty_jadybal.html', 1, 0, NULL, '', NULL, '', '', '', NULL, NULL, NULL, ''),
(37, NULL, 0, '', '', NULL, NULL, NULL, '', '', '', NULL, '', 'http://de.oshsu.kg/list_of_faculty_calendar.html', 1, 0, NULL, '', NULL, '', '', '', NULL, NULL, NULL, ''),
(38, 1, 0, '', '', NULL, NULL, 'assets/images/bim.jpg', '', '', '', NULL, '', '', 1, 0, '2019-01-03 00:00:00', 'Аалам алпы- Айтматов', NULL, '', '28–ноябрь күнү ОшМУнун Бизнес жана менеджмент факультетинин дистанттык технологияны колдонуу менен сыртан окуу бөлүмүндө улуу жазуучу Ч. Айтматовдун 90–жылдыгына карата «Аалам алпы–Айтматов» деген темада иш–чара болуп өттү.', '', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_menu`
--

CREATE TABLE IF NOT EXISTS `ex_type_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `ex_type_menu`
--

INSERT INTO `ex_type_menu` (`id`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 'Главный меню', 'Главный меню', 'Главный меню'),
(2, 'Фуутер 1 меню', 'Фуутер 1 меню', 'Фуутер 1 меню'),
(3, 'Фуутер 2 меню', 'Фуутер 2 меню', 'Фуутер 2 меню'),
(4, 'Верхный меню', 'Верхный меню', 'Верхный меню'),
(12, 'Жогорку меню', 'Жогорку меню', 'Жогорку меню');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_page`
--

CREATE TABLE IF NOT EXISTS `ex_type_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_kg` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=8 ;

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

CREATE TABLE IF NOT EXISTS `ex_type_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` varchar(50) NOT NULL,
  `name_ru` varchar(50) NOT NULL,
  `name_kg` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `ex_type_user`
--

INSERT INTO `ex_type_user` (`id`, `style`, `name_ru`, `name_kg`, `name_en`) VALUES
(1, 'label-danger', 'Администратор', 'Администратор', 'Администратор'),
(2, 'label-success', 'Редактор', 'Редактор', 'Редактор');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_user`
--

CREATE TABLE IF NOT EXISTS `ex_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fio` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `type_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `ex_user`
--

INSERT INTO `ex_user` (`id`, `login`, `pass`, `fio`, `name`, `tel`, `type_user`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Абдирасулов А.', NULL, '35646540', 1),
(2, 'argfan', '202cb962ac59075b964b07152d234b70', 'Эгешов А.', NULL, '56678567', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `massage`
--

CREATE TABLE IF NOT EXISTS `massage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `massange` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
